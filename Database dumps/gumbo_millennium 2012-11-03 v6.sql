-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2012 at 10:22 PM
-- Server version: 5.5.16-log
-- PHP Version: 5.3.13

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
-- Table structure for table `dc_acl_groups`
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
-- Dumping data for table `dc_acl_groups`
--

INSERT INTO `dc_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 85, 0, 1),
(1, 0, 93, 0, 1),
(1, 0, 111, 0, 1),
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
(5, 12, 0, 14, 0),
(15, 0, 133, 0, 1),
(15, 0, 132, 0, 1),
(15, 0, 85, 0, 1),
(15, 0, 128, 0, 1),
(15, 0, 130, 0, 1),
(15, 0, 131, 0, 1),
(15, 0, 44, 0, 1),
(2, 0, 0, 6, 0),
(16, 0, 128, 0, 1),
(16, 0, 130, 0, 1),
(16, 0, 131, 0, 1),
(16, 0, 44, 0, 1),
(5, 0, 86, 0, 1),
(5, 0, 88, 0, 1),
(5, 0, 93, 0, 1),
(5, 0, 110, 0, 1),
(5, 0, 115, 0, 1),
(5, 0, 87, 0, 1),
(5, 0, 89, 0, 1),
(5, 0, 90, 0, 1),
(5, 0, 91, 0, 1),
(5, 0, 92, 0, 1),
(5, 0, 117, 0, 1),
(5, 0, 94, 0, 1),
(5, 0, 95, 0, 1),
(5, 0, 111, 0, 1),
(5, 0, 112, 0, 1),
(5, 0, 113, 0, 1),
(5, 0, 135, 0, 1),
(5, 0, 116, 0, 1),
(5, 0, 133, 0, 1),
(5, 0, 132, 0, 1),
(5, 0, 96, 0, 1),
(5, 0, 97, 0, 1),
(5, 0, 98, 0, 1),
(5, 0, 99, 0, 1),
(5, 0, 100, 0, 1),
(5, 0, 101, 0, 1),
(5, 0, 102, 0, 1),
(5, 0, 103, 0, 1),
(5, 0, 104, 0, 1),
(5, 0, 105, 0, 1),
(5, 0, 106, 0, 1),
(5, 0, 107, 0, 1),
(5, 0, 108, 0, 1),
(5, 0, 109, 0, 1),
(5, 0, 114, 0, 1),
(5, 0, 85, 0, 1),
(5, 0, 0, 4, 0),
(5, 13, 0, 14, 0),
(5, 15, 0, 14, 0),
(15, 11, 0, 14, 0),
(15, 16, 0, 14, 0),
(1, 13, 0, 17, 0),
(1, 14, 0, 17, 0),
(1, 15, 0, 17, 0),
(7, 13, 0, 17, 0),
(7, 14, 0, 18, 0),
(7, 15, 0, 18, 0),
(2, 13, 0, 17, 0),
(2, 14, 0, 15, 0),
(2, 15, 0, 15, 0),
(1, 0, 130, 0, 1),
(6, 0, 130, 0, 1),
(7, 0, 130, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_acl_options`
--

CREATE TABLE IF NOT EXISTS `dc_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=132 ;

--
-- Dumping data for table `dc_acl_options`
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
(122, 'a_edit_activity', 1, 0, 0),
(123, 'a_new_activity', 1, 0, 0),
(124, 'a_overview_activity', 1, 0, 0),
(125, 'a_recyle_activity', 1, 0, 0),
(126, 'u_view_activity', 1, 0, 0),
(127, 'u_list_activities', 1, 0, 0),
(128, 'u_view_grouplist', 1, 0, 0),
(130, 'u_view_portal', 1, 0, 0),
(131, 'a_manage_portal', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_acl_roles`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=27 ;

--
-- Dumping data for table `dc_acl_roles`
--

INSERT INTO `dc_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10),
(25, 'Bestuur', '', 'a_', 5),
(26, 'Activity system', '', 'a_', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dc_acl_roles_data`
--

CREATE TABLE IF NOT EXISTS `dc_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_acl_roles_data`
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
(4, 130, 1),
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
(5, 130, 1),
(5, 135, 1),
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
(6, 130, 1),
(6, 132, 1),
(6, 133, 1),
(6, 135, 1),
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
(23, 85, 1),
(23, 96, 0),
(23, 97, 0),
(23, 114, 0),
(23, 135, 1),
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
(25, 84, 1),
(26, 44, 1),
(26, 62, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_acl_users`
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
-- Dumping data for table `dc_acl_users`
--

INSERT INTO `dc_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0),
(54, 0, 117, 0, 1),
(54, 0, 111, 0, 1),
(54, 0, 85, 0, 1),
(54, 0, 62, 0, 1),
(54, 0, 44, 0, 1),
(58, 0, 130, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_activity`
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
  `enable_magic_url` tinyint(1) DEFAULT NULL,
  `enable_bbcode` tinyint(1) DEFAULT NULL,
  `enable_smilies` tinyint(1) DEFAULT NULL,
  `unsubscribe_max` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=22 ;

--
-- Dumping data for table `dc_activity`
--

INSERT INTO `dc_activity` (`id`, `name`, `description`, `start_datetime`, `stop_datetime`, `enroll`, `enroll_datetime`, `enroll_max`, `price`, `price_member`, `location`, `active`, `category`, `pay_options`, `commission`, `user_id`, `user_ip`, `datetime_created`, `datetime_updated`, `bbcode_bitfield`, `bbcode_uid`, `enable_magic_url`, `enable_bbcode`, `enable_smilies`, `unsubscribe_max`) VALUES
(1, 'vissen eten geven', 'Wie wil dit nou niet?', '2012-02-01 00:00:00', '2012-01-31 18:48:43', 1, '2012-01-30 00:00:00', 0, '10.50', '7.50', 'bij het meer', 1, 1, 'contant', 1, 1, '192.168.178.13', '2012-01-26 13:04:05', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-01-29 23:00:00'),
(2, 'we gaan naar henk', 'Bij henk op bezoek', '2012-02-01 00:00:00', '2012-02-01 00:00:00', 1, '2012-02-01 00:00:00', 0, '5.00', '3.00', 'omdat henk een henk is', 1, 1, 'contant', 1, 1, '192.168.178.13', '2012-01-26 13:05:36', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-01-31 23:00:00'),
(3, 'iets in het verleden', 'dit komt uit het verleden', '2012-01-02 08:11:36', '2012-01-09 08:23:25', 1, '2012-01-02 08:11:36', 0, '10.50', '3.00', 'bij lmd', 1, 1, 'contant', 1, 1, '192.168.178.13', '2012-01-28 14:45:22', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-01-02 07:11:36'),
(4, 'OP een terasje wat drinken', 'Bier!', '2012-03-26 00:00:00', '2012-03-26 00:00:00', 0, '2012-03-26 00:00:00', 1, '10.50', '10.00', 'ERgens in de stad!!', 1, 1, 'contant', 5, 2, '192.168.178.13', '2012-03-26 13:10:50', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-03-25 22:00:00'),
(5, 'Zet de bank maar op het terras', 'We gaan met ze allen de bank pakken en dan lopen we er mee weg. gewoon omdat het kan!!', '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, '60.70', '0.00', 'Op het balkon bij plaza', 0, 5, '', 5, 2, '127.0.0.1', '0000-00-00 00:00:00', '2012-10-13 14:22:51', '', '', 1, 1, 1, '2013-04-04 22:00:00'),
(6, 'Zet de bank maar op het terras v2', 'We gaan met ze allen de bank pakken en dan lopen we er mee weg. gewoon omdat het kan!!', '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, '60.70', '0.00', 'Op het balkon bij plaza', 0, 5, '', 5, 2, '127.0.0.1', '2012-03-28 15:55:39', '2012-10-13 14:22:50', '0', '0', 1, 1, 1, '2013-04-04 22:00:00'),
(7, 'Naar mijn ouders', '[b:rvcr0m30]Gatus henk!![/b:rvcr0m30] &lt;!-- s:evil: --&gt;&lt;img src=&quot;{SMILIES_PATH}/icon_evil.gif&quot; alt=&quot;:evil:&quot; title=&quot;Slecht of heel kwaad&quot; /&gt;&lt;!-- s:evil: --&gt;  &lt;!-- s:lol: --&gt;&lt;img src=&quot;{SMILIES_PATH}/icon_lol.gif&quot; alt=&quot;:lol:&quot; title=&quot;Lachend&quot; /&gt;&lt;!-- s:lol: --&gt;  &lt;!-- s:roll: --&gt;&lt;img src=&quot;{SMILIES_PATH}/icon_rolleyes.gif&quot; alt=&quot;:roll:&quot; title=&quot;Rollende ogen&quot; /&gt;&lt;!-- s:roll: --&gt;  &lt;!-- s:?: --&gt;&lt;img src=&quot;{SMILIES_PATH}/icon_question.gif&quot; alt=&quot;:?:&quot; title=&quot;Vraag&quot; /&gt;&lt;!-- s:?: --&gt;  &lt;!-- s:idea: --&gt;&lt;img src=&quot;{SMILIES_PATH}/icon_idea.gif&quot; alt=&quot;:idea:&quot; title=&quot;Idee&quot; /&gt;&lt;!-- s:idea: --&gt;  [url]gratus henk[/url]\nen hier hebben we nog een enter en nog weat meer\n\n\n\n hallo cool dit!', '2013-05-05 00:00:00', '2013-06-05 00:00:00', 1, '2013-04-05 00:00:00', 0, '60.70', '10.00', 'Op het balkon bij plaza', 0, 5, '', 14, 1, '192.168.2.35', '2012-03-31 14:11:32', '2012-11-03 09:16:23', '0', '0', 1, 1, 1, '2013-04-04 22:00:00'),
(9, 'de google website v2', '[b:2l3ok15f]gratus henk[/b:2l3ok15f]', '2013-05-05 12:50:15', '2013-06-05 11:36:28', 1, '2013-05-05 12:50:15', 0, '6.00', '5.00', 'Op het balkon bij plaza', 1, 5, '', 15, 1, '192.168.2.35', '2012-03-31 14:21:43', '2012-11-03 07:30:23', 'QA==', '2l3ok15f', 1, 1, 1, '2013-05-05 10:50:15'),
(10, 'henk', 'zfsefesf', '2012-09-12 12:00:00', '2012-09-18 12:00:00', 0, '2012-09-12 12:00:00', 0, '0.00', '0.00', 'fsfs', 0, 0, '', 15, 2, '::1', '2012-08-19 15:43:57', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-09-12 10:00:00'),
(11, 'de eerste echte actviteit', '[color=#FF0000:1a6ddmcd][b:1a6ddmcd][size=150:1a6ddmcd]Dit is een belangrijke test[/size:1a6ddmcd][/b:1a6ddmcd][/color:1a6ddmcd]\n\nEn het werkt!\n\nhello world!', '2012-09-12 12:00:00', '2012-09-18 12:00:00', 1, '2012-09-12 12:00:00', 0, '0.00', '0.00', 'bij gerco thuis', 1, 0, '', 15, 2, '::1', '2012-08-19 18:16:35', '2012-10-03 21:32:50', 'Rg==', '1a6ddmcd', 1, 1, 1, '2012-09-12 10:00:00'),
(12, 'Introductie week', 'Net  al alle vorige intro''s is dit de intro van Zwolle.\nSpeciaal voor iedereen!\n\nDit wordt [color=#4000BF:q5u7piz7]epic[/color:q5u7piz7]!\nJe hebt nodig:\n\n[list:q5u7piz7][*:q5u7piz7]bier [/*:m:q5u7piz7][*:q5u7piz7]bier [/*:m:q5u7piz7][*:q5u7piz7]motivatie [/*:m:q5u7piz7][*:q5u7piz7]slaapzak[/*:m:q5u7piz7][/list:u:q5u7piz7]\n\n[url href=www.intro-informatica.nl]KLIK HIER![/url]', '2012-08-28 12:00:00', '2012-09-01 12:00:00', 0, '2012-08-25 23:59:59', 50, '0.00', '0.00', 'Verzamelen op T5 van het T gebouw op het windesheim', 0, 0, '', 15, 2, '::1', '2012-08-19 19:17:27', '2012-10-03 21:32:50', 'AkA=', 'q5u7piz7', 1, 1, 1, '2012-08-25 21:59:59'),
(13, 'Introductie week', 'Net  al alle vorige intro''s is dit de intro van Zwolle.\nSpeciaal voor iedereen!\n\nDit wordt [color=#4000BF:fwuca1f6]epic[/color:fwuca1f6]!\nJe hebt nodig:\n\n[list:fwuca1f6][*:fwuca1f6]bier [/*:m:fwuca1f6][*:fwuca1f6]bier [/*:m:fwuca1f6][*:fwuca1f6]motivatie [/*:m:fwuca1f6][*:fwuca1f6]slaapzak[/*:m:fwuca1f6][/list:u:fwuca1f6]\n\n[url href=www.intro-informatica.nl]KLIK HIER![/url]', '2012-08-28 12:00:00', '2012-09-01 12:00:00', 0, '2012-08-25 23:59:59', 50, '0.00', '0.00', 'Verzamelen op T5 van het T gebouw op het windesheim', 1, 0, '', 15, 2, '::1', '2012-08-19 19:21:53', '2012-10-03 21:32:50', 'AkA=', 'fwuca1f6', 1, 1, 1, '2012-08-25 21:59:59'),
(14, 'de enroll test', 'hallo', '2012-09-12 12:00:00', '2012-09-18 12:00:00', 0, '2012-09-12 12:00:00', 0, '0.00', '0.00', 'sfsefsf', 0, 0, '', 15, 2, '::1', '2012-08-19 19:26:29', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-09-12 10:00:00'),
(15, 'bruiswerk', 'Altijd weer de bruisweek!', '2012-08-23 09:00:00', '2012-08-25 16:00:00', 1, '2012-08-23 09:00:00', 0, '0.00', '0.00', 'In zwolle', 1, 0, '', 15, 2, '::1', '2012-08-21 00:57:54', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-08-23 07:00:00'),
(16, 'naar plaza', 'het is weer veel te druk', '2012-10-12 12:00:00', '2012-10-18 12:00:01', 1, '2012-10-12 11:59:59', 12, '0.00', '0.00', 'in plaza', 1, 0, '', 15, 2, '::1', '2012-09-20 13:30:12', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-10-12 09:59:59'),
(17, 'naar plaza', 'het is weer veel te druk', '2012-10-12 12:00:00', '2012-10-18 12:00:01', 1, '2012-10-12 11:59:59', 12, '0.00', '0.00', 'in plaza', 0, 0, '', 15, 2, '::1', '2012-09-20 13:34:58', '2012-10-03 21:32:50', '', '', 1, 1, 1, '2012-10-12 09:59:59'),
(18, 'AIP', '[size=200:19yxouxx]allemaal inschrijvben[/size:19yxouxx]\n\n[img:19yxouxx]https&#58;//fbcdn-sphotos-d-a&#46;akamaihd&#46;net/hphotos-ak-ash3/148829_386160598119373_1646421986_n&#46;jpg[/img:19yxouxx]\n&lt;noscript&gt;', '2012-09-27 20:00:00', '2012-09-27 20:00:00', 1, '2012-09-26 20:00:00', 0, '0.00', '0.00', 'HVP', 1, 0, '', 15, 2, '::1', '2012-09-24 09:27:19', '2012-10-03 21:32:50', 'DA==', '19yxouxx', 1, 1, 1, '2012-09-26 18:00:00'),
(19, 'Descripton test', '[b:13vqrv3h][size=200:13vqrv3h]gratus test [/size:13vqrv3h][/b:13vqrv3h]\n\n <!-- s:( --><img src="{SMILIES_PATH}/icon_e_sad.gif" alt=":(" title="Droevig" /><!-- s:( -->  <!-- s:? --><img src="{SMILIES_PATH}/icon_e_confused.gif" alt=":?" title="Verstrooid" /><!-- s:? -->  <!-- s:lol: --><img src="{SMILIES_PATH}/icon_lol.gif" alt=":lol:" title="Lachend" /><!-- s:lol: -->  <!-- s:oops: --><img src="{SMILIES_PATH}/icon_redface.gif" alt=":oops:" title="Beschaamd" /><!-- s:oops: -->  <!-- s:roll: --><img src="{SMILIES_PATH}/icon_rolleyes.gif" alt=":roll:" title="Rollende ogen" /><!-- s:roll: -->  <!-- s:!: --><img src="{SMILIES_PATH}/icon_exclaim.gif" alt=":!:" title="Uitroepingsteken" /><!-- s:!: --> \n\n[img:13vqrv3h]http://www.ct4me.net/images/dmbtest.gif[/img:13vqrv3h]', '2012-11-03 15:43:00', '2012-11-03 15:44:00', 0, '2012-11-03 15:43:00', 0, '0.00', '0.00', 'bij gerco', 0, 0, '', 15, 2, 'fe80::41be:40cf:2f3e:6e28', '2012-09-24 14:00:46', '2012-11-03 14:42:32', '', '', 1, 1, 1, '2012-11-03 14:43:00'),
(20, 'Het regend', '[size=200:2dn08dkf]Het is heel erg nat buiten[/size:2dn08dkf]\n\n[img:2dn08dkf]http&#58;//www&#46;langeman&#46;nl/pics_arr/test_arr&#46;jpg[/img:2dn08dkf]', '2013-08-23 11:07:00', '2013-08-25 12:06:05', 0, '2013-08-23 11:07:00', 0, '15.00', '8.00', 'in zwolle', 1, 0, '', 15, 2, 'fe80::41be:40cf:2f3e:6e28', '2012-09-24 15:33:30', '2012-11-03 07:24:56', 'DA==', '2dn08dkf', 1, 1, 1, '2013-08-23 09:07:00'),
(21, 'We gaan risk spelen v2', '[b:ni3ptijr]dit is de grote test[/b:ni3ptijr]\n\n[img:ni3ptijr]http&#58;//onviolence&#46;com/images/2010-10/risk-board-game&#46;jpg[/img:ni3ptijr]', '2013-08-23 12:07:00', '2013-08-25 12:08:00', 1, '2013-08-23 12:07:00', 0, '10.00', '5.60', 'aan de keuken tafel', 1, 0, '', 15, 2, 'fe80::41be:40cf:2f3e:6e28', '2012-09-25 18:51:20', '2012-11-03 08:32:31', 'SA==', 'ni3ptijr', 1, 1, 1, '2013-08-23 10:07:00');

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
-- Table structure for table `dc_activity_chancelog`
--

CREATE TABLE IF NOT EXISTS `dc_activity_chancelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification` text NOT NULL,
  `user_ip` varchar(45) NOT NULL,
  KEY `activity_id` (`id`),
  KEY `fk_Activity_chance_Activity1` (`activity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=272 ;

--
-- Dumping data for table `dc_activity_chancelog`
--

INSERT INTO `dc_activity_chancelog` (`id`, `activity_id`, `user_id`, `datetime`, `modification`, `user_ip`) VALUES
(5, 1, 1, '2012-03-24 13:02:57', 'dit is een test of deze fucntie werkt !@#$%^&amp;*():|{}?&gt;&lt;,./', '192.168.178.14'),
(6, 1, 1, '2012-03-24 13:09:20', 'dit is een test of deze fucntie werkt !@#$%^&amp;*():|{}?&gt;&lt;,./', '192.168.178.14'),
(7, 9, 2, '2012-09-19 15:40:52', '', '192.168.178.12'),
(8, 9, 2, '2012-09-19 19:09:11', '', '192.168.178.12'),
(9, 9, 2, '2012-09-19 19:12:27', '', '192.168.178.12'),
(10, 9, 2, '2012-09-19 19:14:09', '', '192.168.178.12'),
(11, 9, 2, '2012-09-19 19:14:45', '', '192.168.178.12'),
(12, 9, 2, '2012-09-19 19:15:21', '', '192.168.178.12'),
(13, 9, 2, '2012-09-19 19:18:40', '', '192.168.178.12'),
(14, 9, 2, '2012-09-19 19:19:33', '', '192.168.178.12'),
(15, 9, 2, '2012-09-19 19:20:17', '', '192.168.178.12'),
(16, 9, 2, '2012-09-19 19:21:32', '', '192.168.178.12'),
(17, 9, 2, '2012-09-19 19:22:36', '', '192.168.178.12'),
(18, 9, 2, '2012-09-19 19:22:55', '', '192.168.178.12'),
(19, 9, 2, '2012-09-19 19:23:08', '', '192.168.178.12'),
(20, 9, 2, '2012-09-19 19:25:32', '', '192.168.178.12'),
(21, 9, 2, '2012-09-19 19:26:09', '', '192.168.178.12'),
(22, 9, 2, '2012-09-19 19:26:40', '', '192.168.178.12'),
(23, 9, 2, '2012-09-19 19:27:36', '', '192.168.178.12'),
(24, 9, 2, '2012-09-19 19:28:43', '', '192.168.178.12'),
(25, 9, 2, '2012-09-19 19:29:23', '', '192.168.178.12'),
(26, 9, 2, '2012-09-19 19:29:30', '', '192.168.178.12'),
(27, 9, 2, '2012-09-19 19:29:58', '', '192.168.178.12'),
(28, 9, 2, '2012-09-19 19:30:21', '', '192.168.178.12'),
(29, 9, 2, '2012-09-19 19:31:01', '', '192.168.178.12'),
(30, 9, 2, '2012-09-19 19:32:06', '', '192.168.178.12'),
(31, 9, 2, '2012-09-19 19:33:49', '', '192.168.178.12'),
(32, 9, 2, '2012-09-19 19:34:32', 'name:De google website-&gt;de google website v2;', '192.168.178.12'),
(33, 9, 2, '2012-09-19 19:37:24', '', '192.168.178.12'),
(34, 9, 2, '2012-09-19 19:37:30', '', '192.168.178.12'),
(35, 9, 2, '2012-09-19 19:37:47', '', '192.168.178.12'),
(36, 9, 2, '2012-09-19 19:39:34', '', '192.168.178.12'),
(37, 9, 2, '2012-09-19 19:39:44', '', '192.168.178.12'),
(38, 9, 2, '2012-09-19 19:40:47', '', '192.168.178.12'),
(39, 9, 2, '2012-09-19 19:42:20', '', '192.168.178.12'),
(40, 9, 2, '2012-09-19 19:42:28', '', '192.168.178.12'),
(41, 9, 2, '2012-09-19 19:42:35', '', '192.168.178.12'),
(42, 9, 2, '2012-09-19 19:43:33', '', '192.168.178.12'),
(43, 9, 2, '2012-09-19 19:46:36', '', '192.168.178.12'),
(44, 9, 2, '2012-09-19 19:47:19', '', '192.168.178.12'),
(45, 9, 2, '2012-09-19 19:48:42', '', '192.168.178.12'),
(46, 9, 2, '2012-09-19 19:53:03', '', '192.168.178.12'),
(47, 9, 2, '2012-09-20 13:36:17', '', '::1'),
(48, 9, 2, '2012-09-20 13:37:00', '', '::1'),
(49, 9, 2, '2012-09-20 13:38:19', '', '::1'),
(50, 9, 2, '2012-09-20 13:46:05', '', '::1'),
(51, 9, 2, '2012-09-20 13:46:34', '', '::1'),
(52, 9, 2, '2012-09-20 13:56:03', '', '::1'),
(53, 9, 2, '2012-09-20 13:59:24', '', '::1'),
(54, 9, 2, '2012-09-20 14:02:22', '', '::1'),
(55, 9, 2, '2012-09-20 14:05:59', '', '::1'),
(56, 9, 2, '2012-09-20 14:12:11', '', '::1'),
(57, 9, 2, '2012-09-20 14:12:59', '', '::1'),
(58, 9, 2, '2012-09-20 14:13:11', '', '::1'),
(59, 9, 2, '2012-09-20 14:13:48', '', '::1'),
(60, 9, 2, '2012-09-20 14:13:57', '', '::1'),
(61, 9, 2, '2012-09-20 14:13:59', '', '::1'),
(62, 9, 2, '2012-09-20 14:14:13', '', '::1'),
(63, 9, 2, '2012-09-20 14:15:54', '', '::1'),
(64, 9, 2, '2012-09-20 14:19:56', '', '::1'),
(65, 9, 2, '2012-09-20 14:21:20', '', '::1'),
(66, 9, 2, '2012-09-20 14:34:33', '', '::1'),
(67, 9, 2, '2012-09-20 14:34:55', '', '::1'),
(68, 9, 2, '2012-09-20 14:35:19', '', '::1'),
(69, 9, 2, '2012-09-20 14:36:12', '', '::1'),
(70, 9, 2, '2012-09-20 14:36:49', '', '::1'),
(71, 9, 2, '2012-09-20 14:37:16', '', '::1'),
(72, 9, 2, '2012-09-20 14:38:53', '', '::1'),
(73, 9, 2, '2012-09-20 14:39:03', '', '::1'),
(74, 9, 2, '2012-09-20 14:39:43', '', '::1'),
(75, 9, 2, '2012-09-20 15:45:26', '', '::1'),
(76, 9, 2, '2012-09-20 15:46:35', '', '::1'),
(77, 9, 2, '2012-09-20 15:47:19', '', '::1'),
(78, 9, 2, '2012-09-20 15:52:40', '', '::1'),
(79, 9, 2, '2012-09-20 15:54:44', '', '::1'),
(80, 9, 2, '2012-09-20 15:55:28', '', '::1'),
(81, 9, 2, '2012-09-20 16:18:19', '', '::1'),
(82, 9, 2, '2012-09-20 16:19:05', '', '::1'),
(83, 9, 2, '2012-09-20 16:20:24', '', '::1'),
(84, 9, 2, '2012-09-23 14:58:11', '', 'fe80::41be:40cf:2f3e:6e28'),
(85, 9, 2, '2012-09-23 15:24:58', '', 'fe80::41be:40cf:2f3e:6e28'),
(86, 9, 2, '2012-09-23 15:38:52', '', 'fe80::41be:40cf:2f3e:6e28'),
(87, 9, 2, '2012-09-23 15:39:00', '', 'fe80::41be:40cf:2f3e:6e28'),
(88, 9, 54, '2012-09-23 15:40:59', '', 'fe80::41be:40cf:2f3e:6e28'),
(89, 9, 2, '2012-09-23 15:44:54', '', 'fe80::41be:40cf:2f3e:6e28'),
(90, 9, 2, '2012-09-23 15:45:18', '', 'fe80::41be:40cf:2f3e:6e28'),
(91, 9, 2, '2012-09-23 15:46:32', '', 'fe80::41be:40cf:2f3e:6e28'),
(92, 9, 54, '2012-09-23 15:46:40', '', 'fe80::41be:40cf:2f3e:6e28'),
(93, 9, 2, '2012-09-23 17:12:06', '', 'fe80::41be:40cf:2f3e:6e28'),
(94, 5, 2, '2012-09-23 17:44:41', 'commission:5-&gt;15;', 'fe80::41be:40cf:2f3e:6e28'),
(95, 9, 2, '2012-09-23 17:45:07', '', 'fe80::41be:40cf:2f3e:6e28'),
(96, 9, 2, '2012-09-23 18:23:55', '', 'fe80::41be:40cf:2f3e:6e28'),
(97, 9, 2, '2012-09-23 18:35:28', '', 'fe80::41be:40cf:2f3e:6e28'),
(98, 9, 2, '2012-09-23 18:37:11', '', 'fe80::41be:40cf:2f3e:6e28'),
(99, 9, 2, '2012-09-23 18:37:41', '', 'fe80::41be:40cf:2f3e:6e28'),
(100, 9, 54, '2012-09-23 18:39:53', '', 'fe80::41be:40cf:2f3e:6e28'),
(101, 16, 54, '2012-09-23 20:08:08', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(102, 16, 54, '2012-09-23 20:10:56', '', 'fe80::41be:40cf:2f3e:6e28'),
(103, 16, 54, '2012-09-23 20:10:59', '', 'fe80::41be:40cf:2f3e:6e28'),
(104, 17, 54, '2012-09-23 20:11:03', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(105, 9, 54, '2012-09-23 20:11:05', '', 'fe80::41be:40cf:2f3e:6e28'),
(106, 9, 54, '2012-09-23 20:12:35', '', 'fe80::41be:40cf:2f3e:6e28'),
(107, 9, 54, '2012-09-23 20:12:42', '', 'fe80::41be:40cf:2f3e:6e28'),
(108, 9, 54, '2012-09-23 20:12:43', '', 'fe80::41be:40cf:2f3e:6e28'),
(109, 9, 54, '2012-09-23 20:12:48', '', 'fe80::41be:40cf:2f3e:6e28'),
(110, 6, 2, '2012-09-23 20:13:14', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(111, 17, 2, '2012-09-23 20:13:18', '', 'fe80::41be:40cf:2f3e:6e28'),
(112, 9, 54, '2012-09-23 20:13:55', '', 'fe80::41be:40cf:2f3e:6e28'),
(113, 9, 54, '2012-09-23 20:14:02', '', 'fe80::41be:40cf:2f3e:6e28'),
(114, 9, 54, '2012-09-23 20:14:12', '', 'fe80::41be:40cf:2f3e:6e28'),
(115, 9, 54, '2012-09-23 20:14:25', '', 'fe80::41be:40cf:2f3e:6e28'),
(116, 9, 54, '2012-09-23 20:14:30', '', 'fe80::41be:40cf:2f3e:6e28'),
(117, 9, 54, '2012-09-23 20:14:44', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(118, 16, 54, '2012-09-23 20:14:47', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(119, 17, 54, '2012-09-23 20:14:48', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(120, 9, 54, '2012-09-23 20:14:51', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(121, 16, 54, '2012-09-23 20:15:22', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(122, 16, 2, '2012-09-23 20:16:25', '', 'fe80::41be:40cf:2f3e:6e28'),
(123, 7, 2, '2012-09-23 20:18:14', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(124, 7, 2, '2012-09-23 20:18:26', 'commission:14-&gt;15;', 'fe80::41be:40cf:2f3e:6e28'),
(125, 18, 2, '2012-09-24 09:29:54', '', '::1'),
(126, 18, 2, '2012-09-24 09:30:25', '', '::1'),
(127, 18, 2, '2012-09-24 09:31:43', '', '::1'),
(128, 18, 2, '2012-09-24 09:32:11', 'active:-&gt;1;', '::1'),
(129, 18, 2, '2012-09-24 09:34:08', '', '::1'),
(130, 18, 2, '2012-09-24 09:54:04', '', '::1'),
(131, 18, 2, '2012-09-24 09:59:08', '', '::1'),
(132, 16, 2, '2012-09-24 13:08:12', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(133, 7, 2, '2012-09-24 13:08:12', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(134, 6, 2, '2012-09-24 13:08:13', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(135, 16, 2, '2012-09-24 13:20:59', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(136, 16, 2, '2012-09-24 13:21:09', '', 'fe80::41be:40cf:2f3e:6e28'),
(137, 6, 2, '2012-09-24 13:28:03', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(138, 6, 2, '2012-09-24 13:28:28', 'name:Zet de bank maar op het terras-&gt;Zet de bank maar op het terras v2;commission:5-&gt;15;', 'fe80::41be:40cf:2f3e:6e28'),
(139, 9, 2, '2012-09-24 13:34:52', '', 'fe80::41be:40cf:2f3e:6e28'),
(140, 9, 2, '2012-09-24 13:36:07', '', 'fe80::41be:40cf:2f3e:6e28'),
(141, 9, 2, '2012-09-24 13:36:21', '', 'fe80::41be:40cf:2f3e:6e28'),
(142, 9, 2, '2012-09-24 13:36:33', '', 'fe80::41be:40cf:2f3e:6e28'),
(143, 9, 2, '2012-09-24 13:42:11', '', 'fe80::41be:40cf:2f3e:6e28'),
(144, 9, 2, '2012-09-24 13:43:38', '', 'fe80::41be:40cf:2f3e:6e28'),
(145, 9, 2, '2012-09-24 13:44:05', '', 'fe80::41be:40cf:2f3e:6e28'),
(146, 9, 2, '2012-09-24 13:47:42', '', 'fe80::41be:40cf:2f3e:6e28'),
(147, 9, 2, '2012-09-24 13:49:03', '', 'fe80::41be:40cf:2f3e:6e28'),
(148, 9, 2, '2012-09-24 13:49:20', '', 'fe80::41be:40cf:2f3e:6e28'),
(149, 9, 2, '2012-09-24 13:49:23', '', 'fe80::41be:40cf:2f3e:6e28'),
(150, 9, 2, '2012-09-24 13:53:08', '', 'fe80::41be:40cf:2f3e:6e28'),
(151, 9, 2, '2012-09-24 13:53:44', '', 'fe80::41be:40cf:2f3e:6e28'),
(152, 9, 2, '2012-09-24 13:55:24', 'price_member:10-&gt;18.7;', 'fe80::41be:40cf:2f3e:6e28'),
(153, 9, 2, '2012-09-24 13:56:00', '', 'fe80::41be:40cf:2f3e:6e28'),
(154, 9, 2, '2012-09-24 13:56:09', 'price_member:18.7-&gt;5;', 'fe80::41be:40cf:2f3e:6e28'),
(155, 9, 2, '2012-09-24 13:56:33', 'price:60.7-&gt;6;', 'fe80::41be:40cf:2f3e:6e28'),
(156, 19, 2, '2012-09-24 14:00:53', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(157, 19, 2, '2012-09-24 14:02:12', '', 'fe80::41be:40cf:2f3e:6e28'),
(158, 9, 2, '2012-09-24 14:13:37', '', 'fe80::41be:40cf:2f3e:6e28'),
(159, 9, 2, '2012-09-24 14:24:49', '', 'fe80::41be:40cf:2f3e:6e28'),
(160, 9, 2, '2012-09-24 14:31:35', '', 'fe80::41be:40cf:2f3e:6e28'),
(161, 9, 2, '2012-09-24 14:45:55', '', 'fe80::41be:40cf:2f3e:6e28'),
(162, 9, 2, '2012-09-24 14:48:40', '', 'fe80::41be:40cf:2f3e:6e28'),
(163, 9, 2, '2012-09-24 14:49:43', '', 'fe80::41be:40cf:2f3e:6e28'),
(164, 9, 2, '2012-09-24 14:50:09', '', 'fe80::41be:40cf:2f3e:6e28'),
(165, 9, 2, '2012-09-24 15:04:47', '', 'fe80::41be:40cf:2f3e:6e28'),
(166, 9, 2, '2012-09-24 15:09:49', '', 'fe80::41be:40cf:2f3e:6e28'),
(167, 9, 2, '2012-09-24 15:28:26', '', 'fe80::41be:40cf:2f3e:6e28'),
(168, 20, 2, '2012-09-24 15:33:35', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(169, 20, 2, '2012-09-24 15:39:49', '', 'fe80::41be:40cf:2f3e:6e28'),
(170, 20, 2, '2012-09-25 18:32:39', '', 'fe80::41be:40cf:2f3e:6e28'),
(171, 20, 2, '2012-09-25 18:49:07', '', 'fe80::41be:40cf:2f3e:6e28'),
(172, 20, 2, '2012-09-25 18:49:24', '', 'fe80::41be:40cf:2f3e:6e28'),
(173, 21, 2, '2012-09-25 18:58:11', '', 'fe80::41be:40cf:2f3e:6e28'),
(174, 21, 2, '2012-09-25 18:59:04', '', 'fe80::41be:40cf:2f3e:6e28'),
(175, 21, 2, '2012-09-25 18:59:30', '', 'fe80::41be:40cf:2f3e:6e28'),
(176, 21, 2, '2012-09-25 19:01:01', '', 'fe80::41be:40cf:2f3e:6e28'),
(177, 21, 2, '2012-09-25 19:05:49', '', 'fe80::41be:40cf:2f3e:6e28'),
(178, 21, 2, '2012-09-25 19:11:47', '', 'fe80::41be:40cf:2f3e:6e28'),
(179, 21, 2, '2012-09-25 19:12:31', '', 'fe80::41be:40cf:2f3e:6e28'),
(180, 21, 2, '2012-09-25 19:12:49', '', 'fe80::41be:40cf:2f3e:6e28'),
(181, 21, 2, '2012-09-25 19:13:10', '', 'fe80::41be:40cf:2f3e:6e28'),
(182, 21, 2, '2012-09-25 19:13:38', '', 'fe80::41be:40cf:2f3e:6e28'),
(183, 20, 2, '2012-09-25 19:14:45', '', 'fe80::41be:40cf:2f3e:6e28'),
(184, 9, 2, '2012-09-25 19:15:06', '', 'fe80::41be:40cf:2f3e:6e28'),
(185, 9, 2, '2012-09-25 19:15:32', '', 'fe80::41be:40cf:2f3e:6e28'),
(186, 18, 2, '2012-09-25 19:16:37', '', 'fe80::41be:40cf:2f3e:6e28'),
(187, 18, 2, '2012-09-25 19:18:26', '', 'fe80::41be:40cf:2f3e:6e28'),
(188, 18, 2, '2012-09-25 19:18:45', '', 'fe80::41be:40cf:2f3e:6e28'),
(189, 21, 2, '2012-09-25 19:31:27', 'name:We gaan risk spelen-&gt;We gaan risk spelen v2;startDatetime:2013-08-23 12:00:00-&gt;2013-08-23 12:07:00;enrollDateTime:2013-08-23 12:00:00-&gt;2013-08-23 12:07:00;', 'fe80::41be:40cf:2f3e:6e28'),
(190, 21, 2, '2012-09-26 15:13:18', 'enroll:0-&gt;1;', '::1'),
(191, 21, 2, '2012-09-26 15:13:24', 'active:-&gt;1;', '::1'),
(192, 9, 54, '2012-10-01 10:55:17', '', '::1'),
(193, 9, 54, '2012-10-01 11:44:01', '', '::1'),
(194, 9, 54, '2012-10-01 11:45:23', '', '::1'),
(195, 9, 54, '2012-10-01 11:45:33', '', '::1'),
(196, 9, 54, '2012-10-01 11:54:15', '', '::1'),
(197, 9, 54, '2012-10-01 11:55:54', '', '::1'),
(198, 9, 54, '2012-10-01 11:57:27', '', '::1'),
(199, 9, 54, '2012-10-01 11:58:56', '', '::1'),
(200, 9, 54, '2012-10-01 11:59:38', '', '::1'),
(201, 9, 54, '2012-10-01 12:01:45', '', '::1'),
(202, 9, 54, '2012-10-01 12:08:40', '', '::1'),
(203, 9, 54, '2012-10-01 12:09:08', '', '::1'),
(204, 9, 54, '2012-10-01 12:09:35', '', '::1'),
(205, 16, 54, '2012-10-01 12:09:48', '', '::1'),
(206, 16, 54, '2012-10-01 12:12:45', '', '::1'),
(207, 21, 2, '2012-10-03 17:32:02', '', '::1'),
(208, 21, 2, '2012-10-03 17:32:59', '', '::1'),
(209, 21, 2, '2012-10-03 18:02:01', 'active:1-&gt;0;', '::1'),
(210, 21, 2, '2012-10-03 18:02:03', 'active:-&gt;1;', '::1'),
(211, 21, 2, '2012-10-03 18:02:24', 'active:1-&gt;0;', '::1'),
(212, 5, 2, '2012-10-03 18:07:14', 'commission:5-&gt;15;', '::1'),
(213, 21, 2, '2012-10-03 21:27:00', 'enroll:1-&gt;;', 'fe80::41be:40cf:2f3e:6e28'),
(214, 21, 2, '2012-10-03 21:27:53', '', 'fe80::41be:40cf:2f3e:6e28'),
(215, 21, 2, '2012-10-03 21:30:02', '', 'fe80::41be:40cf:2f3e:6e28'),
(216, 21, 2, '2012-10-03 21:33:36', '', 'fe80::41be:40cf:2f3e:6e28'),
(217, 21, 2, '2012-10-03 22:06:33', '', 'fe80::41be:40cf:2f3e:6e28'),
(218, 21, 2, '2012-10-03 22:07:54', '', 'fe80::41be:40cf:2f3e:6e28'),
(219, 21, 2, '2012-10-03 22:08:58', '', 'fe80::41be:40cf:2f3e:6e28'),
(220, 21, 2, '2012-10-03 22:23:30', '', 'fe80::41be:40cf:2f3e:6e28'),
(221, 21, 2, '2012-10-03 22:29:31', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(222, 21, 2, '2012-10-03 22:29:33', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(223, 21, 2, '2012-10-03 22:32:41', '', 'fe80::41be:40cf:2f3e:6e28'),
(224, 21, 2, '2012-10-03 23:04:37', 'enroll:0-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(225, 21, 2, '2012-10-03 23:04:43', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(226, 21, 2, '2012-10-03 23:23:25', 'enrollDateTime:2013-08-23 12:07:00-&gt;2012-10-04 01:24:00;', 'fe80::41be:40cf:2f3e:6e28'),
(227, 21, 2, '2012-10-03 23:51:28', 'enrollDateTime:2012-10-04 01:24:00-&gt;2012-10-04 01:55:00;', 'fe80::41be:40cf:2f3e:6e28'),
(228, 21, 2, '2012-10-03 23:54:50', 'enrollDateTime:2012-10-04 01:55:00-&gt;2012-10-04 02:00:00;', 'fe80::41be:40cf:2f3e:6e28'),
(229, 21, 2, '2012-10-04 00:00:33', 'enrollDateTime:2012-10-04 02:00:00-&gt;2012-10-04 03:00:00;', 'fe80::41be:40cf:2f3e:6e28'),
(230, 21, 2, '2012-10-04 00:04:53', 'enrollDateTime:2012-10-04 03:00:00-&gt;2012-10-04 02:05:00;', 'fe80::41be:40cf:2f3e:6e28'),
(231, 21, 2, '2012-10-06 10:27:16', 'enrollDateTime:2012-10-04 02:05:00-&gt;2012-10-07 02:05:00;', 'fe80::41be:40cf:2f3e:6e28'),
(232, 21, 2, '2012-10-06 10:28:55', '', 'fe80::41be:40cf:2f3e:6e28'),
(233, 21, 2, '2012-10-06 10:31:08', 'unsubscribe_max_datetime:2013-08-23 12:07:00-&gt;2012-10-10 12:07:00;', 'fe80::41be:40cf:2f3e:6e28'),
(234, 21, 2, '2012-10-06 10:31:20', '', 'fe80::41be:40cf:2f3e:6e28'),
(235, 21, 2, '2012-10-06 10:31:27', '', 'fe80::41be:40cf:2f3e:6e28'),
(236, 21, 2, '2012-10-06 10:31:47', '', 'fe80::41be:40cf:2f3e:6e28'),
(237, 21, 2, '2012-10-06 10:35:58', 'enrollDateTime:2012-10-07 02:05:00-&gt;2012-10-06 12:36:00;unsubscribe_max_datetime:2012-10-10 12:07:00-&gt;2012-10-06 12:37:00;', 'fe80::41be:40cf:2f3e:6e28'),
(238, 21, 2, '2012-10-06 10:37:58', 'enrollDateTime:2012-10-06 12:36:00-&gt;2012-10-06 12:38:00;unsubscribe_max_datetime:2012-10-06 12:37:00-&gt;2012-10-06 12:39:00;', 'fe80::41be:40cf:2f3e:6e28'),
(239, 21, 2, '2012-10-06 11:13:17', 'enrollDateTime:2012-10-06 12:38:00-&gt;2012-10-06 13:38:00;unsubscribe_max_datetime:2012-10-06 12:39:00-&gt;2012-10-06 13:39:00;', 'fe80::41be:40cf:2f3e:6e28'),
(240, 21, 2, '2012-10-06 11:13:48', 'enrollDateTime:2012-10-06 13:38:00-&gt;2012-10-06 13:14:00;', 'fe80::41be:40cf:2f3e:6e28'),
(241, 21, 2, '2012-10-06 12:18:32', 'enrollDateTime:2012-10-06 13:14:00-&gt;2012-10-06 14:19:00;unsubscribe_max_datetime:2012-10-06 13:39:00-&gt;2012-10-06 14:20:00;', 'fe80::41be:40cf:2f3e:6e28'),
(242, 21, 2, '2012-10-06 12:20:47', 'enrollDateTime:2012-10-06 14:19:00-&gt;2012-10-06 14:25:00;unsubscribe_max_datetime:2012-10-06 14:20:00-&gt;2012-10-06 14:35:00;', 'fe80::41be:40cf:2f3e:6e28'),
(243, 21, 54, '2012-10-06 15:40:36', 'enrollDateTime:2012-10-06 14:25:00-&gt;2012-10-06 17:50:00;unsubscribe_max_datetime:2012-10-06 14:35:00-&gt;2012-10-06 17:55:00;commission:15-&gt;14;', '::1'),
(244, 21, 54, '2012-10-06 15:40:39', 'commission:15-&gt;14;', '::1'),
(245, 21, 54, '2012-10-06 15:41:48', 'enrollDateTime:2012-10-06 17:50:00-&gt;2012-10-06 17:42:00;unsubscribe_max_datetime:2012-10-06 17:55:00-&gt;2012-10-06 17:43:00;commission:15-&gt;14;', '::1'),
(246, 21, 54, '2012-10-06 15:42:47', 'enrollDateTime:2012-10-06 17:42:00-&gt;2012-10-06 17:43:00;unsubscribe_max_datetime:2012-10-06 17:43:00-&gt;2012-10-06 17:45:00;commission:15-&gt;14;', '::1'),
(247, 21, 2, '2012-10-13 14:22:43', 'active:1-&gt;0;', '::1'),
(248, 21, 2, '2012-10-13 14:22:45', 'active:-&gt;1;', '::1'),
(249, 6, 2, '2012-10-13 14:22:50', 'active:1-&gt;0;', '::1'),
(250, 5, 2, '2012-10-13 14:22:51', 'active:1-&gt;0;', '::1'),
(251, 21, 2, '2012-11-03 07:23:34', 'enrollDateTime:2012-10-06 17:43:00-&gt;2013-08-23 12:07:00;unsubscribe_max_datetime:2012-10-06 17:45:00-&gt;2013-08-23 12:07:00;', 'fe80::41be:40cf:2f3e:6e28'),
(252, 20, 2, '2012-11-03 07:24:13', '', 'fe80::41be:40cf:2f3e:6e28'),
(253, 20, 2, '2012-11-03 07:24:56', '', 'fe80::41be:40cf:2f3e:6e28'),
(254, 9, 2, '2012-11-03 07:30:01', 'enrollDateTime:2013-04-05 00:00:00-&gt;2013-05-05 12:50:15;unsubscribe_max_datetime:2013-04-05 00:00:00-&gt;2013-05-05 12:50:15;', 'fe80::41be:40cf:2f3e:6e28'),
(255, 9, 2, '2012-11-03 07:30:23', 'enroll:0-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(256, 21, 2, '2012-11-03 08:28:11', '', 'fe80::41be:40cf:2f3e:6e28'),
(257, 21, 2, '2012-11-03 08:29:53', '', 'fe80::41be:40cf:2f3e:6e28'),
(258, 21, 2, '2012-11-03 08:30:00', '', 'fe80::41be:40cf:2f3e:6e28'),
(259, 21, 2, '2012-11-03 08:30:12', '', 'fe80::41be:40cf:2f3e:6e28'),
(260, 21, 2, '2012-11-03 08:30:29', '', 'fe80::41be:40cf:2f3e:6e28'),
(261, 21, 2, '2012-11-03 08:30:43', '', 'fe80::41be:40cf:2f3e:6e28'),
(262, 21, 2, '2012-11-03 08:30:50', '', 'fe80::41be:40cf:2f3e:6e28'),
(263, 21, 2, '2012-11-03 08:31:54', 'price:0-&gt;10;', 'fe80::41be:40cf:2f3e:6e28'),
(264, 21, 2, '2012-11-03 08:32:04', '', 'fe80::41be:40cf:2f3e:6e28'),
(265, 21, 2, '2012-11-03 08:32:10', '', 'fe80::41be:40cf:2f3e:6e28'),
(266, 21, 2, '2012-11-03 08:32:20', '', 'fe80::41be:40cf:2f3e:6e28'),
(267, 21, 2, '2012-11-03 08:32:31', 'price_member:0-&gt;5.6;', 'fe80::41be:40cf:2f3e:6e28'),
(268, 7, 2, '2012-11-03 09:16:22', 'active:-&gt;1;', 'fe80::41be:40cf:2f3e:6e28'),
(269, 7, 2, '2012-11-03 09:16:23', 'active:1-&gt;0;', 'fe80::41be:40cf:2f3e:6e28'),
(270, 19, 2, '2012-11-03 14:42:22', 'startDatetime:2012-12-06 12:08:56-&gt;2012-11-03 15:43:00;endDatetime:2012-12-06 12:08:57-&gt;2012-11-03 15:44:00;enrollDateTime:2012-12-06 12:08:56-&gt;2012-11-03 15:43:00;unsubscribe_max_datetime:2012-12-06 12:08:56-&gt;2012-11-03 15:43:00;', '::1'),
(271, 19, 2, '2012-11-03 14:42:32', 'active:1-&gt;0;', '::1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dc_activity_comming_active`
--
CREATE TABLE IF NOT EXISTS `dc_activity_comming_active` (
`id` int(11)
,`name` varchar(100)
,`startdate` datetime
);
-- --------------------------------------------------------

--
-- Table structure for table `dc_activity_enroll`
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
-- Dumping data for table `dc_activity_enroll`
--

INSERT INTO `dc_activity_enroll` (`activity_id`, `user_id`, `user_ip`, `comments`, `datetime`, `price`, `price_payed`, `status`) VALUES
(9, 2, 'fe80::41be:40cf:2f3e:6e28', '', '2012-11-03 07:30:28', '5.00', '5.00', 'yes'),
(21, 2, 'fe80::41be:40cf:2f3e:6e28', '', '2012-11-03 07:24:30', '0.00', '5.60', 'yes'),
(21, 54, 'fe80::41be:40cf:2f3e:6e28', '', '2012-11-03 08:39:13', '10.00', '5.60', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `dc_activity_errorlog`
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
-- Dumping data for table `dc_activity_errorlog`
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
(9, 2, '2012-04-07 11:53:18', '192.168.2.35', 'Function: user_change_status; User already this status'),
(9, 2, '2012-09-19 19:12:27', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:14:09', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:14:45', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:15:21', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:18:40', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:19:33', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:20:17', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:21:32', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:22:36', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:22:55', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:23:08', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:26:09', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:26:40', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:27:36', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:28:43', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:29:23', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:29:30', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:29:58', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:30:21', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:31:01', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:32:06', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:33:49', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:34:32', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:37:24', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:37:30', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:37:47', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:39:34', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:39:44', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:40:47', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:48:42', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-19 19:53:03', '192.168.178.12', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:36:17', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:37:00', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:38:19', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:46:05', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:46:34', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:56:03', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:58:41', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 13:59:24', '::1', 'Function: save(); Save the activity: No new or chanced rows'),
(9, 2, '2012-09-20 14:37:16', '::1', 'Function: set_user_manager; UPDATE status: No new record'),
(9, 2, '2012-09-20 14:38:53', '::1', 'Function: set_user_manager; UPDATE status: No new record'),
(21, 2, '2012-10-04 00:05:16', 'fe80::41be:40cf:2f3e:6e28', 'Function: set_user_status; Activity is in the past'),
(21, 2, '2012-10-04 00:05:32', 'fe80::41be:40cf:2f3e:6e28', 'Function: set_user_status; Activity is in the past'),
(21, 54, '2012-10-06 11:14:41', 'fe80::41be:40cf:2f3e:6e28', 'Function: set_user_status; Activity is in the past'),
(21, 54, '2012-10-06 11:14:49', 'fe80::41be:40cf:2f3e:6e28', 'Function: set_user_status; Activity is in the past'),
(21, 54, '2012-10-06 11:15:02', 'fe80::41be:40cf:2f3e:6e28', 'Function: set_user_status; Activity is in the past'),
(21, 2, '2012-10-06 11:17:07', 'fe80::41be:40cf:2f3e:6e28', 'Function: set_user_status; Activity is in the past'),
(21, 54, '2012-10-06 15:42:02', '::1', 'Function: set_user_status; Activity is in the past'),
(21, 54, '2012-10-06 15:42:10', '::1', 'Function: set_user_status; Activity is in the past'),
(21, 54, '2012-10-06 15:43:11', '::1', 'Function: set_user_status; Activity is in the past');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dc_activity_full_list_active`
--
CREATE TABLE IF NOT EXISTS `dc_activity_full_list_active` (
`id` int(11)
,`name` varchar(100)
,`startdate` datetime
);
-- --------------------------------------------------------

--
-- Table structure for table `dc_activity_groupacces`
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
-- Dumping data for table `dc_activity_groupacces`
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
(5, 2, '2012-09-23 17:44:41', 0),
(5, 5, '2012-04-09 13:20:45', 0),
(6, 2, '2012-09-24 13:28:28', 0),
(6, 5, '2012-04-09 13:20:45', 1),
(7, 2, '2012-09-23 20:18:26', 0),
(7, 5, '2012-04-09 13:20:45', 0),
(9, 1, '2012-09-20 16:20:24', 0),
(9, 2, '2012-09-23 17:45:07', 0),
(9, 5, '2012-04-09 13:20:45', 0),
(9, 9, '2012-08-19 18:16:35', 0),
(9, 13, '2012-09-20 15:52:40', 0),
(9, 15, '2012-09-20 15:52:40', 1),
(11, 1, '2012-08-19 18:16:35', 0),
(11, 2, '2012-08-19 18:16:35', 0),
(11, 5, '2012-08-19 18:16:35', 0),
(12, 1, '2012-08-19 19:17:27', 0),
(12, 2, '2012-08-19 19:17:27', 0),
(13, 1, '2012-08-19 19:21:53', 0),
(13, 2, '2012-08-19 19:21:53', 0),
(14, 2, '2012-08-19 19:26:29', 0),
(15, 2, '2012-08-21 00:57:54', 0),
(16, 2, '2012-09-23 20:16:25', 0),
(18, 2, '2012-09-24 09:34:08', 0),
(18, 11, '2012-09-24 09:27:19', 0),
(18, 13, '2012-09-24 09:27:19', 0),
(18, 14, '2012-09-24 09:27:19', 0),
(18, 15, '2012-09-24 09:27:19', 0),
(19, 1, '2012-09-24 14:00:46', 0),
(19, 2, '2012-09-24 14:00:46', 0),
(19, 4, '2012-09-24 14:00:46', 0),
(19, 5, '2012-09-24 14:00:46', 0),
(19, 9, '2012-09-24 14:00:46', 0),
(19, 10, '2012-09-24 14:00:46', 0),
(19, 11, '2012-09-24 14:00:46', 0),
(19, 13, '2012-09-24 14:00:46', 0),
(19, 14, '2012-09-24 14:00:46', 0),
(19, 15, '2012-09-24 14:00:46', 0),
(20, 1, '2012-09-24 15:33:30', 0),
(20, 2, '2012-09-24 15:33:30', 0),
(20, 4, '2012-09-24 15:33:30', 0),
(20, 5, '2012-09-24 15:33:30', 0),
(20, 9, '2012-09-24 15:33:30', 0),
(20, 10, '2012-09-24 15:33:30', 0),
(20, 11, '2012-09-24 15:33:30', 0),
(20, 13, '2012-09-24 15:33:30', 0),
(20, 14, '2012-09-24 15:33:30', 0),
(20, 15, '2012-09-24 15:33:30', 0),
(21, 2, '2012-09-25 18:51:20', 0),
(21, 15, '2012-10-03 22:23:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_activity_group_manage`
--

CREATE TABLE IF NOT EXISTS `dc_activity_group_manage` (
  `activity_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`activity_id`,`group_id`),
  KEY `fk_Activity_show_Activity1` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_activity_group_manage`
--

INSERT INTO `dc_activity_group_manage` (`activity_id`, `group_id`, `created`, `disabled`) VALUES
(1, 1, '2012-03-17 15:11:20', 1),
(1, 20, '2012-02-19 14:25:19', 0),
(9, 2, '2012-09-20 14:35:19', 0),
(9, 9, '2012-08-19 19:21:53', 1),
(9, 42, '2012-02-19 14:25:19', 1),
(9, 54, '2012-09-20 14:34:55', 1),
(9, 55, '2012-09-20 14:34:55', 1),
(9, 56, '2012-09-20 14:37:16', 1),
(12, 2, '2012-08-19 19:17:27', 0),
(16, 54, '2012-09-20 13:30:12', 0),
(16, 55, '2012-09-20 13:30:12', 0),
(17, 54, '2012-09-20 13:34:58', 0),
(17, 55, '2012-09-20 13:34:58', 0),
(18, 55, '2012-09-24 09:27:19', 0),
(19, 15, '2012-11-03 14:42:22', 0),
(20, 14, '2012-11-03 07:24:13', 0),
(20, 15, '2012-11-03 07:24:13', 0),
(21, 5, '2012-10-03 22:08:58', 0),
(21, 13, '2012-10-03 22:23:30', 0),
(21, 14, '2012-10-03 22:08:58', 0),
(21, 15, '2012-10-03 22:23:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_activity_read`
--

CREATE TABLE IF NOT EXISTS `dc_activity_read` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`activity_id`,`user_id`),
  KEY `fk_Activaty_read_Activity1` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_activity_read`
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
-- Table structure for table `dc_attachments`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dc_attachments`
--

INSERT INTO `dc_attachments` (`attach_id`, `post_msg_id`, `topic_id`, `in_message`, `poster_id`, `is_orphan`, `physical_filename`, `real_filename`, `download_count`, `attach_comment`, `extension`, `mimetype`, `filesize`, `filetime`, `thumbnail`) VALUES
(1, 14, 9, 0, 57, 0, '57_3df060e25252ea90b687bb26968f9b79', '1497477028_6_ZpsJ.png', 4, '', 'png', 'image/png', 308745, 1351971348, 1),
(2, 13, 9, 0, 58, 0, '58_48905488dce4dc45b987fcde3b191729', '31615.jpg', 2, '', 'jpg', 'image/jpeg', 77259, 1351971484, 1),
(3, 15, 7, 0, 57, 0, '57_15dda58ef58a1b22595e72db5513d527', 'D2anS.gif', 1, '', 'gif', 'image/gif', 531787, 1351971496, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_banlist`
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
-- Table structure for table `dc_bbcodes`
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
-- Table structure for table `dc_bookmarks`
--

CREATE TABLE IF NOT EXISTS `dc_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dc_bots`
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
-- Dumping data for table `dc_bots`
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
-- Table structure for table `dc_config`
--

CREATE TABLE IF NOT EXISTS `dc_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_config`
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
('attachment_quota', '104857600', 0),
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
('board3_announcements_archive_12', '1', 0),
('board3_announcements_day_12', '0', 0),
('board3_announcements_forum_exclude_12', '0', 0),
('board3_announcements_length_12', '200', 0),
('board3_announcements_permissions_12', '1', 0),
('board3_announcements_style_12', '0', 0),
('board3_attach_max_length_6', '15', 0),
('board3_attachments_exclude_6', '0', 0),
('board3_attachments_filetype_6', '', 0),
('board3_attachments_forum_exclude_6', '0', 0),
('board3_attachments_forum_ids_6', '', 0),
('board3_attachments_number_6', '8', 0),
('board3_birthdays_ahead_3', '30', 0),
('board3_calendar_sunday_color_18', '#FF0000', 0),
('board3_calendar_today_color_18', '#000000', 0),
('board3_custom_22_code', '', 0),
('board3_display_events_18', '1', 0),
('board3_display_jumpbox', '0', 0),
('board3_enable', '1', 0),
('board3_events_18', '', 0),
('board3_events_url_new_window_18', '0', 0),
('board3_forum_index', '1', 0),
('board3_global_announcements_forum_12', '', 0),
('board3_left_column', '1', 0),
('board3_left_column_width', '180', 0),
('board3_long_month_18', '1', 0),
('board3_max_topics_11', '10', 0),
('board3_menu_19', '', 0),
('board3_menu_url_new_window_19', '0', 0),
('board3_news_archive_13', '0', 0),
('board3_news_exclude_13', '0', 0),
('board3_news_forum_13', '14', 0),
('board3_news_length_13', '0', 0),
('board3_news_permissions_13', '1', 0),
('board3_news_show_last_13', '0', 0),
('board3_news_style_13', '0', 0),
('board3_number_of_announcements_12', '1', 0),
('board3_number_of_news_13', '1', 0),
('board3_phpbb_menu', '1', 0),
('board3_poll_allow_vote_14', '1', 0),
('board3_poll_exclude_id_14', '0', 0),
('board3_poll_hide_14', '1', 0),
('board3_poll_limit_14', '1', 0),
('board3_poll_topic_id_14', '15', 0),
('board3_portal_version', '2.0.0', 0),
('board3_recent_exclude_forums_11', '1', 0),
('board3_recent_forum_11', '', 0),
('board3_recent_title_limit_11', '100', 0),
('board3_right_column', '1', 0),
('board3_right_column_width', '250', 0),
('board3_show_all_news_13', '1', 0),
('board3_show_announcements_replies_views_12', '1', 0),
('board3_show_news_replies_views_13', '1', 0),
('board3_sunday_first_18', '1', 0),
('board3_user_menu_register_16', '1', 0),
('board3_version_check', '1', 0),
('board3_welcome_message_10', '', 0),
('board3_welcome_message_bitfield_10', '', 0),
('board3_welcome_message_uid_10', '', 0),
('board_contact', 'gercoversloot@gmail.com', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_dst', '1', 0),
('board_email', 'gercoversloot@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Met vriendelijke groeten, De Digitale commissie van gumbo millennium.nl nog een test', 0),
('board_hide_emails', '1', 0),
('board_startdate', '1327581813', 0),
('board_timezone', '1', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1351979758', 1),
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
('database_last_gc', '1351866856', 1),
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
('gzip_compress', '1', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '1', 0),
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
('max_filesize', '6291456', 0),
('max_filesize_pm', '6291456', 0),
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
('newest_user_colour', '', 1),
('newest_user_id', '58', 1),
('newest_username', 'lmd', 1),
('num_files', '3', 1),
('num_posts', '16', 1),
('num_topics', '10', 1),
('num_users', '6', 1),
('override_user_style', '1', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', '890ac0b68f091aaf', 0),
('queue_interval', '60', 0),
('rand_seed', '7fffd3ab106e5148d7f6cedd11382194', 1),
('rand_seed_last_update', '1351980591', 1),
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
('search_last_gc', '1351979803', 1),
('search_store_results', '1800', 0),
('search_type', 'fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '1', 0),
('server_name', '192.168.178.13', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1351980580', 1),
('session_length', '3600', 0),
('site_desc', 'Dubbel L Dubbel N, Dubbel Genieten', 0),
('sitename', 'Gumbo Millennium', 0),
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
('upload_dir_size', '917791', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('version', '3.0.11', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1351979682', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_confirm`
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
-- Table structure for table `dc_disallow`
--

CREATE TABLE IF NOT EXISTS `dc_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dc_drafts`
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
-- Table structure for table `dc_extensions`
--

CREATE TABLE IF NOT EXISTS `dc_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Dumping data for table `dc_extensions`
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
-- Table structure for table `dc_extension_groups`
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
-- Dumping data for table `dc_extension_groups`
--

INSERT INTO `dc_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 1, 1, '', 0, '', 0),
(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_forums`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dc_forums`
--

INSERT INTO `dc_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_posts`, `forum_topics`, `forum_topics_real`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `forum_options`, `display_subforum_list`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`) VALUES
(1, 0, 7, 10, '', 'Je eerste categorie', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 1, 1, 1, 2, '', 1327581813, 'nyxus', 'AA0000', 96, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 1, 8, 9, 'a:1:{i:1;a:2:{i:0;s:19:"Je eerste categorie";i:1;i:0;}}', 'Je eerste forum', 'Omschrijving van je eerste forum.', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 5, 2, 2, 9, 57, 'Re: gatus test', 1351969669, 'skizo', '', 112, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(8, 0, 11, 12, '', 'Project groepen', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 112, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(10, 0, 13, 18, '', 'Commissies', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 96, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(11, 10, 14, 17, 'a:1:{i:10;a:2:{i:0;s:10:"Commissies";i:1;i:0;}}', 'Digitale Commissie', 'Een speciaal forum alleen voor leden van de digitale commisie', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 2, 2, 2, 8, 2, 'Toekomst muziek activiteiten systeem', 1341999658, 'nyxus', 'AA0000', 112, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(12, 0, 19, 20, '', 'Test forum', 'Met dit forum worden testen gedaan', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 1, 0, 0, 0, 0, 0, '', 0, '', '', 96, 0, 0, 0, 0, 0, 0, 0, 7, 7, 1),
(13, 0, 1, 6, '', 'Publiek', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 112, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(14, 13, 2, 3, 'a:1:{i:13;a:2:{i:0;s:7:"Publiek";i:1;i:0;}}', 'Nieuws', 'Nieuws met betrekking tot de Studentenvereniging Gumbo Millennium', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 6, 3, 3, 15, 57, 'Re: De Woningzoeker; studenten gedupeerd!', 1351971602, 'skizo', '', 112, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(15, 13, 4, 5, 'a:1:{i:13;a:2:{i:0;s:7:"Publiek";i:1;i:0;}}', 'Poll', 'Poll voor hoofdpagina', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 3, 3, 3, 18, 57, 'Is het al weer tijd voor een kerstboom in plaza?', 1351971804, 'skizo', '', 112, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(16, 11, 15, 16, '', 'Contentpaginas', 'Statische content die dynamisch gaat worden.', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 112, 0, 1, 0, 1, 0, 0, 0, 7, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_forums_access`
--

CREATE TABLE IF NOT EXISTS `dc_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dc_forums_track`
--

CREATE TABLE IF NOT EXISTS `dc_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_forums_track`
--

INSERT INTO `dc_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 1341486740),
(2, 11, 1341999658),
(57, 2, 1351969669),
(57, 14, 1351971602),
(57, 15, 1351971861);

-- --------------------------------------------------------

--
-- Table structure for table `dc_forums_watch`
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
-- Table structure for table `dc_groups`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dc_groups`
--

INSERT INTO `dc_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_max_recipients`, `group_legend`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, '00AA00', 0, 0, 0, 0, 1),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, 'AA0000', 0, 0, 0, 0, 1),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '9E8DA7', 0, 0, 0, 5, 0),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(9, 1, 0, 0, 'Gumbo Leden', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1),
(10, 1, 0, 0, 'Oud leden', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(11, 1, 0, 0, 'A-Leden', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(13, 1, 0, 0, 'Bestuur', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(14, 1, 0, 0, 'AC', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(15, 0, 0, 0, 'DigitaleCommissie', 'voor de DC', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0),
(16, 0, 0, 0, 'Bras commissie', 'speciaal voor de bc', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_icons`
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
-- Dumping data for table `dc_icons`
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
-- Table structure for table `dc_lang`
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
-- Dumping data for table `dc_lang`
--

INSERT INTO `dc_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Group'),
(2, 'nl', 'nl', 'Dutch (Casual Honorifics)‎', 'Nederlands (Informeel)', 'phpBB.nl');

-- --------------------------------------------------------

--
-- Table structure for table `dc_log`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=960 ;

--
-- Dumping data for table `dc_log`
--

INSERT INTO `dc_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 2, 2, 0, 0, 0, '192.168.178.17', 1327581830, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:427:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/install/index.php</em><br /><br /><b>[phpBB Debug] PHP Warning</b>: in file <b>/includes/functions_messenger.php</b> on line <b>1621</b>: <b>mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()</b><br />\n<br />";}'),
(2, 0, 2, 0, 0, 0, '192.168.178.17', 1327581830, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:"3.0.9";}'),
(3, 0, 2, 0, 0, 0, '192.168.178.17', 1327581859, 'LOG_CONFIG_LOAD', ''),
(4, 2, 1, 0, 0, 0, '192.168.178.17', 1327933309, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:417:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/ucp.php</em><br /><br /><b>[phpBB Debug] PHP Warning</b>: in file <b>/includes/functions_messenger.php</b> on line <b>1621</b>: <b>mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()</b><br />\n<br />";}'),
(5, 0, 2, 0, 0, 0, '192.168.178.17', 1328176221, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(6, 0, 2, 0, 0, 0, '192.168.178.17', 1328176591, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:22:"Activiteiten commissie";}'),
(7, 0, 2, 0, 0, 0, '192.168.178.17', 1328180234, 'LOG_PURGE_CACHE', ''),
(8, 0, 2, 0, 0, 0, '127.0.0.1', 1328190141, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(9, 0, 2, 0, 0, 0, '127.0.0.1', 1328190158, 'LOG_CONFIG_SETTINGS', ''),
(10, 0, 2, 0, 0, 0, '127.0.0.1', 1328190498, 'LOG_ACL_ADD_USER_GLOBAL_U_', 'a:1:{i:0;s:4:"test";}'),
(11, 0, 2, 0, 0, 0, '127.0.0.1', 1328190942, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(12, 0, 2, 0, 0, 0, '127.0.0.1', 1328191414, 'LOG_PURGE_CACHE', ''),
(13, 0, 2, 0, 0, 0, '127.0.0.1', 1328193433, 'LOG_PURGE_CACHE', ''),
(14, 0, 2, 0, 0, 0, '127.0.0.1', 1328193587, 'LOG_PURGE_CACHE', ''),
(15, 0, 2, 0, 0, 0, '127.0.0.1', 1328193677, 'LOG_PURGE_CACHE', ''),
(16, 0, 2, 0, 0, 0, '192.168.178.17', 1328348139, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(17, 0, 2, 0, 0, 0, '192.168.178.17', 1328348349, 'LOG_ACL_ADD_MOD_GLOBAL_M_', 'a:1:{i:0;s:43:"<span class="sep">Globale moderators</span>";}'),
(18, 0, 2, 0, 0, 0, '192.168.178.17', 1328350366, 'LOG_CONFIG_LOAD', ''),
(19, 0, 2, 0, 0, 0, '192.168.178.17', 1328350376, 'LOG_PURGE_CACHE', ''),
(20, 0, 2, 0, 0, 0, '192.168.178.17', 1328350666, 'LOG_PURGE_CACHE', ''),
(21, 0, 2, 0, 0, 0, '192.168.178.17', 1328350916, 'LOG_PURGE_CACHE', ''),
(22, 0, 2, 0, 0, 0, '192.168.178.17', 1328351427, 'LOG_PURGE_CACHE', ''),
(23, 0, 2, 0, 0, 0, '127.0.0.1', 1329569219, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(24, 0, 2, 0, 0, 0, '127.0.0.1', 1329569666, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(25, 0, 2, 0, 0, 0, '192.168.178.14', 1332187708, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(26, 2, 1, 0, 0, 0, '192.168.178.20', 1332187748, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:417:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/ucp.php</em><br /><br /><b>[phpBB Debug] PHP Warning</b>: in file <b>/includes/functions_messenger.php</b> on line <b>1621</b>: <b>mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()</b><br />\n<br />";}'),
(27, 0, 2, 0, 0, 0, '192.168.178.14', 1332188240, 'LOG_USERS_ADDED', 'a:2:{i:0;s:14:"Administrators";i:1;s:10:"wrdallinga";}'),
(28, 0, 55, 0, 0, 0, '192.168.178.20', 1332188260, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(29, 0, 55, 0, 0, 0, '192.168.178.20', 1332188473, 'LOG_PROFILE_FIELD_CREATE', 'a:1:{i:0;s:19:"gumbo_status:Status";}'),
(30, 0, 55, 0, 0, 0, '192.168.178.20', 1332188547, 'LOG_PROFILE_FIELD_CREATE', 'a:1:{i:0;s:23:"gumbo_facebook:Facebook";}'),
(31, 0, 55, 0, 0, 0, '192.168.178.20', 1332189414, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:5:"Leden";}'),
(32, 0, 55, 0, 0, 0, '192.168.178.20', 1332189468, 'LOG_RANK_ADDED', 'a:1:{i:0;s:7:"Bestuur";}'),
(33, 0, 55, 0, 0, 0, '192.168.178.20', 1332189838, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:47:"<span class="sep">Newly registered users</span>";}'),
(34, 0, 55, 0, 0, 0, '192.168.178.20', 1332189903, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:9:"Oud leden";}'),
(35, 0, 55, 0, 0, 0, '192.168.178.20', 1332190141, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:7:"A-Leden";}'),
(36, 0, 55, 0, 0, 0, '192.168.178.20', 1332190202, 'LOG_RANK_UPDATED', 'a:1:{i:0;s:7:"Bestuur";}'),
(37, 0, 55, 0, 0, 0, '192.168.178.20', 1332190250, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:7:"Bestuur";}'),
(38, 0, 55, 0, 0, 0, '192.168.178.20', 1332190295, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:7:"Bestuur";}'),
(39, 0, 55, 0, 0, 0, '192.168.178.20', 1332190519, 'LOG_ACL_ADD_GROUP_GLOBAL_M_', 'a:1:{i:0;s:7:"Bestuur";}'),
(40, 0, 55, 0, 0, 0, '192.168.178.20', 1332190677, 'LOG_GROUP_DELETE', 'a:1:{i:0;s:7:"Bestuur";}'),
(41, 0, 55, 0, 0, 0, '192.168.178.20', 1332190696, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:7:"Bestuur";}'),
(42, 0, 2, 0, 0, 0, '192.168.178.14', 1332190744, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(43, 0, 2, 0, 0, 0, '192.168.178.14', 1332190772, 'LOG_GROUP_PROMOTED', 'a:2:{i:0;s:14:"Administrators";i:1;s:10:"wrdallinga";}'),
(44, 0, 2, 0, 0, 0, '192.168.178.14', 1332190789, 'LOG_GROUP_DEFAULTS', 'a:2:{i:0;s:14:"Administrators";i:1;s:10:"wrdallinga";}'),
(45, 0, 55, 0, 0, 0, '192.168.178.20', 1332190820, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(46, 0, 2, 0, 0, 0, '192.168.178.14', 1332190888, 'LOG_USER_USER_UPDATE', 'a:1:{i:0;s:10:"wrdallinga";}'),
(47, 0, 55, 0, 0, 0, '192.168.178.20', 1332191076, 'LOG_A_ROLE_ADD', 'a:1:{i:0;s:7:"Bestuur";}'),
(48, 0, 55, 0, 0, 0, '192.168.178.20', 1332191107, 'LOG_ACL_ADD_ADMIN_GLOBAL_A_', 'a:1:{i:0;s:7:"Bestuur";}'),
(49, 0, 55, 0, 0, 0, '192.168.178.20', 1332191221, 'LOG_GROUP_DELETE', 'a:1:{i:0;s:22:"Activiteiten commissie";}'),
(50, 0, 55, 0, 0, 0, '192.168.178.20', 1332191234, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:2:"AC";}'),
(51, 0, 1, 0, 0, 0, '192.168.178.14', 1332192159, 'LOG_UPDATE_DATABASE', 'a:2:{i:0;s:5:"3.0.9";i:1;s:6:"3.0.10";}'),
(52, 0, 55, 0, 0, 0, '192.168.178.20', 1332192736, 'LOG_FORUM_ADD', 'a:1:{i:0;s:5:"LHWPG";}'),
(53, 0, 55, 0, 0, 0, '192.168.178.20', 1332192794, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:5:"LHWPG";i:1;s:4:"test";}'),
(54, 0, 55, 0, 0, 0, '192.168.178.20', 1332192808, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:5:"LHWPG";i:1;s:41:"<span class="sep">Registered users</span>";}'),
(55, 0, 55, 0, 0, 0, '192.168.178.20', 1332192843, 'LOG_FORUM_ADD', 'a:1:{i:0;s:8:"Template";}'),
(56, 0, 55, 0, 0, 0, '192.168.178.20', 1332192852, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:8:"Template";i:1;s:41:"<span class="sep">Registered users</span>";}'),
(57, 0, 55, 0, 0, 0, '192.168.178.20', 1332192904, 'LOG_FORUM_SYNC', 'a:1:{i:0;s:8:"Template";}'),
(58, 0, 55, 0, 0, 0, '192.168.178.20', 1332192947, 'LOG_FORUM_ADD', 'a:1:{i:0;s:2:"PG";}'),
(59, 0, 55, 0, 0, 0, '192.168.178.20', 1332193093, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(60, 0, 55, 0, 0, 0, '192.168.178.20', 1332193223, 'LOG_FORUM_DEL_POSTS', 'a:1:{i:0;s:5:"LHWPG";}'),
(61, 0, 55, 0, 0, 0, '192.168.178.20', 1332193229, 'LOG_FORUM_DEL_POSTS', 'a:1:{i:0;s:8:"Template";}'),
(62, 0, 55, 0, 0, 0, '192.168.178.20', 1332193233, 'LOG_FORUM_DEL_POSTS', 'a:1:{i:0;s:2:"PG";}'),
(63, 0, 55, 0, 0, 0, '192.168.178.20', 1332193285, 'LOG_FORUM_ADD', 'a:1:{i:0;s:15:"Project groepen";}'),
(64, 0, 55, 0, 0, 0, '192.168.178.20', 1332193312, 'LOG_FORUM_ADD', 'a:1:{i:0;s:5:"LHWPG";}'),
(65, 0, 55, 0, 0, 0, '192.168.178.20', 1332193323, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:5:"LHWPG";i:1;s:15:"Project groepen";}'),
(66, 0, 55, 0, 0, 0, '192.168.178.20', 1332193337, 'LOG_FORUM_DEL_FORUM', 'a:1:{i:0;s:15:"Project groepen";}'),
(67, 0, 55, 0, 0, 0, '192.168.178.20', 1332193342, 'LOG_FORUM_DEL_POSTS', 'a:1:{i:0;s:5:"LHWPG";}'),
(68, 0, 55, 0, 0, 0, '192.168.178.20', 1332193763, 'LOG_FORUM_ADD', 'a:1:{i:0;s:15:"Project groepen";}'),
(69, 0, 55, 0, 0, 0, '192.168.178.20', 1332193781, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:15:"Project groepen";i:1;s:19:"Je eerste categorie";}'),
(70, 0, 55, 0, 0, 0, '192.168.178.20', 1332193783, 'LOG_FORUM_MOVE_DOWN', 'a:2:{i:0;s:15:"Project groepen";i:1;s:19:"Je eerste categorie";}'),
(71, 0, 55, 0, 0, 0, '192.168.178.20', 1332193808, 'LOG_FORUM_ADD', 'a:1:{i:0;s:5:"LHWPG";}'),
(72, 0, 55, 0, 0, 0, '192.168.178.20', 1332193851, 'LOG_FORUM_DEL_POSTS', 'a:1:{i:0;s:5:"LHWPG";}'),
(73, 0, 55, 0, 0, 0, '192.168.178.20', 1332193893, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:15:"Project groepen";}'),
(74, 0, 55, 0, 0, 0, '192.168.178.20', 1332193914, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:15:"Project groepen";i:1;s:41:"<span class="sep">Registered users</span>";}'),
(75, 0, 55, 0, 0, 0, '192.168.178.20', 1332193926, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:15:"Project groepen";i:1;s:41:"<span class="sep">Registered users</span>";}'),
(76, 0, 55, 0, 0, 0, '192.168.178.20', 1332194939, 'LOG_FORUM_ADD', 'a:1:{i:0;s:10:"Commissies";}'),
(77, 0, 55, 0, 0, 0, '192.168.178.20', 1332194958, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:10:"Commissies";i:1;s:41:"<span class="sep">Registered users</span>";}'),
(78, 0, 55, 0, 0, 0, '192.168.178.20', 1332194968, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:10:"Commissies";i:1;s:39:"<span class="sep">Administrators</span>";}'),
(79, 0, 2, 0, 0, 0, '192.168.178.14', 1332590008, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(80, 0, 2, 0, 0, 0, '192.168.178.14', 1332591466, 'LOG_UPDATE_PHPBB', 'a:2:{i:0;s:5:"3.0.9";i:1;s:6:"3.0.10";}'),
(81, 0, 2, 0, 0, 0, '192.168.178.14', 1332596341, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(82, 0, 2, 0, 0, 0, '192.168.178.14', 1332607934, 'LOG_PURGE_CACHE', ''),
(83, 0, 2, 0, 0, 0, '192.168.178.14', 1332607973, 'LOG_PURGE_CACHE', ''),
(84, 0, 2, 0, 0, 0, '192.168.178.14', 1332608020, 'LOG_PURGE_CACHE', ''),
(85, 0, 2, 0, 0, 0, '192.168.178.14', 1332608089, 'LOG_PURGE_CACHE', ''),
(86, 0, 2, 0, 0, 0, '192.168.178.14', 1332608399, 'LOG_PURGE_CACHE', ''),
(87, 0, 2, 0, 0, 0, '192.168.178.14', 1332608737, 'LOG_PURGE_CACHE', ''),
(88, 0, 2, 0, 0, 0, '127.0.0.1', 1333802891, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(89, 0, 2, 0, 0, 0, '127.0.0.1', 1333803013, 'LOG_MODULE_ADD', 'a:1:{i:0;s:10:"Activities";}'),
(90, 0, 2, 0, 0, 0, '127.0.0.1', 1333803091, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:"Add activity";}'),
(91, 0, 2, 0, 0, 0, '127.0.0.1', 1333803305, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:"Manage users";}'),
(92, 0, 2, 0, 0, 0, '127.0.0.1', 1333803314, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:12:"Manage users";}'),
(93, 0, 2, 0, 0, 0, '127.0.0.1', 1333803408, 'LOG_USERS_ADDED', 'a:2:{i:0;s:5:"Leden";i:1;s:5:"nyxus";}'),
(94, 0, 2, 0, 0, 0, '127.0.0.1', 1333808419, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(95, 0, 2, 0, 0, 0, '127.0.0.1', 1333808424, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(96, 0, 2, 0, 0, 0, '127.0.0.1', 1333808454, 'LOG_MODULE_DISABLE', 'a:1:{i:0;s:12:"Manage users";}'),
(97, 0, 2, 0, 0, 0, '127.0.0.1', 1333808455, 'LOG_MODULE_DISABLE', 'a:1:{i:0;s:12:"Add activity";}'),
(98, 0, 2, 0, 0, 0, '127.0.0.1', 1333808475, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:9:"Foo Index";}'),
(99, 0, 2, 0, 0, 0, '127.0.0.1', 1333808737, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:12:"Manage users";}'),
(100, 0, 2, 0, 0, 0, '127.0.0.1', 1333809154, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(101, 0, 2, 0, 0, 0, '127.0.0.1', 1333809161, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(102, 0, 2, 0, 0, 0, '127.0.0.1', 1333809312, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(103, 0, 2, 0, 0, 0, '127.0.0.1', 1333809319, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:12:"Manage users";}'),
(104, 0, 2, 0, 0, 0, '127.0.0.1', 1333809325, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:12:"Add activity";}'),
(105, 0, 2, 0, 0, 0, '127.0.0.1', 1333809397, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(106, 0, 2, 0, 0, 0, '127.0.0.1', 1333809406, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(107, 0, 2, 0, 0, 0, '127.0.0.1', 1333809413, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(108, 0, 2, 0, 0, 0, '127.0.0.1', 1333809520, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:10:"Activities";}'),
(109, 0, 2, 0, 0, 0, '127.0.0.1', 1333809542, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(110, 0, 2, 0, 0, 0, '127.0.0.1', 1333809547, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(111, 0, 2, 0, 0, 0, '127.0.0.1', 1333810381, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Templates";}'),
(112, 0, 2, 0, 0, 0, '127.0.0.1', 1333810413, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Templates";}'),
(113, 0, 2, 0, 0, 0, '127.0.0.1', 1333810428, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(114, 0, 2, 0, 0, 0, '127.0.0.1', 1333810501, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"An other title";}'),
(115, 0, 2, 0, 0, 0, '127.0.0.1', 1333810733, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(116, 0, 2, 0, 0, 0, '127.0.0.1', 1333810734, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:14:"An other title";}'),
(117, 0, 2, 0, 0, 0, '127.0.0.1', 1333810788, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"An other title";}'),
(118, 0, 2, 0, 0, 0, '127.0.0.1', 1333810793, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:14:"An other title";}'),
(119, 0, 2, 0, 0, 0, '127.0.0.1', 1333964249, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(120, 0, 2, 0, 0, 0, '127.0.0.1', 1333964336, 'LOG_MODULE_DISABLE', 'a:1:{i:0;s:14:"An other title";}'),
(121, 0, 2, 0, 0, 0, '127.0.0.1', 1333964343, 'LOG_MODULE_DISABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(122, 0, 2, 0, 0, 0, '127.0.0.1', 1333964366, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:14:"An other title";}'),
(123, 0, 2, 0, 0, 0, '127.0.0.1', 1333964377, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:14:"An other title";}'),
(124, 0, 2, 0, 0, 0, '127.0.0.1', 1333964393, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(125, 0, 2, 0, 0, 0, '127.0.0.1', 1333964422, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Admin log";}'),
(126, 0, 2, 0, 0, 0, '127.0.0.1', 1333964428, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Admin log";}'),
(127, 0, 2, 0, 0, 0, '127.0.0.1', 1333964474, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"An other title";}'),
(128, 0, 2, 0, 0, 0, '127.0.0.1', 1333964480, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:14:"An other title";}'),
(129, 0, 2, 0, 0, 0, '127.0.0.1', 1333964498, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:"Manage ranks";}'),
(130, 0, 2, 0, 0, 0, '127.0.0.1', 1333964503, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:12:"Manage ranks";}'),
(131, 0, 2, 0, 0, 0, '192.168.2.35', 1333965050, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(132, 0, 2, 0, 0, 0, '127.0.0.1', 1333965217, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"An other title";}'),
(133, 0, 2, 0, 0, 0, '127.0.0.1', 1333965232, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:14:"An other title";}'),
(134, 0, 2, 0, 0, 0, '127.0.0.1', 1333965329, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(135, 0, 2, 0, 0, 0, '127.0.0.1', 1333965334, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(136, 0, 2, 0, 0, 0, '127.0.0.1', 1333966772, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Admin log";}'),
(137, 0, 2, 0, 0, 0, '127.0.0.1', 1333966798, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(138, 0, 2, 0, 0, 0, '127.0.0.1', 1333966803, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(139, 0, 2, 0, 0, 0, '127.0.0.1', 1333966869, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:"Dit is iets heel henks";}'),
(140, 0, 2, 0, 0, 0, '127.0.0.1', 1333966900, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:22:"Dit is iets heel henks";}'),
(141, 0, 2, 0, 0, 0, '127.0.0.1', 1333966979, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"hier henk";}'),
(142, 0, 2, 0, 0, 0, '127.0.0.1', 1333967012, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"hier henk";}'),
(143, 0, 2, 0, 0, 0, '127.0.0.1', 1333967261, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:14:"An other title";}'),
(144, 0, 2, 0, 0, 0, '127.0.0.1', 1333967267, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(145, 0, 2, 0, 0, 0, '127.0.0.1', 1333967277, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(146, 0, 2, 0, 0, 0, '127.0.0.1', 1333967290, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:12:"Manage ranks";}'),
(147, 0, 2, 0, 0, 0, '127.0.0.1', 1333967298, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(148, 0, 2, 0, 0, 0, '127.0.0.1', 1333967304, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:14:"An other title";}'),
(149, 0, 2, 0, 0, 0, '127.0.0.1', 1333967319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Title bar";}'),
(150, 0, 2, 0, 0, 0, '127.0.0.1', 1333967323, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Title bar";}'),
(151, 0, 2, 0, 0, 0, '127.0.0.1', 1333967336, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Foo Index";}'),
(152, 0, 2, 0, 0, 0, '127.0.0.1', 1333967354, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"An other title";}'),
(153, 0, 2, 0, 0, 0, '127.0.0.1', 1333967378, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"Foo Index";}'),
(154, 0, 2, 0, 0, 0, '127.0.0.1', 1333967380, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:14:"An other title";}'),
(155, 0, 2, 0, 0, 0, '127.0.0.1', 1333967505, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:14:"An other title";}'),
(156, 0, 2, 0, 0, 0, '127.0.0.1', 1333967529, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"An other title";}'),
(157, 0, 2, 0, 0, 0, '127.0.0.1', 1333967533, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:14:"An other title";}'),
(158, 0, 2, 0, 0, 0, '::1', 1340059471, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(159, 0, 2, 0, 0, 0, '192.168.178.12', 1340446196, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(160, 0, 2, 0, 0, 0, '192.168.178.12', 1340446242, 'LOG_PURGE_CACHE', ''),
(161, 0, 2, 0, 0, 0, '192.168.178.12', 1340446309, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:14:"An other title";}'),
(162, 0, 2, 0, 0, 0, '192.168.178.12', 1340446313, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(163, 0, 2, 0, 0, 0, '192.168.178.12', 1340446320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Title bar";}'),
(164, 0, 2, 0, 0, 0, '192.168.178.12', 1340446325, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"Foo Index";}'),
(165, 0, 2, 0, 0, 0, '192.168.178.12', 1340446353, 'LOG_MODULE_ADD', 'a:1:{i:0;s:15:"ACTIVITY SYSTEM";}'),
(166, 0, 2, 0, 0, 0, '192.168.178.12', 1340446386, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:15:"Activity system";}'),
(167, 0, 2, 0, 0, 0, '192.168.178.12', 1340446450, 'LOG_MODULE_ADD', 'a:1:{i:0;s:6:"Events";}'),
(168, 0, 2, 0, 0, 0, '192.168.178.12', 1340446502, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"Financial";}'),
(169, 0, 2, 0, 0, 0, '192.168.178.12', 1340446527, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"New event";}'),
(170, 0, 2, 0, 0, 0, '192.168.178.12', 1340446531, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"New event";}'),
(171, 0, 2, 0, 0, 0, '192.168.178.12', 1340446541, 'LOG_MODULE_ADD', 'a:1:{i:0;s:8:"Overview";}'),
(172, 0, 2, 0, 0, 0, '192.168.178.12', 1340446544, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:8:"Overview";}'),
(173, 0, 2, 0, 0, 0, '192.168.178.12', 1340446554, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:"Find user events";}'),
(174, 0, 2, 0, 0, 0, '192.168.178.12', 1340446563, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:16:"Find user events";}'),
(175, 0, 2, 0, 0, 0, '192.168.178.12', 1340446589, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"Users not paid";}'),
(176, 0, 2, 0, 0, 0, '192.168.178.12', 1340446593, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:14:"Users not paid";}'),
(177, 0, 2, 0, 0, 0, '192.168.178.12', 1340446605, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:"Chance user payment";}'),
(178, 0, 2, 0, 0, 0, '192.168.178.12', 1340446609, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:19:"Chance user payment";}'),
(179, 0, 2, 0, 0, 0, '192.168.178.12', 1340448500, 'LOG_MODULE_ADD', 'a:1:{i:0;s:8:"Overview";}'),
(180, 0, 2, 0, 0, 0, '192.168.178.12', 1340448503, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:8:"Overview";}'),
(181, 0, 2, 0, 0, 0, '192.168.178.12', 1340448534, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:"Find user events";}'),
(182, 0, 2, 0, 0, 0, '192.168.178.12', 1340448536, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:16:"Find user events";}'),
(183, 0, 2, 0, 0, 0, '192.168.178.12', 1340448566, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:16:"Find user events";}'),
(184, 0, 2, 0, 0, 0, '192.168.178.12', 1340448569, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:8:"Overview";}'),
(185, 1, 2, 2, 3, 0, '192.168.178.12', 1340448758, 'LOG_DELETE_TOPIC', 'a:2:{i:0;s:15:"Activity system";i:1;s:5:"nyxus";}'),
(186, 0, 2, 0, 0, 0, '127.0.0.1', 1340750745, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(187, 2, 1, 0, 0, 0, '127.0.0.1', 1340751051, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:361:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/ucp.php</em><br /><br />Errno 2: mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1651<br />";}'),
(188, 0, 2, 0, 0, 0, '127.0.0.1', 1340751085, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(189, 0, 2, 0, 0, 0, '127.0.0.1', 1340751113, 'LOG_ACL_TRANSFER_PERMISSIONS', 'a:1:{i:0;s:17:"digitalecommissie";}'),
(190, 0, 2, 0, 0, 0, '127.0.0.1', 1340751163, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(191, 0, 2, 0, 0, 0, '127.0.0.1', 1340751168, 'LOG_ACL_RESTORE_PERMISSIONS', 'a:1:{i:0;s:17:"digitalecommissie";}'),
(192, 3, 2, 0, 0, 56, '127.0.0.1', 1340751193, 'LOG_USER_UPDATE_NAME', 'a:2:{i:0;s:17:"digitalecommissie";i:1;s:17:"DigitaleCommissie";}'),
(193, 0, 2, 0, 0, 0, '127.0.0.1', 1340751193, 'LOG_USER_USER_UPDATE', 'a:1:{i:0;s:17:"DigitaleCommissie";}'),
(194, 0, 2, 0, 0, 0, '127.0.0.1', 1340751246, 'LOG_GROUP_DEFAULTS', 'a:2:{i:0;s:14:"Administrators";i:1;s:17:"DigitaleCommissie";}'),
(195, 0, 2, 0, 0, 0, '127.0.0.1', 1340751246, 'LOG_MODS_ADDED', 'a:2:{i:0;s:14:"Administrators";i:1;s:17:"digitalecommissie";}'),
(196, 0, 56, 0, 0, 0, '127.0.0.1', 1340751738, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(197, 0, 2, 0, 0, 0, '::1', 1340753791, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(198, 0, 2, 0, 0, 0, '::1', 1340753970, 'LOG_CONFIG_LOAD', ''),
(199, 0, 2, 0, 0, 0, '::1', 1341022486, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(200, 0, 2, 0, 0, 0, '::1', 1341023394, 'LOG_PURGE_CACHE', ''),
(201, 0, 2, 0, 0, 0, '::1', 1341023516, 'LOG_CONFIG_LOAD', ''),
(202, 0, 2, 0, 0, 0, '::1', 1341152354, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(203, 0, 2, 0, 0, 0, '::1', 1341152446, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:9:"prosilver";}'),
(204, 0, 2, 0, 0, 0, '::1', 1341152529, 'LOG_BBCODE_ADD', 'a:1:{i:0;s:10:"highlight=";}'),
(205, 0, 2, 0, 0, 0, '::1', 1341249846, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(206, 0, 2, 0, 0, 0, '::1', 1341250604, 'LOG_CONFIG_COOKIE', ''),
(207, 0, 2, 0, 0, 0, '::1', 1341251492, 'LOG_BBCODE_DELETE', 'a:1:{i:0;s:10:"highlight=";}'),
(208, 0, 2, 0, 0, 0, '::1', 1341251560, 'LOG_FORUM_ADD', 'a:1:{i:0;s:18:"Digitale Commissie";}'),
(209, 0, 2, 0, 0, 0, '::1', 1341251560, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:10:"Commissies";i:1;s:18:"Digitale Commissie";}'),
(210, 0, 2, 0, 0, 0, '::1', 1341251603, 'LOG_ACL_DEL_FORUM_LOCAL_F_', 'a:2:{i:0;s:18:"Digitale Commissie";i:1;s:41:"<span class="sep">Registered users</span>";}'),
(211, 0, 2, 0, 0, 0, '::1', 1341251654, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:18:"Digitale Commissie";i:1;s:238:"<span class="sep">Guests</span>, <span class="sep">Registered users</span>, <span class="sep">Global moderators</span>, <span class="sep">Bots</span>, <span class="sep">Newly registered users</span>, Leden, Oud leden, A-Leden, Bestuur, AC";}'),
(212, 0, 2, 0, 0, 0, '::1', 1341251681, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:18:"Digitale Commissie";i:1;s:39:"<span class="sep">Administrators</span>";}'),
(213, 0, 2, 0, 0, 0, '::1', 1341251784, 'LOG_ACL_TRANSFER_PERMISSIONS', 'a:1:{i:0;s:4:"test";}'),
(214, 0, 2, 0, 0, 0, '::1', 1341251812, 'LOG_ACL_RESTORE_PERMISSIONS', 'a:1:{i:0;s:4:"test";}'),
(215, 1, 2, 2, 2, 0, '::1', 1341251829, 'LOG_POST_APPROVED', 'a:1:{i:0;s:14:"Re: gatus test";}'),
(216, 0, 2, 0, 0, 0, '::1', 1341257611, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(217, 2, 2, 0, 0, 0, '::1', 1341257732, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:73:"template->_tpl_load_file(): File ./style/.html does not exist or is empty";}'),
(218, 2, 2, 0, 0, 0, '::1', 1341257893, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:73:"template->_tpl_load_file(): File ./style/.html does not exist or is empty";}'),
(219, 0, 2, 0, 0, 0, '::1', 1341260248, 'LOG_CONFIG_COOKIE', ''),
(220, 0, 2, 0, 0, 0, '::1', 1341260254, 'LOG_CONFIG_COOKIE', ''),
(221, 0, 2, 0, 0, 0, '::1', 1341260273, 'LOG_CONFIG_SETTINGS', ''),
(222, 0, 2, 0, 0, 0, '::1', 1341260282, 'LOG_CONFIG_SETTINGS', ''),
(223, 0, 2, 0, 0, 0, '::1', 1341260611, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(224, 0, 2, 0, 0, 0, '::1', 1341260666, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(225, 0, 2, 0, 0, 0, '192.168.178.12', 1341429733, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(226, 0, 2, 0, 0, 0, '192.168.178.12', 1341431778, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(227, 2, 2, 0, 0, 0, '192.168.178.12', 1341432180, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:367:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/adm/index.php</em><br /><br />Errno 2: mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1651<br />";}'),
(228, 0, 2, 0, 0, 0, '192.168.178.12', 1341432180, 'LOG_MASS_EMAIL', 'a:1:{i:0;s:4:"test";}'),
(229, 0, 2, 0, 0, 0, '192.168.178.12', 1341433396, 'LOG_CONFIG_NEW_EVENT', ''),
(230, 0, 2, 0, 0, 0, '192.168.178.12', 1341435304, 'LOG_CONFIG_NEW_EVENT', ''),
(231, 0, 2, 0, 0, 0, '192.168.178.12', 1341435463, 'LOG_CONFIG_NEW_EVENT', ''),
(232, 0, 2, 0, 0, 0, '192.168.178.12', 1341435471, 'LOG_CONFIG_NEW_EVENT', ''),
(233, 0, 2, 0, 0, 0, '192.168.178.12', 1341435527, 'LOG_CONFIG_NEW_EVENT', ''),
(234, 0, 2, 0, 0, 0, '192.168.178.12', 1341436869, 'LOG_CONFIG_NEW_EVENT', ''),
(235, 0, 2, 0, 0, 0, '192.168.178.12', 1341436911, 'LOG_CONFIG_NEW_EVENT', ''),
(236, 0, 2, 0, 0, 0, '192.168.178.12', 1341436923, 'LOG_CONFIG_NEW_EVENT', ''),
(237, 0, 2, 0, 0, 0, '192.168.178.12', 1341437035, 'LOG_CONFIG_NEW_EVENT', ''),
(238, 0, 2, 0, 0, 0, '192.168.178.12', 1341437429, 'LOG_CONFIG_NEW_EVENT', ''),
(239, 0, 2, 0, 0, 0, '192.168.178.12', 1341486688, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(240, 0, 2, 0, 0, 0, '192.168.178.12', 1341490181, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(241, 0, 2, 0, 0, 0, '192.168.178.12', 1341492306, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(242, 0, 2, 0, 0, 0, '192.168.178.12', 1341566518, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(243, 0, 2, 0, 0, 0, '192.168.178.12', 1341567287, 'LOG_CONFIG_NEW_EVENT', ''),
(244, 0, 2, 0, 0, 0, '192.168.178.12', 1341568053, 'LOG_CONFIG_NEW_EVENT', ''),
(245, 0, 2, 0, 0, 0, '192.168.178.12', 1341568082, 'LOG_CONFIG_NEW_EVENT', ''),
(246, 0, 2, 0, 0, 0, '192.168.178.12', 1341568240, 'LOG_CONFIG_NEW_EVENT', ''),
(247, 0, 2, 0, 0, 0, '192.168.178.12', 1341568707, 'LOG_CONFIG_NEW_EVENT', ''),
(248, 0, 2, 0, 0, 0, '::1', 1341584220, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(249, 0, 2, 0, 0, 0, '::1', 1341584981, 'LOG_CONFIG_NEW_EVENT', ''),
(250, 0, 2, 0, 0, 0, '::1', 1341585055, 'LOG_CONFIG_NEW_EVENT', ''),
(251, 0, 2, 0, 0, 0, '::1', 1341585066, 'LOG_CONFIG_NEW_EVENT', ''),
(252, 0, 2, 0, 0, 0, '::1', 1341585428, 'LOG_CONFIG_NEW_EVENT', ''),
(253, 0, 2, 0, 0, 0, '::1', 1341586883, 'LOG_CONFIG_NEW_EVENT', ''),
(254, 0, 2, 0, 0, 0, '::1', 1341586913, 'LOG_CONFIG_NEW_EVENT', ''),
(255, 0, 2, 0, 0, 0, '::1', 1341586988, 'LOG_CONFIG_NEW_EVENT', ''),
(256, 0, 2, 0, 0, 0, '::1', 1341587011, 'LOG_CONFIG_NEW_EVENT', ''),
(257, 0, 2, 0, 0, 0, '::1', 1341655905, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(258, 0, 2, 0, 0, 0, '::1', 1341657234, 'LOG_CONFIG_NEW_EVENT', ''),
(259, 0, 2, 0, 0, 0, '::1', 1341657287, 'LOG_CONFIG_NEW_EVENT', ''),
(260, 0, 2, 0, 0, 0, '::1', 1341657566, 'LOG_CONFIG_NEW_EVENT', ''),
(261, 0, 2, 0, 0, 0, '::1', 1341662856, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(262, 0, 2, 0, 0, 0, '::1', 1341666499, 'LOG_CONFIG_NEW_EVENT', ''),
(263, 0, 2, 0, 0, 0, '::1', 1341666586, 'LOG_CONFIG_NEW_EVENT', ''),
(264, 0, 2, 0, 0, 0, '::1', 1341669254, 'LOG_CONFIG_NEW_EVENT', ''),
(265, 0, 2, 0, 0, 0, '::1', 1341669269, 'LOG_CONFIG_NEW_EVENT', ''),
(266, 0, 2, 0, 0, 0, '::1', 1341669337, 'LOG_CONFIG_NEW_EVENT', ''),
(267, 0, 2, 0, 0, 0, '::1', 1341669377, 'LOG_CONFIG_NEW_EVENT', ''),
(268, 0, 2, 0, 0, 0, '::1', 1341669413, 'LOG_CONFIG_NEW_EVENT', ''),
(269, 0, 2, 0, 0, 0, '::1', 1341669467, 'LOG_CONFIG_NEW_EVENT', ''),
(270, 0, 2, 0, 0, 0, '::1', 1341669549, 'LOG_CONFIG_NEW_EVENT', ''),
(271, 0, 2, 0, 0, 0, '192.168.178.12', 1341908910, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(272, 0, 2, 0, 0, 0, '192.168.178.12', 1341909753, 'LOG_CONFIG_NEW_EVENT', ''),
(273, 0, 2, 0, 0, 0, '192.168.178.12', 1341910226, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(274, 0, 2, 0, 0, 0, '192.168.178.12', 1341916992, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(275, 0, 2, 0, 0, 0, '192.168.178.12', 1341920277, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(276, 0, 2, 0, 0, 0, '192.168.178.12', 1341924384, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(277, 1, 56, 2, 4, 0, '192.168.178.12', 1341925227, 'LOG_TOPIC_APPROVED', 'a:1:{i:0;s:11:"unread test";}'),
(278, 2, 1, 0, 0, 0, '192.168.178.12', 1341925497, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:362:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/cron.php</em><br /><br />Errno 2: mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1651<br />";}'),
(279, 0, 2, 0, 0, 0, '192.168.178.12', 1341997541, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(280, 1, 2, 2, 4, 0, '192.168.178.12', 1341999489, 'LOG_DELETE_TOPIC', 'a:2:{i:0;s:11:"unread test";i:1;s:4:"test";}'),
(281, 1, 2, 2, 5, 0, '192.168.178.12', 1341999489, 'LOG_DELETE_TOPIC', 'a:2:{i:0;s:14:"nog een testje";i:1;s:17:"DigitaleCommissie";}'),
(282, 0, 2, 0, 0, 0, '192.168.178.12', 1341999830, 'LOG_PURGE_SESSIONS', ''),
(283, 0, 2, 0, 0, 0, '192.168.178.12', 1341999834, 'LOG_PURGE_CACHE', ''),
(284, 0, 2, 0, 0, 0, '192.168.178.12', 1342000947, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(285, 0, 2, 0, 0, 0, '192.168.178.12', 1342001116, 'LOG_FORUM_ADD', 'a:1:{i:0;s:10:"Test forum";}'),
(286, 0, 2, 0, 0, 0, '192.168.178.12', 1342001145, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:10:"Test forum";i:1;s:39:"<span class="sep">Administrators</span>";}'),
(287, 0, 2, 0, 0, 0, '192.168.178.12', 1342001157, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:10:"Test forum";i:1;s:39:"<span class="sep">Administrators</span>";}'),
(288, 0, 2, 0, 0, 0, '::1', 1342006613, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(289, 0, 2, 0, 0, 0, '::1', 1342012501, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(290, 0, 2, 0, 0, 0, '192.168.178.12', 1342018001, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(291, 0, 2, 0, 0, 0, '192.168.178.12', 1342019347, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(292, 0, 2, 0, 0, 0, '192.168.178.12', 1342019854, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(293, 0, 2, 0, 0, 0, '192.168.178.12', 1342095537, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(294, 0, 2, 0, 0, 0, '192.168.178.12', 1342096427, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(295, 0, 2, 0, 0, 0, '192.168.178.12', 1342101060, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(296, 0, 2, 0, 0, 0, '192.168.178.12', 1342201445, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(297, 0, 2, 0, 0, 0, '192.168.178.12', 1342266051, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(298, 0, 2, 0, 0, 0, '192.168.178.12', 1342269519, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(299, 0, 2, 0, 0, 0, '::1', 1342425640, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(300, 2, 2, 0, 0, 0, '::1', 1342426120, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:870:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ASC\n LIMIT 25'' at line 6 [1064]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY  ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 489<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(301, 2, 2, 0, 0, 0, '::1', 1342426335, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:870:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ASC\n LIMIT 25'' at line 6 [1064]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY  ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 489<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(302, 2, 2, 0, 0, 0, '::1', 1342426375, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:870:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ASC\n LIMIT 25'' at line 6 [1064]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY  ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 474<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(303, 2, 2, 0, 0, 0, '::1', 1342426377, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:870:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ASC\n LIMIT 25'' at line 6 [1064]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY  ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 474<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(304, 0, 2, 0, 0, 0, '::1', 1342461455, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(305, 0, 2, 0, 0, 0, '192.168.178.12', 1342514879, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(306, 0, 2, 0, 0, 0, '::1', 1342515238, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(307, 0, 2, 0, 0, 0, '::1', 1342533108, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(308, 0, 2, 0, 0, 0, '::1', 1342784024, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(309, 0, 2, 0, 0, 0, '192.168.178.12', 1343055683, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(310, 2, 2, 0, 0, 0, '192.168.178.12', 1343056294, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(311, 2, 2, 0, 0, 0, '192.168.178.12', 1343056295, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(312, 2, 2, 0, 0, 0, '192.168.178.12', 1343056316, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(313, 2, 2, 0, 0, 0, '192.168.178.12', 1343056317, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(314, 2, 2, 0, 0, 0, '192.168.178.12', 1343056318, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(315, 2, 2, 0, 0, 0, '192.168.178.12', 1343056327, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(316, 2, 2, 0, 0, 0, '192.168.178.12', 1343056388, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(317, 2, 2, 0, 0, 0, '192.168.178.12', 1343056405, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:770:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''g.group_name'' in ''order clause'' [1054]<br /><br />SQL<br /><br />SELECT u.user_id\n	FROM dc_users u\n		\n	WHERE u.user_type IN (0, 3)\n		\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(318, 2, 2, 0, 0, 0, '192.168.178.12', 1343057565, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:547:"SQL ERROR [ mysqli ]<br /><br />Table ''gumbo_millennium.group_table'' doesn''t exist [1146]<br /><br />SQL<br /><br />SELECT COUNT(u.group_id) AS total_groups\n		FROM GROUP_TABLE g\n		WHERE g.group_name != ''BOTS''\n		 AND g.group_name LIKE ''bestuur''<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 148<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /></div><br />";}'),
(319, 2, 2, 0, 0, 0, '192.168.178.12', 1343057613, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:538:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''u.group_id'' in ''field list'' [1054]<br /><br />SQL<br /><br />SELECT COUNT(u.group_id) AS total_groups\n		FROM dc_groups g\n		WHERE g.group_name != ''BOTS''\n		 AND g.group_name LIKE ''bestuur''<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 148<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /></div><br />";}'),
(320, 2, 2, 0, 0, 0, '192.168.178.12', 1343059292, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:967:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '')\n		 AND g.group_name LIKE ''B%''\n	ORDER BY g.group_name ASC\n LIMIT 25'' at line 4 [1064]<br /><br />SQL<br /><br />SELECT g.group_id\n	FROM dc_groups g\n		\n	WHERE g.group_name NOT IN ()\n		 AND g.group_name LIKE ''B%''\n	ORDER BY g.group_name ASC\n LIMIT 25<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/grouplist.php<br /><b>LINE:</b> 251<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /></div><br />";}'),
(321, 0, 2, 0, 0, 0, '::1', 1343084472, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(322, 2, 2, 0, 0, 0, '::1', 1343089524, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:62:"Language file ./language/en/apc/common.php couldn''t be opened.";}'),
(323, 0, 2, 0, 0, 0, '::1', 1343253501, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(324, 0, 2, 0, 0, 0, '::1', 1343264026, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(325, 2, 1, 0, 0, 0, '::1', 1343266142, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:941:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''group_name'' in ''field list'' [1054]<br /><br />SQL<br /><br />SELECT group_id, group_name, group_desc, group_colour FROM dc_user_group WHERE user_id = ''1'' AND user_pending = 0<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 147<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 615<br /><b>CALL:</b> activity_user::user_all_groups()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 85<br /><b>CALL:</b> activity-&gt;user_acces()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_list.php<br /><b>LINE:</b> 20<br /><b>CALL:</b> activity_user-&gt;get_comming_active_activities()<br /></div><br />";}'),
(326, 0, 2, 0, 0, 0, '::1', 1343270031, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:17:"DigitaleCommissie";}'),
(327, 0, 2, 0, 0, 0, '::1', 1343270041, 'LOG_USERS_ADDED', 'a:2:{i:0;s:17:"DigitaleCommissie";i:1;s:5:"nyxus";}'),
(328, 0, 2, 0, 0, 0, '::1', 1343365491, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(329, 0, 2, 0, 0, 0, '::1', 1343464894, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(330, 0, 2, 0, 0, 0, '::1', 1343473162, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(331, 0, 2, 0, 0, 0, '::1', 1343926838, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(332, 0, 2, 0, 0, 0, '::1', 1343955583, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(333, 0, 2, 0, 0, 0, '::1', 1344093824, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(334, 0, 2, 0, 0, 0, '::1', 1344167295, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(335, 0, 2, 0, 0, 0, '::1', 1344254314, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(336, 2, 2, 0, 0, 0, '::1', 1344254332, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(337, 0, 2, 0, 0, 0, '::1', 1344272224, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(338, 0, 2, 0, 0, 0, '::1', 1344285576, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(339, 0, 2, 0, 0, 0, '::1', 1344587136, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(340, 0, 2, 0, 0, 0, '::1', 1344595774, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(341, 0, 2, 0, 0, 0, '::1', 1344689260, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(342, 0, 2, 0, 0, 0, '::1', 1344700325, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(343, 0, 2, 0, 0, 0, '192.168.178.15', 1345034996, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(344, 0, 2, 0, 0, 0, '192.168.178.15', 1345106055, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(345, 0, 2, 0, 0, 0, '192.168.178.15', 1345112562, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(346, 0, 2, 0, 0, 0, '192.168.178.15', 1345112585, 'LOG_CONFIG_SETTINGS', ''),
(347, 0, 2, 0, 0, 0, '192.168.178.15', 1345112706, 'LOG_CONFIG_SETTINGS', ''),
(348, 0, 2, 0, 0, 0, '192.168.178.15', 1345119797, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(349, 0, 2, 0, 0, 0, '192.168.178.15', 1345119855, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:10:"Test forum";}'),
(350, 0, 2, 0, 0, 0, '192.168.178.15', 1345124010, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(351, 0, 2, 0, 0, 0, '::1', 1345248169, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(352, 2, 2, 0, 0, 0, '::1', 1345249043, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 210<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(353, 2, 2, 0, 0, 0, '::1', 1345249074, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 210<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(354, 0, 2, 0, 0, 0, '::1', 1345300037, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(355, 0, 2, 0, 0, 0, '::1', 1345301343, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(356, 0, 2, 0, 0, 0, '::1', 1345377847, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `dc_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(357, 0, 2, 0, 0, 0, '::1', 1345388031, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(358, 2, 2, 0, 0, 0, '::1', 1345389176, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1296:"SQL ERROR [ mysqli ]<br /><br />Incorrect datetime value: '''' for column ''enroll_datetime'' at row 1 [1292]<br /><br />SQL<br /><br />INSERT INTO dc_activity  (name, description, start_datetime, stop_datetime, enroll, enroll_datetime, enroll_max, price, price_member, location, active, category, pay_options, commission, user_id, user_ip, datetime_created, bbcode_bitfield, bbcode_uid, bbcode_options) VALUES (''de eerste echte actviteit'', ''een gratus gerco'', ''2012-09-12 12:00:00'', ''2012-09-18 12:00:00'', 0, '''', 0, 0, 0, ''ergens bij gerco'', 0, 0, '''', 15, 2, ''::1'', ''2012-08-19 17:12:56'', '''', '''', 7)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 731<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 341<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(359, 2, 2, 0, 0, 0, '::1', 1345389655, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1296:"SQL ERROR [ mysqli ]<br /><br />Incorrect datetime value: '''' for column ''enroll_datetime'' at row 1 [1292]<br /><br />SQL<br /><br />INSERT INTO dc_activity  (name, description, start_datetime, stop_datetime, enroll, enroll_datetime, enroll_max, price, price_member, location, active, category, pay_options, commission, user_id, user_ip, datetime_created, bbcode_bitfield, bbcode_uid, bbcode_options) VALUES (''de eerste echte actviteit'', ''een gratus gerco'', ''2012-09-12 12:00:00'', ''2012-09-18 12:00:00'', 0, '''', 0, 0, 0, ''ergens bij gerco'', 0, 0, '''', 15, 2, ''::1'', ''2012-08-19 17:20:55'', '''', '''', 7)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 730<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 341<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(360, 2, 2, 0, 0, 0, '::1', 1345390875, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1255:"SQL ERROR [ mysqli ]<br /><br />Incorrect datetime value: '''' for column ''enroll_datetime'' at row 1 [1292]<br /><br />SQL<br /><br />INSERT INTO dc_activity  (name, description, start_datetime, stop_datetime, enroll, enroll_datetime, enroll_max, price, price_member, location, active, category, pay_options, commission, user_id, user_ip, datetime_created, bbcode_bitfield, bbcode_uid, bbcode_options) VALUES (''henk'', ''zfsefesf'', ''2012-09-12 12:00:00'', ''2012-09-18 12:00:00'', 0, '''', 0, 0, 0, ''fsfs'', 0, 0, '''', 15, 2, ''::1'', ''2012-08-19 17:41:15'', '''', '''', 7)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 730<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 352<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(361, 0, 2, 0, 0, 0, '::1', 1345400063, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(362, 0, 2, 0, 0, 0, '::1', 1345447162, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(363, 0, 2, 0, 0, 0, '::1', 1345505485, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(364, 0, 2, 0, 0, 0, '::1', 1345510373, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(365, 0, 2, 0, 0, 0, '::1', 1346657380, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(366, 0, 2, 0, 0, 0, '::1', 1346757936, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(367, 0, 2, 0, 0, 0, '::1', 1346927407, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(368, 0, 2, 0, 0, 0, '::1', 1347087318, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(369, 0, 2, 0, 0, 0, '::1', 1347116716, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(370, 0, 2, 0, 0, 0, '192.168.178.18', 1347191171, 'LOG_ADMIN_AUTH_FAIL', ''),
(371, 0, 2, 0, 0, 0, '192.168.178.18', 1347191175, 'LOG_ADMIN_AUTH_FAIL', ''),
(372, 0, 2, 0, 0, 0, '192.168.178.18', 1347191182, 'LOG_ADMIN_AUTH_FAIL', ''),
(373, 0, 2, 0, 0, 0, '192.168.178.18', 1347191189, 'LOG_ADMIN_AUTH_FAIL', ''),
(374, 0, 2, 0, 0, 0, '192.168.178.18', 1347191208, 'LOG_ADMIN_AUTH_FAIL', ''),
(375, 0, 2, 0, 0, 0, '192.168.178.18', 1347191223, 'LOG_ADMIN_AUTH_FAIL', ''),
(376, 0, 2, 0, 0, 0, '192.168.178.18', 1347191332, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(377, 2, 2, 0, 0, 0, '192.168.178.18', 1347191569, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1073:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''=> NOW()\r\n				ORDER BY start_date DESC'' at line 3 [1064]<br /><br />SQL<br /><br />SELECT id\r\n				FROM dc_activity\r\n				WHERE start_date =&gt; NOW()\r\n				ORDER BY start_date DESC<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_management_class.php<br /><b>LINE:</b> 32<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 130<br /><b>CALL:</b> activity_management-&gt;get_comming()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(378, 2, 2, 0, 0, 0, '192.168.178.18', 1347191584, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:934:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''start_date'' in ''where clause'' [1054]<br /><br />SQL<br /><br />SELECT id\r\n				FROM dc_activity\r\n				WHERE start_date &gt;= NOW()\r\n				ORDER BY start_date DESC<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_management_class.php<br /><b>LINE:</b> 32<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 130<br /><b>CALL:</b> activity_management-&gt;get_comming()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(379, 2, 2, 0, 0, 0, '192.168.178.18', 1347191626, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:938:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''start_date'' in ''where clause'' [1054]<br /><br />SQL<br /><br />SELECT id\r\n				FROM dc_activity\r\n				WHERE start_date &gt;= NOW()\r\n				ORDER BY start_datetime DESC<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_management_class.php<br /><b>LINE:</b> 32<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 130<br /><b>CALL:</b> activity_management-&gt;get_comming()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(380, 0, 2, 0, 0, 0, '::1', 1347863576, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(381, 0, 2, 0, 0, 0, '::1', 1347953852, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(382, 0, 2, 0, 0, 0, '::1', 1347986616, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(383, 2, 2, 0, 0, 0, '::1', 1347995741, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(384, 2, 2, 0, 0, 0, '::1', 1347995830, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(385, 2, 2, 0, 0, 0, '::1', 1347995833, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(386, 0, 2, 0, 0, 0, '::1', 1347995869, 'LOG_PURGE_CACHE', ''),
(387, 2, 2, 0, 0, 0, '::1', 1347995899, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(388, 2, 2, 0, 0, 0, '::1', 1347995943, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:73:"template->_tpl_load_file(): File ./style/.html does not exist or is empty";}'),
(389, 2, 2, 0, 0, 0, '::1', 1347995960, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:73:"template->_tpl_load_file(): File ./style/.html does not exist or is empty";}'),
(390, 2, 2, 0, 0, 0, '::1', 1347995986, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:73:"template->_tpl_load_file(): File ./style/.html does not exist or is empty";}'),
(391, 2, 2, 0, 0, 0, '::1', 1347995990, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:73:"template->_tpl_load_file(): File ./style/.html does not exist or is empty";}'),
(392, 2, 2, 0, 0, 0, '::1', 1347996023, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:73:"template->_tpl_load_file(): File ./style/.html does not exist or is empty";}'),
(393, 0, 2, 0, 0, 0, '::1', 1347996048, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"New event";}'),
(394, 0, 2, 0, 0, 0, '::1', 1347996054, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"New event";}'),
(395, 0, 2, 0, 0, 0, '::1', 1347996059, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:8:"Overview";}'),
(396, 0, 2, 0, 0, 0, '::1', 1347996077, 'LOG_MODULE_ADD', 'a:1:{i:0;s:8:"Overview";}'),
(397, 0, 2, 0, 0, 0, '::1', 1347996080, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"New event";}'),
(398, 0, 2, 0, 0, 0, '::1', 1347996081, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:8:"Overview";}'),
(399, 0, 2, 0, 0, 0, '::1', 1347996082, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:8:"Overview";i:1;s:9:"New event";}'),
(400, 0, 2, 0, 0, 0, '::1', 1347996085, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:8:"Overview";i:1;s:16:"Find user events";}'),
(401, 0, 2, 0, 0, 0, '::1', 1347996087, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:9:"New event";i:1;s:16:"Find user events";}'),
(402, 0, 2, 0, 0, 0, '::1', 1347996160, 'LOG_MODULE_ADD', 'a:1:{i:0;s:10:"Edit event";}'),
(403, 0, 2, 0, 0, 0, '::1', 1347996163, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:10:"Edit event";}'),
(404, 0, 2, 0, 0, 0, '::1', 1347996203, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:10:"Edit event";}'),
(405, 2, 2, 0, 0, 0, '::1', 1347996215, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(406, 0, 2, 0, 0, 0, '::1', 1347996342, 'LOG_MODULE_ADD', 'a:1:{i:0;s:10:"Edit event";}'),
(407, 0, 2, 0, 0, 0, '::1', 1347996347, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:10:"Edit event";}'),
(408, 0, 2, 0, 0, 0, '::1', 1347996362, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:10:"Edit event";}'),
(409, 0, 2, 0, 0, 0, '::1', 1348001695, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(410, 0, 2, 0, 0, 0, '::1', 1348038769, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(411, 0, 2, 0, 0, 0, '192.168.178.12', 1348063461, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(412, 0, 2, 0, 0, 0, '192.168.178.12', 1348063707, 'LOG_USERS_ADDED', 'a:2:{i:0;s:2:"AC";i:1;s:5:"nyxus";}'),
(413, 2, 2, 0, 0, 0, '192.168.178.12', 1348069252, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1115:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO `dc_activity_user_manage`  (activity_id, user_id, disabled) VALUES (0, 9, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 448<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 457<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(414, 0, 2, 0, 0, 0, '192.168.178.12', 1348081639, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(415, 0, 2, 0, 0, 0, '192.168.178.12', 1348081751, 'LOG_CONFIG_1', ''),
(416, 0, 2, 0, 0, 0, '192.168.178.12', 1348081947, 'LOG_CONFIG_1', ''),
(417, 0, 2, 0, 0, 0, '192.168.178.12', 1348082049, 'LOG_CONFIG_1', ''),
(418, 0, 2, 0, 0, 0, '192.168.178.12', 1348082085, 'LOG_CONFIG_1', ''),
(419, 0, 2, 0, 0, 0, '192.168.178.12', 1348082121, 'LOG_CONFIG_1', ''),
(420, 0, 2, 0, 0, 0, '192.168.178.12', 1348082320, 'LOG_CONFIG_1', ''),
(421, 0, 2, 0, 0, 0, '192.168.178.12', 1348082732, 'LOG_CONFIG_1', ''),
(422, 0, 2, 0, 0, 0, '192.168.178.12', 1348082923, 'LOG_CONFIG_1', ''),
(423, 0, 2, 0, 0, 0, '192.168.178.12', 1348083740, 'LOG_CONFIG_1', ''),
(424, 0, 2, 0, 0, 0, '192.168.178.12', 1348083748, 'LOG_CONFIG_1', ''),
(425, 0, 2, 0, 0, 0, '192.168.178.12', 1348083755, 'LOG_CONFIG_1', ''),
(426, 2, 2, 0, 0, 0, '192.168.178.12', 1348083813, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1269:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0), (0, 54, 0), (0, 55, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 474<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 456<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(427, 2, 2, 0, 0, 0, '192.168.178.12', 1348083996, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1269:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0), (0, 54, 0), (0, 55, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 475<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 456<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(428, 2, 2, 0, 0, 0, '192.168.178.12', 1348084039, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1269:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0), (0, 54, 0), (0, 55, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 475<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 456<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(429, 0, 2, 0, 0, 0, '192.168.178.12', 1348084368, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(430, 0, 2, 0, 0, 0, '::1', 1348145616, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(431, 0, 2, 0, 0, 0, '::1', 1348147812, 'LOG_CONFIG_1', ''),
(432, 0, 2, 0, 0, 0, '::1', 1348148098, 'LOG_CONFIG_1', ''),
(433, 2, 2, 0, 0, 0, '::1', 1348149742, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 473<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(434, 2, 2, 0, 0, 0, '::1', 1348149959, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 474<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(435, 2, 2, 0, 0, 0, '::1', 1348150234, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(436, 2, 2, 0, 0, 0, '::1', 1348150331, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 474<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(437, 2, 2, 0, 0, 0, '::1', 1348150379, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 474<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 466<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(438, 2, 2, 0, 0, 0, '::1', 1348150391, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 474<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 466<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(439, 2, 2, 0, 0, 0, '::1', 1348150428, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 475<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(440, 2, 2, 0, 0, 0, '::1', 1348150437, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 475<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(441, 2, 2, 0, 0, 0, '::1', 1348150439, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 475<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(442, 2, 2, 0, 0, 0, '::1', 1348150453, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 475<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(443, 2, 2, 0, 0, 0, '::1', 1348150554, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 475<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(444, 2, 2, 0, 0, 0, '::1', 1348150796, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1245:"SQL ERROR [ mysqli ]<br /><br />Cannot add or update a child row: a foreign key constraint fails (`gumbo_millennium`.`dc_activity_user_manage`, CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) [1452]<br /><br />SQL<br /><br />INSERT INTO dc_activity_user_manage  (activity_id, user_id, disabled) VALUES (0, 9, 0), (0, 42, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 476<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(445, 0, 2, 0, 0, 0, '::1', 1348150880, 'LOG_CONFIG_1', ''),
(446, 0, 2, 0, 0, 0, '::1', 1348151673, 'LOG_CONFIG_1', ''),
(447, 0, 2, 0, 0, 0, '::1', 1348151695, 'LOG_CONFIG_1', ''),
(448, 2, 2, 0, 0, 0, '::1', 1348151719, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1032:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''activity_id =9'' at line 3 [1064]<br /><br />SQL<br /><br />UPDATE dc_activity_user_manage\n					SET disabled = 1\n					WHERE user_id = 42AND activity_id =9<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 492<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(449, 2, 2, 0, 0, 0, '::1', 1348151772, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1032:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''activity_id =9'' at line 3 [1064]<br /><br />SQL<br /><br />UPDATE dc_activity_user_manage\n					SET disabled = 1\n					WHERE user_id = 42AND activity_id =9<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 492<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 465<br /><b>CALL:</b> activity-&gt;set_user_manager()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(450, 0, 2, 0, 0, 0, '::1', 1348151809, 'LOG_CONFIG_1', ''),
(451, 0, 2, 0, 0, 0, '::1', 1348151943, 'LOG_CONFIG_1', ''),
(452, 0, 2, 0, 0, 0, '::1', 1348151983, 'LOG_CONFIG_1', ''),
(453, 0, 2, 0, 0, 0, '::1', 1348155772, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(454, 0, 2, 0, 0, 0, '::1', 1348155927, 'LOG_CONFIG_1', ''),
(455, 2, 2, 0, 0, 0, '::1', 1348155995, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1046:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''user_id'' in ''field list'' [1054]<br /><br />SQL<br /><br />INSERT INTO dc_activity_groupacces  (activity_id, user_id, disabled) VALUES (9, 13, 0), (9, 15, 0), (9, 5, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 668<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 471<br /><b>CALL:</b> activity-&gt;set_group_acces()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(456, 2, 2, 0, 0, 0, '::1', 1348156039, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1046:"SQL ERROR [ mysqli ]<br /><br />Duplicate entry ''9-5'' for key ''PRIMARY'' [1062]<br /><br />SQL<br /><br />INSERT INTO dc_activity_groupacces  (activity_id, group_id, disabled) VALUES (9, 13, 0), (9, 15, 0), (9, 5, 0)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 495<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 668<br /><b>CALL:</b> dbal-&gt;sql_multi_insert()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 471<br /><b>CALL:</b> activity-&gt;set_group_acces()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(457, 0, 2, 0, 0, 0, '::1', 1348156360, 'LOG_CONFIG_1', ''),
(458, 0, 2, 0, 0, 0, '::1', 1348156484, 'LOG_CONFIG_1', ''),
(459, 0, 2, 0, 0, 0, '::1', 1348156528, 'LOG_CONFIG_1', ''),
(460, 2, 2, 0, 0, 0, '::1', 1348157899, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:913:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''user_id'' in ''where clause'' [1054]<br /><br />SQL<br /><br />UPDATE dc_activity_groupacces\n					SET disabled = 1\n					WHERE user_id = 9 AND activity_id = 9<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 686<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 471<br /><b>CALL:</b> activity-&gt;set_group_acces()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(461, 0, 2, 0, 0, 0, '::1', 1348157945, 'LOG_CONFIG_1', ''),
(462, 0, 2, 0, 0, 0, '::1', 1348158024, 'LOG_CONFIG_1', ''),
(463, 0, 2, 0, 0, 0, '::1', 1348275762, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(464, 2, 2, 0, 0, 0, '::1', 1348280533, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1039:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '') WHERE user_id = 2 AND disabled =  0'' at line 1 [1064]<br /><br />SQL<br /><br />SELECT activity_id FROM () WHERE user_id = 2 AND disabled =  0<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_management_class.php<br /><b>LINE:</b> 39<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 176<br /><b>CALL:</b> activity_management-&gt;get_comming()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(465, 2, 2, 0, 0, 0, '::1', 1348280885, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:824:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_management_class.php<br /><b>LINE:</b> 66<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 176<br /><b>CALL:</b> activity_management-&gt;get_comming()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(466, 0, 2, 0, 0, 0, '::1', 1348281451, 'LOG_A_ROLE_ADD', 'a:1:{i:0;s:15:"Activity system";}'),
(467, 0, 2, 0, 0, 0, '::1', 1348281479, 'LOG_ACL_ADD_USER_GLOBAL_A_', 'a:1:{i:0;s:4:"test";}'),
(468, 0, 54, 0, 0, 0, '::1', 1348281501, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(469, 2, 54, 0, 0, 0, '::1', 1348281522, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 315<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(470, 2, 54, 0, 0, 0, '::1', 1348281828, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 315<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(471, 2, 54, 0, 0, 0, '::1', 1348281848, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 315<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(472, 2, 54, 0, 0, 0, '::1', 1348281863, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 315<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(473, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348411923, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(474, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348411963, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(475, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348412218, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(476, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348412291, 'LOG_CONFIG_1', ''),
(477, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348412304, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(478, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348413898, 'LOG_CONFIG_1', ''),
(479, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348414732, 'LOG_CONFIG_1', ''),
(480, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348414740, 'LOG_CONFIG_1', ''),
(481, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348414859, 'LOG_CONFIG_1', ''),
(482, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348414947, 'LOG_ACL_ADD_USER_GLOBAL_U_', 'a:1:{i:0;s:4:"test";}'),
(483, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348415094, 'LOG_CONFIG_1', ''),
(484, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348415118, 'LOG_CONFIG_1', ''),
(485, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348415174, 'LOG_GROUP_UPDATED', 'a:1:{i:0;s:11:"Gumbo Leden";}'),
(486, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348415192, 'LOG_CONFIG_1', ''),
(487, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348415200, 'LOG_CONFIG_1', ''),
(488, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348420307, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(489, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348420326, 'LOG_CONFIG_1', ''),
(490, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348420356, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(491, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348421650, 'LOG_GROUP_REMOVE', 'a:2:{i:0;s:2:"AC";i:1;s:5:"nyxus";}'),
(492, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348422018, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(493, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348422218, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(494, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348422281, 'LOG_CONFIG_1', ''),
(495, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348422307, 'LOG_CONFIG_1', ''),
(496, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348424613, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(497, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348424635, 'LOG_CONFIG_1', ''),
(498, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348425328, 'LOG_CONFIG_1', ''),
(499, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348425431, 'LOG_CONFIG_1', ''),
(500, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348425461, 'LOG_CONFIG_1', ''),
(501, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348425593, 'LOG_CONFIG_1', ''),
(502, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426726, 'LOG_MODULE_DISABLE', 'a:1:{i:0;s:6:"Events";}'),
(503, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426731, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:6:"Events";}'),
(504, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426764, 'LOG_MODULE_DISABLE', 'a:1:{i:0;s:6:"Events";}'),
(505, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426766, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:6:"Events";}'),
(506, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426803, 'LOG_TEMPLATE_ADD_FS', 'a:1:{i:0;s:10:"subsilver2";}'),
(507, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426803, 'LOG_THEME_ADD_FS', 'a:1:{i:0;s:10:"subsilver2";}'),
(508, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426804, 'LOG_IMAGESET_ADD_FS', 'a:1:{i:0;s:10:"subsilver2";}'),
(509, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348426804, 'LOG_STYLE_ADD', 'a:1:{i:0;s:10:"subsilver2";}'),
(510, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348431385, 'LOG_CONFIG_1', ''),
(511, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348431506, 'LOG_CONFIG_1', ''),
(512, 0, 2, 0, 0, 0, '::1', 1348478262, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(513, 0, 2, 0, 0, 0, '::1', 1348478839, 'LOG_CONFIG_1', '');
INSERT INTO `dc_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(514, 0, 2, 0, 0, 0, '::1', 1348478994, 'LOG_CONFIG_1', ''),
(515, 0, 2, 0, 0, 0, '::1', 1348479025, 'LOG_CONFIG_1', ''),
(516, 0, 2, 0, 0, 0, '::1', 1348479103, 'LOG_CONFIG_1', ''),
(517, 0, 2, 0, 0, 0, '::1', 1348479248, 'LOG_CONFIG_1', ''),
(518, 0, 2, 0, 0, 0, '::1', 1348480444, 'LOG_CONFIG_1', ''),
(519, 0, 2, 0, 0, 0, '::1', 1348480748, 'LOG_CONFIG_1', ''),
(520, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348492037, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(521, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348492869, 'LOG_CONFIG_1', ''),
(522, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348493308, 'LOG_CONFIG_1', ''),
(523, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348493692, 'LOG_CONFIG_1', ''),
(524, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348493767, 'LOG_CONFIG_1', ''),
(525, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348493781, 'LOG_CONFIG_1', ''),
(526, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348493793, 'LOG_CONFIG_1', ''),
(527, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494131, 'LOG_CONFIG_1', ''),
(528, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494218, 'LOG_CONFIG_1', ''),
(529, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494245, 'LOG_CONFIG_1', ''),
(530, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494462, 'LOG_CONFIG_1', ''),
(531, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494543, 'LOG_CONFIG_1', ''),
(532, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494560, 'LOG_CONFIG_1', ''),
(533, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494563, 'LOG_CONFIG_1', ''),
(534, 2, 2, 0, 0, 0, '192.168.178.12', 1348494754, 'LOG_IP_BROWSER_FORWARDED_CHECK', 'a:6:{i:0;s:11:"192.168.178";i:1;s:25:"fe80::41be:40cf:2f3e:6e28";i:2;s:74:"mozilla/5.0 (windows nt 6.1; wow64; rv:15.0) gecko/20100101 firefox/15.0.1";i:3;s:74:"mozilla/5.0 (windows nt 6.1; wow64; rv:15.0) gecko/20100101 firefox/15.0.1";i:4;s:0:"";i:5;s:0:"";}'),
(535, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494769, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(536, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494788, 'LOG_CONFIG_1', ''),
(537, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494824, 'LOG_CONFIG_1', ''),
(538, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494924, 'LOG_CONFIG_1', ''),
(539, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494960, 'LOG_CONFIG_1', ''),
(540, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494969, 'LOG_CONFIG_1', ''),
(541, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348494993, 'LOG_CONFIG_1', ''),
(542, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348495246, 'LOG_CONFIG_1', ''),
(543, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348495332, 'LOG_CONFIG_1', ''),
(544, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348496017, 'LOG_CONFIG_1', ''),
(545, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348496689, 'LOG_CONFIG_1', ''),
(546, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348497095, 'LOG_CONFIG_1', ''),
(547, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348497955, 'LOG_CONFIG_1', ''),
(548, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348498120, 'LOG_CONFIG_1', ''),
(549, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348498183, 'LOG_CONFIG_1', ''),
(550, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348498209, 'LOG_CONFIG_1', ''),
(551, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348499087, 'LOG_CONFIG_1', ''),
(552, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348499389, 'LOG_CONFIG_1', ''),
(553, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348500506, 'LOG_CONFIG_1', ''),
(554, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348500634, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1493:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''allow_urls'' in ''field list'' [1054]<br /><br />SQL<br /><br />INSERT INTO dc_activity  (name, description, start_datetime, stop_datetime, enroll, enroll_datetime, enroll_max, price, price_member, location, active, category, pay_options, commission, user_id, user_ip, datetime_created, bbcode_bitfield, bbcode_uid, allow_urls, allow_bbcode, allow_smilies) VALUES (''Het regend'', ''[size=200:3szkz9t1]dit is de grote test[/size:3szkz9t1]\\n\\n[url:3szkz9t1]http&amp;#58;//www&amp;#46;langeman&amp;#46;nl/pics_arr/test_arr&amp;#46;jpg[/url:3szkz9t1]'', ''2013-08-23 11:07:00'', ''2013-08-25 12:06:05'', 0, ''2013-08-23 11:07:00'', 0, 15, 8, ''in zwolle'', 0, 0, '''', 15, 2, ''fe80::41be:40cf:2f3e:6e28'', ''2012-09-24 17:30:34'', ''FA=='', ''3szkz9t1'', NULL, NULL, NULL)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 868<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 532<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(555, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348500759, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1498:"SQL ERROR [ mysqli ]<br /><br />Unknown column ''allow_bbcode'' in ''field list'' [1054]<br /><br />SQL<br /><br />INSERT INTO dc_activity  (name, description, start_datetime, stop_datetime, enroll, enroll_datetime, enroll_max, price, price_member, location, active, category, pay_options, commission, user_id, user_ip, datetime_created, bbcode_bitfield, bbcode_uid, enable_magic_url, allow_bbcode, allow_smilies) VALUES (''Het regend'', ''[size=200:1qczjoe2]dit is de grote test[/size:1qczjoe2]\\n\\n[url:1qczjoe2]http&amp;#58;//www&amp;#46;langeman&amp;#46;nl/pics_arr/test_arr&amp;#46;jpg[/url:1qczjoe2]'', ''2013-08-23 11:07:00'', ''2013-08-25 12:06:05'', 0, ''2013-08-23 11:07:00'', 0, 15, 8, ''in zwolle'', 0, 0, '''', 15, 2, ''fe80::41be:40cf:2f3e:6e28'', ''2012-09-24 17:32:39'', ''FA=='', ''1qczjoe2'', 1, NULL, NULL)<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 868<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 532<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(556, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348500810, 'LOG_CONFIG_1', ''),
(557, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348501189, 'LOG_CONFIG_1', ''),
(558, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348597868, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(559, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348597959, 'LOG_CONFIG_1', ''),
(560, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348598947, 'LOG_CONFIG_1', ''),
(561, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348598964, 'LOG_CONFIG_1', ''),
(562, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348599080, 'LOG_CONFIG_1', ''),
(563, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348599491, 'LOG_CONFIG_1', ''),
(564, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348599544, 'LOG_CONFIG_1', ''),
(565, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348599570, 'LOG_CONFIG_1', ''),
(566, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348599661, 'LOG_CONFIG_1', ''),
(567, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348599949, 'LOG_CONFIG_1', ''),
(568, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600307, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1413:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''id = 21'' at line 1 [1064]<br /><br />SQL<br /><br />UPDATE dc_activity SET name = ''We gaan risk spelen'', description = ''[b:3j89mwmm]dit is de grote test[/b:3j89mwmm]'', start_datetime = ''2013-08-23 12:00:00'', stop_datetime = ''2013-08-25 12:08:00'', enroll = 0, enroll_datetime = ''2013-08-23 12:00:00'', enroll_max = 0, price = 0, price_member = 0, location = ''aan de keuken tafel'', active = 0, category = 0, pay_options = '''', bbcode_bitfield = ''QA=='', bbcode_uid = ''3j89mwmm'', enable_magic_url = 1, enable_bbcode = 1, enable_smilies = 1WHERE id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 865<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 532<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(569, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600351, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1413:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''id = 21'' at line 1 [1064]<br /><br />SQL<br /><br />UPDATE dc_activity SET name = ''We gaan risk spelen'', description = ''[b:1h3tns4r]dit is de grote test[/b:1h3tns4r]'', start_datetime = ''2013-08-23 12:00:00'', stop_datetime = ''2013-08-25 12:08:00'', enroll = 0, enroll_datetime = ''2013-08-23 12:00:00'', enroll_max = 0, price = 0, price_member = 0, location = ''aan de keuken tafel'', active = 0, category = 0, pay_options = '''', bbcode_bitfield = ''QA=='', bbcode_uid = ''1h3tns4r'', enable_magic_url = 1, enable_bbcode = 1, enable_smilies = 1WHERE id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 865<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 532<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(570, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600369, 'LOG_CONFIG_1', ''),
(571, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600390, 'LOG_CONFIG_1', ''),
(572, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600418, 'LOG_CONFIG_1', ''),
(573, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600485, 'LOG_CONFIG_1', ''),
(574, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600506, 'LOG_CONFIG_1', ''),
(575, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600532, 'LOG_CONFIG_1', ''),
(576, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600597, 'LOG_CONFIG_1', ''),
(577, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600706, 'LOG_CONFIG_1', ''),
(578, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348600725, 'LOG_CONFIG_1', ''),
(579, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348601115, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:"Recycle event";}'),
(580, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348601126, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:13:"Recycle event";}'),
(581, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348601144, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(582, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348601170, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:13:"Recycle event";}'),
(583, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348601367, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1251:"SQL ERROR [ mysqli ]<br /><br />Data too long for column ''modification'' at row 1 [1406]<br /><br />SQL<br /><br />INSERT INTO `dc_activity_chancelog`  (activity_id, user_id, user_ip, modification) VALUES (21, 2, ''fe80::41be:40cf:2f3e:6e28'', ''name:We gaan risk spelen-&amp;gt;We gaan risk spelen v2;startDatetime:2013-08-23 12:00:00-&amp;gt;2013-08-23 12:07:00;enrollDateTime:2013-08-23 12:00:00-&amp;gt;2013-08-23 12:07:00;'')<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 562<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 862<br /><b>CALL:</b> activity-&gt;set_chance_log()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 551<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(584, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1348601487, 'LOG_CONFIG_1', ''),
(585, 0, 2, 0, 0, 0, '::1', 1348672345, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(586, 0, 2, 0, 0, 0, '::1', 1348672398, 'LOG_CONFIG_1', ''),
(587, 0, 2, 0, 0, 0, '::1', 1348932413, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(588, 0, 2, 0, 0, 0, '::1', 1348937484, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(589, 0, 2, 0, 0, 0, '::1', 1349004365, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(590, 2, 2, 0, 0, 0, '::1', 1349004771, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1418:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''%e% AND start_datetime BETWEEN ''2012-09-30 13:32:51'' AND ''2011-03-20 00:00:00''\r\n'' at line 1 [1064]<br /><br />SQL<br /><br />SELECT id FROM `dc_activity` WHERE name LIKE %e% AND start_datetime BETWEEN ''2012-09-30 13:32:51'' AND ''2011-03-20 00:00:00''\r\n		ORDER BY start_datetime DESC\n LIMIT 100<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 353<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 287<br /><b>CALL:</b> activity_user-&gt;search()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(591, 2, 2, 0, 0, 0, '::1', 1349005355, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1289:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ORDER BY start_datetime DESC\n LIMIT 100'' at line 2 [1064]<br /><br />SQL<br /><br />SELECT id FROM `dc_activity` WHERE \r\n		ORDER BY start_datetime DESC\n LIMIT 100<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 353<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 287<br /><b>CALL:</b> activity_user-&gt;search()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(592, 2, 2, 0, 0, 0, '::1', 1349005449, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1289:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ORDER BY start_datetime DESC\n LIMIT 100'' at line 2 [1064]<br /><br />SQL<br /><br />SELECT id FROM `dc_activity` WHERE \r\n		ORDER BY start_datetime DESC\n LIMIT 100<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 357<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 287<br /><b>CALL:</b> activity_user-&gt;search()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(593, 2, 2, 0, 0, 0, '::1', 1349007975, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 438<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(594, 2, 2, 0, 0, 0, '::1', 1349008048, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 440<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(595, 2, 2, 0, 0, 0, '::1', 1349008145, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 440<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(596, 2, 2, 0, 0, 0, '::1', 1349008542, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 440<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(597, 2, 2, 0, 0, 0, '::1', 1349008636, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 441<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(598, 2, 2, 0, 0, 0, '::1', 1349008711, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 439<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(599, 2, 2, 0, 0, 0, '::1', 1349009090, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 447<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(600, 2, 2, 0, 0, 0, '::1', 1349009125, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 450<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(601, 2, 2, 0, 0, 0, '::1', 1349009235, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 447<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(602, 2, 2, 0, 0, 0, '::1', 1349009254, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 449<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(603, 2, 2, 0, 0, 0, '::1', 1349009265, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 450<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(604, 2, 2, 0, 0, 0, '::1', 1349009304, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 452<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(605, 2, 2, 0, 0, 0, '::1', 1349009315, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 452<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(606, 2, 2, 0, 0, 0, '::1', 1349009324, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:680:"SQL ERROR [ mysqli ]<br /><br /> [0]<br /><br />SQL<br /><br />No values specified for SQL IN comparison<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 389<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 450<br /><b>CALL:</b> dbal-&gt;sql_in_set()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(607, 0, 2, 0, 0, 0, '::1', 1349012530, 'LOG_MODULE_ADD', 'a:1:{i:0;s:11:"Past events";}'),
(608, 0, 2, 0, 0, 0, '::1', 1349012535, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:11:"Past events";i:1;s:13:"Recycle event";}'),
(609, 0, 2, 0, 0, 0, '::1', 1349012536, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:11:"Past events";i:1;s:10:"Edit event";}'),
(610, 0, 2, 0, 0, 0, '::1', 1349012541, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:11:"Past events";i:1;s:16:"Find user events";}'),
(611, 0, 2, 0, 0, 0, '::1', 1349012543, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:11:"Past events";}'),
(612, 2, 2, 0, 0, 0, '::1', 1349019164, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:21:"Module not accessible";}'),
(613, 0, 2, 0, 0, 0, '::1', 1349019305, 'LOG_MODULE_ADD', 'a:1:{i:0;s:7:"Enrolls";}'),
(614, 0, 2, 0, 0, 0, '::1', 1349019313, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:7:"Enrolls";i:1;s:13:"Recycle event";}'),
(615, 0, 2, 0, 0, 0, '::1', 1349019316, 'LOG_MODULE_MOVE_UP', 'a:2:{i:0;s:13:"Recycle event";i:1;s:7:"Enrolls";}'),
(616, 0, 2, 0, 0, 0, '::1', 1349019379, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:7:"Enrolls";}'),
(617, 0, 2, 0, 0, 0, '::1', 1349019388, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:7:"Enrolls";}'),
(618, 0, 2, 0, 0, 0, '::1', 1349076469, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(619, 0, 54, 0, 0, 0, '::1', 1349088870, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(620, 0, 54, 0, 0, 0, '::1', 1349088917, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(621, 0, 54, 0, 0, 0, '::1', 1349091841, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(622, 0, 54, 0, 0, 0, '::1', 1349091923, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(623, 0, 54, 0, 0, 0, '::1', 1349091933, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(624, 0, 54, 0, 0, 0, '::1', 1349092455, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(625, 0, 54, 0, 0, 0, '::1', 1349092554, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(626, 0, 54, 0, 0, 0, '::1', 1349092647, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(627, 0, 54, 0, 0, 0, '::1', 1349092736, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(628, 0, 54, 0, 0, 0, '::1', 1349092778, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(629, 0, 54, 0, 0, 0, '::1', 1349092905, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(630, 0, 54, 0, 0, 0, '::1', 1349093320, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(631, 0, 54, 0, 0, 0, '::1', 1349093348, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(632, 0, 54, 0, 0, 0, '::1', 1349093375, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(633, 0, 54, 0, 0, 0, '::1', 1349093388, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(634, 0, 54, 0, 0, 0, '::1', 1349093565, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(635, 0, 2, 0, 0, 0, '::1', 1349093691, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(636, 0, 2, 0, 0, 0, '::1', 1349284058, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(637, 2, 2, 0, 0, 0, '::1', 1349285522, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1505:"SQL ERROR [ mysqli ]<br /><br />Incorrect datetime value: ''-0001-11-30 00:00:00'' for column ''unsubscribe_max'' at row 1 [1292]<br /><br />SQL<br /><br />UPDATE dc_activity SET name = ''We gaan risk spelen v2'', description = ''[b:2n78umk2]dit is de grote test[/b:2n78umk2]\\n\\n[img:2n78umk2]http&amp;#58;//onviolence&amp;#46;com/images/2010-10/risk-board-game&amp;#46;jpg[/img:2n78umk2]'', start_datetime = ''2013-08-23 12:07:00'', stop_datetime = ''2013-08-25 12:08:00'', enroll = 1, enroll_datetime = ''2013-08-23 12:07:00'', unsubscribe_max = ''-0001-11-30 00:00:00'', enroll_max = 0, price = 0, price_member = 0, location = ''aan de keuken tafel'', active = 1, category = 0, pay_options = '''', bbcode_bitfield = ''SA=='', bbcode_uid = ''2n78umk2'', enable_magic_url = 1, enable_bbcode = 1, enable_smilies = 1 WHERE id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 868<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 726<br /><b>CALL:</b> activity-&gt;save()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div><br />";}'),
(638, 0, 2, 0, 0, 0, '::1', 1349285579, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(639, 0, 2, 0, 0, 0, '::1', 1349287634, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(640, 0, 2, 0, 0, 0, '::1', 1349288409, 'LOG_USERS_ADDED', 'a:2:{i:0;s:2:"AC";i:1;s:4:"test";}'),
(641, 0, 2, 0, 0, 0, '::1', 1349288432, 'LOG_GROUP_UPDATED', 'a:1:{i:0;s:2:"AC";}'),
(642, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349295481, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(643, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349299620, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(644, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349299673, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(645, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349299802, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(646, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349300016, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(647, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349301993, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(648, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349302074, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(649, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349302138, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(650, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349303010, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(651, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349303561, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(652, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349305477, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(653, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349306605, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(654, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349308288, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(655, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349308490, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(656, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349308833, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(657, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349309093, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(658, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349517048, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(659, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519236, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(660, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519335, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(661, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519468, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(662, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519480, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(663, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519487, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(664, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519507, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(665, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519758, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(666, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349519878, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(667, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349521997, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(668, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349522028, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(669, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349522074, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(670, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349523869, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(671, 0, 1, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349524094, 'LOG_UPDATE_DATABASE', 'a:2:{i:0;s:6:"3.0.10";i:1;s:6:"3.0.11";}'),
(672, 0, 1, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349524244, 'LOG_UPDATE_PHPBB', 'a:2:{i:0;s:6:"3.0.10";i:1;s:6:"3.0.11";}'),
(673, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349524290, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(674, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349525662, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(675, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349525912, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(676, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349525984, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(677, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349526047, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(678, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349529888, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(679, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349530993, 'LOG_PURGE_CACHE', ''),
(680, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349531740, 'LOG_MODULE_DISABLE', 'a:1:{i:0;s:9:"ACP index";}'),
(681, 2, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349531745, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:431:"Module not accessible<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 439<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(682, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349532331, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"ACP index";}'),
(683, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349532390, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:9:"ACP index";}'),
(684, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1349533220, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:9:"ACP index";}'),
(685, 0, 54, 0, 0, 0, '::1', 1349537996, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(686, 0, 54, 0, 0, 0, '::1', 1349538036, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(687, 0, 54, 0, 0, 0, '::1', 1349538039, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(688, 0, 54, 0, 0, 0, '::1', 1349538108, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(689, 0, 54, 0, 0, 0, '::1', 1349538167, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(690, 0, 2, 0, 0, 0, '::1', 1349612984, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(691, 0, 54, 0, 0, 0, '::1', 1349613050, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(692, 2, 54, 0, 0, 0, '::1', 1349614282, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:1746:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''''dc_activity_group_manage''\r\n										WHERE user_id IN (''2'', ''7'', ''14''))\r\n		ORDE'' at line 3 [1064]<br /><br />SQL<br /><br />SELECT id FROM `dc_activity`  WHERE start_datetime BETWEEN ''2000-01-01 00:00:00'' AND ''2012-10-07 14:51:22'' AND id IN (\r\n										SELECT activiy_id \r\n										FROM  ''dc_activity_group_manage''\r\n										WHERE user_id IN (''2'', ''7'', ''14''))\r\n		ORDER BY start_datetime DESC\n LIMIT 10<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 365<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 272<br /><b>CALL:</b> activity_user-&gt;search()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(693, 2, 54, 0, 0, 0, '::1', 1349614334, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:1747:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''''dc_activity_group_manage''\r\n										WHERE group_id IN (''2'', ''7'', ''14''))\r\n		ORD'' at line 3 [1064]<br /><br />SQL<br /><br />SELECT id FROM `dc_activity`  WHERE start_datetime BETWEEN ''2000-01-01 00:00:00'' AND ''2012-10-07 14:52:14'' AND id IN (\r\n										SELECT activiy_id \r\n										FROM  ''dc_activity_group_manage''\r\n										WHERE group_id IN (''2'', ''7'', ''14''))\r\n		ORDER BY start_datetime DESC\n LIMIT 10<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 365<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 272<br /><b>CALL:</b> activity_user-&gt;search()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(694, 2, 54, 0, 0, 0, '::1', 1349614337, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:1747:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''''dc_activity_group_manage''\r\n										WHERE group_id IN (''2'', ''7'', ''14''))\r\n		ORD'' at line 3 [1064]<br /><br />SQL<br /><br />SELECT id FROM `dc_activity`  WHERE start_datetime BETWEEN ''2000-01-01 00:00:00'' AND ''2012-10-07 14:52:17'' AND id IN (\r\n										SELECT activiy_id \r\n										FROM  ''dc_activity_group_manage''\r\n										WHERE group_id IN (''2'', ''7'', ''14''))\r\n		ORDER BY start_datetime DESC\n LIMIT 10<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 365<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 272<br /><b>CALL:</b> activity_user-&gt;search()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(695, 2, 54, 0, 0, 0, '::1', 1349614408, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:1748:"SQL ERROR [ mysqli ]<br /><br />You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''''dc_activity_group_manage''\r\n										WHERE group_id IN (''2'', ''7'', ''14''))\r\n		ORD'' at line 3 [1064]<br /><br />SQL<br /><br />SELECT id FROM `dc_activity`  WHERE start_datetime BETWEEN ''2000-01-01 00:00:00'' AND ''2012-10-07 14:53:28'' AND id IN (\r\n										SELECT activity_id \r\n										FROM  ''dc_activity_group_manage''\r\n										WHERE group_id IN (''2'', ''7'', ''14''))\r\n		ORDER BY start_datetime DESC\n LIMIT 10<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 224<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 170<br /><b>CALL:</b> dbal_mysqli-&gt;_sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_user_class.php<br /><b>LINE:</b> 365<br /><b>CALL:</b> dbal-&gt;sql_query_limit()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 272<br /><b>CALL:</b> activity_user-&gt;search()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(696, 0, 2, 0, 0, 0, '::1', 1350137990, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(697, 0, 2, 0, 0, 0, '::1', 1350301153, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(698, 0, 2, 0, 0, 0, '::1', 1350308710, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(699, 0, 2, 0, 0, 0, '::1', 1350387199, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(700, 0, 2, 0, 0, 0, '::1', 1350387322, 'LOG_PURGE_CACHE', ''),
(701, 0, 2, 0, 0, 0, '::1', 1350398053, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(702, 0, 2, 0, 0, 0, '::1', 1350398250, 'LOG_PURGE_CACHE', ''),
(703, 0, 2, 0, 0, 0, '::1', 1350398321, 'LOG_ACL_ADD_GROUP_GLOBAL_A_', 'a:1:{i:0;s:17:"DigitaleCommissie";}'),
(704, 0, 2, 0, 0, 0, '::1', 1350398342, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:17:"DigitaleCommissie";}'),
(705, 0, 2, 0, 0, 0, '::1', 1350398397, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:17:"Standard Features";}'),
(706, 0, 2, 0, 0, 0, '::1', 1350398653, 'LOG_PURGE_CACHE', ''),
(707, 0, 54, 0, 0, 0, '::1', 1350398678, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(708, 2, 54, 0, 0, 0, '::1', 1350398683, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:1158:"SQL ERROR [ mysqli ]<br /><br />Table ''gumbo_millennium.dc_activity_user_manage'' doesn''t exist [1146]<br /><br />SQL<br /><br />SELECT activity_id FROM (dc_activity_user_manage a) WHERE user_id = 54 AND disabled =  0<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_management_class.php<br /><b>LINE:</b> 44<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 217<br /><b>CALL:</b> activity_management-&gt;get_comming()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(709, 0, 2, 0, 0, 0, '::1', 1350399454, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(710, 0, 2, 0, 0, 0, '::1', 1350399487, 'LOG_ACL_ADD_USER_GLOBAL_A_', 'a:1:{i:0;s:4:"test";}'),
(711, 0, 2, 0, 0, 0, '::1', 1350399537, 'LOG_ACL_ADD_USER_GLOBAL_A_', 'a:1:{i:0;s:4:"test";}'),
(712, 0, 54, 0, 0, 0, '::1', 1350399551, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(713, 0, 2, 0, 0, 0, '::1', 1350399622, 'LOG_PURGE_CACHE', ''),
(714, 0, 2, 0, 0, 0, '::1', 1350399656, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:15:"Activity system";}'),
(715, 0, 2, 0, 0, 0, '::1', 1350399678, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:8:"Overview";}'),
(716, 0, 2, 0, 0, 0, '::1', 1350400284, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(717, 0, 2, 0, 0, 0, '::1', 1350400600, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(718, 0, 2, 0, 0, 0, '::1', 1351157497, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(719, 0, 2, 0, 0, 0, '::1', 1351158224, 'LOG_PURGE_CACHE', ''),
(720, 0, 2, 0, 0, 0, '::1', 1351209564, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(721, 0, 2, 0, 0, 0, '::1', 1351209983, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(722, 0, 2, 0, 0, 0, '::1', 1351213009, 'LOG_MODULE_ADD', 'a:1:{i:0;s:15:"activity system";}'),
(723, 0, 2, 0, 0, 0, '::1', 1351213023, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:15:"Activity system";}'),
(724, 0, 2, 0, 0, 0, '::1', 1351213430, 'LOG_MODULE_ADD', 'a:1:{i:0;s:6:"Events";}');
INSERT INTO `dc_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(725, 0, 2, 0, 0, 0, '::1', 1351213449, 'LOG_MODULE_ADD', 'a:1:{i:0;s:8:"Overview";}'),
(726, 0, 2, 0, 0, 0, '::1', 1351213453, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:8:"Overview";}'),
(727, 2, 2, 0, 0, 0, '::1', 1351213463, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:431:"Module not accessible<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 439<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(728, 0, 2, 0, 0, 0, '::1', 1351213511, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:15:"Activity system";}'),
(729, 0, 2, 0, 0, 0, '::1', 1351213555, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:6:"Events";}'),
(730, 0, 2, 0, 0, 0, '::1', 1351213569, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:8:"Overview";}'),
(731, 0, 2, 0, 0, 0, '::1', 1351214465, 'LOG_MODULE_ADD', 'a:1:{i:0;s:8:"Overview";}'),
(732, 0, 2, 0, 0, 0, '::1', 1351214468, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:8:"Overview";}'),
(733, 0, 54, 0, 0, 0, '::1', 1351214534, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(734, 0, 2, 0, 0, 0, '::1', 1351214649, 'LOG_PURGE_CACHE', ''),
(735, 0, 2, 0, 0, 0, '::1', 1351214707, 'LOG_PURGE_CACHE', ''),
(736, 0, 2, 0, 0, 0, '::1', 1351217014, 'LOG_PURGE_CACHE', ''),
(737, 0, 2, 0, 0, 0, '::1', 1351217543, 'LOG_PURGE_CACHE', ''),
(738, 0, 2, 0, 0, 0, '::1', 1351217600, 'LOG_PURGE_CACHE', ''),
(739, 0, 2, 0, 0, 0, '::1', 1351217974, 'LOG_PURGE_CACHE', ''),
(740, 0, 2, 0, 0, 0, '::1', 1351218051, 'LOG_PURGE_CACHE', ''),
(741, 0, 2, 0, 0, 0, '::1', 1351607838, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(742, 0, 2, 0, 0, 0, '::1', 1351608104, 'LOG_PURGE_CACHE', ''),
(743, 0, 2, 0, 0, 0, '::1', 1351610305, 'LOG_ACL_ADD_GROUP_GLOBAL_A_', 'a:1:{i:0;s:17:"DigitaleCommissie";}'),
(744, 2, 2, 0, 0, 0, '::1', 1351610428, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:431:"Module not accessible<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 439<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(745, 0, 2, 0, 0, 0, '::1', 1351610449, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"New event";}'),
(746, 0, 2, 0, 0, 0, '::1', 1351610459, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:"Recycle event";}'),
(747, 0, 2, 0, 0, 0, '::1', 1351610484, 'LOG_MODULE_ADD', 'a:1:{i:0;s:11:"Past events";}'),
(748, 0, 2, 0, 0, 0, '::1', 1351610506, 'LOG_MODULE_ADD', 'a:1:{i:0;s:7:"Enrolls";}'),
(749, 0, 2, 0, 0, 0, '::1', 1351610619, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:9:"New event";}'),
(750, 0, 2, 0, 0, 0, '::1', 1351610623, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:13:"Recycle event";}'),
(751, 0, 2, 0, 0, 0, '::1', 1351610627, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:11:"Past events";}'),
(752, 0, 2, 0, 0, 0, '::1', 1351610631, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:7:"Enrolls";}'),
(753, 0, 2, 0, 0, 0, '::1', 1351610647, 'LOG_MODULE_ADD', 'a:1:{i:0;s:9:"New event";}'),
(754, 0, 2, 0, 0, 0, '::1', 1351610655, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:"Recycle event";}'),
(755, 0, 2, 0, 0, 0, '::1', 1351610667, 'LOG_MODULE_ADD', 'a:1:{i:0;s:10:"Edit event";}'),
(756, 0, 2, 0, 0, 0, '::1', 1351610679, 'LOG_MODULE_ADD', 'a:1:{i:0;s:11:"Past events";}'),
(757, 0, 2, 0, 0, 0, '::1', 1351610692, 'LOG_MODULE_ADD', 'a:1:{i:0;s:7:"Enrolls";}'),
(758, 0, 2, 0, 0, 0, '::1', 1351610711, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:7:"Enrolls";}'),
(759, 0, 2, 0, 0, 0, '::1', 1351610722, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:10:"Edit event";}'),
(760, 0, 2, 0, 0, 0, '::1', 1351610730, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:9:"New event";}'),
(761, 0, 2, 0, 0, 0, '::1', 1351610731, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:13:"Recycle event";}'),
(762, 0, 2, 0, 0, 0, '::1', 1351610731, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:10:"Edit event";}'),
(763, 0, 2, 0, 0, 0, '::1', 1351610732, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:11:"Past events";}'),
(764, 0, 2, 0, 0, 0, '::1', 1351610733, 'LOG_MODULE_ENABLE', 'a:1:{i:0;s:7:"Enrolls";}'),
(765, 0, 2, 0, 0, 0, '::1', 1351610825, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:13:"Recycle event";}'),
(766, 0, 54, 0, 0, 0, '::1', 1351612147, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(767, 0, 2, 0, 0, 0, '::1', 1351678592, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(768, 0, 2, 0, 0, 0, '::1', 1351699659, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(769, 0, 2, 0, 0, 0, '::1', 1351705532, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(770, 2, 2, 0, 0, 0, '::1', 1351709897, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1124:"SQL ERROR [ mysqli ]<br /><br />Table ''gumbo_millennium.dc_activity_enrol'' doesn''t exist [1146]<br /><br />SQL<br /><br />UPDATE `dc_activity_enrol` SET  price_payed = 5.6 WHERE user_id = 2 AND 	activity_id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 914<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 821<br /><b>CALL:</b> activity-&gt;pay()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(771, 2, 2, 0, 0, 0, '::1', 1351709950, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1147:"SQL ERROR [ mysqli ]<br /><br />Can''t find file: ''.\\gumbo_millennium\\@0009dc_activity_enroll.frm'' (errno: 22) [1017]<br /><br />SQL<br /><br />UPDATE `	dc_activity_enroll` SET  price_payed = 5.6 WHERE user_id = 2 AND 	activity_id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 913<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 821<br /><b>CALL:</b> activity-&gt;pay()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(772, 2, 2, 0, 0, 0, '::1', 1351710156, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1149:"SQL ERROR [ mysqli ]<br /><br />Can''t find file: ''.\\gumbo_millennium\\@0009dc_activity_enroll.frm'' (errno: 22) [1017]<br /><br />SQL<br /><br />UPDATE `	dc_activity_enroll` SET  price_payed = 10.2 WHERE user_id = 54 AND 	activity_id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 913<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 821<br /><b>CALL:</b> activity-&gt;pay()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(773, 2, 2, 0, 0, 0, '::1', 1351710246, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1146:"SQL ERROR [ mysqli ]<br /><br />Can''t find file: ''.\\gumbo_millennium\\@0009dc_activity_enroll.frm'' (errno: 22) [1017]<br /><br />SQL<br /><br />UPDATE `	dc_activity_enroll` SET  price_payed = 5.8 WHERE user_id = 6 AND 	activity_id = 9<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 913<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 821<br /><b>CALL:</b> activity-&gt;pay()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(774, 2, 2, 0, 0, 0, '::1', 1351710760, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1148:"SQL ERROR [ mysqli ]<br /><br />Can''t find file: ''.\\gumbo_millennium\\@0009dc_activity_enroll.frm'' (errno: 22) [1017]<br /><br />SQL<br /><br />UPDATE `	dc_activity_enroll` SET  price_payed = 8.2 WHERE user_id = 54 AND 	activity_id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 913<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 821<br /><b>CALL:</b> activity-&gt;pay()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(775, 0, 2, 0, 0, 0, '::1', 1351711078, 'LOG_TEMPLATE_ADD_FS', 'a:1:{i:0;s:14:"Artodia: Black";}'),
(776, 0, 2, 0, 0, 0, '::1', 1351711078, 'LOG_THEME_ADD_DB', 'a:1:{i:0;s:14:"Artodia: Black";}'),
(777, 0, 2, 0, 0, 0, '::1', 1351711078, 'LOG_IMAGESET_ADD_FS', 'a:1:{i:0;s:14:"Artodia: Black";}'),
(778, 0, 2, 0, 0, 0, '::1', 1351711078, 'LOG_STYLE_ADD', 'a:1:{i:0;s:14:"Artodia: Black";}'),
(779, 0, 2, 0, 0, 0, '::1', 1351866978, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(780, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351926859, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(781, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351926872, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1146:"SQL ERROR [ mysqli ]<br /><br />Can''t find file: ''.\\gumbo_millennium\\@0009dc_activity_enroll.frm'' (errno: 22) [1017]<br /><br />SQL<br /><br />UPDATE `	dc_activity_enroll` SET  price_payed = 50 WHERE user_id = 2 AND 	activity_id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 911<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 821<br /><b>CALL:</b> activity-&gt;pay()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(782, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351927414, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(783, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351927453, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(784, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351927496, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(785, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351927801, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(786, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351927823, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(787, 2, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351927885, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"General Error";i:1;s:1147:"SQL ERROR [ mysqli ]<br /><br />Can''t find file: ''.\\gumbo_millennium\\@0009dc_activity_enroll.frm'' (errno: 22) [1017]<br /><br />SQL<br /><br />UPDATE `	dc_activity_enroll` SET  price_payed = 5.6 WHERE user_id = 2 AND 	activity_id = 21<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_class.php<br /><b>LINE:</b> 911<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 821<br /><b>CALL:</b> activity-&gt;pay()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(788, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931291, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(789, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931393, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(790, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931400, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(791, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931412, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(792, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931429, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(793, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931443, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(794, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931450, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(795, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931514, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(796, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931524, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(797, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931530, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(798, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931540, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(799, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931551, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(800, 0, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931919, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(801, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351931958, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(802, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351933536, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(803, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351934649, 'LOG_GROUP_CREATED', 'a:1:{i:0;s:14:"Bras commissie";}'),
(804, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351934658, 'LOG_USERS_ADDED', 'a:2:{i:0;s:14:"Bras commissie";i:1;s:4:"test";}'),
(805, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351934729, 'LOG_ACL_ADD_GROUP_GLOBAL_A_', 'a:1:{i:0;s:14:"Bras commissie";}'),
(806, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351934753, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:41:"<span class="sep">Registered users</span>";}'),
(807, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351934837, 'LOG_ACL_ADD_GROUP_GLOBAL_A_', 'a:1:{i:0;s:14:"Bras commissie";}'),
(808, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351934879, 'LOG_ACL_ADD_USER_GLOBAL_A_', 'a:1:{i:0;s:4:"test";}'),
(809, 2, 54, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351934887, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:1158:"SQL ERROR [ mysqli ]<br /><br />Table ''gumbo_millennium.dc_activity_user_manage'' doesn''t exist [1146]<br /><br />SQL<br /><br />SELECT activity_id FROM (dc_activity_user_manage a) WHERE user_id = 54 AND disabled =  0<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/db/dbal.php<br /><b>LINE:</b> 757<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/includes/db/mysqli.php<br /><b>LINE:</b> 182<br /><b>CALL:</b> dbal-&gt;sql_error()<br /><br /><b>FILE:</b> [ROOT]/dc/dc_activity_management_class.php<br /><b>LINE:</b> 44<br /><b>CALL:</b> dbal_mysqli-&gt;sql_query()<br /><br /><b>FILE:</b> [ROOT]/includes/acp/acp_dc_activity_management.php<br /><b>LINE:</b> 217<br /><b>CALL:</b> activity_management-&gt;get_comming()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 507<br /><b>CALL:</b> acp_dc_activity_management-&gt;main()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(810, 0, 2, 0, 0, 0, 'fe80::41be:40cf:2f3e:6e28', 1351935426, 'LOG_GROUP_REMOVE', 'a:2:{i:0;s:2:"AC";i:1;s:4:"test";}'),
(811, 0, 2, 0, 0, 0, '::1', 1351941326, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(812, 0, 2, 0, 0, 0, '::1', 1351945363, 'LOG_PURGE_CACHE', ''),
(813, 0, 2, 0, 0, 0, '::1', 1351946045, 'LOG_PURGE_CACHE', ''),
(814, 0, 2, 0, 0, 0, '::1', 1351947419, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:39:"<span class="sep">Administrators</span>";}'),
(815, 0, 54, 0, 0, 0, '::1', 1351948030, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(816, 0, 2, 0, 0, 0, '::1', 1351948863, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:17:"Standard Features";}'),
(817, 0, 2, 0, 0, 0, '::1', 1351948875, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:12:"All Features";}'),
(818, 0, 2, 0, 0, 0, '::1', 1351948891, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:30:"Newly Registered User Features";}'),
(819, 0, 2, 0, 0, 0, '::1', 1351951608, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(820, 2, 1, 0, 0, 0, '::1', 1351951712, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:361:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/ucp.php</em><br /><br />Errno 2: mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1651<br />";}'),
(821, 0, 2, 0, 0, 0, '::1', 1351951736, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(822, 0, 2, 0, 0, 0, '::1', 1351951822, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(823, 0, 2, 0, 0, 0, '::1', 1351951870, 'LOG_USERS_ADDED', 'a:2:{i:0;s:14:"Administrators";i:1;s:5:"skizo";}'),
(824, 0, 2, 0, 0, 0, '::1', 1351951904, 'LOG_USERS_ADDED', 'a:2:{i:0;s:17:"DigitaleCommissie";i:1;s:5:"skizo";}'),
(825, 0, 2, 0, 0, 0, '::1', 1351951961, 'LOG_ACL_ADD_GROUP_GLOBAL_A_', 'a:1:{i:0;s:39:"<span class="sep">Administrators</span>";}'),
(826, 2, 1, 0, 0, 0, '::1', 1351952048, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:361:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Gumbo Millennium/ucp.php</em><br /><br />Errno 2: mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1651<br />";}'),
(827, 0, 2, 0, 0, 0, '::1', 1351952061, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(828, 0, 2, 0, 0, 0, '::1', 1351952093, 'LOG_USERS_ADDED', 'a:2:{i:0;s:14:"Administrators";i:1;s:3:"lmd";}'),
(829, 0, 2, 0, 0, 0, '::1', 1351952111, 'LOG_USERS_ADDED', 'a:2:{i:0;s:17:"DigitaleCommissie";i:1;s:3:"lmd";}'),
(830, 0, 2, 0, 0, 0, '::1', 1351953478, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:39:"<span class="sep">Administrators</span>";}'),
(831, 0, 54, 0, 0, 0, '::1', 1351953517, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(832, 0, 2, 0, 0, 0, '::1', 1351953579, 'LOG_ACL_ADD_USER_GLOBAL_A_', 'a:1:{i:0;s:4:"test";}'),
(833, 2, 54, 0, 0, 0, '::1', 1351953594, 'LOG_GENERAL_ERROR', 'a:2:{i:0;s:13:"Algemene fout";i:1;s:431:"Module not accessible<br /><br />BACKTRACE<br /><div style="font-family: monospace;"><br /><b>FILE:</b> (not given by php)<br /><b>LINE:</b> (not given by php)<br /><b>CALL:</b> msg_handler()<br /><br /><b>FILE:</b> [ROOT]/includes/functions_module.php<br /><b>LINE:</b> 439<br /><b>CALL:</b> trigger_error()<br /><br /><b>FILE:</b> [ROOT]/adm/index.php<br /><b>LINE:</b> 74<br /><b>CALL:</b> p_master-&gt;load_active()<br /></div>";}'),
(834, 0, 2, 0, 0, 0, '::1', 1351953742, 'LOG_CONFIG_EDIT_ACTIVITY', ''),
(835, 0, 2, 0, 0, 0, '::1', 1351965278, 'LOG_CONFIG_SERVER', ''),
(836, 0, 2, 0, 0, 0, '::1', 1351965293, 'LOG_CONFIG_SERVER', ''),
(837, 0, 58, 0, 0, 0, '192.168.178.13', 1351965296, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(838, 0, 58, 0, 0, 0, '192.168.178.13', 1351965552, 'LOG_FORUM_ADD', 'a:1:{i:0;s:7:"Publiek";}'),
(839, 0, 58, 0, 0, 0, '192.168.178.13', 1351965556, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:7:"Publiek";i:1;s:10:"Test forum";}'),
(840, 0, 58, 0, 0, 0, '192.168.178.13', 1351965558, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:10:"Test forum";i:1;s:7:"Publiek";}'),
(841, 0, 58, 0, 0, 0, '192.168.178.13', 1351965560, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:7:"Publiek";i:1;s:10:"Test forum";}'),
(842, 0, 58, 0, 0, 0, '192.168.178.13', 1351965561, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:7:"Publiek";i:1;s:10:"Commissies";}'),
(843, 0, 58, 0, 0, 0, '192.168.178.13', 1351965563, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:7:"Publiek";i:1;s:15:"Project groepen";}'),
(844, 0, 58, 0, 0, 0, '192.168.178.13', 1351965564, 'LOG_FORUM_MOVE_UP', 'a:2:{i:0;s:7:"Publiek";i:1;s:19:"Je eerste categorie";}'),
(845, 0, 58, 0, 0, 0, '192.168.178.13', 1351965726, 'LOG_FORUM_ADD', 'a:1:{i:0;s:6:"Nieuws";}'),
(846, 0, 2, 0, 0, 0, '::1', 1351966059, 'LOG_ACL_ADD_USER_GLOBAL_A_', 'a:1:{i:0;s:3:"lmd";}'),
(847, 0, 2, 0, 0, 0, '::1', 1351966079, 'LOG_ACL_ADD_GROUP_GLOBAL_A_', 'a:1:{i:0;s:39:"<span class="sep">Administrators</span>";}'),
(848, 0, 2, 0, 0, 0, '::1', 1351966100, 'LOG_USER_USER_UPDATE', 'a:1:{i:0;s:3:"lmd";}'),
(849, 0, 2, 0, 0, 0, '::1', 1351966114, 'LOG_PURGE_CACHE', ''),
(850, 0, 58, 0, 0, 0, '192.168.178.13', 1351966154, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:7:"Publiek";}'),
(851, 0, 58, 0, 0, 0, '192.168.178.13', 1351966205, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:7:"Publiek";i:1;s:39:"<span class="sep">Administrators</span>";}'),
(852, 0, 58, 0, 0, 0, '192.168.178.13', 1351966215, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:6:"Nieuws";}'),
(853, 0, 58, 0, 0, 0, '192.168.178.13', 1351966661, 'LOG_FORUM_ADD', 'a:1:{i:0;s:4:"Poll";}'),
(854, 0, 58, 0, 0, 0, '192.168.178.13', 1351966661, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:7:"Publiek";i:1;s:4:"Poll";}'),
(855, 0, 58, 0, 0, 0, '192.168.178.13', 1351966711, 'LOG_FORUM_ADD', 'a:1:{i:0;s:14:"Contentpaginas";}'),
(856, 0, 58, 0, 0, 0, '192.168.178.13', 1351966771, 'LOG_ACL_DEL_FORUM_LOCAL_F_', 'a:2:{i:0;s:18:"Digitale Commissie";i:1;s:285:"<span class="sep">Guests</span>, <span class="sep">Registered users</span>, <span class="sep">Global moderators</span>, <span class="sep">Administrators</span>, <span class="sep">Bots</span>, <span class="sep">Newly registered users</span>, Gumbo Leden, Oud leden, A-Leden, Bestuur, AC";}'),
(857, 0, 58, 0, 0, 0, '192.168.178.13', 1351966779, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:18:"Digitale Commissie";i:1;s:17:"DigitaleCommissie";}'),
(858, 0, 58, 0, 0, 0, '192.168.178.13', 1351966797, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:14:"Contentpaginas";}'),
(859, 0, 58, 0, 0, 0, '192.168.178.13', 1351966825, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:14:"Contentpaginas";i:1;s:17:"DigitaleCommissie";}'),
(860, 0, 58, 0, 0, 0, '192.168.178.13', 1351966936, 'LOG_ACL_ADD_FORUM_LOCAL_F_', 'a:2:{i:0;s:21:"Publiek, Nieuws, Poll";i:1;s:123:"<span class="sep">Guests</span>, <span class="sep">Registered users</span>, <span class="sep">Newly registered users</span>";}'),
(861, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:15:"ACP_PORTAL_INFO";}'),
(862, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:"General settings";}'),
(863, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:"ACP_PORTAL_NEWS_INFO";}'),
(864, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:29:"ACP_PORTAL_ANNOUNCEMENTS_INFO";}'),
(865, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:23:"ACP_PORTAL_WELCOME_INFO";}'),
(866, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:"ACP_PORTAL_RECENT_INFO";}'),
(867, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:"ACP_PORTAL_WORDGRAPH_INFO";}'),
(868, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:"ACP_PORTAL_PAYPAL_INFO";}'),
(869, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:27:"ACP_PORTAL_ATTACHMENTS_INFO";}'),
(870, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:23:"ACP_PORTAL_MEMBERS_INFO";}'),
(871, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:"ACP_PORTAL_POLLS_INFO";}'),
(872, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:"ACP_PORTAL_BOTS_INFO";}'),
(873, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:"ACP_PORTAL_POSTER_INFO";}'),
(874, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:28:"ACP_PORTAL_MINICALENDAR_INFO";}'),
(875, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:27:"ACP_PORTAL_CUSTOMBLOCK_INFO";}'),
(876, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:21:"ACP_PORTAL_LINKS_INFO";}'),
(877, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:23:"ACP_PORTAL_FRIENDS_INFO";}'),
(878, 0, 58, 0, 0, 0, '127.0.0.1', 1351969319, 'LOG_MODULE_ADD', 'a:1:{i:0;s:25:"ACP_PORTAL_BIRTHDAYS_INFO";}'),
(879, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:16:"General settings";}'),
(880, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:16:"General settings";}'),
(881, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:20:"ACP_PORTAL_NEWS_INFO";}'),
(882, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:20:"ACP_PORTAL_NEWS_INFO";}'),
(883, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:29:"ACP_PORTAL_ANNOUNCEMENTS_INFO";}'),
(884, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:29:"ACP_PORTAL_ANNOUNCEMENTS_INFO";}'),
(885, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:23:"ACP_PORTAL_WELCOME_INFO";}'),
(886, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:23:"ACP_PORTAL_WELCOME_INFO";}'),
(887, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:22:"ACP_PORTAL_RECENT_INFO";}'),
(888, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:22:"ACP_PORTAL_RECENT_INFO";}'),
(889, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:25:"ACP_PORTAL_WORDGRAPH_INFO";}'),
(890, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:25:"ACP_PORTAL_WORDGRAPH_INFO";}'),
(891, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:22:"ACP_PORTAL_PAYPAL_INFO";}'),
(892, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:22:"ACP_PORTAL_PAYPAL_INFO";}'),
(893, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:27:"ACP_PORTAL_ATTACHMENTS_INFO";}'),
(894, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:27:"ACP_PORTAL_ATTACHMENTS_INFO";}'),
(895, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:23:"ACP_PORTAL_MEMBERS_INFO";}'),
(896, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:23:"ACP_PORTAL_MEMBERS_INFO";}'),
(897, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:21:"ACP_PORTAL_POLLS_INFO";}'),
(898, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:21:"ACP_PORTAL_POLLS_INFO";}'),
(899, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:20:"ACP_PORTAL_BOTS_INFO";}'),
(900, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:20:"ACP_PORTAL_BOTS_INFO";}'),
(901, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:22:"ACP_PORTAL_POSTER_INFO";}'),
(902, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:22:"ACP_PORTAL_POSTER_INFO";}'),
(903, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:28:"ACP_PORTAL_MINICALENDAR_INFO";}'),
(904, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:28:"ACP_PORTAL_MINICALENDAR_INFO";}'),
(905, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:27:"ACP_PORTAL_CUSTOMBLOCK_INFO";}'),
(906, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:27:"ACP_PORTAL_CUSTOMBLOCK_INFO";}'),
(907, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:21:"ACP_PORTAL_LINKS_INFO";}'),
(908, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:21:"ACP_PORTAL_LINKS_INFO";}'),
(909, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:23:"ACP_PORTAL_FRIENDS_INFO";}'),
(910, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:23:"ACP_PORTAL_FRIENDS_INFO";}'),
(911, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:25:"ACP_PORTAL_BIRTHDAYS_INFO";}'),
(912, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:25:"ACP_PORTAL_BIRTHDAYS_INFO";}'),
(913, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_ADD', 'a:1:{i:0;s:6:"Portal";}'),
(914, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:"General settings";}'),
(915, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"Portal Modules";}'),
(916, 0, 58, 0, 0, 0, '127.0.0.1', 1351969320, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:"Upload module";}'),
(917, 0, 57, 0, 0, 0, '192.168.178.17', 1351969536, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(918, 0, 58, 0, 0, 0, '127.0.0.1', 1351969538, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(919, 0, 57, 0, 0, 0, '192.168.178.17', 1351969642, 'LOG_GROUP_REMOVE', 'a:2:{i:0;s:22:"Newly registered users";i:1;s:5:"skizo";}'),
(920, 0, 58, 0, 0, 0, '127.0.0.1', 1351969766, 'LOG_USER_USER_UPDATE', 'a:1:{i:0;s:5:"skizo";}'),
(921, 0, 58, 0, 0, 0, '127.0.0.1', 1351970151, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(922, 0, 58, 0, 0, 0, '127.0.0.1', 1351970218, 'LOG_CONFIG_SETTINGS', ''),
(923, 0, 58, 0, 0, 0, '127.0.0.1', 1351970281, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:6:"Recent";}'),
(924, 0, 58, 0, 0, 0, '127.0.0.1', 1351970489, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(925, 0, 58, 0, 0, 0, '127.0.0.1', 1351970506, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:16:"General settings";}'),
(926, 0, 58, 0, 0, 0, '127.0.0.1', 1351970510, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:16:"General settings";}'),
(927, 0, 58, 0, 0, 0, '127.0.0.1', 1351970566, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:15:"Welcome Message";}'),
(928, 0, 58, 0, 0, 0, '127.0.0.1', 1351970566, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:15:"Welcome Message";}'),
(929, 0, 58, 0, 0, 0, '127.0.0.1', 1351970591, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:15:"Welcome Message";}'),
(930, 0, 58, 0, 0, 0, '127.0.0.1', 1351970591, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:15:"Welcome Message";}'),
(931, 0, 58, 0, 0, 0, '127.0.0.1', 1351970604, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:11:"Latest news";}'),
(932, 0, 58, 0, 0, 0, '127.0.0.1', 1351970661, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:11:"Latest news";}'),
(933, 0, 58, 0, 0, 0, '127.0.0.1', 1351970867, 'LOG_CONFIG_ATTACH', ''),
(934, 0, 58, 0, 0, 0, '127.0.0.1', 1351970992, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:6:"Nieuws";}'),
(935, 0, 58, 0, 0, 0, '127.0.0.1', 1351971159, 'LOG_CONFIG_SETTINGS', ''),
(936, 0, 58, 0, 0, 0, '127.0.0.1', 1351971178, 'LOG_CONFIG_FEATURES', ''),
(937, 0, 57, 0, 0, 0, '192.168.178.17', 1351971223, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(938, 0, 58, 0, 0, 0, '127.0.0.1', 1351971272, 'LOG_CONFIG_ATTACH', ''),
(939, 0, 57, 0, 0, 0, '192.168.178.17', 1351971372, 'LOG_ACL_TRANSFER_PERMISSIONS', 'a:1:{i:0;s:3:"lmd";}'),
(940, 0, 57, 0, 0, 0, '192.168.178.17', 1351971383, 'LOG_ACL_RESTORE_PERMISSIONS', 'a:1:{i:0;s:3:"lmd";}'),
(941, 0, 58, 0, 0, 0, '127.0.0.1', 1351971390, 'LOG_ACL_DEL_ADMIN_GLOBAL_A_', 'a:1:{i:0;s:3:"lmd";}'),
(942, 0, 57, 0, 0, 0, '192.168.178.17', 1351971394, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(943, 0, 57, 0, 0, 0, '192.168.178.17', 1351971412, 'LOG_GROUP_REMOVE', 'a:2:{i:0;s:22:"Newly registered users";i:1;s:3:"lmd";}'),
(944, 0, 58, 0, 0, 0, '127.0.0.1', 1351971559, 'LOG_CONFIG_ATTACH', ''),
(945, 0, 58, 0, 0, 0, '127.0.0.1', 1351971693, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:4:"Poll";}'),
(946, 0, 58, 0, 0, 0, '127.0.0.1', 1351971746, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:16:"General settings";}'),
(947, 0, 58, 0, 0, 0, '127.0.0.1', 1351971841, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:4:"Poll";}'),
(948, 0, 58, 0, 0, 0, '127.0.0.1', 1351971861, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:4:"Poll";}'),
(949, 0, 57, 0, 0, 0, '192.168.178.17', 1351973479, 'LOG_STYLE_DELETE', 'a:1:{i:0;s:14:"Artodia: Black";}'),
(950, 0, 57, 0, 0, 0, '192.168.178.17', 1351973489, 'LOG_STYLE_DELETE', 'a:1:{i:0;s:10:"subsilver2";}'),
(951, 0, 57, 0, 0, 0, '192.168.178.17', 1351974151, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(952, 0, 58, 0, 0, 0, '127.0.0.1', 1351975062, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:16:"General settings";}'),
(953, 0, 58, 0, 0, 0, '127.0.0.1', 1351975230, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:8:"Calendar";}'),
(954, 0, 58, 0, 0, 0, '127.0.0.1', 1351975426, 'LOG_PORTAL_EVENT_ADDED', 'a:1:{i:0;s:15:"Test activiteit";}'),
(955, 0, 58, 0, 0, 0, '127.0.0.1', 1351976101, 'LOG_ATTACH_EXTGROUP_EDIT', 'a:1:{i:0;s:9:"Documents";}'),
(956, 0, 57, 0, 0, 0, '192.168.178.17', 1351979801, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:11:"Latest news";}'),
(957, 0, 57, 0, 0, 0, '192.168.178.17', 1351979834, 'LOG_PORTAL_CONFIG', 'a:1:{i:0;s:11:"Latest news";}'),
(958, 0, 57, 0, 0, 0, '192.168.178.17', 1351980291, 'LOG_STYLE_ADD', 'a:1:{i:0;s:5:"Gumbo";}'),
(959, 0, 57, 0, 0, 0, '192.168.178.17', 1351980457, 'LOG_STYLE_DELETE', 'a:1:{i:0;s:5:"Gumbo";}');

-- --------------------------------------------------------

--
-- Table structure for table `dc_login_attempts`
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
-- Table structure for table `dc_moderator_cache`
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
-- Table structure for table `dc_modules`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=272 ;

--
-- Dumping data for table `dc_modules`
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
(31, 1, 1, '', 'acp', 0, 277, 288, 'ACP_CAT_DOT_MODS', '', ''),
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
(237, 1, 1, '', 'acp', 0, 289, 304, 'Activity system', '', ''),
(238, 1, 1, '', 'acp', 237, 290, 303, 'Events', '', ''),
(240, 1, 1, 'dc_activity_management', 'acp', 238, 291, 292, 'Overview', 'overview', 'acl_a_overview_activity'),
(245, 1, 1, 'dc_activity_management', 'acp', 238, 293, 294, 'New event', 'new_activity', 'acl_a_new_activity'),
(246, 1, 0, 'dc_activity_management', 'acp', 238, 295, 296, 'Recycle event', 'recycle_activity', 'acl_a_recyle_activity'),
(247, 1, 0, 'dc_activity_management', 'acp', 238, 297, 298, 'Edit event', 'edit_activity', 'acl_a_edit_activity'),
(248, 1, 1, 'dc_activity_management', 'acp', 238, 299, 300, 'Past events', 'past_activities', 'acl_a_recyle_activity'),
(249, 1, 0, 'dc_activity_management', 'acp', 238, 301, 302, 'Enrolls', 'enrolls', 'acl_a_edit_activity'),
(250, 1, 1, '', 'acp', 31, 278, 279, 'ACP_PORTAL_INFO', '', ''),
(268, 1, 1, '', 'acp', 31, 280, 287, 'ACP_PORTAL', '', ''),
(269, 1, 1, 'portal', 'acp', 268, 281, 282, 'ACP_PORTAL_GENERAL_INFO', 'config', 'acl_a_manage_portal'),
(270, 1, 1, 'portal', 'acp', 268, 283, 284, 'ACP_PORTAL_MODULES', 'modules', 'acl_a_manage_portal'),
(271, 1, 1, 'portal', 'acp', 268, 285, 286, 'ACP_PORTAL_UPLOAD', 'upload_module', 'acl_a_manage_portal');

-- --------------------------------------------------------

--
-- Table structure for table `dc_poll_options`
--

CREATE TABLE IF NOT EXISTS `dc_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_poll_options`
--

INSERT INTO `dc_poll_options` (`poll_option_id`, `topic_id`, `poll_option_text`, `poll_option_total`) VALUES
(1, 10, 'Ja', 0),
(2, 10, 'Nee', 0),
(3, 10, 'Misschien', 1),
(1, 11, 'Sinterklaas', 0),
(2, 11, 'Kerstman', 1),
(1, 12, 'Wat is een kerstboom?', 0),
(2, 12, 'Ja!', 1),
(3, 12, 'Nee, ik HAAAAT kerstmis.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_poll_votes`
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

--
-- Dumping data for table `dc_poll_votes`
--

INSERT INTO `dc_poll_votes` (`topic_id`, `poll_option_id`, `vote_user_id`, `vote_user_ip`) VALUES
(11, 2, 57, '192.168.178.17'),
(10, 3, 57, '192.168.178.17'),
(12, 2, 58, '127.0.0.1'),
(12, 3, 57, '192.168.178.17');

-- --------------------------------------------------------

--
-- Table structure for table `dc_portal_config`
--

CREATE TABLE IF NOT EXISTS `dc_portal_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_portal_config`
--

INSERT INTO `dc_portal_config` (`config_name`, `config_value`) VALUES
('board3_calendar_events_18', 'a:1:{i:0;a:7:{s:5:"title";s:15:"Test activiteit";s:4:"desc";s:36:"Tja, even wat loze data om te testen";s:10:"start_time";d:1352329200;s:8:"end_time";d:1352433600;s:7:"all_day";b:0;s:10:"permission";s:1:"2";s:3:"url";s:0:"";}}'),
('board3_menu_array_19', 'a:11:{i:0;a:4:{s:5:"title";s:9:"M_CONTENT";s:3:"url";s:0:"";s:4:"type";i:0;s:10:"permission";s:0:"";}i:1;a:4:{s:5:"title";s:5:"INDEX";s:3:"url";s:9:"index.php";s:4:"type";i:1;s:10:"permission";s:0:"";}i:2;a:4:{s:5:"title";s:6:"SEARCH";s:3:"url";s:10:"search.php";s:4:"type";i:1;s:10:"permission";s:0:"";}i:3;a:4:{s:5:"title";s:8:"REGISTER";s:3:"url";s:21:"ucp.php?mode=register";s:4:"type";i:1;s:10:"permission";s:1:"1";}i:4;a:4:{s:5:"title";s:10:"MEMBERLIST";s:3:"url";s:14:"memberlist.php";s:4:"type";i:1;s:10:"permission";s:3:"2,3";}i:5;a:4:{s:5:"title";s:8:"THE_TEAM";s:3:"url";s:27:"memberlist.php?mode=leaders";s:4:"type";i:1;s:10:"permission";s:3:"2,3";}i:6;a:4:{s:5:"title";s:6:"M_HELP";s:3:"url";s:0:"";s:4:"type";i:0;s:10:"permission";s:0:"";}i:7;a:4:{s:5:"title";s:3:"FAQ";s:3:"url";s:7:"faq.php";s:4:"type";i:1;s:10:"permission";s:0:"";}i:8;a:4:{s:5:"title";s:8:"M_BBCODE";s:3:"url";s:19:"faq.php?mode=bbcode";s:4:"type";i:1;s:10:"permission";s:0:"";}i:9;a:4:{s:5:"title";s:7:"M_TERMS";s:3:"url";s:18:"ucp.php?mode=terms";s:4:"type";i:1;s:10:"permission";s:0:"";}i:10;a:4:{s:5:"title";s:5:"M_PRV";s:3:"url";s:20:"ucp.php?mode=privacy";s:4:"type";i:1;s:10:"permission";s:0:"";}}'),
('board3_welcome_message_10', 'We are working hard on a new website.\n\nThe Digital Commission');

-- --------------------------------------------------------

--
-- Table structure for table `dc_portal_modules`
--

CREATE TABLE IF NOT EXISTS `dc_portal_modules` (
  `module_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `module_classname` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_column` tinyint(3) NOT NULL DEFAULT '0',
  `module_order` tinyint(3) NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_image_src` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_image_width` int(3) NOT NULL DEFAULT '0',
  `module_image_height` int(3) NOT NULL DEFAULT '0',
  `module_group_ids` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- Dumping data for table `dc_portal_modules`
--

INSERT INTO `dc_portal_modules` (`module_id`, `module_classname`, `module_column`, `module_order`, `module_name`, `module_image_src`, `module_image_width`, `module_image_height`, `module_group_ids`, `module_status`) VALUES
(3, 'birthday_list', 3, 2, 'BIRTHDAYS', 'portal_birthday.png', 16, 16, '', 1),
(5, 'search', 1, 3, 'PORTAL_SEARCH', 'portal_search.png', 16, 16, '', 1),
(6, 'attachments', 3, 3, 'PORTAL_ATTACHMENTS', 'portal_attach.png', 16, 16, '', 1),
(10, 'welcome', 2, 1, 'PORTAL_WELCOME', '', 0, 0, '', 0),
(11, 'recent', 2, 3, 'PORTAL_RECENT', '', 16, 16, '', 1),
(12, 'announcements', 2, 4, 'GLOBAL_ANNOUNCEMENTS', '', 16, 16, '', 1),
(13, 'news', 2, 2, 'LATEST_NEWS', '', 0, 0, '', 1),
(14, 'poll', 3, 1, 'PORTAL_POLL', '', 0, 0, '', 1),
(15, 'whois_online', 1, 6, 'PORTAL_WHOIS_ONLINE', 'portal_friends.png', 16, 16, '', 1),
(16, 'user_menu', 1, 2, 'USER_MENU', 'portal_user.png', 16, 16, '', 1),
(17, 'statistics', 3, 5, 'STATISTICS', 'portal_statistics.png', 16, 16, '', 1),
(18, 'calendar', 1, 4, 'PORTAL_CALENDAR', 'portal_calendar.png', 16, 16, '', 1),
(19, 'main_menu', 1, 1, 'M_MENU', 'portal_menu.png', 16, 16, '', 1),
(20, 'twitter', 3, 4, 'PORTAL_TWITTER', 'portal_twitter.png', 16, 16, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_posts`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=19 ;

--
-- Dumping data for table `dc_posts`
--

INSERT INTO `dc_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_approved`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`) VALUES
(1, 1, 2, 2, 0, '192.168.178.17', 1327581813, 1, 0, 1, 1, 1, 1, '', 'Welkom bij phpBB3', 'Dit is een voorbeeldbericht in je phpBB3 installatie. Alles lijkt correct te functioneren. Je mag dit bericht, indien gewenst, verwijderen en verder gaan met het instellen van je forum. Tijdens de installatie werden een aantal permissies voor de voorgedefinieerde gebruikersgroepen (beheerders, bots, globale moderators, gasten, geregistreerde gebruikers en geregistreerde COPPA gebruikers) aan je eerste categorie en forum toegewezen. Het is aan te raden je eerste categorie en forum te hernoemen en nadien de permissies over te nemen als je een nieuwe categorie of forum aanmaakt. Als je er toch voor kiest om je eerste categorie en forum te verwijderen, vergeet dan niet permissies toe te wijzen aan deze gebruikersgroepen telkens je een nieuwe categorie of forum aanmaakt. Veel plezier!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0),
(2, 2, 2, 2, 0, '192.168.178.14', 1332762423, 1, 0, 1, 1, 1, 1, '', 'gatus test', '[b:2jr0mlum]Gatus henk!![/b:2jr0mlum] <!-- s:evil: --><img src="{SMILIES_PATH}/icon_evil.gif" alt=":evil:" title="Slecht of heel kwaad" /><!-- s:evil: -->  <!-- s:lol: --><img src="{SMILIES_PATH}/icon_lol.gif" alt=":lol:" title="Lachend" /><!-- s:lol: -->  <!-- s:roll: --><img src="{SMILIES_PATH}/icon_rolleyes.gif" alt=":roll:" title="Rollende ogen" /><!-- s:roll: -->  <!-- s:?: --><img src="{SMILIES_PATH}/icon_question.gif" alt=":?:" title="Vraag" /><!-- s:?: -->  <!-- s:idea: --><img src="{SMILIES_PATH}/icon_idea.gif" alt=":idea:" title="Idee" /><!-- s:idea: -->  [url=http&#58;//www&#46;google&#46;nl:2jr0mlum]gratus henk[/url:2jr0mlum]\nen hier hebben we nog een enter en nog weat meer\n\n\n\n hallo cool dit!', '23f32c1622257377d2e8d49604c60c48', 0, 'UA==', '2jr0mlum', 1, 0, '', 0, 0, 0),
(3, 2, 2, 2, 0, '127.0.0.1', 1333200650, 1, 0, 1, 1, 1, 1, '', 'Re: gatus test', 'een [b:1tpfzcjr][i:1tpfzcjr]extra[/i:1tpfzcjr] post [/b:1tpfzcjr]    <!-- s:cry: --><img src="{SMILIES_PATH}/icon_cry.gif" alt=":cry:" title="Huilend of zeer droevig" /><!-- s:cry: -->  <!-- s:twisted: --><img src="{SMILIES_PATH}/icon_twisted.gif" alt=":twisted:" title="Geniepig slecht" /><!-- s:twisted: -->  <!-- s:shock: --><img src="{SMILIES_PATH}/icon_eek.gif" alt=":shock:" title="Gechoqueerd" /><!-- s:shock: --> \nhenk \n\nhenk henk', '273a697cd1d7cf2a51e04d461a6617eb', 0, 'YA==', '1tpfzcjr', 1, 0, '', 0, 0, 0),
(4, 3, 11, 2, 0, '::1', 1341251743, 1, 0, 1, 1, 1, 1, '', 'Toepassen in het live systeem', '[size=150:g2hjbtnn]Taken voor Gerco[/size:g2hjbtnn]\n-&gt; in de functie: get_all_status() en get_user_manage_list()  de username aanpassen naar echte naam van de gebruiker!\n       - vergeet daarbij niet in  activity.php te kijken of de functies goed parsen\n\n-&gt; een extra css aanmaken of dit toevoegen aan commen.css en dat goed documenteren!!!!!!!\n[code:g2hjbtnn]/* special for dc activity*/\n#activity_enrolled_wapper {\n		margin&#58;0 auto;\n		width&#58; 50%;\n		float&#58;center;\n		\n}\n\n#activity_enrolled_block1 {\n		float&#58;left;\n		width&#58; 50%;\n		\n		\n}\n#activity_enrolled_block2 {\n		float&#58;right;\n		text-align&#58; left;\n		width&#58; 50%;\n}[/code:g2hjbtnn]\n\n--&gt; opzoeken welk id de gumbo member groep is en dat in de constante: MEMBER_GROUP_ID in dc_activity_class zetten\n\n--&gt; user een mail sturen, kan ik nu niet doen omdat ik geen mailserver heb\n\n--&gt; PHPbb uit debug halen:  dit in comments zetten: in config.php\n@define(''DEBUG'', true);\n@define(''DEBUG_EXTRA'', true);', '2da132b32e251e1251c9be67dee6205e', 0, 'BIA=', 'g2hjbtnn', 1, 0, '', 0, 0, 0),
(5, 2, 2, 2, 0, '::1', 1341251804, 1, 0, 1, 1, 1, 0, '', 'Re: gatus test', 'hallo test je', '40ab7708058eec09b58b45331185ad45', 0, '', '3obnbi46', 1, 0, '', 0, 0, 0),
(8, 6, 11, 2, 0, '192.168.178.12', 1341999658, 1, 0, 1, 1, 1, 1, '', 'Toekomst muziek activiteiten systeem', '- een activiteit aan een catogrie toevoegen\n- In de acitiveiten lijst de gelezen/ongelezen aanzetten (Zitten wat bug in?)\n- aanbetaling\n- activity_user_class-&gt;scearch error log toevoegen', 'c6d63f6c0fd5af4bf02aa62c9b5eadae', 0, '', '2ft314xh', 1, 0, '', 0, 0, 0),
(9, 2, 2, 57, 0, '192.168.178.17', 1351969669, 1, 0, 1, 1, 1, 1, '', 'Re: gatus test', 'hoi', '4216455ceebbc3038bd0550c85b6a3bf', 0, '', '1nrxy8gv', 1, 0, '', 0, 0, 0),
(10, 7, 14, 57, 0, '192.168.178.17', 1351970382, 1, 0, 1, 1, 1, 1, '', 'De Woningzoeker; studenten gedupeerd!', 'PERSBERICHT\n\n[b:1kjbqsj9]Zwolle, 2 oktober 2012 - Het pakket van wijzigingen die De Woningzoeker per 1 oktober heeft ingevoerd, pakt voor studenten zeer nadelig uit. Op aandringen van het SOOZ heeft De Woningzoeker gisteren een e-mail verstuurd naar alle 25.000 woningzoekenden omdat ze het volgende stukje tekst waren ‘vergeten’ te verzenden. [/b:1kjbqsj9]\n\n“In de mailing met betrekking tot de wijzigingen van het woonruimteverdeelsysteem is een belangrijk stukje tekst niet meegenomen. Hierbij alsnog de ontbrekende tekst. Met name voor studenten is dit van belang. Onze excuses voor het ongemak. &quot;\n\n[b:1kjbqsj9]Studenten alleen in de wensmodule [/b:1kjbqsj9]\n&quot;Studenten hebben vanaf 1 oktober ook geen toegang meer tot de spoedmodule. Specifiek bedoelde studentenwoningen worden alleen gepubliceerd in de wensmodule. Daarnaast kunnen studenten reageren op andere wenswoningen, waarbij geldt dat een deel van deze woningen – waaronder alle eengezinswoningen – voor hen is uitgesloten.” \n\nStudenten konden voorheen in zowel spoedmodule als wensmodule reageren, op zowel studentenwoningen als reguliere woningen. Door deze maatregel wordt een grote groep woningen onbereikbaar voor studenten. Het gaat hier om de volgende groep woningen: \n\n[list:1kjbqsj9]\n[*:1kjbqsj9]Alle reguliere woningen in de spoedmodule [/*:m:1kjbqsj9]\n[*:1kjbqsj9]Alle eengezinswoningen in de wensmodule [/*:m:1kjbqsj9][/list:u:1kjbqsj9]\nVerder hebben woningbouwcorporaties plannen om bij meer woningen studenten te weigeren, denk hierbij aan appartementen. \n\nHet SOOZ roept iedereen op deze petitie te tekenen zodat we als studenten een duidelijk signaal uitzenden. Wij zullen vervolgens namens al deze studenten stappen ondernemen richting o.a. de gemeente en woningbouwcorporaties. \n\n<!-- m --><a class="postlink" href="http://www.sooz.nl/wpsite/woningzoeker-petitie/">http://www.sooz.nl/wpsite/woningzoeker-petitie/</a><!-- m -->', 'b1ffa4cebb8747abfb5d51637bbe5b81', 0, 'QEA=', '1kjbqsj9', 1, 1351970809, '', 57, 2, 0),
(11, 8, 14, 57, 0, '192.168.178.17', 1351970702, 1, 0, 1, 1, 1, 1, '', 'Huwelijk Bas Rutgers en Margreet Houtman', 'Beste Gumboërs, \n\nWoensdag 19 september a.s. zullen Bas Rutgers en Margreet Houtman elkaar het ja-woord geven. Wij zijn als vereniging uitgenodigd om de kerkdienst en receptie bij te wonen. Iedereen is uitgenodigd. Van a-lid tot ere-lid mag iedereen er zijn. zoals ze zelf zeggen &quot;Hoe meer zielen, hoe meer vreugd!&quot; \n\nMet vriendelijke groet, \nHet Bestuur', 'fe475695932234bee27a08b025184616', 0, '', 'g4k1hqpk', 1, 0, '', 0, 0, 0),
(12, 7, 14, 58, 0, '127.0.0.1', 1351970738, 1, 0, 1, 1, 1, 0, '', 'Re: De Woningzoeker; studenten gedupeerd!', 'Niet alleen studenten!', '4d00a0d4a206a74386cd91cd2005250a', 0, '', '18r1dlw7', 1, 0, '', 0, 0, 0),
(13, 9, 14, 58, 0, '127.0.0.1', 1351971088, 1, 0, 1, 1, 1, 0, '', 'Tussentijdse ALV 7 juni', 'Beste leden,\n\nUit de vorige ALV is besloten om een tussentijdse ALV te houden voor het keuren van de boeken 2010/2011. Deze zal plaats vinden op 7 juni 2012. De officiële uitnodiging volgt nog met daarin verdere informatie.\n\n[attachment=0:1simsrn6]<!-- ia0 -->31615.jpg<!-- ia0 -->[/attachment:1simsrn6]\n\nMet vriendelijke groet,\nHet Bestuur', 'fb1793c6743546eb68aa6f452f1bcf67', 1, 'AAg=', '1simsrn6', 1, 1351971501, '', 58, 2, 0),
(14, 9, 14, 57, 0, '192.168.178.17', 1351971352, 1, 0, 1, 1, 1, 1, '', 'Re: Tussentijdse ALV 7 juni', '[attachment=0:2i8xmco6]<!-- ia0 -->1497477028_6_ZpsJ.png<!-- ia0 -->[/attachment:2i8xmco6]', '7ae619ebef7b7abe010a9190467b3b36', 1, 'AAg=', '2i8xmco6', 1, 0, '', 0, 0, 0),
(15, 7, 14, 57, 0, '192.168.178.17', 1351971602, 1, 0, 1, 1, 1, 1, '', 'Re: De Woningzoeker; studenten gedupeerd!', '[attachment=0:7vtba5jg]<!-- ia0 -->D2anS.gif<!-- ia0 -->[/attachment:7vtba5jg]', 'b48466fb443590e6a197b41c715406bf', 1, 'AAg=', '7vtba5jg', 1, 0, '', 0, 0, 0),
(16, 10, 15, 57, 0, '192.168.178.17', 1351971725, 1, 0, 1, 1, 1, 1, '', 'Hebben we zin in het nieuwe schooljaar?', 'Hebben we zin in het nieuwe schooljaar?', 'a3db188e52ad9c2e4053e4535cc5cfae', 0, '', '32i0bbp3', 1, 0, '', 0, 0, 0),
(17, 11, 15, 58, 0, '127.0.0.1', 1351971801, 1, 0, 1, 1, 1, 1, '', 'Sinterklaas of Kerstman', 'Wat wordt het in december?', 'd993c36a00e99a8445c0a2f3e57b2285', 0, '', '2b4x6e6l', 1, 0, '', 0, 0, 0),
(18, 12, 15, 57, 0, '192.168.178.17', 1351971804, 1, 0, 1, 1, 1, 1, '', 'Is het al weer tijd voor een kerstboom in plaza?', 'Is het al weer tijd voor een kerstboom in plaza?', 'dc3f2b978b088cc7fc8417793636a97c', 0, '', '6j3z2i9m', 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_privmsgs`
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
-- Table structure for table `dc_privmsgs_folder`
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
-- Table structure for table `dc_privmsgs_rules`
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
-- Table structure for table `dc_privmsgs_to`
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
-- Table structure for table `dc_profile_fields`
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
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dc_profile_fields`
--

INSERT INTO `dc_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_show_on_vt`, `field_show_profile`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_novalue`) VALUES
(1, 'gumbo_status', 1, 'gumbo_status', '5', '0', '100', '0', '0', '', 1, 0, 1, 0, 0, 0, 1, 1, 0),
(2, 'gumbo_facebook', 1, 'gumbo_facebook', '5', '0', '100', '0', '', '', 0, 1, 0, 1, 0, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_profile_fields_data`
--

CREATE TABLE IF NOT EXISTS `dc_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pf_gumbo_status` bigint(20) DEFAULT NULL,
  `pf_gumbo_facebook` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_profile_fields_data`
--

INSERT INTO `dc_profile_fields_data` (`user_id`, `pf_gumbo_status`, `pf_gumbo_facebook`) VALUES
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dc_profile_fields_lang`
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
-- Table structure for table `dc_profile_lang`
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
-- Dumping data for table `dc_profile_lang`
--

INSERT INTO `dc_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
(1, 1, 'Status', 'Je huidige status binnen de vereniging', ''),
(1, 2, 'Status', 'Je huidige status binnen de vereniging', ''),
(2, 1, 'Facebook', 'Facebook account', ''),
(2, 2, 'Facebook', 'Facebook account', '');

-- --------------------------------------------------------

--
-- Table structure for table `dc_ranks`
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
-- Dumping data for table `dc_ranks`
--

INSERT INTO `dc_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Beheerder', 0, 1, ''),
(2, 'Bestuur', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `dc_reports`
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
-- Table structure for table `dc_reports_reasons`
--

CREATE TABLE IF NOT EXISTS `dc_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dc_reports_reasons`
--

INSERT INTO `dc_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'Dit bericht bevat links naar illegale/onrechtmatig verkregen software.', 1),
(2, 'spam', 'Dit bericht heeft als enige doel reclame te maken voor een website of product.', 2),
(3, 'off_topic', 'Dit bericht doet niet ter zake in het onderwerp.', 3),
(4, 'other', 'Dit bericht past niet binnen een categorie, gebruik het tekstveld voor verdere informatie.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `dc_search_results`
--

CREATE TABLE IF NOT EXISTS `dc_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_search_results`
--

INSERT INTO `dc_search_results` (`search_key`, `search_time`, `search_keywords`, `search_authors`) VALUES
('eabe912daed1bdb788c35b14061446da', 1351970615, '', ' 57 ');

-- --------------------------------------------------------

--
-- Table structure for table `dc_search_wordlist`
--

CREATE TABLE IF NOT EXISTS `dc_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=402 ;

--
-- Dumping data for table `dc_search_wordlist`
--

INSERT INTO `dc_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'dit', 0, 4),
(2, 'een', 0, 9),
(3, 'voorbeeldbericht', 0, 1),
(4, 'phpbb3', 0, 2),
(5, 'installatie', 0, 1),
(6, 'alles', 0, 1),
(7, 'lijkt', 0, 1),
(8, 'correct', 0, 1),
(9, 'functioneren', 0, 1),
(10, 'mag', 0, 2),
(11, 'bericht', 0, 1),
(12, 'indien', 0, 1),
(13, 'gewenst', 0, 1),
(14, 'verwijderen', 0, 1),
(15, 'verder', 0, 2),
(16, 'gaan', 0, 1),
(17, 'met', 0, 4),
(18, 'het', 0, 10),
(19, 'instellen', 0, 1),
(20, 'van', 0, 5),
(21, 'forum', 0, 1),
(22, 'tijdens', 0, 1),
(23, 'werden', 0, 1),
(24, 'aantal', 0, 1),
(25, 'permissies', 0, 1),
(26, 'voor', 0, 6),
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
(37, 'aan', 0, 4),
(38, 'eerste', 0, 1),
(39, 'categorie', 0, 1),
(40, 'toegewezen', 0, 1),
(41, 'raden', 0, 1),
(42, 'hernoemen', 0, 1),
(43, 'nadien', 0, 1),
(44, 'over', 0, 1),
(45, 'nemen', 0, 1),
(46, 'als', 0, 3),
(47, 'nieuwe', 0, 3),
(48, 'aanmaakt', 0, 1),
(49, 'toch', 0, 1),
(50, 'kiest', 0, 1),
(51, 'vergeet', 0, 2),
(52, 'dan', 0, 1),
(53, 'niet', 0, 4),
(54, 'toe', 0, 1),
(55, 'wijzen', 0, 1),
(56, 'deze', 0, 3),
(57, 'telkens', 0, 1),
(58, 'veel', 0, 1),
(59, 'plezier', 0, 1),
(60, 'welkom', 0, 1),
(61, 'bij', 0, 3),
(62, 'gatus', 0, 5),
(63, 'henk', 0, 2),
(64, 'test', 0, 5),
(65, 'url', 0, 0),
(66, 'gratus', 0, 1),
(67, 'hier', 0, 2),
(68, 'hebben', 0, 4),
(69, 'nog', 0, 2),
(70, 'enter', 0, 1),
(71, 'weat', 0, 1),
(72, 'meer', 0, 3),
(73, 'hallo', 0, 2),
(74, 'cool', 0, 1),
(75, 'extra', 0, 2),
(76, 'post', 0, 1),
(77, 'http', 0, 1),
(78, 'www', 0, 1),
(79, 'google', 0, 0),
(80, 'back', 0, 0),
(81, 'end', 0, 0),
(82, 'wat', 0, 2),
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
(101, 'mail', 0, 2),
(102, 'betaling', 0, 0),
(103, 'categorieën', 0, 0),
(104, 'toevoegen', 0, 2),
(105, 'user', 0, 2),
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
(116, 'alleen', 0, 2),
(117, 'maar', 0, 0),
(118, 'contact', 0, 0),
(119, 'ideal', 0, 0),
(120, 'geïmplementeerd', 0, 0),
(121, 'zoeken', 0, 0),
(122, 'gelezen', 0, 1),
(123, 'zetten', 0, 1),
(124, 'ical', 0, 0),
(125, 'sturen', 0, 1),
(126, 'naar', 0, 2),
(127, 'gebruiker', 0, 1),
(128, 'dat', 0, 2),
(129, 'die', 0, 1),
(130, 'ingeschreven', 0, 0),
(131, 'front', 0, 0),
(132, 'gedeelte', 0, 0),
(133, 'gedaan', 0, 0),
(134, 'moet', 0, 0),
(135, 'worden', 0, 1),
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
(153, 'groep', 0, 2),
(154, 'view', 0, 0),
(155, 'subcripson', 0, 0),
(156, 'yes', 0, 0),
(157, 'maybe', 0, 0),
(158, 'order', 0, 0),
(159, 'name', 0, 1),
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
(174, 'zijn', 0, 1),
(175, 'mensen', 0, 0),
(176, 'mee', 0, 0),
(177, 'misschien', 0, 0),
(178, 'bug', 0, 1),
(179, 'tracker', 0, 0),
(180, 'activity', 0, 2),
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
(212, 'class', 0, 2),
(213, 'doen', 0, 1),
(214, 'omdat', 0, 2),
(215, 'geen', 0, 2),
(216, 'mailserver', 0, 1),
(217, 'heb', 0, 1),
(218, 'phpbb', 0, 1),
(219, 'uit', 0, 3),
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
(237, 'zitten', 0, 1),
(238, 'aanbetaling', 0, 1),
(239, 'scearch', 0, 1),
(240, 'error', 0, 1),
(241, 'log', 0, 1),
(242, 'hoi', 0, 1),
(243, 'persbericht', 0, 1),
(244, 'zwolle', 0, 1),
(245, 'oktober', 0, 1),
(246, '2012', 0, 2),
(247, 'pakket', 0, 1),
(248, 'wijzigingen', 0, 1),
(249, 'woningzoeker', 0, 4),
(250, 'per', 0, 1),
(251, 'heeft', 0, 1),
(252, 'ingevoerd', 0, 1),
(253, 'pakt', 0, 1),
(254, 'studenten', 0, 5),
(255, 'zeer', 0, 1),
(256, 'nadelig', 0, 1),
(257, 'aandringen', 0, 1),
(258, 'sooz', 0, 1),
(259, 'gisteren', 0, 1),
(260, 'verstuurd', 0, 1),
(261, 'alle', 0, 1),
(262, '000', 0, 1),
(263, 'woningzoekenden', 0, 1),
(264, 'volgende', 0, 1),
(265, 'stukje', 0, 1),
(266, 'tekst', 0, 1),
(267, 'waren', 0, 1),
(268, 'vergeten', 0, 1),
(269, 'verzenden', 0, 1),
(270, 'mailing', 0, 1),
(271, 'betrekking', 0, 1),
(272, 'tot', 0, 2),
(273, 'woonruimteverdeelsysteem', 0, 1),
(274, 'belangrijk', 0, 1),
(275, 'meegenomen', 0, 1),
(276, 'hierbij', 0, 1),
(277, 'alsnog', 0, 1),
(278, 'ontbrekende', 0, 1),
(279, 'belang', 0, 1),
(280, 'onze', 0, 1),
(281, 'excuses', 0, 1),
(282, 'ongemak', 0, 1),
(283, 'wensmodule', 0, 1),
(284, 'vanaf', 0, 1),
(285, 'ook', 0, 1),
(286, 'toegang', 0, 1),
(287, 'spoedmodule', 0, 1),
(288, 'specifiek', 0, 1),
(289, 'bedoelde', 0, 1),
(290, 'studentenwoningen', 0, 1),
(291, 'gepubliceerd', 0, 1),
(292, 'daarnaast', 0, 1),
(293, 'kunnen', 0, 1),
(294, 'reageren', 0, 1),
(295, 'andere', 0, 1),
(296, 'wenswoningen', 0, 1),
(297, 'waarbij', 0, 1),
(298, 'geldt', 0, 1),
(299, 'deel', 0, 1),
(300, 'woningen', 0, 1),
(301, 'waaronder', 0, 1),
(302, 'eengezinswoningen', 0, 1),
(303, 'hen', 0, 1),
(304, 'uitgesloten', 0, 1),
(305, 'konden', 0, 1),
(306, 'voorheen', 0, 1),
(307, 'zowel', 0, 1),
(308, 'reguliere', 0, 1),
(309, 'door', 0, 1),
(310, 'maatregel', 0, 1),
(311, 'wordt', 0, 2),
(312, 'grote', 0, 1),
(313, 'onbereikbaar', 0, 1),
(314, 'gaat', 0, 1),
(315, 'woningbouwcorporaties', 0, 1),
(316, 'plannen', 0, 1),
(317, 'weigeren', 0, 1),
(318, 'denk', 0, 1),
(319, 'appartementen', 0, 1),
(320, 'roept', 0, 1),
(321, 'iedereen', 0, 2),
(322, 'petitie', 0, 1),
(323, 'tekenen', 0, 1),
(324, 'zodat', 0, 1),
(325, 'duidelijk', 0, 1),
(326, 'signaal', 0, 1),
(327, 'uitzenden', 0, 1),
(328, 'wij', 0, 2),
(329, 'zullen', 0, 2),
(330, 'vervolgens', 0, 1),
(331, 'namens', 0, 1),
(332, 'stappen', 0, 1),
(333, 'ondernemen', 0, 1),
(334, 'richting', 0, 1),
(335, 'gemeente', 0, 1),
(336, 'wpsite', 0, 1),
(337, 'gedupeerd', 0, 3),
(338, 'beste', 0, 2),
(339, 'gumboërs', 0, 1),
(340, 'woensdag', 0, 1),
(341, 'september', 0, 1),
(342, 'bas', 0, 2),
(343, 'rutgers', 0, 2),
(344, 'margreet', 0, 2),
(345, 'houtman', 0, 2),
(346, 'elkaar', 0, 1),
(347, 'woord', 0, 1),
(348, 'geven', 0, 1),
(349, 'vereniging', 0, 1),
(350, 'uitgenodigd', 0, 1),
(351, 'kerkdienst', 0, 1),
(352, 'receptie', 0, 1),
(353, 'wonen', 0, 1),
(354, 'lid', 0, 1),
(355, 'ere', 0, 1),
(356, 'zoals', 0, 1),
(357, 'zelf', 0, 1),
(358, 'zeggen', 0, 1),
(359, 'hoe', 0, 1),
(360, 'zielen', 0, 1),
(361, 'vreugd', 0, 1),
(362, 'vriendelijke', 0, 2),
(363, 'groet', 0, 2),
(364, 'bestuur', 0, 2),
(365, 'huwelijk', 0, 1),
(366, 'leden', 0, 1),
(367, 'vorige', 0, 1),
(368, 'alv', 0, 3),
(369, 'besloten', 0, 1),
(370, 'tussentijdse', 0, 3),
(371, 'houden', 0, 1),
(372, 'keuren', 0, 1),
(373, 'boeken', 0, 1),
(374, '2010', 0, 1),
(375, '2011', 0, 1),
(376, 'zal', 0, 1),
(377, 'plaats', 0, 1),
(378, 'vinden', 0, 1),
(379, 'juni', 0, 3),
(380, 'officiële', 0, 1),
(381, 'uitnodiging', 0, 1),
(382, 'volgt', 0, 1),
(383, 'daarin', 0, 1),
(384, 'verdere', 0, 1),
(385, 'informatie', 0, 1),
(386, '1497477028', 0, 1),
(387, 'zpsj', 0, 1),
(388, 'png', 0, 1),
(389, '31615', 0, 1),
(390, 'jpg', 0, 1),
(391, 'd2ans', 0, 1),
(392, 'gif', 0, 1),
(393, 'zin', 0, 2),
(394, 'schooljaar', 0, 2),
(395, 'december', 0, 1),
(396, 'sinterklaas', 0, 1),
(397, 'kerstman', 0, 1),
(398, 'weer', 0, 2),
(399, 'tijd', 0, 2),
(400, 'kerstboom', 0, 2),
(401, 'plaza', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dc_search_wordmatch`
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
-- Dumping data for table `dc_search_wordmatch`
--

INSERT INTO `dc_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(2, 1, 0),
(4, 1, 0),
(10, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(8, 2, 0),
(10, 2, 0),
(13, 2, 0),
(18, 2, 0),
(18, 2, 1),
(1, 3, 0),
(1, 4, 0),
(1, 4, 1),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(11, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(10, 15, 0),
(1, 16, 0),
(1, 17, 0),
(10, 17, 0),
(11, 17, 0),
(13, 17, 0),
(1, 18, 0),
(4, 18, 1),
(10, 18, 0),
(11, 18, 0),
(13, 18, 0),
(16, 18, 0),
(16, 18, 1),
(17, 18, 0),
(18, 18, 0),
(18, 18, 1),
(1, 19, 0),
(1, 20, 0),
(4, 20, 0),
(10, 20, 0),
(11, 20, 0),
(13, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(4, 26, 0),
(10, 26, 0),
(13, 26, 0),
(18, 26, 0),
(18, 26, 1),
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
(10, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(10, 46, 0),
(11, 46, 0),
(1, 47, 0),
(16, 47, 0),
(16, 47, 1),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(4, 51, 0),
(1, 52, 0),
(1, 53, 0),
(4, 53, 0),
(10, 53, 0),
(12, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(10, 56, 0),
(13, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 1),
(1, 61, 1),
(10, 61, 0),
(11, 61, 0),
(2, 62, 0),
(2, 62, 1),
(3, 62, 1),
(5, 62, 1),
(9, 62, 1),
(2, 63, 0),
(3, 63, 0),
(2, 64, 1),
(3, 64, 1),
(5, 64, 0),
(5, 64, 1),
(9, 64, 1),
(2, 66, 0),
(2, 67, 0),
(10, 67, 0),
(2, 68, 0),
(10, 68, 0),
(16, 68, 0),
(16, 68, 1),
(2, 69, 0),
(13, 69, 0),
(2, 70, 0),
(2, 71, 0),
(2, 72, 0),
(10, 72, 0),
(11, 72, 0),
(2, 73, 0),
(5, 73, 0),
(2, 74, 0),
(3, 75, 0),
(4, 75, 0),
(3, 76, 0),
(10, 77, 0),
(10, 78, 0),
(8, 82, 0),
(17, 82, 0),
(8, 87, 0),
(4, 101, 0),
(10, 101, 0),
(4, 104, 0),
(8, 104, 0),
(4, 105, 0),
(8, 105, 0),
(8, 107, 0),
(8, 108, 1),
(10, 116, 0),
(12, 116, 0),
(8, 122, 0),
(4, 123, 0),
(4, 125, 0),
(4, 126, 0),
(10, 126, 0),
(4, 127, 0),
(4, 128, 0),
(10, 128, 0),
(10, 129, 0),
(10, 135, 0),
(4, 139, 1),
(8, 139, 1),
(4, 140, 1),
(4, 141, 0),
(4, 153, 0),
(10, 153, 0),
(10, 159, 0),
(4, 165, 0),
(11, 174, 0),
(8, 178, 0),
(4, 180, 0),
(8, 180, 0),
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
(8, 212, 0),
(4, 213, 0),
(4, 214, 0),
(10, 214, 0),
(4, 215, 0),
(10, 215, 0),
(4, 216, 0),
(4, 217, 0),
(4, 218, 0),
(4, 219, 0),
(10, 219, 0),
(13, 219, 0),
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
(8, 237, 0),
(8, 238, 0),
(8, 239, 0),
(8, 240, 0),
(8, 241, 0),
(9, 242, 0),
(10, 243, 0),
(10, 244, 0),
(10, 245, 0),
(10, 246, 0),
(13, 246, 0),
(10, 247, 0),
(10, 248, 0),
(10, 249, 0),
(10, 249, 1),
(12, 249, 1),
(15, 249, 1),
(10, 250, 0),
(10, 251, 0),
(10, 252, 0),
(10, 253, 0),
(10, 254, 0),
(10, 254, 1),
(12, 254, 0),
(12, 254, 1),
(15, 254, 1),
(10, 255, 0),
(10, 256, 0),
(10, 257, 0),
(10, 258, 0),
(10, 259, 0),
(10, 260, 0),
(10, 261, 0),
(10, 262, 0),
(10, 263, 0),
(10, 264, 0),
(10, 265, 0),
(10, 266, 0),
(10, 267, 0),
(10, 268, 0),
(10, 269, 0),
(10, 270, 0),
(10, 271, 0),
(10, 272, 0),
(11, 272, 0),
(10, 273, 0),
(10, 274, 0),
(10, 275, 0),
(10, 276, 0),
(10, 277, 0),
(10, 278, 0),
(10, 279, 0),
(10, 280, 0),
(10, 281, 0),
(10, 282, 0),
(10, 283, 0),
(10, 284, 0),
(10, 285, 0),
(10, 286, 0),
(10, 287, 0),
(10, 288, 0),
(10, 289, 0),
(10, 290, 0),
(10, 291, 0),
(10, 292, 0),
(10, 293, 0),
(10, 294, 0),
(10, 295, 0),
(10, 296, 0),
(10, 297, 0),
(10, 298, 0),
(10, 299, 0),
(10, 300, 0),
(10, 301, 0),
(10, 302, 0),
(10, 303, 0),
(10, 304, 0),
(10, 305, 0),
(10, 306, 0),
(10, 307, 0),
(10, 308, 0),
(10, 309, 0),
(10, 310, 0),
(10, 311, 0),
(17, 311, 0),
(10, 312, 0),
(10, 313, 0),
(10, 314, 0),
(10, 315, 0),
(10, 316, 0),
(10, 317, 0),
(10, 318, 0),
(10, 319, 0),
(10, 320, 0),
(10, 321, 0),
(11, 321, 0),
(10, 322, 0),
(10, 323, 0),
(10, 324, 0),
(10, 325, 0),
(10, 326, 0),
(10, 327, 0),
(10, 328, 0),
(11, 328, 0),
(10, 329, 0),
(11, 329, 0),
(10, 330, 0),
(10, 331, 0),
(10, 332, 0),
(10, 333, 0),
(10, 334, 0),
(10, 335, 0),
(10, 336, 0),
(10, 337, 1),
(12, 337, 1),
(15, 337, 1),
(11, 338, 0),
(13, 338, 0),
(11, 339, 0),
(11, 340, 0),
(11, 341, 0),
(11, 342, 0),
(11, 342, 1),
(11, 343, 0),
(11, 343, 1),
(11, 344, 0),
(11, 344, 1),
(11, 345, 0),
(11, 345, 1),
(11, 346, 0),
(11, 347, 0),
(11, 348, 0),
(11, 349, 0),
(11, 350, 0),
(11, 351, 0),
(11, 352, 0),
(11, 353, 0),
(11, 354, 0),
(11, 355, 0),
(11, 356, 0),
(11, 357, 0),
(11, 358, 0),
(11, 359, 0),
(11, 360, 0),
(11, 361, 0),
(11, 362, 0),
(13, 362, 0),
(11, 363, 0),
(13, 363, 0),
(11, 364, 0),
(13, 364, 0),
(11, 365, 1),
(13, 366, 0),
(13, 367, 0),
(13, 368, 0),
(13, 368, 1),
(14, 368, 1),
(13, 369, 0),
(13, 370, 0),
(13, 370, 1),
(14, 370, 1),
(13, 371, 0),
(13, 372, 0),
(13, 373, 0),
(13, 374, 0),
(13, 375, 0),
(13, 376, 0),
(13, 377, 0),
(13, 378, 0),
(13, 379, 0),
(13, 379, 1),
(14, 379, 1),
(13, 380, 0),
(13, 381, 0),
(13, 382, 0),
(13, 383, 0),
(13, 384, 0),
(13, 385, 0),
(14, 386, 0),
(14, 387, 0),
(14, 388, 0),
(13, 389, 0),
(13, 390, 0),
(15, 391, 0),
(15, 392, 0),
(16, 393, 0),
(16, 393, 1),
(16, 394, 0),
(16, 394, 1),
(17, 395, 0),
(17, 396, 1),
(17, 397, 1),
(18, 398, 0),
(18, 398, 1),
(18, 399, 0),
(18, 399, 1),
(18, 400, 0),
(18, 400, 1),
(18, 401, 0),
(18, 401, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_sessions`
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
-- Dumping data for table `dc_sessions`
--

INSERT INTO `dc_sessions` (`session_id`, `session_user_id`, `session_forum_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`) VALUES
('9aa72759881b3f83dd8c3779ad3370be', 57, 0, 1351973608, 1351980591, 1351980593, '192.168.178.17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', '', 'portal.php', 1, 1, 0),
('c07c12634cd8e48d85fd681d7aa45ce5', 1, 0, 1351980578, 1351980578, 1351980578, '192.168.178.17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4', '', 'ucp.php?mode=logout', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_sessions_keys`
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
-- Dumping data for table `dc_sessions_keys`
--

INSERT INTO `dc_sessions_keys` (`key_id`, `user_id`, `last_ip`, `last_login`) VALUES
('0141c668d438122e58f1a75946a40aa4', 2, '::1', 1345300008),
('314d17e596e81bf0b53bde60c5e04be3', 57, '192.168.178.17', 1351974146),
('3e5733d99ce3e73e289e86b55dd26546', 57, '192.168.178.17', 1351972748),
('797e78ced149203ba84d8dac9ae4acb5', 2, '::1', 1347116710),
('817eddd9fa20ad84892859ac723be513', 2, '::1', 1341249842),
('8b67437879ef3ab939a396a00355af81', 57, '192.168.178.17', 1351971309),
('974bb174b167c80f9e5e7fe374310c0b', 2, '192.168.178.12', 1341429728),
('ad8055f9132c4a185737bd4fe3890d28', 57, '192.168.178.17', 1351980591),
('c315fd3ec8761b045c8678208611b4fe', 2, '::1', 1345388026);

-- --------------------------------------------------------

--
-- Table structure for table `dc_sitelist`
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
-- Table structure for table `dc_smilies`
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
-- Dumping data for table `dc_smilies`
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
-- Table structure for table `dc_styles`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dc_styles`
--

INSERT INTO `dc_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `template_id`, `theme_id`, `imageset_id`) VALUES
(1, 'prosilver', '© phpBB Group', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_styles_imageset`
--

CREATE TABLE IF NOT EXISTS `dc_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`imageset_id`),
  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dc_styles_imageset`
--

INSERT INTO `dc_styles_imageset` (`imageset_id`, `imageset_name`, `imageset_copyright`, `imageset_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver');

-- --------------------------------------------------------

--
-- Table structure for table `dc_styles_imageset_data`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=511 ;

--
-- Dumping data for table `dc_styles_imageset_data`
--

INSERT INTO `dc_styles_imageset_data` (`image_id`, `image_name`, `image_filename`, `image_lang`, `image_height`, `image_width`, `imageset_id`) VALUES
(319, 'site_logo', 'site_logo.gif', '', 52, 139, 1),
(320, 'forum_link', 'forum_link.gif', '', 27, 27, 1),
(321, 'forum_read', 'forum_read.gif', '', 27, 27, 1),
(322, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 1),
(323, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 1),
(324, 'forum_unread', 'forum_unread.gif', '', 27, 27, 1),
(325, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 1),
(326, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 1),
(327, 'topic_moved', 'topic_moved.gif', '', 27, 27, 1),
(328, 'topic_read', 'topic_read.gif', '', 27, 27, 1),
(329, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 1),
(330, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 1),
(331, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 1),
(332, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 1),
(333, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 1),
(334, 'topic_unread', 'topic_unread.gif', '', 27, 27, 1),
(335, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 1),
(336, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 1),
(337, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 1),
(338, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 1),
(339, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 1),
(340, 'sticky_read', 'sticky_read.gif', '', 27, 27, 1),
(341, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 1),
(342, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 1),
(343, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 1),
(344, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 1),
(345, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 1),
(346, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 1),
(347, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 1),
(348, 'announce_read', 'announce_read.gif', '', 27, 27, 1),
(349, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(350, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(351, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(352, 'announce_unread', 'announce_unread.gif', '', 27, 27, 1),
(353, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(354, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(355, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(356, 'global_read', 'announce_read.gif', '', 27, 27, 1),
(357, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(358, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(359, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(360, 'global_unread', 'announce_unread.gif', '', 27, 27, 1),
(361, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(362, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(363, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(364, 'subforum_read', 'subforum_read.gif', '', 9, 11, 1),
(365, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 1),
(366, 'pm_read', 'topic_read.gif', '', 27, 27, 1),
(367, 'pm_unread', 'topic_unread.gif', '', 27, 27, 1),
(368, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 1),
(369, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 1),
(370, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 1),
(371, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 1),
(372, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 1),
(373, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 1),
(374, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 1),
(375, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 1),
(376, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 1),
(377, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 1),
(378, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 1),
(379, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 1),
(380, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 1),
(381, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 1),
(382, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 1),
(383, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 1),
(384, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 1),
(385, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 1),
(386, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 1),
(387, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 1),
(388, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 1),
(389, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 1),
(390, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 1),
(391, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 1),
(392, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 1),
(393, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 1),
(394, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 1),
(395, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 1),
(396, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 1),
(397, 'icon_contact_pm', 'icon_contact_pm.gif', 'nl', 20, 28, 1),
(398, 'icon_post_edit', 'icon_post_edit.gif', 'nl', 20, 58, 1),
(399, 'icon_post_quote', 'icon_post_quote.gif', 'nl', 20, 54, 1),
(400, 'icon_user_online', 'icon_user_online.gif', 'nl', 58, 58, 1),
(401, 'button_pm_forward', 'button_pm_forward.gif', 'nl', 25, 120, 1),
(402, 'button_pm_new', 'button_pm_new.gif', 'nl', 25, 91, 1),
(403, 'button_pm_reply', 'button_pm_reply.gif', 'nl', 25, 119, 1),
(404, 'button_topic_locked', 'button_topic_locked.gif', 'nl', 25, 103, 1),
(405, 'button_topic_new', 'button_topic_new.gif', 'nl', 25, 152, 1),
(406, 'button_topic_reply', 'button_topic_reply.gif', 'nl', 25, 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_styles_template`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dc_styles_template`
--

INSERT INTO `dc_styles_template` (`template_id`, `template_name`, `template_copyright`, `template_path`, `bbcode_bitfield`, `template_storedb`, `template_inherits_id`, `template_inherit_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 'lNg=', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `dc_styles_template_data`
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
-- Table structure for table `dc_styles_theme`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dc_styles_theme`
--

INSERT INTO `dc_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 1, 1351943300, '/*  phpBB3 Style Sheet\r\n    --------------------------------------------------------------\r\n	Style name:			prosilver (the default phpBB 3.0.x style)\r\n	Based on style:		\r\n	Original author:	Tom Beddard ( http://www.subblue.com/ )\r\n	Modified by:		phpBB Group ( http://www.phpbb.com/ )\r\n    --------------------------------------------------------------\r\n*/\r\n\r\n/* General Markup Styles\r\n---------------------------------------- */\r\n\r\n* {\r\n	/* Reset browsers default margin, padding and font sizes */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n\r\nhtml {\r\n	font-size: 100%;\r\n	/* Always show a scrollbar for short pages - stops the jump when the scrollbar appears. non-IE browsers */\r\n	height: 101%;\r\n}\r\n\r\nbody {\r\n	/* Text-Sizing with ems: http://www.clagnut.com/blog/348/ */\r\n	font-family: Verdana, Helvetica, Arial, sans-serif;\r\n	color: #828282;\r\n	background-color: #FFFFFF;\r\n	/*font-size: 62.5%;			 This sets the default font size to be equivalent to 10px */\r\n	font-size: 10px;\r\n	margin: 0;\r\n	padding: 12px 0;\r\n}\r\n\r\nh1 {\r\n	/* Forum name */\r\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\r\n	margin-right: 200px;\r\n	color: #FFFFFF;\r\n	margin-top: 15px;\r\n	font-weight: bold;\r\n	font-size: 2em;\r\n}\r\n\r\nh2 {\r\n	/* Forum header titles */\r\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\r\n	font-weight: normal;\r\n	color: #3f3f3f;\r\n	font-size: 2em;\r\n	margin: 0.8em 0 0.2em 0;\r\n}\r\n\r\nh2.solo {\r\n	margin-bottom: 1em;\r\n}\r\n\r\nh3 {\r\n	/* Sub-headers (also used as post headers, but defined later) */\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	font-weight: bold;\r\n	text-transform: uppercase;\r\n	border-bottom: 1px solid #CCCCCC;\r\n	margin-bottom: 3px;\r\n	padding-bottom: 2px;\r\n	font-size: 1.05em;\r\n	color: #989898;\r\n	margin-top: 20px;\r\n}\r\n\r\nh4 {\r\n	/* Forum and topic list titles */\r\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, Sans-serif;\r\n	font-size: 1.3em;\r\n}\r\n\r\np {\r\n	line-height: 1.3em;\r\n	font-size: 1.1em;\r\n	margin-bottom: 1.5em;\r\n}\r\n\r\nimg {\r\n	border-width: 0;\r\n}\r\n\r\nhr {\r\n	/* Also see tweaks.css */\r\n	border: 0 none #FFFFFF;\r\n	border-top: 1px solid #CCCCCC;\r\n	height: 1px;\r\n	margin: 5px 0;\r\n	display: block;\r\n	clear: both;\r\n}\r\n\r\nhr.dashed {\r\n	border-top: 1px dashed #CCCCCC;\r\n	margin: 10px 0;\r\n}\r\n\r\nhr.divider {\r\n	display: none;\r\n}\r\n\r\np.right {\r\n	text-align: right;\r\n}\r\n\r\n/* Main blocks\r\n---------------------------------------- */\r\n#wrap {\r\n	padding: 0 20px;\r\n	min-width: 650px;\r\n}\r\n\r\n#simple-wrap {\r\n	padding: 6px 10px;\r\n}\r\n\r\n#page-body {\r\n	margin: 4px 0;\r\n	clear: both;\r\n}\r\n\r\n#page-footer {\r\n	clear: both;\r\n}\r\n\r\n#page-footer h3 {\r\n	margin-top: 20px;\r\n}\r\n\r\n#logo {\r\n	float: left;\r\n	width: auto;\r\n	padding: 10px 13px 0 10px;\r\n}\r\n\r\na#logo:hover {\r\n	text-decoration: none;\r\n}\r\n\r\n/* Search box\r\n--------------------------------------------- */\r\n#search-box {\r\n	color: #FFFFFF;\r\n	position: relative;\r\n	margin-top: 30px;\r\n	margin-right: 5px;\r\n	display: block;\r\n	float: right;\r\n	text-align: right;\r\n	white-space: nowrap; /* For Opera */\r\n}\r\n\r\n#search-box #keywords {\r\n	width: 95px;\r\n	background-color: #FFF;\r\n}\r\n\r\n#search-box input {\r\n	border: 1px solid #b0b0b0;\r\n}\r\n\r\n/* .button1 style defined later, just a few tweaks for the search button version */\r\n#search-box input.button1 {\r\n	padding: 1px 5px;\r\n}\r\n\r\n#search-box li {\r\n	text-align: right;\r\n	margin-top: 4px;\r\n}\r\n\r\n#search-box img {\r\n	vertical-align: middle;\r\n	margin-right: 3px;\r\n}\r\n\r\n/* Site description and logo */\r\n#site-description {\r\n	float: left;\r\n	width: 70%;\r\n}\r\n\r\n#site-description h1 {\r\n	margin-right: 0;\r\n}\r\n\r\n/* Round cornered boxes and backgrounds\r\n---------------------------------------- */\r\n.headerbar {\r\n	background: #ebebeb none repeat-x 0 0;\r\n	color: #FFFFFF;\r\n	margin-bottom: 4px;\r\n	padding: 0 5px;\r\n}\r\n\r\n.navbar {\r\n	background-color: #ebebeb;\r\n	padding: 0 10px;\r\n}\r\n\r\n.forabg {\r\n	background: #b1b1b1 none repeat-x 0 0;\r\n	margin-bottom: 4px;\r\n	padding: 0 5px;\r\n	clear: both;\r\n}\r\n\r\n.forumbg {\r\n	background: #ebebeb none repeat-x 0 0;\r\n	margin-bottom: 4px;\r\n	padding: 0 5px;\r\n	clear: both;\r\n}\r\n\r\n.panel {\r\n	margin-bottom: 4px;\r\n	padding: 0 10px;\r\n	background-color: #f3f3f3;\r\n	color: #3f3f3f;\r\n}\r\n\r\n.post {\r\n	padding: 0 10px;\r\n	margin-bottom: 4px;\r\n	background-repeat: no-repeat;\r\n	background-position: 100% 0;\r\n}\r\n\r\n.post:target .content {\r\n	color: #000000;\r\n}\r\n\r\n.post:target h3 a {\r\n	color: #000000;\r\n}\r\n\r\n.bg1	{ background-color: #f7f7f7;}\r\n.bg2	{ background-color: #f2f2f2; }\r\n.bg3	{ background-color: #ebebeb; }\r\n\r\n.rowbg {\r\n	margin: 5px 5px 2px 5px;\r\n}\r\n\r\n.ucprowbg {\r\n	background-color: #e2e2e2;\r\n}\r\n\r\n.fieldsbg {\r\n	/*border: 1px #DBDEE2 solid;*/\r\n	background-color: #eaeaea;\r\n}\r\n\r\nspan.corners-top, span.corners-bottom, span.corners-top span, span.corners-bottom span {\r\n	font-size: 1px;\r\n	line-height: 1px;\r\n	display: block;\r\n	height: 5px;\r\n	background-repeat: no-repeat;\r\n}\r\n\r\nspan.corners-top {\r\n	background-image: none;\r\n	background-position: 0 0;\r\n	margin: 0 -5px;\r\n}\r\n\r\nspan.corners-top span {\r\n	background-image: none;\r\n	background-position: 100% 0;\r\n}\r\n\r\nspan.corners-bottom {\r\n	background-image: none;\r\n	background-position: 0 100%;\r\n	margin: 0 -5px;\r\n	clear: both;\r\n}\r\n\r\nspan.corners-bottom span {\r\n	background-image: none;\r\n	background-position: 100% 100%;\r\n}\r\n\r\n.headbg span.corners-bottom {\r\n	margin-bottom: -1px;\r\n}\r\n\r\n.post span.corners-top, .post span.corners-bottom, .panel span.corners-top, .panel span.corners-bottom, .navbar span.corners-top, .navbar span.corners-bottom {\r\n	margin: 0 -10px;\r\n}\r\n\r\n.rules span.corners-top {\r\n	margin: 0 -10px 5px -10px;\r\n}\r\n\r\n.rules span.corners-bottom {\r\n	margin: 5px -10px 0 -10px;\r\n}\r\n\r\n/* Horizontal lists\r\n----------------------------------------*/\r\nul.linklist {\r\n	display: block;\r\n	margin: 0;\r\n}\r\n\r\nul.linklist li {\r\n	display: block;\r\n	list-style-type: none;\r\n	float: left;\r\n	width: auto;\r\n	margin-right: 5px;\r\n	font-size: 1.1em;\r\n	line-height: 2.2em;\r\n}\r\n\r\nul.linklist li.rightside, p.rightside {\r\n	float: right;\r\n	margin-right: 0;\r\n	margin-left: 5px;\r\n	text-align: right;\r\n}\r\n\r\nul.navlinks {\r\n	padding-bottom: 1px;\r\n	margin-bottom: 1px;\r\n	border-bottom: 1px solid #FFFFFF;\r\n	font-weight: bold;\r\n}\r\n\r\nul.leftside {\r\n	float: left;\r\n	margin-left: 0;\r\n	margin-right: 5px;\r\n	text-align: left;\r\n}\r\n\r\nul.rightside {\r\n	float: right;\r\n	margin-left: 5px;\r\n	margin-right: -5px;\r\n	text-align: right;\r\n}\r\n\r\n/* Table styles\r\n----------------------------------------*/\r\ntable.table1 {\r\n	/* See tweaks.css */\r\n}\r\n\r\n#ucp-main table.table1 {\r\n	padding: 2px;\r\n}\r\n\r\ntable.table1 thead th {\r\n	font-weight: normal;\r\n	text-transform: uppercase;\r\n	color: #FFFFFF;\r\n	line-height: 1.3em;\r\n	font-size: 1em;\r\n	padding: 0 0 4px 3px;\r\n}\r\n\r\ntable.table1 thead th span {\r\n	padding-left: 7px;\r\n}\r\n\r\ntable.table1 tbody tr {\r\n	border: 1px solid #cfcfcf;\r\n}\r\n\r\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\r\n	background-color: #f6f6f6;\r\n	color: #000;\r\n}\r\n\r\ntable.table1 td {\r\n	color: #6a6a6a;\r\n	font-size: 1.1em;\r\n}\r\n\r\ntable.table1 tbody td {\r\n	padding: 5px;\r\n	border-top: 1px solid #FAFAFA;\r\n}\r\n\r\ntable.table1 tbody th {\r\n	padding: 5px;\r\n	border-bottom: 1px solid #000000;\r\n	text-align: left;\r\n	color: #333333;\r\n	background-color: #FFFFFF;\r\n}\r\n\r\n/* Specific column styles */\r\ntable.table1 .name		{ text-align: left; }\r\ntable.table1 .posts		{ text-align: center !important; width: 7%; }\r\ntable.table1 .joined	{ text-align: left; width: 15%; }\r\ntable.table1 .active	{ text-align: left; width: 15%; }\r\ntable.table1 .mark		{ text-align: center; width: 7%; }\r\ntable.table1 .info		{ text-align: left; width: 30%; }\r\ntable.table1 .info div	{ width: 100%; white-space: normal; overflow: hidden; }\r\ntable.table1 .autocol	{ line-height: 2em; white-space: nowrap; }\r\ntable.table1 thead .autocol { padding-left: 1em; }\r\n\r\ntable.table1 span.rank-img {\r\n	float: right;\r\n	width: auto;\r\n}\r\n\r\ntable.info td {\r\n	padding: 3px;\r\n}\r\n\r\ntable.info tbody th {\r\n	padding: 3px;\r\n	text-align: right;\r\n	vertical-align: top;\r\n	color: #000000;\r\n	font-weight: normal;\r\n}\r\n\r\n.forumbg table.table1 {\r\n	margin: 0;\r\n}\r\n\r\n.forumbg-table > .inner {\r\n	margin: 0 -1px;\r\n}\r\n\r\n.forumbg-table > .inner > span.corners-top {\r\n	margin: 0 -4px -1px -4px;\r\n}\r\n\r\n.forumbg-table > .inner > span.corners-bottom {\r\n	margin: -1px -4px 0 -4px;\r\n}\r\n\r\n/* Misc layout styles\r\n---------------------------------------- */\r\n/* column[1-2] styles are containers for two column layouts \r\n   Also see tweaks.css */\r\n.column1 {\r\n	float: left;\r\n	clear: left;\r\n	width: 49%;\r\n}\r\n\r\n.column2 {\r\n	float: right;\r\n	clear: right;\r\n	width: 49%;\r\n}\r\n\r\n/* General classes for placing floating blocks */\r\n.left-box {\r\n	float: left;\r\n	width: auto;\r\n	text-align: left;\r\n}\r\n\r\n.right-box {\r\n	float: right;\r\n	width: auto;\r\n	text-align: right;\r\n}\r\n\r\ndl.details {\r\n	/*font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;*/\r\n	font-size: 1.1em;\r\n}\r\n\r\ndl.details dt {\r\n	float: left;\r\n	clear: left;\r\n	width: 30%;\r\n	text-align: right;\r\n	color: #000000;\r\n	display: block;\r\n}\r\n\r\ndl.details dd {\r\n	margin-left: 0;\r\n	padding-left: 5px;\r\n	margin-bottom: 5px;\r\n	color: #828282;\r\n	float: left;\r\n	width: 65%;\r\n}\r\n\r\n/* Pagination\r\n---------------------------------------- */\r\n.pagination {\r\n	height: 1%; /* IE tweak (holly hack) */\r\n	width: auto;\r\n	text-align: right;\r\n	margin-top: 5px;\r\n	float: right;\r\n}\r\n\r\n.pagination span.page-sep {\r\n	display: none;\r\n}\r\n\r\nli.pagination {\r\n	margin-top: 0;\r\n}\r\n\r\n.pagination strong, .pagination b {\r\n	font-weight: normal;\r\n}\r\n\r\n.pagination span strong {\r\n	padding: 0 2px;\r\n	margin: 0 2px;\r\n	font-weight: normal;\r\n	color: #FFFFFF;\r\n	background-color: #bfbfbf;\r\n	border: 1px solid #bfbfbf;\r\n	font-size: 0.9em;\r\n}\r\n\r\n.pagination span a, .pagination span a:link, .pagination span a:visited, .pagination span a:active {\r\n	font-weight: normal;\r\n	text-decoration: none;\r\n	color: #747474;\r\n	margin: 0 2px;\r\n	padding: 0 2px;\r\n	background-color: #eeeeee;\r\n	border: 1px solid #bababa;\r\n	font-size: 0.9em;\r\n	line-height: 1.5em;\r\n}\r\n\r\n.pagination span a:hover {\r\n	border-color: #d2d2d2;\r\n	background-color: #d2d2d2;\r\n	color: #FFF;\r\n	text-decoration: none;\r\n}\r\n\r\n.pagination img {\r\n	vertical-align: middle;\r\n}\r\n\r\n/* Pagination in viewforum for multipage topics */\r\n.row .pagination {\r\n	display: block;\r\n	float: right;\r\n	width: auto;\r\n	margin-top: 0;\r\n	padding: 1px 0 1px 15px;\r\n	font-size: 0.9em;\r\n	background: none 0 50% no-repeat;\r\n}\r\n\r\n.row .pagination span a, li.pagination span a {\r\n	background-color: #FFFFFF;\r\n}\r\n\r\n.row .pagination span a:hover, li.pagination span a:hover {\r\n	background-color: #d2d2d2;\r\n}\r\n\r\n/* Miscellaneous styles\r\n---------------------------------------- */\r\n#forum-permissions {\r\n	float: right;\r\n	width: auto;\r\n	padding-left: 5px;\r\n	margin-left: 5px;\r\n	margin-top: 10px;\r\n	text-align: right;\r\n}\r\n\r\n.copyright {\r\n	padding: 5px;\r\n	text-align: center;\r\n	color: #555555;\r\n}\r\n\r\n.small {\r\n	font-size: 0.9em !important;\r\n}\r\n\r\n.titlespace {\r\n	margin-bottom: 15px;\r\n}\r\n\r\n.headerspace {\r\n	margin-top: 20px;\r\n}\r\n\r\n.error {\r\n	color: #bcbcbc;\r\n	font-weight: bold;\r\n	font-size: 1em;\r\n}\r\n\r\n.reported {\r\n	background-color: #f7f7f7;\r\n}\r\n\r\nli.reported:hover {\r\n	background-color: #ececec;\r\n}\r\n\r\ndiv.rules {\r\n	background-color: #ececec;\r\n	color: #bcbcbc;\r\n	padding: 0 10px;\r\n	margin: 10px 0;\r\n	font-size: 1.1em;\r\n}\r\n\r\ndiv.rules ul, div.rules ol {\r\n	margin-left: 20px;\r\n}\r\n\r\np.rules {\r\n	background-color: #ececec;\r\n	background-image: none;\r\n	padding: 5px;\r\n}\r\n\r\np.rules img {\r\n	vertical-align: middle;\r\n	padding-top: 5px;\r\n}\r\n\r\np.rules a {\r\n	vertical-align: middle;\r\n	clear: both;\r\n}\r\n\r\n#top {\r\n	position: absolute;\r\n	top: -20px;\r\n}\r\n\r\n.clear {\r\n	display: block;\r\n	clear: both;\r\n	font-size: 1px;\r\n	line-height: 1px;\r\n	background: transparent;\r\n}\r\n/* Link Styles\r\n---------------------------------------- */\r\n\r\n/* Links adjustment to correctly display an order of rtl/ltr mixed content */\r\na {\r\n	direction: ltr;\r\n	unicode-bidi: embed;\r\n}\r\n\r\na:link	{ color: #898989; text-decoration: none; }\r\na:visited	{ color: #898989; text-decoration: none; }\r\na:hover	{ color: #d3d3d3; text-decoration: underline; }\r\na:active	{ color: #d2d2d2; text-decoration: none; }\r\n\r\n/* Coloured usernames */\r\n.username-coloured {\r\n	font-weight: bold;\r\n	display: inline !important;\r\n	padding: 0 !important;\r\n}\r\n\r\n/* Links on gradient backgrounds */\r\n#search-box a:link, .navbg a:link, .forumbg .header a:link, .forabg .header a:link, th a:link {\r\n	color: #FFFFFF;\r\n	text-decoration: none;\r\n}\r\n\r\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .forabg .header a:visited, th a:visited {\r\n	color: #FFFFFF;\r\n	text-decoration: none;\r\n}\r\n\r\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .forabg .header a:hover, th a:hover {\r\n	color: #ffffff;\r\n	text-decoration: underline;\r\n}\r\n\r\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, th a:active {\r\n	color: #ffffff;\r\n	text-decoration: none;\r\n}\r\n\r\n/* Links for forum/topic lists */\r\na.forumtitle {\r\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\r\n	font-size: 1.2em;\r\n	font-weight: bold;\r\n	color: #898989;\r\n	text-decoration: none;\r\n}\r\n\r\n/* a.forumtitle:visited { color: #898989; } */\r\n\r\na.forumtitle:hover {\r\n	color: #bcbcbc;\r\n	text-decoration: underline;\r\n}\r\n\r\na.forumtitle:active {\r\n	color: #898989;\r\n}\r\n\r\na.topictitle {\r\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\r\n	font-size: 1.2em;\r\n	font-weight: bold;\r\n	color: #898989;\r\n	text-decoration: none;\r\n}\r\n\r\n/* a.topictitle:visited { color: #d2d2d2; } */\r\n\r\na.topictitle:hover {\r\n	color: #bcbcbc;\r\n	text-decoration: underline;\r\n}\r\n\r\na.topictitle:active {\r\n	color: #898989;\r\n}\r\n\r\n/* Post body links */\r\n.postlink {\r\n	text-decoration: none;\r\n	color: #d2d2d2;\r\n	border-bottom: 1px solid #d2d2d2;\r\n	padding-bottom: 0;\r\n}\r\n\r\n/* .postlink:visited { color: #bdbdbd; } */\r\n\r\n.postlink:active {\r\n	color: #d2d2d2;\r\n}\r\n\r\n.postlink:hover {\r\n	background-color: #f6f6f6;\r\n	text-decoration: none;\r\n	color: #404040;\r\n}\r\n\r\n.signature a, .signature a:visited, .signature a:hover, .signature a:active {\r\n	border: none;\r\n	text-decoration: underline;\r\n	background-color: transparent;\r\n}\r\n\r\n/* Profile links */\r\n.postprofile a:link, .postprofile a:visited, .postprofile dt.author a {\r\n	font-weight: bold;\r\n	color: #898989;\r\n	text-decoration: none;\r\n}\r\n\r\n.postprofile a:hover, .postprofile dt.author a:hover {\r\n	text-decoration: underline;\r\n	color: #d3d3d3;\r\n}\r\n\r\n/* CSS spec requires a:link, a:visited, a:hover and a:active rules to be specified in this order. */\r\n/* See http://www.phpbb.com/bugs/phpbb3/59685 */\r\n.postprofile a:active {\r\n	font-weight: bold;\r\n	color: #898989;\r\n	text-decoration: none;\r\n}\r\n\r\n\r\n/* Profile searchresults */	\r\n.search .postprofile a {\r\n	color: #898989;\r\n	text-decoration: none; \r\n	font-weight: normal;\r\n}\r\n\r\n.search .postprofile a:hover {\r\n	color: #d3d3d3;\r\n	text-decoration: underline; \r\n}\r\n\r\n/* Back to top of page */\r\n.back2top {\r\n	clear: both;\r\n	height: 11px;\r\n	text-align: right;\r\n}\r\n\r\na.top {\r\n	background: none no-repeat top left;\r\n	text-decoration: none;\r\n	width: {IMG_ICON_BACK_TOP_WIDTH}px;\r\n	height: {IMG_ICON_BACK_TOP_HEIGHT}px;\r\n	display: block;\r\n	float: right;\r\n	overflow: hidden;\r\n	letter-spacing: 1000px;\r\n	text-indent: 11px;\r\n}\r\n\r\na.top2 {\r\n	background: none no-repeat 0 50%;\r\n	text-decoration: none;\r\n	padding-left: 15px;\r\n}\r\n\r\n/* Arrow links  */\r\na.up		{ background: none no-repeat left center; }\r\na.down		{ background: none no-repeat right center; }\r\na.left		{ background: none no-repeat 3px 60%; }\r\na.right		{ background: none no-repeat 95% 60%; }\r\n\r\na.up, a.up:link, a.up:active, a.up:visited {\r\n	padding-left: 10px;\r\n	text-decoration: none;\r\n	border-bottom-width: 0;\r\n}\r\n\r\na.up:hover {\r\n	background-position: left top;\r\n	background-color: transparent;\r\n}\r\n\r\na.down, a.down:link, a.down:active, a.down:visited {\r\n	padding-right: 10px;\r\n}\r\n\r\na.down:hover {\r\n	background-position: right bottom;\r\n	text-decoration: none;\r\n}\r\n\r\na.left, a.left:active, a.left:visited {\r\n	padding-left: 12px;\r\n}\r\n\r\na.left:hover {\r\n	color: #d2d2d2;\r\n	text-decoration: none;\r\n	background-position: 0 60%;\r\n}\r\n\r\na.right, a.right:active, a.right:visited {\r\n	padding-right: 12px;\r\n}\r\n\r\na.right:hover {\r\n	color: #d2d2d2;\r\n	text-decoration: none;\r\n	background-position: 100% 60%;\r\n}\r\n\r\n/* invisible skip link, used for accessibility  */\r\n.skiplink {\r\n	position: absolute;\r\n	left: -999px;\r\n	width: 990px;\r\n}\r\n\r\n/* Feed icon in forumlist_body.html */\r\na.feed-icon-forum {\r\n	float: right;\r\n	margin: 3px;\r\n}\r\n/* Content Styles\r\n---------------------------------------- */\r\n\r\nul.topiclist {\r\n	display: block;\r\n	list-style-type: none;\r\n	margin: 0;\r\n}\r\n\r\nul.forums {\r\n	background: #f9f9f9 none repeat-x 0 0;\r\n}\r\n\r\nul.topiclist li {\r\n	display: block;\r\n	list-style-type: none;\r\n	color: #777777;\r\n	margin: 0;\r\n}\r\n\r\nul.topiclist dl {\r\n	position: relative;\r\n}\r\n\r\nul.topiclist li.row dl {\r\n	padding: 2px 0;\r\n}\r\n\r\nul.topiclist dt {\r\n	display: block;\r\n	float: left;\r\n	width: 50%;\r\n	font-size: 1.1em;\r\n	padding-left: 5px;\r\n	padding-right: 5px;\r\n}\r\n\r\nul.topiclist dd {\r\n	display: block;\r\n	float: left;\r\n	border-left: 1px solid #FFFFFF;\r\n	padding: 4px 0;\r\n}\r\n\r\nul.topiclist dfn {\r\n	/* Labels for post/view counts */\r\n	position: absolute;\r\n	left: -999px;\r\n	width: 990px;\r\n}\r\n\r\nul.topiclist li.row dt a.subforum {\r\n	background-image: none;\r\n	background-position: 0 50%;\r\n	background-repeat: no-repeat;\r\n	position: relative;\r\n	white-space: nowrap;\r\n	padding: 0 0 0 12px;\r\n}\r\n\r\n.forum-image {\r\n	float: left;\r\n	padding-top: 5px;\r\n	margin-right: 5px;\r\n}\r\n\r\nli.row {\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #8f8f8f;\r\n}\r\n\r\nli.row strong {\r\n	font-weight: normal;\r\n	color: #000000;\r\n}\r\n\r\nli.row:hover {\r\n	background-color: #f6f6f6;\r\n}\r\n\r\nli.row:hover dd {\r\n	border-left-color: #CCCCCC;\r\n}\r\n\r\nli.header dt, li.header dd {\r\n	line-height: 1em;\r\n	border-left-width: 0;\r\n	margin: 2px 0 4px 0;\r\n	color: #FFFFFF;\r\n	padding-top: 2px;\r\n	padding-bottom: 2px;\r\n	font-size: 1em;\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	text-transform: uppercase;\r\n}\r\n\r\nli.header dt {\r\n	font-weight: bold;\r\n}\r\n\r\nli.header dd {\r\n	margin-left: 1px;\r\n}\r\n\r\nli.header dl.icon {\r\n	min-height: 0;\r\n}\r\n\r\nli.header dl.icon dt {\r\n	/* Tweak for headers alignment when folder icon used */\r\n	padding-left: 0;\r\n	padding-right: 50px;\r\n}\r\n\r\n/* Forum list column styles */\r\ndl.icon {\r\n	min-height: 35px;\r\n	background-position: 10px 50%;		/* Position of folder icon */\r\n	background-repeat: no-repeat;\r\n}\r\n\r\ndl.icon dt {\r\n	padding-left: 45px;					/* Space for folder icon */\r\n	background-repeat: no-repeat;\r\n	background-position: 5px 95%;		/* Position of topic icon */\r\n}\r\n\r\ndd.posts, dd.topics, dd.views {\r\n	width: 8%;\r\n	text-align: center;\r\n	line-height: 2.2em;\r\n	font-size: 1.2em;\r\n}\r\n\r\n/* List in forum description */\r\ndl.icon dt ol,\r\ndl.icon dt ul {\r\n	list-style-position: inside;\r\n	margin-left: 1em;\r\n}\r\n\r\ndl.icon dt li {\r\n	display: list-item;\r\n	list-style-type: inherit;\r\n}\r\n\r\ndd.lastpost {\r\n	width: 25%;\r\n	font-size: 1.1em;\r\n}\r\n\r\ndd.redirect {\r\n	font-size: 1.1em;\r\n	line-height: 2.5em;\r\n}\r\n\r\ndd.moderation {\r\n	font-size: 1.1em;\r\n}\r\n\r\ndd.lastpost span, ul.topiclist dd.searchby span, ul.topiclist dd.info span, ul.topiclist dd.time span, dd.redirect span, dd.moderation span {\r\n	display: block;\r\n	padding-left: 5px;\r\n}\r\n\r\ndd.time {\r\n	width: auto;\r\n	line-height: 200%;\r\n	font-size: 1.1em;\r\n}\r\n\r\ndd.extra {\r\n	width: 12%;\r\n	line-height: 200%;\r\n	text-align: center;\r\n	font-size: 1.1em;\r\n}\r\n\r\ndd.mark {\r\n	float: right !important;\r\n	width: 9%;\r\n	text-align: center;\r\n	line-height: 200%;\r\n	font-size: 1.2em;\r\n}\r\n\r\ndd.info {\r\n	width: 30%;\r\n}\r\n\r\ndd.option {\r\n	width: 15%;\r\n	line-height: 200%;\r\n	text-align: center;\r\n	font-size: 1.1em;\r\n}\r\n\r\ndd.searchby {\r\n	width: 47%;\r\n	font-size: 1.1em;\r\n	line-height: 1em;\r\n}\r\n\r\nul.topiclist dd.searchextra {\r\n	margin-left: 5px;\r\n	padding: 0.2em 0;\r\n	font-size: 1.1em;\r\n	color: #333333;\r\n	border-left: none;\r\n	clear: both;\r\n	width: 98%;\r\n	overflow: hidden;\r\n}\r\n\r\n/* Container for post/reply buttons and pagination */\r\n.topic-actions {\r\n	margin-bottom: 3px;\r\n	font-size: 1.1em;\r\n	height: 28px;\r\n	min-height: 28px;\r\n}\r\ndiv[class].topic-actions {\r\n	height: auto;\r\n}\r\n\r\n/* Post body styles\r\n----------------------------------------*/\r\n.postbody {\r\n	padding: 0;\r\n	line-height: 1.48em;\r\n	color: #333333;\r\n	width: 76%;\r\n	float: left;\r\n	clear: both;\r\n}\r\n\r\n.postbody .ignore {\r\n	font-size: 1.1em;\r\n}\r\n\r\n.postbody h3.first {\r\n	/* The first post on the page uses this */\r\n	font-size: 1.7em;\r\n}\r\n\r\n.postbody h3 {\r\n	/* Postbody requires a different h3 format - so change it here */\r\n	font-size: 1.5em;\r\n	padding: 2px 0 0 0;\r\n	margin: 0 0 0.3em 0 !important;\r\n	text-transform: none;\r\n	border: none;\r\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\r\n	line-height: 125%;\r\n}\r\n\r\n.postbody h3 img {\r\n	/* Also see tweaks.css */\r\n	vertical-align: bottom;\r\n}\r\n\r\n.postbody .content {\r\n	font-size: 1.3em;\r\n}\r\n\r\n.search .postbody {\r\n	width: 68%\r\n}\r\n\r\n/* Topic review panel\r\n----------------------------------------*/\r\n#review {\r\n	margin-top: 2em;\r\n}\r\n\r\n#topicreview {\r\n	padding-right: 5px;\r\n	overflow: auto;\r\n	height: 300px;\r\n}\r\n\r\n#topicreview .postbody {\r\n	width: auto;\r\n	float: none;\r\n	margin: 0;\r\n	height: auto;\r\n}\r\n\r\n#topicreview .post {\r\n	height: auto;\r\n}\r\n\r\n#topicreview h2 {\r\n	border-bottom-width: 0;\r\n}\r\n\r\n.post-ignore .postbody {\r\n	display: none;\r\n}\r\n\r\n/* MCP Post details\r\n----------------------------------------*/\r\n#post_details\r\n{\r\n	/* This will only work in IE7+, plus the others */\r\n	overflow: auto;\r\n	max-height: 300px;\r\n}\r\n\r\n#expand\r\n{\r\n	clear: both;\r\n}\r\n\r\n/* Content container styles\r\n----------------------------------------*/\r\n.content {\r\n	min-height: 3em;\r\n	overflow: hidden;\r\n	line-height: 1.4em;\r\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\r\n	font-size: 1em;\r\n	color: #333333;\r\n	padding-bottom: 1px;\r\n}\r\n\r\n.content h2, .panel h2 {\r\n	font-weight: normal;\r\n	color: #989898;\r\n	border-bottom: 1px solid #CCCCCC;\r\n	font-size: 1.6em;\r\n	margin-top: 0.5em;\r\n	margin-bottom: 0.5em;\r\n	padding-bottom: 0.5em;\r\n}\r\n\r\n.panel h3 {\r\n	margin: 0.5em 0;\r\n}\r\n\r\n.panel p {\r\n	font-size: 1.2em;\r\n	margin-bottom: 1em;\r\n	line-height: 1.4em;\r\n}\r\n\r\n.content p {\r\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\r\n	font-size: 1.2em;\r\n	margin-bottom: 1em;\r\n	line-height: 1.4em;\r\n}\r\n\r\ndl.faq {\r\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\r\n	font-size: 1.1em;\r\n	margin-top: 1em;\r\n	margin-bottom: 2em;\r\n	line-height: 1.4em;\r\n}\r\n\r\ndl.faq dt {\r\n	font-weight: bold;\r\n	color: #333333;\r\n}\r\n\r\n.content dl.faq {\r\n	font-size: 1.2em;\r\n	margin-bottom: 0.5em;\r\n}\r\n\r\n.content li {\r\n	list-style-type: inherit;\r\n}\r\n\r\n.content ul, .content ol {\r\n	margin-bottom: 1em;\r\n	margin-left: 3em;\r\n}\r\n\r\n.posthilit {\r\n	background-color: #f3f3f3;\r\n	color: #BCBCBC;\r\n	padding: 0 2px 1px 2px;\r\n}\r\n\r\n.announce, .unreadpost {\r\n	/* Highlight the announcements & unread posts box */\r\n	border-left-color: #BCBCBC;\r\n	border-right-color: #BCBCBC;\r\n}\r\n\r\n/* Post author */\r\np.author {\r\n	margin: 0 15em 0.6em 0;\r\n	padding: 0 0 5px 0;\r\n	font-family: Verdana, Helvetica, Arial, sans-serif;\r\n	font-size: 1em;\r\n	line-height: 1.2em;\r\n}\r\n\r\n/* Post signature */\r\n.signature {\r\n	margin-top: 1.5em;\r\n	padding-top: 0.2em;\r\n	font-size: 1.1em;\r\n	border-top: 1px solid #CCCCCC;\r\n	clear: left;\r\n	line-height: 140%;\r\n	overflow: hidden;\r\n	width: 100%;\r\n}\r\n\r\ndd .signature {\r\n	margin: 0;\r\n	padding: 0;\r\n	clear: none;\r\n	border: none;\r\n}\r\n\r\n.signature li {\r\n	list-style-type: inherit;\r\n}\r\n\r\n.signature ul, .signature ol {\r\n	margin-bottom: 1em;\r\n	margin-left: 3em;\r\n}\r\n\r\n/* Post noticies */\r\n.notice {\r\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\r\n	width: auto;\r\n	margin-top: 1.5em;\r\n	padding-top: 0.2em;\r\n	font-size: 1em;\r\n	border-top: 1px dashed #CCCCCC;\r\n	clear: left;\r\n	line-height: 130%;\r\n}\r\n\r\n/* Jump to post link for now */\r\nul.searchresults {\r\n	list-style: none;\r\n	text-align: right;\r\n	clear: both;\r\n}\r\n\r\n/* BB Code styles\r\n----------------------------------------*/\r\n/* Quote block */\r\nblockquote {\r\n	background: #ebebeb none 6px 8px no-repeat;\r\n	border: 1px solid #dbdbdb;\r\n	font-size: 0.95em;\r\n	margin: 0.5em 1px 0 25px;\r\n	overflow: hidden;\r\n	padding: 5px;\r\n}\r\n\r\nblockquote blockquote {\r\n	/* Nested quotes */\r\n	background-color: #bababa;\r\n	font-size: 1em;\r\n	margin: 0.5em 1px 0 15px;	\r\n}\r\n\r\nblockquote blockquote blockquote {\r\n	/* Nested quotes */\r\n	background-color: #e4e4e4;\r\n}\r\n\r\nblockquote cite {\r\n	/* Username/source of quoter */\r\n	font-style: normal;\r\n	font-weight: bold;\r\n	margin-left: 20px;\r\n	display: block;\r\n	font-size: 0.9em;\r\n}\r\n\r\nblockquote cite cite {\r\n	font-size: 1em;\r\n}\r\n\r\nblockquote.uncited {\r\n	padding-top: 25px;\r\n}\r\n\r\n/* Code block */\r\ndl.codebox {\r\n	padding: 3px;\r\n	background-color: #FFFFFF;\r\n	border: 1px solid #d8d8d8;\r\n	font-size: 1em;\r\n}\r\n\r\ndl.codebox dt {\r\n	text-transform: uppercase;\r\n	border-bottom: 1px solid #CCCCCC;\r\n	margin-bottom: 3px;\r\n	font-size: 0.8em;\r\n	font-weight: bold;\r\n	display: block;\r\n}\r\n\r\nblockquote dl.codebox {\r\n	margin-left: 0;\r\n}\r\n\r\ndl.codebox code {\r\n	/* Also see tweaks.css */\r\n	overflow: auto;\r\n	display: block;\r\n	height: auto;\r\n	max-height: 200px;\r\n	white-space: normal;\r\n	padding-top: 5px;\r\n	font: 0.9em Monaco, "Andale Mono","Courier New", Courier, mono;\r\n	line-height: 1.3em;\r\n	color: #8b8b8b;\r\n	margin: 2px 0;\r\n}\r\n\r\n.syntaxbg		{ color: #FFFFFF; }\r\n.syntaxcomment	{ color: #000000; }\r\n.syntaxdefault	{ color: #bcbcbc; }\r\n.syntaxhtml		{ color: #000000; }\r\n.syntaxkeyword	{ color: #585858; }\r\n.syntaxstring	{ color: #a7a7a7; }\r\n\r\n/* Attachments\r\n----------------------------------------*/\r\n.attachbox {\r\n	float: left;\r\n	width: auto; \r\n	margin: 5px 5px 5px 0;\r\n	padding: 6px;\r\n	background-color: #FFFFFF;\r\n	border: 1px dashed #d8d8d8;\r\n	clear: left;\r\n}\r\n\r\n.pm-message .attachbox {\r\n	background-color: #f3f3f3;\r\n}\r\n\r\n.attachbox dt {\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	text-transform: uppercase;\r\n}\r\n\r\n.attachbox dd {\r\n	margin-top: 4px;\r\n	padding-top: 4px;\r\n	clear: left;\r\n	border-top: 1px solid #d8d8d8;\r\n}\r\n\r\n.attachbox dd dd {\r\n	border: none;\r\n}\r\n\r\n.attachbox p {\r\n	line-height: 110%;\r\n	color: #666666;\r\n	font-weight: normal;\r\n	clear: left;\r\n}\r\n\r\n.attachbox p.stats\r\n{\r\n	line-height: 110%;\r\n	color: #666666;\r\n	font-weight: normal;\r\n	clear: left;\r\n}\r\n\r\n.attach-image {\r\n	margin: 3px 0;\r\n	width: 100%;\r\n	max-height: 350px;\r\n	overflow: auto;\r\n}\r\n\r\n.attach-image img {\r\n	border: 1px solid #999999;\r\n/*	cursor: move; */\r\n	cursor: default;\r\n}\r\n\r\n/* Inline image thumbnails */\r\ndiv.inline-attachment dl.thumbnail, div.inline-attachment dl.file {\r\n	display: block;\r\n	margin-bottom: 4px;\r\n}\r\n\r\ndiv.inline-attachment p {\r\n	font-size: 100%;\r\n}\r\n\r\ndl.file {\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	display: block;\r\n}\r\n\r\ndl.file dt {\r\n	text-transform: none;\r\n	margin: 0;\r\n	padding: 0;\r\n	font-weight: bold;\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n}\r\n\r\ndl.file dd {\r\n	color: #666666;\r\n	margin: 0;\r\n	padding: 0;	\r\n}\r\n\r\ndl.thumbnail img {\r\n	padding: 3px;\r\n	border: 1px solid #666666;\r\n	background-color: #FFF;\r\n}\r\n\r\ndl.thumbnail dd {\r\n	color: #666666;\r\n	font-style: italic;\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n}\r\n\r\n.attachbox dl.thumbnail dd {\r\n	font-size: 100%;\r\n}\r\n\r\ndl.thumbnail dt a:hover {\r\n	background-color: #EEEEEE;\r\n}\r\n\r\ndl.thumbnail dt a:hover img {\r\n	border: 1px solid #d2d2d2;\r\n}\r\n\r\n/* Post poll styles\r\n----------------------------------------*/\r\nfieldset.polls {\r\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\r\n}\r\n\r\nfieldset.polls dl {\r\n	margin-top: 5px;\r\n	border-top: 1px solid #e2e2e2;\r\n	padding: 5px 0 0 0;\r\n	line-height: 120%;\r\n	color: #666666;\r\n}\r\n\r\nfieldset.polls dl.voted {\r\n	font-weight: bold;\r\n	color: #000000;\r\n}\r\n\r\nfieldset.polls dt {\r\n	text-align: left;\r\n	float: left;\r\n	display: block;\r\n	width: 30%;\r\n	border-right: none;\r\n	padding: 0;\r\n	margin: 0;\r\n	font-size: 1.1em;\r\n}\r\n\r\nfieldset.polls dd {\r\n	float: left;\r\n	width: 10%;\r\n	border-left: none;\r\n	padding: 0 5px;\r\n	margin-left: 0;\r\n	font-size: 1.1em;\r\n}\r\n\r\nfieldset.polls dd.resultbar {\r\n	width: 50%;\r\n}\r\n\r\nfieldset.polls dd input {\r\n	margin: 2px 0;\r\n}\r\n\r\nfieldset.polls dd div {\r\n	text-align: right;\r\n	font-family: Arial, Helvetica, sans-serif;\r\n	color: #FFFFFF;\r\n	font-weight: bold;\r\n	padding: 0 2px;\r\n	overflow: visible;\r\n	min-width: 2%;\r\n}\r\n\r\n.pollbar1 {\r\n	background-color: #aaaaaa;\r\n	border-bottom: 1px solid #747474;\r\n	border-right: 1px solid #747474;\r\n}\r\n\r\n.pollbar2 {\r\n	background-color: #bebebe;\r\n	border-bottom: 1px solid #8c8c8c;\r\n	border-right: 1px solid #8c8c8c;\r\n}\r\n\r\n.pollbar3 {\r\n	background-color: #D1D1D1;\r\n	border-bottom: 1px solid #aaaaaa;\r\n	border-right: 1px solid #aaaaaa;\r\n}\r\n\r\n.pollbar4 {\r\n	background-color: #e4e4e4;\r\n	border-bottom: 1px solid #bebebe;\r\n	border-right: 1px solid #bebebe;\r\n}\r\n\r\n.pollbar5 {\r\n	background-color: #f8f8f8;\r\n	border-bottom: 1px solid #D1D1D1;\r\n	border-right: 1px solid #D1D1D1;\r\n}\r\n\r\n/* Poster profile block\r\n----------------------------------------*/\r\n.postprofile {\r\n	/* Also see tweaks.css */\r\n	margin: 5px 0 10px 0;\r\n	min-height: 80px;\r\n	color: #666666;\r\n	border-left: 1px solid #FFFFFF;\r\n	width: 22%;\r\n	float: right;\r\n	display: inline;\r\n}\r\n.pm .postprofile {\r\n	border-left: 1px solid #DDDDDD;\r\n}\r\n\r\n.postprofile dd, .postprofile dt {\r\n	line-height: 1.2em;\r\n	margin-left: 8px;\r\n}\r\n\r\n.postprofile strong {\r\n	font-weight: normal;\r\n	color: #000000;\r\n}\r\n\r\n.avatar {\r\n	border: none;\r\n	margin-bottom: 3px;\r\n}\r\n\r\n.online {\r\n	background-image: none;\r\n	background-position: 100% 0;\r\n	background-repeat: no-repeat;\r\n}\r\n\r\n/* Poster profile used by search*/\r\n.search .postprofile {\r\n	width: 30%;\r\n}\r\n\r\n/* pm list in compose message if mass pm is enabled */\r\ndl.pmlist dt {\r\n	width: 60% !important;\r\n}\r\n\r\ndl.pmlist dt textarea {\r\n	width: 95%;\r\n}\r\n\r\ndl.pmlist dd {\r\n	margin-left: 61% !important;\r\n	margin-bottom: 2px;\r\n}\r\n\r\n/* special for dc activity*/\r\n#activity_enrolled_wapper {\r\n		margin:0 auto;\r\n		width: 50%;\r\n		float:center;\r\n		\r\n}\r\n\r\n#activity_enrolled_block1 {\r\n		float:left;\r\n		width: 50%;\r\n		\r\n		\r\n}\r\n#activity_enrolled_block2 {\r\n		float:right;\r\n		text-align: left;\r\n		width: 50%;\r\n}\r\n/* Button Styles\r\n---------------------------------------- */\r\n\r\n/* Rollover buttons\r\n   Based on: http://wellstyled.com/css-nopreload-rollovers.html\r\n----------------------------------------*/\r\n.buttons {\r\n	float: left;\r\n	width: auto;\r\n	height: auto;\r\n}\r\n\r\n/* Rollover state */\r\n.buttons div {\r\n	float: left;\r\n	margin: 0 5px 0 0;\r\n	background-position: 0 100%;\r\n}\r\n\r\n/* Rolloff state */\r\n.buttons div a {\r\n	display: block;\r\n	width: 100%;\r\n	height: 100%;\r\n	background-position: 0 0;\r\n	position: relative;\r\n	overflow: hidden;\r\n}\r\n\r\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\r\n/*.buttons div span		{ display: none; }*/\r\n/*.buttons div a:hover	{ background-image: none; }*/\r\n.buttons div span			{ position: absolute; width: 100%; height: 100%; cursor: pointer;}\r\n.buttons div a:hover span	{ background-position: 0 100%; }\r\n\r\n/* Big button images */\r\n.reply-icon span	{ background: transparent none 0 0 no-repeat; }\r\n.post-icon span		{ background: transparent none 0 0 no-repeat; }\r\n.locked-icon span	{ background: transparent none 0 0 no-repeat; }\r\n.pmreply-icon span	{ background: none 0 0 no-repeat; }\r\n.newpm-icon span 	{ background: none 0 0 no-repeat; }\r\n.forwardpm-icon span 	{ background: none 0 0 no-repeat; }\r\n\r\n/* Set big button dimensions */\r\n.buttons div.reply-icon		{ width: {IMG_BUTTON_TOPIC_REPLY_WIDTH}px; height: {IMG_BUTTON_TOPIC_REPLY_HEIGHT}px; }\r\n.buttons div.post-icon		{ width: {IMG_BUTTON_TOPIC_NEW_WIDTH}px; height: {IMG_BUTTON_TOPIC_NEW_HEIGHT}px; }\r\n.buttons div.locked-icon	{ width: {IMG_BUTTON_TOPIC_LOCKED_WIDTH}px; height: {IMG_BUTTON_TOPIC_LOCKED_HEIGHT}px; }\r\n.buttons div.pmreply-icon	{ width: {IMG_BUTTON_PM_REPLY_WIDTH}px; height: {IMG_BUTTON_PM_REPLY_HEIGHT}px; }\r\n.buttons div.newpm-icon		{ width: {IMG_BUTTON_PM_NEW_WIDTH}px; height: {IMG_BUTTON_PM_NEW_HEIGHT}px; }\r\n.buttons div.forwardpm-icon	{ width: {IMG_BUTTON_PM_FORWARD_WIDTH}px; height: {IMG_BUTTON_PM_FORWARD_HEIGHT}px; }\r\n\r\n/* Sub-header (navigation bar)\r\n--------------------------------------------- */\r\na.print, a.sendemail, a.fontsize {\r\n	display: block;\r\n	overflow: hidden;\r\n	height: 18px;\r\n	text-indent: -5000px;\r\n	text-align: left;\r\n	background-repeat: no-repeat;\r\n}\r\n\r\na.print {\r\n	background-image: none;\r\n	width: 22px;\r\n}\r\n\r\na.sendemail {\r\n	background-image: none;\r\n	width: 22px;\r\n}\r\n\r\na.fontsize {\r\n	background-image: none;\r\n	background-position: 0 -1px;\r\n	width: 29px;\r\n}\r\n\r\na.fontsize:hover {\r\n	background-position: 0 -20px;\r\n	text-decoration: none;\r\n}\r\n\r\n/* Icon images\r\n---------------------------------------- */\r\n.sitehome, .icon-faq, .icon-members, .icon-home, .icon-ucp, .icon-register, .icon-logout,\r\n.icon-bookmark, .icon-bump, .icon-subscribe, .icon-unsubscribe, .icon-pages, .icon-search {\r\n	background-position: 0 50%;\r\n	background-repeat: no-repeat;\r\n	background-image: none;\r\n	padding: 1px 0 0 17px;\r\n}\r\n\r\n/* Poster profile icons\r\n----------------------------------------*/\r\nul.profile-icons {\r\n	padding-top: 10px;\r\n	list-style: none;\r\n}\r\n\r\n/* Rollover state */\r\nul.profile-icons li {\r\n	float: left;\r\n	margin: 0 6px 3px 0;\r\n	background-position: 0 100%;\r\n}\r\n\r\n/* Rolloff state */\r\nul.profile-icons li a {\r\n	display: block;\r\n	width: 100%;\r\n	height: 100%;\r\n	background-position: 0 0;\r\n}\r\n\r\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\r\nul.profile-icons li span { display:none; }\r\nul.profile-icons li a:hover { background: none; }\r\n\r\n/* Positioning of moderator icons */\r\n.postbody ul.profile-icons {\r\n	float: right;\r\n	width: auto;\r\n	padding: 0;\r\n}\r\n\r\n.postbody ul.profile-icons li {\r\n	margin: 0 3px;\r\n}\r\n\r\n/* Profile & navigation icons */\r\n.email-icon, .email-icon a		{ background: none top left no-repeat; }\r\n.aim-icon, .aim-icon a			{ background: none top left no-repeat; }\r\n.yahoo-icon, .yahoo-icon a		{ background: none top left no-repeat; }\r\n.web-icon, .web-icon a			{ background: none top left no-repeat; }\r\n.msnm-icon, .msnm-icon a			{ background: none top left no-repeat; }\r\n.icq-icon, .icq-icon a			{ background: none top left no-repeat; }\r\n.jabber-icon, .jabber-icon a		{ background: none top left no-repeat; }\r\n.pm-icon, .pm-icon a				{ background: none top left no-repeat; }\r\n.quote-icon, .quote-icon a		{ background: none top left no-repeat; }\r\n\r\n/* Moderator icons */\r\n.report-icon, .report-icon a		{ background: none top left no-repeat; }\r\n.warn-icon, .warn-icon a			{ background: none top left no-repeat; }\r\n.edit-icon, .edit-icon a			{ background: none top left no-repeat; }\r\n.delete-icon, .delete-icon a		{ background: none top left no-repeat; }\r\n.info-icon, .info-icon a			{ background: none top left no-repeat; }\r\n\r\n/* Set profile icon dimensions */\r\nul.profile-icons li.email-icon		{ width: {IMG_ICON_CONTACT_EMAIL_WIDTH}px; height: {IMG_ICON_CONTACT_EMAIL_HEIGHT}px; }\r\nul.profile-icons li.aim-icon	{ width: {IMG_ICON_CONTACT_AIM_WIDTH}px; height: {IMG_ICON_CONTACT_AIM_HEIGHT}px; }\r\nul.profile-icons li.yahoo-icon	{ width: {IMG_ICON_CONTACT_YAHOO_WIDTH}px; height: {IMG_ICON_CONTACT_YAHOO_HEIGHT}px; }\r\nul.profile-icons li.web-icon	{ width: {IMG_ICON_CONTACT_WWW_WIDTH}px; height: {IMG_ICON_CONTACT_WWW_HEIGHT}px; }\r\nul.profile-icons li.msnm-icon	{ width: {IMG_ICON_CONTACT_MSNM_WIDTH}px; height: {IMG_ICON_CONTACT_MSNM_HEIGHT}px; }\r\nul.profile-icons li.icq-icon	{ width: {IMG_ICON_CONTACT_ICQ_WIDTH}px; height: {IMG_ICON_CONTACT_ICQ_HEIGHT}px; }\r\nul.profile-icons li.jabber-icon	{ width: {IMG_ICON_CONTACT_JABBER_WIDTH}px; height: {IMG_ICON_CONTACT_JABBER_HEIGHT}px; }\r\nul.profile-icons li.pm-icon		{ width: {IMG_ICON_CONTACT_PM_WIDTH}px; height: {IMG_ICON_CONTACT_PM_HEIGHT}px; }\r\nul.profile-icons li.quote-icon	{ width: {IMG_ICON_POST_QUOTE_WIDTH}px; height: {IMG_ICON_POST_QUOTE_HEIGHT}px; }\r\nul.profile-icons li.report-icon	{ width: {IMG_ICON_POST_REPORT_WIDTH}px; height: {IMG_ICON_POST_REPORT_HEIGHT}px; }\r\nul.profile-icons li.edit-icon	{ width: {IMG_ICON_POST_EDIT_WIDTH}px; height: {IMG_ICON_POST_EDIT_HEIGHT}px; }\r\nul.profile-icons li.delete-icon	{ width: {IMG_ICON_POST_DELETE_WIDTH}px; height: {IMG_ICON_POST_DELETE_HEIGHT}px; }\r\nul.profile-icons li.info-icon	{ width: {IMG_ICON_POST_INFO_WIDTH}px; height: {IMG_ICON_POST_INFO_HEIGHT}px; }\r\nul.profile-icons li.warn-icon	{ width: {IMG_ICON_USER_WARN_WIDTH}px; height: {IMG_ICON_USER_WARN_HEIGHT}px; }\r\n\r\n/* Fix profile icon default margins */\r\nul.profile-icons li.edit-icon	{ margin: 0 0 0 3px; }\r\nul.profile-icons li.quote-icon	{ margin: 0 0 0 10px; }\r\nul.profile-icons li.info-icon, ul.profile-icons li.report-icon	{ margin: 0 3px 0 0; }\r\n/* Control Panel Styles\r\n---------------------------------------- */\r\n\r\n\r\n/* Main CP box\r\n----------------------------------------*/\r\n#cp-menu {\r\n	float:left;\r\n	width: 19%;\r\n	margin-top: 1em;\r\n	margin-bottom: 5px;\r\n}\r\n\r\n#cp-main {\r\n	float: left;\r\n	width: 81%;\r\n}\r\n\r\n#cp-main .content {\r\n	padding: 0;\r\n}\r\n\r\n#cp-main h3, #cp-main hr, #cp-menu hr {\r\n	border-color: #bfbfbf;\r\n}\r\n\r\n#cp-main .panel p {\r\n	font-size: 1.1em;\r\n}\r\n\r\n#cp-main .panel ol {\r\n	margin-left: 2em;\r\n	font-size: 1.1em;\r\n}\r\n\r\n#cp-main .panel li.row {\r\n	border-bottom: 1px solid #cbcbcb;\r\n	border-top: 1px solid #F9F9F9;\r\n}\r\n\r\nul.cplist {\r\n	margin-bottom: 5px;\r\n	border-top: 1px solid #cbcbcb;\r\n}\r\n\r\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\r\n	color: #000000;\r\n	margin-bottom: 2px;\r\n}\r\n\r\n#cp-main table.table1 {\r\n	margin-bottom: 1em;\r\n}\r\n\r\n#cp-main table.table1 thead th {\r\n	color: #333333;\r\n	font-weight: bold;\r\n	border-bottom: 1px solid #333333;\r\n	padding: 5px;\r\n}\r\n\r\n#cp-main table.table1 tbody th {\r\n	font-style: italic;\r\n	background-color: transparent !important;\r\n	border-bottom: none;\r\n}\r\n\r\n#cp-main .pagination {\r\n	float: right;\r\n	width: auto;\r\n	padding-top: 1px;\r\n}\r\n\r\n#cp-main .postbody p {\r\n	font-size: 1.1em;\r\n}\r\n\r\n#cp-main .pm-message {\r\n	border: 1px solid #e2e2e2;\r\n	margin: 10px 0;\r\n	background-color: #FFFFFF;\r\n	width: auto;\r\n	float: none;\r\n}\r\n\r\n.pm-message h2 {\r\n	padding-bottom: 5px;\r\n}\r\n\r\n#cp-main .postbody h3, #cp-main .box2 h3 {\r\n	margin-top: 0;\r\n}\r\n\r\n#cp-main .buttons {\r\n	margin-left: 0;\r\n}\r\n\r\n#cp-main ul.linklist {\r\n	margin: 0;\r\n}\r\n\r\n/* MCP Specific tweaks */\r\n.mcp-main .postbody {\r\n	width: 100%;\r\n}\r\n\r\n.tabs-container h2 {\r\n	float: left;\r\n	margin-bottom: 0px;\r\n}\r\n\r\n.tabs-container #minitabs {\r\n	float: right;\r\n	margin-top: 19px;\r\n}\r\n\r\n.tabs-container:after {\r\n	display: block;\r\n	clear: both;\r\n	content: '''';\r\n}\r\n\r\n/* CP tabbed menu\r\n----------------------------------------*/\r\n#tabs {\r\n	line-height: normal;\r\n	margin: 20px 0 -1px 7px;\r\n	min-width: 570px;\r\n}\r\n\r\n#tabs ul {\r\n	margin:0;\r\n	padding: 0;\r\n	list-style: none;\r\n}\r\n\r\n#tabs li {\r\n	display: inline;\r\n	margin: 0;\r\n	padding: 0;\r\n	font-size: 1em;\r\n	font-weight: bold;\r\n}\r\n\r\n#tabs a {\r\n	float: left;\r\n	background: none no-repeat 0% -35px;\r\n	margin: 0 1px 0 0;\r\n	padding: 0 0 0 5px;\r\n	text-decoration: none;\r\n	position: relative;\r\n	cursor: pointer;\r\n}\r\n\r\n#tabs a span {\r\n	float: left;\r\n	display: block;\r\n	background: none no-repeat 100% -35px;\r\n	padding: 6px 10px 6px 5px;\r\n	color: #828282;\r\n	white-space: nowrap;\r\n}\r\n\r\n#tabs a:hover span {\r\n	color: #bcbcbc;\r\n}\r\n\r\n#tabs .activetab a {\r\n	background-position: 0 0;\r\n	border-bottom: 1px solid #ebebeb;\r\n}\r\n\r\n#tabs .activetab a span {\r\n	background-position: 100% 0;\r\n	padding-bottom: 7px;\r\n	color: #333333;\r\n}\r\n\r\n#tabs a:hover {\r\n	background-position: 0 -70px;\r\n}\r\n\r\n#tabs a:hover span {\r\n	background-position:100% -70px;\r\n}\r\n\r\n#tabs .activetab a:hover {\r\n	background-position: 0 0;\r\n}\r\n\r\n#tabs .activetab a:hover span {\r\n	color: #000000;\r\n	background-position: 100% 0;\r\n}\r\n\r\n/* Mini tabbed menu used in MCP\r\n----------------------------------------*/\r\n#minitabs {\r\n	line-height: normal;\r\n	margin: -20px 7px 0 0;\r\n}\r\n\r\n#minitabs ul {\r\n	margin:0;\r\n	padding: 0;\r\n	list-style: none;\r\n}\r\n\r\n#minitabs li {\r\n	display: block;\r\n	float: right;\r\n	padding: 0 10px 4px 10px;\r\n	font-size: 1em;\r\n	font-weight: bold;\r\n	background-color: #f2f2f2;\r\n	margin-left: 2px;\r\n}\r\n\r\n#minitabs a {\r\n}\r\n\r\n#minitabs a:hover {\r\n	text-decoration: none;\r\n}\r\n\r\n#minitabs li.activetab {\r\n	background-color: #F9F9F9;\r\n}\r\n\r\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\r\n	color: #333333;\r\n}\r\n\r\n/* UCP navigation menu\r\n----------------------------------------*/\r\n/* Container for sub-navigation list */\r\n#navigation {\r\n	width: 100%;\r\n	padding-top: 36px;\r\n}\r\n\r\n#navigation ul {\r\n	list-style:none;\r\n}\r\n\r\n/* Default list state */\r\n#navigation li {\r\n	margin: 1px 0;\r\n	padding: 0;\r\n	font-weight: bold;\r\n	display: inline;\r\n}\r\n\r\n/* Link styles for the sub-section links */\r\n#navigation a {\r\n	display: block;\r\n	padding: 5px;\r\n	margin: 1px 0;\r\n	text-decoration: none;\r\n	font-weight: bold;\r\n	color: #333;\r\n	background: #cfcfcf none repeat-y 100% 0;\r\n}\r\n\r\n#navigation a:hover {\r\n	text-decoration: none;\r\n	background-color: #c6c6c6;\r\n	color: #bcbcbc;\r\n	background-image: none;\r\n}\r\n\r\n#navigation #active-subsection a {\r\n	display: block;\r\n	color: #d3d3d3;\r\n	background-color: #F9F9F9;\r\n	background-image: none;\r\n}\r\n\r\n#navigation #active-subsection a:hover {\r\n	color: #d3d3d3;\r\n}\r\n\r\n/* Preferences pane layout\r\n----------------------------------------*/\r\n#cp-main h2 {\r\n	border-bottom: none;\r\n	padding: 0;\r\n	margin-left: 10px;\r\n	color: #333333;\r\n}\r\n\r\n#cp-main .panel {\r\n	background-color: #F9F9F9;\r\n}\r\n\r\n#cp-main .pm {\r\n	background-color: #FFFFFF;\r\n}\r\n\r\n#cp-main span.corners-top, #cp-menu span.corners-top {\r\n	background-image: none;\r\n}\r\n\r\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\r\n	background-image: none;\r\n}\r\n\r\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\r\n	background-image: none;\r\n}\r\n\r\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\r\n	background-image: none;\r\n}\r\n\r\n/* Topicreview */\r\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\r\n	background-image: none;\r\n}\r\n\r\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\r\n	background-image: none;\r\n}\r\n\r\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\r\n	background-image: none;\r\n}\r\n\r\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\r\n	background-image: none;\r\n}\r\n\r\n/* Friends list */\r\n.cp-mini {\r\n	background-color: #f9f9f9;\r\n	padding: 0 5px;\r\n	margin: 10px 15px 10px 5px;\r\n}\r\n\r\n.cp-mini span.corners-top, .cp-mini span.corners-bottom {\r\n	margin: 0 -5px;\r\n}\r\n\r\ndl.mini dt {\r\n	font-weight: bold;\r\n	color: #676767;\r\n}\r\n\r\ndl.mini dd {\r\n	padding-top: 4px;\r\n}\r\n\r\n.friend-online {\r\n	font-weight: bold;\r\n}\r\n\r\n.friend-offline {\r\n	font-style: italic;\r\n}\r\n\r\n/* PM Styles\r\n----------------------------------------*/\r\n#pm-menu {\r\n	line-height: 2.5em;\r\n}\r\n\r\n/* PM panel adjustments */\r\n.reply-all a.left {\r\n	background-position: 3px 60%;\r\n}\r\n\r\n.reply-all a.left:hover {\r\n	background-position: 0px 60%;\r\n}\r\n\r\n.reply-all {\r\n	font-size: 11px;\r\n	padding-top: 5px;\r\n}\r\n\r\n/* PM Message history */\r\n.current {\r\n	color: #999999;\r\n}\r\n\r\n/* Defined rules list for PM options */\r\nol.def-rules {\r\n	padding-left: 0;\r\n}\r\n\r\nol.def-rules li {\r\n	line-height: 180%;\r\n	padding: 1px;\r\n}\r\n\r\n/* PM marking colours */\r\n.pmlist li.bg1 {\r\n	padding: 0 3px;\r\n}\r\n\r\n.pmlist li.bg2 {\r\n	padding: 0 3px;\r\n}\r\n\r\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\r\n	border-left-color: #bcbcbc;\r\n	border-right-color: #bcbcbc;\r\n}\r\n\r\n.pmlist li.pm_marked_colour, .pm_marked_colour {\r\n	padding: 0;\r\n	border: solid 3px #ffffff;\r\n	border-width: 0 3px;\r\n}\r\n\r\n.pmlist li.pm_replied_colour, .pm_replied_colour {\r\n	padding: 0;\r\n	border: solid 3px #c2c2c2;\r\n	border-width: 0 3px;\r\n}\r\n\r\n.pmlist li.pm_friend_colour, .pm_friend_colour {\r\n	padding: 0;\r\n	border: solid 3px #bdbdbd;\r\n	border-width: 0 3px;\r\n}\r\n\r\n.pmlist li.pm_foe_colour, .pm_foe_colour {\r\n	padding: 0;\r\n	border: solid 3px #000000;\r\n	border-width: 0 3px;\r\n}\r\n\r\n.pm-legend {\r\n	border-left-width: 10px;\r\n	border-left-style: solid;\r\n	border-right-width: 0;\r\n	margin-bottom: 3px;\r\n	padding-left: 3px;\r\n}\r\n\r\n/* Avatar gallery */\r\n#gallery label {\r\n	position: relative;\r\n	float: left;\r\n	margin: 10px;\r\n	padding: 5px;\r\n	width: auto;\r\n	background: #FFFFFF;\r\n	border: 1px solid #CCC;\r\n	text-align: center;\r\n}\r\n\r\n#gallery label:hover {\r\n	background-color: #EEE;\r\n}\r\n/* Form Styles\r\n---------------------------------------- */\r\n\r\n/* General form styles\r\n----------------------------------------*/\r\nfieldset {\r\n	border-width: 0;\r\n	font-family: Verdana, Helvetica, Arial, sans-serif;\r\n	font-size: 1.1em;\r\n}\r\n\r\ninput {\r\n	font-weight: normal;\r\n	cursor: pointer;\r\n	vertical-align: middle;\r\n	padding: 0 3px;\r\n	font-size: 1em;\r\n	font-family: Verdana, Helvetica, Arial, sans-serif;\r\n}\r\n\r\nselect {\r\n	font-family: Verdana, Helvetica, Arial, sans-serif;\r\n	font-weight: normal;\r\n	cursor: pointer;\r\n	vertical-align: middle;\r\n	border: 1px solid #666666;\r\n	padding: 1px;\r\n	background-color: #FAFAFA;\r\n	font-size: 1em;\r\n}\r\n\r\noption {\r\n	padding-right: 1em;\r\n}\r\n\r\noption.disabled-option {\r\n	color: graytext;\r\n}\r\n\r\ntextarea {\r\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\r\n	width: 60%;\r\n	padding: 2px;\r\n	font-size: 1em;\r\n	line-height: 1.4em;\r\n}\r\n\r\nlabel {\r\n	cursor: default;\r\n	padding-right: 5px;\r\n	color: #676767;\r\n}\r\n\r\nlabel input {\r\n	vertical-align: middle;\r\n}\r\n\r\nlabel img {\r\n	vertical-align: middle;\r\n}\r\n\r\n/* Definition list layout for forms\r\n---------------------------------------- */\r\nfieldset dl {\r\n	padding: 4px 0;\r\n}\r\n\r\nfieldset dt {\r\n	float: left;	\r\n	width: 40%;\r\n	text-align: left;\r\n	display: block;\r\n}\r\n\r\nfieldset dd {\r\n	margin-left: 41%;\r\n	vertical-align: top;\r\n	margin-bottom: 3px;\r\n}\r\n\r\n/* Specific layout 1 */\r\nfieldset.fields1 dt {\r\n	width: 15em;\r\n	border-right-width: 0;\r\n}\r\n\r\nfieldset.fields1 dd {\r\n	margin-left: 15em;\r\n	border-left-width: 0;\r\n}\r\n\r\nfieldset.fields1 {\r\n	background-color: transparent;\r\n}\r\n\r\nfieldset.fields1 div {\r\n	margin-bottom: 3px;\r\n}\r\n\r\n/* Set it back to 0px for the reCaptcha divs: PHPBB3-9587 */\r\nfieldset.fields1 #recaptcha_widget_div div {\r\n	margin-bottom: 0;\r\n}\r\n\r\n/* Specific layout 2 */\r\nfieldset.fields2 dt {\r\n	width: 15em;\r\n	border-right-width: 0;\r\n}\r\n\r\nfieldset.fields2 dd {\r\n	margin-left: 16em;\r\n	border-left-width: 0;\r\n}\r\n\r\n/* Form elements */\r\ndt label {\r\n	font-weight: bold;\r\n	text-align: left;\r\n}\r\n\r\ndd label {\r\n	white-space: nowrap;\r\n	color: #333;\r\n}\r\n\r\ndd input, dd textarea {\r\n	margin-right: 3px;\r\n}\r\n\r\ndd select {\r\n	width: auto;\r\n}\r\n\r\ndd textarea {\r\n	width: 85%;\r\n}\r\n\r\n/* Hover effects */\r\nfieldset dl:hover dt label {\r\n	color: #000000;\r\n}\r\n\r\nfieldset.fields2 dl:hover dt label {\r\n	color: inherit;\r\n}\r\n\r\n#timezone {\r\n	width: 95%;\r\n}\r\n\r\n* html #timezone {\r\n	width: 50%;\r\n}\r\n\r\n/* Quick-login on index page */\r\nfieldset.quick-login {\r\n	margin-top: 5px;\r\n}\r\n\r\nfieldset.quick-login input {\r\n	width: auto;\r\n}\r\n\r\nfieldset.quick-login input.inputbox {\r\n	width: 15%;\r\n	vertical-align: middle;\r\n	margin-right: 5px;\r\n	background-color: #f3f3f3;\r\n}\r\n\r\nfieldset.quick-login label {\r\n	white-space: nowrap;\r\n	padding-right: 2px;\r\n}\r\n\r\n/* Display options on viewtopic/viewforum pages  */\r\nfieldset.display-options {\r\n	text-align: center;\r\n	margin: 3px 0 5px 0;\r\n}\r\n\r\nfieldset.display-options label {\r\n	white-space: nowrap;\r\n	padding-right: 2px;\r\n}\r\n\r\nfieldset.display-options a {\r\n	margin-top: 3px;\r\n}\r\n\r\n/* Display actions for ucp and mcp pages */\r\nfieldset.display-actions {\r\n	text-align: right;\r\n	line-height: 2em;\r\n	white-space: nowrap;\r\n	padding-right: 1em;\r\n}\r\n\r\nfieldset.display-actions label {\r\n	white-space: nowrap;\r\n	padding-right: 2px;\r\n}\r\n\r\nfieldset.sort-options {\r\n	line-height: 2em;\r\n}\r\n\r\n/* MCP forum selection*/\r\nfieldset.forum-selection {\r\n	margin: 5px 0 3px 0;\r\n	float: right;\r\n}\r\n\r\nfieldset.forum-selection2 {\r\n	margin: 13px 0 3px 0;\r\n	float: right;\r\n}\r\n\r\n/* Jumpbox */\r\nfieldset.jumpbox {\r\n	text-align: right;\r\n	margin-top: 15px;\r\n	height: 2.5em;\r\n}\r\n\r\nfieldset.quickmod {\r\n	width: 50%;\r\n	float: right;\r\n	text-align: right;\r\n	height: 2.5em;\r\n}\r\n\r\n/* Submit button fieldset */\r\nfieldset.submit-buttons {\r\n	text-align: center;\r\n	vertical-align: middle;\r\n	margin: 5px 0;\r\n}\r\n\r\nfieldset.submit-buttons input {\r\n	vertical-align: middle;\r\n	padding-top: 3px;\r\n	padding-bottom: 3px;\r\n}\r\n\r\n/* Posting page styles\r\n----------------------------------------*/\r\n\r\n/* Buttons used in the editor */\r\n#format-buttons {\r\n	margin: 15px 0 2px 0;\r\n}\r\n\r\n#format-buttons input, #format-buttons select {\r\n	vertical-align: middle;\r\n}\r\n\r\n/* Main message box */\r\n#message-box {\r\n	width: 80%;\r\n}\r\n\r\n#message-box textarea {\r\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\r\n	width: 450px;\r\n	height: 270px;\r\n	min-width: 100%;\r\n	max-width: 100%;\r\n	font-size: 1.2em;\r\n	color: #333333;\r\n}\r\n\r\n/* Emoticons panel */\r\n#smiley-box {\r\n	width: 18%;\r\n	float: right;\r\n}\r\n\r\n#smiley-box img {\r\n	margin: 3px;\r\n}\r\n\r\n/* Input field styles\r\n---------------------------------------- */\r\n.inputbox {\r\n	background-color: #FFFFFF;\r\n	border: 1px solid #c0c0c0;\r\n	color: #333333;\r\n	padding: 2px;\r\n	cursor: text;\r\n}\r\n\r\n.inputbox:hover {\r\n	border: 1px solid #eaeaea;\r\n}\r\n\r\n.inputbox:focus {\r\n	border: 1px solid #eaeaea;\r\n	color: #4b4b4b;\r\n}\r\n\r\ninput.inputbox	{ width: 85%; }\r\ninput.medium	{ width: 50%; }\r\ninput.narrow	{ width: 25%; }\r\ninput.tiny		{ width: 125px; }\r\n\r\ntextarea.inputbox {\r\n	width: 85%;\r\n}\r\n\r\n.autowidth {\r\n	width: auto !important;\r\n}\r\n\r\n/* Form button styles\r\n---------------------------------------- */\r\ninput.button1, input.button2 {\r\n	font-size: 1em;\r\n}\r\n\r\na.button1, input.button1, input.button3, a.button2, input.button2 {\r\n	width: auto !important;\r\n	padding-top: 1px;\r\n	padding-bottom: 1px;\r\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\r\n	color: #000;\r\n	background: #FAFAFA none repeat-x top left;\r\n}\r\n\r\na.button1, input.button1 {\r\n	font-weight: bold;\r\n	border: 1px solid #666666;\r\n}\r\n\r\ninput.button3 {\r\n	padding: 0;\r\n	margin: 0;\r\n	line-height: 5px;\r\n	height: 12px;\r\n	background-image: none;\r\n	font-variant: small-caps;\r\n}\r\n\r\n/* Alternative button */\r\na.button2, input.button2, input.button3 {\r\n	border: 1px solid #666666;\r\n}\r\n\r\n/* <a> button in the style of the form buttons */\r\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\r\n	text-decoration: none;\r\n	color: #000000;\r\n	padding: 2px 8px;\r\n	line-height: 250%;\r\n	vertical-align: text-bottom;\r\n	background-position: 0 1px;\r\n}\r\n\r\n/* Hover states */\r\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\r\n	border: 1px solid #BCBCBC;\r\n	background-position: 0 100%;\r\n	color: #BCBCBC;\r\n}\r\n\r\ninput.disabled {\r\n	font-weight: normal;\r\n	color: #666666;\r\n}\r\n\r\n/* Topic and forum Search */\r\n.search-box {\r\n	margin-top: 3px;\r\n	margin-left: 5px;\r\n	float: left;\r\n}\r\n\r\n.search-box input {\r\n}\r\n\r\ninput.search {\r\n	background-image: none;\r\n	background-repeat: no-repeat;\r\n	background-position: left 1px;\r\n	padding-left: 17px;\r\n}\r\n\r\n.full { width: 95%; }\r\n.medium { width: 50%;}\r\n.narrow { width: 25%;}\r\n.tiny { width: 10%;}\r\n/* Style Sheet Tweaks\r\n\r\nThese style definitions are mainly IE specific \r\ntweaks required due to its poor CSS support.\r\n-------------------------------------------------*/\r\n\r\n* html table, * html select, * html input { font-size: 100%; }\r\n* html hr { margin: 0; }\r\n* html span.corners-top, * html span.corners-bottom { background-image: url("{T_THEME_PATH}/images/corners_left.gif"); }\r\n* html span.corners-top span, * html span.corners-bottom span { background-image: url("{T_THEME_PATH}/images/corners_right.gif"); }\r\n\r\ntable.table1 {\r\n	width: 99%;		/* IE < 6 browsers */\r\n	/* Tantek hack */\r\n	voice-family: "\\"}\\"";\r\n	voice-family: inherit;\r\n	width: 100%;\r\n}\r\nhtml>body table.table1 { width: 100%; }	/* Reset 100% for opera */\r\n\r\n* html ul.topiclist li { position: relative; }\r\n* html .postbody h3 img { vertical-align: middle; }\r\n\r\n/* Form styles */\r\nhtml>body dd label input { vertical-align: text-bottom; }	/* Align checkboxes/radio buttons nicely */\r\n\r\n* html input.button1, * html input.button2 {\r\n	padding-bottom: 0;\r\n	margin-bottom: 1px;\r\n}\r\n\r\n/* Misc layout styles */\r\n* html .column1, * html .column2 { width: 45%; }\r\n\r\n/* Nice method for clearing floated blocks without having to insert any extra markup (like spacer above)\r\n   From http://www.positioniseverything.net/easyclearing.html \r\n#tabs:after, #minitabs:after, .post:after, .navbar:after, fieldset dl:after, ul.topiclist dl:after, ul.linklist:after, dl.polls:after {\r\n	content: "."; \r\n	display: block; \r\n	height: 0; \r\n	clear: both; \r\n	visibility: hidden;\r\n}*/\r\n\r\n.clearfix, #tabs, #minitabs, fieldset dl, ul.topiclist dl, dl.polls {\r\n	height: 1%;\r\n	overflow: hidden;\r\n}\r\n\r\n/* viewtopic fix */\r\n* html .post {\r\n	height: 25%;\r\n	overflow: hidden;\r\n}\r\n\r\n/* navbar fix */\r\n* html .clearfix, * html .navbar, ul.linklist {\r\n	height: 4%;\r\n	overflow: hidden;\r\n}\r\n\r\n/* Simple fix so forum and topic lists always have a min-height set, even in IE6\r\n	From http://www.dustindiaz.com/min-height-fast-hack */\r\ndl.icon {\r\n	min-height: 35px;\r\n	height: auto !important;\r\n	height: 35px;\r\n}\r\n\r\n* html li.row dl.icon dt {\r\n	height: 35px;\r\n	overflow: visible;\r\n}\r\n\r\n* html #search-box {\r\n	width: 25%;\r\n}\r\n\r\n/* Correctly clear floating for details on profile view */\r\n*:first-child+html dl.details dd {\r\n	margin-left: 30%;\r\n	float: none;\r\n}\r\n\r\n* html dl.details dd {\r\n	margin-left: 30%;\r\n	float: none;\r\n}\r\n\r\n/* Headerbar height fix for IE7 and below */\r\n* html #site-description p {\r\n	margin-bottom: 1.0em;\r\n}\r\n\r\n*:first-child+html #site-description p {\r\n	margin-bottom: 1.0em;\r\n}\r\n\r\n/* #minitabs fix for IE */\r\n.tabs-container {\r\n	zoom: 1;\r\n}\r\n\r\n#minitabs {\r\n	white-space: nowrap;\r\n	*min-width: 50%;\r\n}\r\n/*  	\r\n--------------------------------------------------------------\r\nColours and backgrounds for common.css\r\n-------------------------------------------------------------- */\r\n\r\nhtml, body {\r\n	color: #536482;\r\n	background-color: #FFFFFF;\r\n}\r\n\r\nh1 {\r\n	color: #FFFFFF;\r\n}\r\n\r\nh2 {\r\n	color: #28313F;\r\n}\r\n\r\nh3 {\r\n	border-bottom-color: #CCCCCC;\r\n	color: #115098;\r\n}\r\n\r\nhr {\r\n	border-color: #FFFFFF;\r\n	border-top-color: #CCCCCC;\r\n}\r\n\r\nhr.dashed {\r\n	border-top-color: #CCCCCC;\r\n}\r\n\r\n/* Search box\r\n--------------------------------------------- */\r\n\r\n#search-box {\r\n	color: #FFFFFF;\r\n}\r\n\r\n#search-box #keywords {\r\n	background-color: #FFF;\r\n}\r\n\r\n#search-box input {\r\n	border-color: #0075B0;\r\n}\r\n\r\n/* Round cornered boxes and backgrounds\r\n---------------------------------------- */\r\n.headerbar {\r\n	background-color: #12A3EB;\r\n	background-image: url("{T_THEME_PATH}/images/bg_header.gif");\r\n	color: #FFFFFF;\r\n}\r\n\r\n.navbar {\r\n	background-color: #cadceb;\r\n}\r\n\r\n.forabg {\r\n	background-color: #0076b1;\r\n	background-image: url("{T_THEME_PATH}/images/bg_list.gif");\r\n}\r\n\r\n.forumbg {\r\n	background-color: #12A3EB;\r\n	background-image: url("{T_THEME_PATH}/images/bg_header.gif");\r\n}\r\n\r\n.panel {\r\n	background-color: #ECF1F3;\r\n	color: #28313F;\r\n}\r\n\r\n.post:target .content {\r\n	color: #000000;\r\n}\r\n\r\n.post:target h3 a {\r\n	color: #000000;\r\n}\r\n\r\n.bg1	{ background-color: #ECF3F7; }\r\n.bg2	{ background-color: #e1ebf2;  }\r\n.bg3	{ background-color: #cadceb; }\r\n\r\n.ucprowbg {\r\n	background-color: #DCDEE2;\r\n}\r\n\r\n.fieldsbg {\r\n	background-color: #E7E8EA;\r\n}\r\n\r\nspan.corners-top {\r\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\r\n}\r\n\r\nspan.corners-top span {\r\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\r\n}\r\n\r\nspan.corners-bottom {\r\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\r\n}\r\n\r\nspan.corners-bottom span {\r\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\r\n}\r\n\r\n/* Horizontal lists\r\n----------------------------------------*/\r\n\r\nul.navlinks {\r\n	border-bottom-color: #FFFFFF;\r\n}\r\n\r\n/* Table styles\r\n----------------------------------------*/\r\ntable.table1 thead th {\r\n	color: #FFFFFF;\r\n}\r\n\r\ntable.table1 tbody tr {\r\n	border-color: #BFC1CF;\r\n}\r\n\r\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\r\n	background-color: #CFE1F6;\r\n	color: #000;\r\n}\r\n\r\ntable.table1 td {\r\n	color: #536482;\r\n}\r\n\r\ntable.table1 tbody td {\r\n	border-top-color: #FAFAFA;\r\n}\r\n\r\ntable.table1 tbody th {\r\n	border-bottom-color: #000000;\r\n	color: #333333;\r\n	background-color: #FFFFFF;\r\n}\r\n\r\ntable.info tbody th {\r\n	color: #000000;\r\n}\r\n\r\n/* Misc layout styles\r\n---------------------------------------- */\r\ndl.details dt {\r\n	color: #000000;\r\n}\r\n\r\ndl.details dd {\r\n	color: #536482;\r\n}\r\n\r\n.sep {\r\n	color: #1198D9;\r\n}\r\n\r\n/* Pagination\r\n---------------------------------------- */\r\n\r\n.pagination span strong {\r\n	color: #FFFFFF;\r\n	background-color: #4692BF;\r\n	border-color: #4692BF;\r\n}\r\n\r\n.pagination span a, .pagination span a:link, .pagination span a:visited {\r\n	color: #5C758C;\r\n	background-color: #ECEDEE;\r\n	border-color: #B4BAC0;\r\n}\r\n\r\n.pagination span a:hover {\r\n	border-color: #368AD2;\r\n	background-color: #368AD2;\r\n	color: #FFF;\r\n}\r\n\r\n.pagination span a:active {\r\n	color: #5C758C;\r\n	background-color: #ECEDEE;\r\n	border-color: #B4BAC0;\r\n}\r\n\r\n/* Pagination in viewforum for multipage topics */\r\n.row .pagination {\r\n	background-image: url("{T_THEME_PATH}/images/icon_pages.gif");\r\n}\r\n\r\n.row .pagination span a, li.pagination span a {\r\n	background-color: #FFFFFF;\r\n}\r\n\r\n.row .pagination span a:hover, li.pagination span a:hover {\r\n	background-color: #368AD2;\r\n}\r\n\r\n/* Miscellaneous styles\r\n---------------------------------------- */\r\n\r\n.copyright {\r\n	color: #555555;\r\n}\r\n\r\n.error {\r\n	color: #BC2A4D;\r\n}\r\n\r\n.reported {\r\n	background-color: #F7ECEF;\r\n}\r\n\r\nli.reported:hover {\r\n	background-color: #ECD5D8 !important;\r\n}\r\n.sticky, .announce {\r\n	/* you can add a background for stickies and announcements*/\r\n}\r\n\r\ndiv.rules {\r\n	background-color: #ECD5D8;\r\n	color: #BC2A4D;\r\n}\r\n\r\np.rules {\r\n	background-color: #ECD5D8;\r\n	background-image: none;\r\n}\r\n\r\n/*  	\r\n--------------------------------------------------------------\r\nColours and backgrounds for links.css\r\n-------------------------------------------------------------- */\r\n\r\na:link	{ color: #105289; }\r\na:visited	{ color: #105289; }\r\na:hover	{ color: #D31141; }\r\na:active	{ color: #368AD2; }\r\n\r\n/* Links on gradient backgrounds */\r\n#search-box a:link, .navbg a:link, .forumbg .header a:link, .forabg .header a:link, th a:link {\r\n	color: #FFFFFF;\r\n}\r\n\r\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .forabg .header a:visited, th a:visited {\r\n	color: #FFFFFF;\r\n}\r\n\r\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .forabg .header a:hover, th a:hover {\r\n	color: #A8D8FF;\r\n}\r\n\r\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, th a:active {\r\n	color: #C8E6FF;\r\n}\r\n\r\n/* Links for forum/topic lists */\r\na.forumtitle {\r\n	color: #105289;\r\n}\r\n\r\n/* a.forumtitle:visited { color: #105289; } */\r\n\r\na.forumtitle:hover {\r\n	color: #BC2A4D;\r\n}\r\n\r\na.forumtitle:active {\r\n	color: #105289;\r\n}\r\n\r\na.topictitle {\r\n	color: #105289;\r\n}\r\n\r\n/* a.topictitle:visited { color: #368AD2; } */\r\n\r\na.topictitle:hover {\r\n	color: #BC2A4D;\r\n}\r\n\r\na.topictitle:active {\r\n	color: #105289;\r\n}\r\n\r\n/* Post body links */\r\n.postlink {\r\n	color: #368AD2;\r\n	border-bottom-color: #368AD2;\r\n}\r\n\r\n.postlink:visited {\r\n	color: #5D8FBD;\r\n	border-bottom-color: #5D8FBD;\r\n}\r\n\r\n.postlink:active {\r\n	color: #368AD2;\r\n}\r\n\r\n.postlink:hover {\r\n	background-color: #D0E4F6;\r\n	color: #0D4473;\r\n}\r\n\r\n.signature a, .signature a:visited, .signature a:hover, .signature a:active {\r\n	background-color: transparent;\r\n}\r\n\r\n/* Profile links */\r\n.postprofile a:link, .postprofile a:visited, .postprofile dt.author a {\r\n	color: #105289;\r\n}\r\n\r\n.postprofile a:hover, .postprofile dt.author a:hover {\r\n	color: #D31141;\r\n}\r\n\r\n.postprofile a:active {\r\n	color: #105289;\r\n}\r\n\r\n/* Profile searchresults */	\r\n.search .postprofile a {\r\n	color: #105289;\r\n}\r\n\r\n.search .postprofile a:hover {\r\n	color: #D31141;\r\n}\r\n\r\n/* Back to top of page */\r\na.top {\r\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\r\n}\r\n\r\na.top2 {\r\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\r\n}\r\n\r\n/* Arrow links  */\r\na.up		{ background-image: url("{T_THEME_PATH}/images/arrow_up.gif") }\r\na.down		{ background-image: url("{T_THEME_PATH}/images/arrow_down.gif") }\r\na.left		{ background-image: url("{T_THEME_PATH}/images/arrow_left.gif") }\r\na.right		{ background-image: url("{T_THEME_PATH}/images/arrow_right.gif") }\r\n\r\na.up:hover {\r\n	background-color: transparent;\r\n}\r\n\r\na.left:hover {\r\n	color: #368AD2;\r\n}\r\n\r\na.right:hover {\r\n	color: #368AD2;\r\n}\r\n\r\n\r\n/*  	\r\n--------------------------------------------------------------\r\nColours and backgrounds for content.css\r\n-------------------------------------------------------------- */\r\n\r\nul.forums {\r\n	background-color: #eef5f9;\r\n	background-image: url("{T_THEME_PATH}/images/gradient.gif");\r\n}\r\n\r\nul.topiclist li {\r\n	color: #4C5D77;\r\n}\r\n\r\nul.topiclist dd {\r\n	border-left-color: #FFFFFF;\r\n}\r\n\r\n.rtl ul.topiclist dd {\r\n	border-right-color: #fff;\r\n	border-left-color: transparent;\r\n}\r\n\r\nul.topiclist li.row dt a.subforum.read {\r\n	background-image: url("{IMG_SUBFORUM_READ_SRC}");\r\n}\r\n\r\nul.topiclist li.row dt a.subforum.unread {\r\n	background-image: url("{IMG_SUBFORUM_UNREAD_SRC}");\r\n}\r\n\r\nli.row {\r\n	border-top-color:  #FFFFFF;\r\n	border-bottom-color: #00608F;\r\n}\r\n\r\nli.row strong {\r\n	color: #000000;\r\n}\r\n\r\nli.row:hover {\r\n	background-color: #F6F4D0;\r\n}\r\n\r\nli.row:hover dd {\r\n	border-left-color: #CCCCCC;\r\n}\r\n\r\n.rtl li.row:hover dd {\r\n	border-right-color: #CCCCCC;\r\n	border-left-color: transparent;\r\n}\r\n\r\nli.header dt, li.header dd {\r\n	color: #FFFFFF;\r\n}\r\n\r\n/* Forum list column styles */\r\nul.topiclist dd.searchextra {\r\n	color: #333333;\r\n}\r\n\r\n/* Post body styles\r\n----------------------------------------*/\r\n.postbody {\r\n	color: #333333;\r\n}\r\n\r\n/* Content container styles\r\n----------------------------------------*/\r\n.content {\r\n	color: #333333;\r\n}\r\n\r\n.content h2, .panel h2 {\r\n	color: #115098;\r\n	border-bottom-color:  #CCCCCC;\r\n}\r\n\r\ndl.faq dt {\r\n	color: #333333;\r\n}\r\n\r\n.posthilit {\r\n	background-color: #F3BFCC;\r\n	color: #BC2A4D;\r\n}\r\n\r\n/* Post signature */\r\n.signature {\r\n	border-top-color: #CCCCCC;\r\n}\r\n\r\n/* Post noticies */\r\n.notice {\r\n	border-top-color:  #CCCCCC;\r\n}\r\n\r\n/* BB Code styles\r\n----------------------------------------*/\r\n/* Quote block */\r\nblockquote {\r\n	background-color: #EBEADD;\r\n	background-image: url("{T_THEME_PATH}/images/quote.gif");\r\n	border-color:#DBDBCE;\r\n}\r\n\r\n.rtl blockquote {\r\n	background-image: url("{T_THEME_PATH}/images/quote_rtl.gif");\r\n}\r\n\r\nblockquote blockquote {\r\n	/* Nested quotes */\r\n	background-color:#EFEED9;\r\n}\r\n\r\nblockquote blockquote blockquote {\r\n	/* Nested quotes */\r\n	background-color: #EBEADD;\r\n}\r\n\r\n/* Code block */\r\ndl.codebox {\r\n	background-color: #FFFFFF;\r\n	border-color: #C9D2D8;\r\n}\r\n\r\ndl.codebox dt {\r\n	border-bottom-color:  #CCCCCC;\r\n}\r\n\r\ndl.codebox code {\r\n	color: #2E8B57;\r\n}\r\n\r\n.syntaxbg		{ color: #FFFFFF; }\r\n.syntaxcomment	{ color: #FF8000; }\r\n.syntaxdefault	{ color: #0000BB; }\r\n.syntaxhtml		{ color: #000000; }\r\n.syntaxkeyword	{ color: #007700; }\r\n.syntaxstring	{ color: #DD0000; }\r\n\r\n/* Attachments\r\n----------------------------------------*/\r\n.attachbox {\r\n	background-color: #FFFFFF;\r\n	border-color:  #C9D2D8;\r\n}\r\n\r\n.pm-message .attachbox {\r\n	background-color: #F2F3F3;\r\n}\r\n\r\n.attachbox dd {\r\n	border-top-color: #C9D2D8;\r\n}\r\n\r\n.attachbox p {\r\n	color: #666666;\r\n}\r\n\r\n.attachbox p.stats {\r\n	color: #666666;\r\n}\r\n\r\n.attach-image img {\r\n	border-color: #999999;\r\n}\r\n\r\n/* Inline image thumbnails */\r\n\r\ndl.file dd {\r\n	color: #666666;\r\n}\r\n\r\ndl.thumbnail img {\r\n	border-color: #666666;\r\n	background-color: #FFFFFF;\r\n}\r\n\r\ndl.thumbnail dd {\r\n	color: #666666;\r\n}\r\n\r\ndl.thumbnail dt a:hover {\r\n	background-color: #EEEEEE;\r\n}\r\n\r\ndl.thumbnail dt a:hover img {\r\n	border-color: #368AD2;\r\n}\r\n\r\n/* Post poll styles\r\n----------------------------------------*/\r\n\r\nfieldset.polls dl {\r\n	border-top-color: #DCDEE2;\r\n	color: #666666;\r\n}\r\n\r\nfieldset.polls dl.voted {\r\n	color: #000000;\r\n}\r\n\r\nfieldset.polls dd div {\r\n	color: #FFFFFF;\r\n}\r\n\r\n.rtl .pollbar1, .rtl .pollbar2, .rtl .pollbar3, .rtl .pollbar4, .rtl .pollbar5 {\r\n	border-right-color: transparent;\r\n}\r\n\r\n.pollbar1 {\r\n	background-color: #AA2346;\r\n	border-bottom-color: #74162C;\r\n	border-right-color: #74162C;\r\n}\r\n\r\n.rtl .pollbar1 {\r\n	border-left-color: #74162C;\r\n}\r\n\r\n.pollbar2 {\r\n	background-color: #BE1E4A;\r\n	border-bottom-color: #8C1C38;\r\n	border-right-color: #8C1C38;\r\n}\r\n\r\n.rtl .pollbar2 {\r\n	border-left-color: #8C1C38;\r\n}\r\n\r\n.pollbar3 {\r\n	background-color: #D11A4E;\r\n	border-bottom-color: #AA2346;\r\n	border-right-color: #AA2346;\r\n}\r\n\r\n.rtl .pollbar3 {\r\n	border-left-color: #AA2346;\r\n}\r\n\r\n.pollbar4 {\r\n	background-color: #E41653;\r\n	border-bottom-color: #BE1E4A;\r\n	border-right-color: #BE1E4A;\r\n}\r\n\r\n.rtl .pollbar4 {\r\n	border-left-color: #BE1E4A;\r\n}\r\n\r\n.pollbar5 {\r\n	background-color: #F81157;\r\n	border-bottom-color: #D11A4E;\r\n	border-right-color: #D11A4E;\r\n}\r\n\r\n.rtl .pollbar5 {\r\n	border-left-color: #D11A4E;\r\n}\r\n\r\n/* Poster profile block\r\n----------------------------------------*/\r\n.postprofile {\r\n	color: #666666;\r\n	border-left-color: #FFFFFF;\r\n}\r\n\r\n.rtl .postprofile {\r\n	border-right-color: #FFFFFF;\r\n	border-left-color: transparent;\r\n}\r\n\r\n.pm .postprofile {\r\n	border-left-color: #DDDDDD;\r\n}\r\n\r\n.rtl .pm .postprofile {\r\n	border-right-color: #DDDDDD;\r\n	border-left-color: transparent;\r\n}\r\n\r\n.postprofile strong {\r\n	color: #000000;\r\n}\r\n\r\n.online {\r\n	background-image: url("{IMG_ICON_USER_ONLINE_SRC}");\r\n}\r\n\r\n/*  	\r\n--------------------------------------------------------------\r\nColours and backgrounds for buttons.css\r\n-------------------------------------------------------------- */\r\n\r\n/* Big button images */\r\n.reply-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_REPLY_SRC}"); }\r\n.post-icon span		{ background-image: url("{IMG_BUTTON_TOPIC_NEW_SRC}"); }\r\n.locked-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_LOCKED_SRC}"); }\r\n.pmreply-icon span	{ background-image: url("{IMG_BUTTON_PM_REPLY_SRC}") ;}\r\n.newpm-icon span 	{ background-image: url("{IMG_BUTTON_PM_NEW_SRC}") ;}\r\n.forwardpm-icon span	{ background-image: url("{IMG_BUTTON_PM_FORWARD_SRC}") ;}\r\n\r\na.print {\r\n	background-image: url("{T_THEME_PATH}/images/icon_print.gif");\r\n}\r\n\r\na.sendemail {\r\n	background-image: url("{T_THEME_PATH}/images/icon_sendemail.gif");\r\n}\r\n\r\na.fontsize {\r\n	background-image: url("{T_THEME_PATH}/images/icon_fontsize.gif");\r\n}\r\n\r\n/* Icon images\r\n---------------------------------------- */\r\n.sitehome						{ background-image: url("{T_THEME_PATH}/images/icon_home.gif"); }\r\n.icon-faq						{ background-image: url("{T_THEME_PATH}/images/icon_faq.gif"); }\r\n.icon-members					{ background-image: url("{T_THEME_PATH}/images/icon_members.gif"); }\r\n.icon-home						{ background-image: url("{T_THEME_PATH}/images/icon_home.gif"); }\r\n.icon-ucp						{ background-image: url("{T_THEME_PATH}/images/icon_ucp.gif"); }\r\n.icon-register					{ background-image: url("{T_THEME_PATH}/images/icon_register.gif"); }\r\n.icon-logout					{ background-image: url("{T_THEME_PATH}/images/icon_logout.gif"); }\r\n.icon-bookmark					{ background-image: url("{T_THEME_PATH}/images/icon_bookmark.gif"); }\r\n.icon-bump						{ background-image: url("{T_THEME_PATH}/images/icon_bump.gif"); }\r\n.icon-subscribe					{ background-image: url("{T_THEME_PATH}/images/icon_subscribe.gif"); }\r\n.icon-unsubscribe				{ background-image: url("{T_THEME_PATH}/images/icon_unsubscribe.gif"); }\r\n.icon-pages						{ background-image: url("{T_THEME_PATH}/images/icon_pages.gif"); }\r\n.icon-search					{ background-image: url("{T_THEME_PATH}/images/icon_search.gif"); }\r\n\r\n/* Profile & navigation icons */\r\n.email-icon, .email-icon a		{ background-image: url("{IMG_ICON_CONTACT_EMAIL_SRC}"); }\r\n.aim-icon, .aim-icon a			{ background-image: url("{IMG_ICON_CONTACT_AIM_SRC}"); }\r\n.yahoo-icon, .yahoo-icon a		{ background-image: url("{IMG_ICON_CONTACT_YAHOO_SRC}"); }\r\n.web-icon, .web-icon a			{ background-image: url("{IMG_ICON_CONTACT_WWW_SRC}"); }\r\n.msnm-icon, .msnm-icon a			{ background-image: url("{IMG_ICON_CONTACT_MSNM_SRC}"); }\r\n.icq-icon, .icq-icon a			{ background-image: url("{IMG_ICON_CONTACT_ICQ_SRC}"); }\r\n.jabber-icon, .jabber-icon a		{ background-image: url("{IMG_ICON_CONTACT_JABBER_SRC}"); }\r\n.pm-icon, .pm-icon a				{ background-image: url("{IMG_ICON_CONTACT_PM_SRC}"); }\r\n.quote-icon, .quote-icon a		{ background-image: url("{IMG_ICON_POST_QUOTE_SRC}"); }\r\n\r\n/* Moderator icons */\r\n.report-icon, .report-icon a		{ background-image: url("{IMG_ICON_POST_REPORT_SRC}"); }\r\n.edit-icon, .edit-icon a			{ background-image: url("{IMG_ICON_POST_EDIT_SRC}"); }\r\n.delete-icon, .delete-icon a		{ background-image: url("{IMG_ICON_POST_DELETE_SRC}"); }\r\n.info-icon, .info-icon a			{ background-image: url("{IMG_ICON_POST_INFO_SRC}"); }\r\n.warn-icon, .warn-icon a			{ background-image: url("{IMG_ICON_USER_WARN_SRC}"); } /* Need updated warn icon */\r\n\r\n/*  	\r\n--------------------------------------------------------------\r\nColours and backgrounds for cp.css\r\n-------------------------------------------------------------- */\r\n\r\n/* Main CP box\r\n----------------------------------------*/\r\n\r\n#cp-main h3, #cp-main hr, #cp-menu hr {\r\n	border-color: #A4B3BF;\r\n}\r\n\r\n#cp-main .panel li.row {\r\n	border-bottom-color: #B5C1CB;\r\n	border-top-color: #F9F9F9;\r\n}\r\n\r\nul.cplist {\r\n	border-top-color: #B5C1CB;\r\n}\r\n\r\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\r\n	color: #000000;\r\n}\r\n\r\n#cp-main table.table1 thead th {\r\n	color: #333333;\r\n	border-bottom-color: #333333;\r\n}\r\n\r\n#cp-main .pm-message {\r\n	border-color: #DBDEE2;\r\n	background-color: #FFFFFF;\r\n}\r\n\r\n/* CP tabbed menu\r\n----------------------------------------*/\r\n#tabs a {\r\n	background-image: url("{T_THEME_PATH}/images/bg_tabs1.gif");\r\n}\r\n\r\n#tabs a span {\r\n	background-image: url("{T_THEME_PATH}/images/bg_tabs2.gif");\r\n	color: #536482;\r\n}\r\n\r\n#tabs a:hover span {\r\n	color: #BC2A4D;\r\n}\r\n\r\n#tabs .activetab a {\r\n	border-bottom-color: #CADCEB;\r\n}\r\n\r\n#tabs .activetab a span {\r\n	color: #333333;\r\n}\r\n\r\n#tabs .activetab a:hover span {\r\n	color: #000000;\r\n}\r\n\r\n/* Mini tabbed menu used in MCP\r\n----------------------------------------*/\r\n#minitabs li {\r\n	background-color: #E1EBF2;\r\n}\r\n\r\n#minitabs li.activetab {\r\n	background-color: #F9F9F9;\r\n}\r\n\r\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\r\n	color: #333333;\r\n}\r\n\r\n/* UCP navigation menu\r\n----------------------------------------*/\r\n\r\n/* Link styles for the sub-section links */\r\n#navigation a {\r\n	color: #333;\r\n	background-color: #B2C2CF;\r\n	background-image: url("{T_THEME_PATH}/images/bg_menu.gif");\r\n}\r\n\r\n.rtl #navigation a {\r\n	background-image: url("{T_THEME_PATH}/images/bg_menu_rtl.gif");\r\n	background-position: 0 100%;\r\n}\r\n\r\n#navigation a:hover {\r\n	background-image: none;\r\n	background-color: #aabac6;\r\n	color: #BC2A4D;\r\n}\r\n\r\n#navigation #active-subsection a {\r\n	color: #D31141;\r\n	background-color: #F9F9F9;\r\n	background-image: none;\r\n}\r\n\r\n#navigation #active-subsection a:hover {\r\n	color: #D31141;\r\n}\r\n\r\n/* Preferences pane layout\r\n----------------------------------------*/\r\n#cp-main h2 {\r\n	color: #333333;\r\n}\r\n\r\n#cp-main .panel {\r\n	background-color: #F9F9F9;\r\n}\r\n\r\n#cp-main .pm {\r\n	background-color: #FFFFFF;\r\n}\r\n\r\n#cp-main span.corners-top, #cp-menu span.corners-top {\r\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\r\n}\r\n\r\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\r\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\r\n}\r\n\r\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\r\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\r\n}\r\n\r\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\r\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\r\n}\r\n\r\n/* Topicreview */\r\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\r\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\r\n}\r\n\r\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\r\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\r\n}\r\n\r\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\r\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\r\n}\r\n\r\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\r\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\r\n}\r\n\r\n/* Friends list */\r\n.cp-mini {\r\n	background-color: #eef5f9;\r\n}\r\n\r\ndl.mini dt {\r\n	color: #425067;\r\n}\r\n\r\n/* PM Styles\r\n----------------------------------------*/\r\n/* PM Message history */\r\n.current {\r\n	color: #000000 !important;\r\n}\r\n\r\n/* PM marking colours */\r\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\r\n	border-left-color: #BC2A4D;\r\n	border-right-color: #BC2A4D;\r\n}\r\n\r\n.pmlist li.pm_marked_colour, .pm_marked_colour {\r\n	border-color: #FF6600;\r\n}\r\n\r\n.pmlist li.pm_replied_colour, .pm_replied_colour {\r\n	border-color: #A9B8C2;\r\n}\r\n\r\n.pmlist li.pm_friend_colour, .pm_friend_colour {\r\n	border-color: #5D8FBD;\r\n}\r\n\r\n.pmlist li.pm_foe_colour, .pm_foe_colour {\r\n	border-color: #000000;\r\n}\r\n\r\n/* Avatar gallery */\r\n#gallery label {\r\n	background-color: #FFFFFF;\r\n	border-color: #CCC;\r\n}\r\n\r\n#gallery label:hover {\r\n	background-color: #EEE;\r\n}\r\n\r\n/*  	\r\n--------------------------------------------------------------\r\nColours and backgrounds for forms.css\r\n-------------------------------------------------------------- */\r\n\r\n/* General form styles\r\n----------------------------------------*/\r\nselect {\r\n	border-color: #666666;\r\n	background-color: #FAFAFA;\r\n	color: #000;\r\n}\r\n\r\nlabel {\r\n	color: #425067;\r\n}\r\n\r\noption.disabled-option {\r\n	color: graytext;\r\n}\r\n\r\n/* Definition list layout for forms\r\n---------------------------------------- */\r\ndd label {\r\n	color: #333;\r\n}\r\n\r\n/* Hover effects */\r\nfieldset dl:hover dt label {\r\n	color: #000000;\r\n}\r\n\r\nfieldset.fields2 dl:hover dt label {\r\n	color: inherit;\r\n}\r\n\r\n/* Quick-login on index page */\r\nfieldset.quick-login input.inputbox {\r\n	background-color: #F2F3F3;\r\n}\r\n\r\n/* Posting page styles\r\n----------------------------------------*/\r\n\r\n#message-box textarea {\r\n	color: #333333;\r\n}\r\n\r\n/* Input field styles\r\n---------------------------------------- */\r\n.inputbox {\r\n	background-color: #FFFFFF; \r\n	border-color: #B4BAC0;\r\n	color: #333333;\r\n}\r\n\r\n.inputbox:hover {\r\n	border-color: #11A3EA;\r\n}\r\n\r\n.inputbox:focus {\r\n	border-color: #11A3EA;\r\n	color: #0F4987;\r\n}\r\n\r\n/* Form button styles\r\n---------------------------------------- */\r\n\r\na.button1, input.button1, input.button3, a.button2, input.button2 {\r\n	color: #000;\r\n	background-color: #FAFAFA;\r\n	background-image: url("{T_THEME_PATH}/images/bg_button.gif");\r\n}\r\n\r\na.button1, input.button1 {\r\n	border-color: #666666;\r\n}\r\n\r\ninput.button3 {\r\n	background-image: none;\r\n}\r\n\r\n/* Alternative button */\r\na.button2, input.button2, input.button3 {\r\n	border-color: #666666;\r\n}\r\n\r\n/* <a> button in the style of the form buttons */\r\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\r\n	color: #000000;\r\n}\r\n\r\n/* Hover states */\r\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\r\n	border-color: #BC2A4D;\r\n	color: #BC2A4D;\r\n}\r\n\r\ninput.search {\r\n	background-image: url("{T_THEME_PATH}/images/icon_textbox_search.gif");\r\n}\r\n\r\ninput.disabled {\r\n	color: #666666;\r\n}\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `dc_topics`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- Dumping data for table `dc_topics`
--

INSERT INTO `dc_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_approved`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_replies`, `topic_replies_real`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`) VALUES
(1, 2, 0, 0, 1, 0, 'Welkom bij phpBB3', 2, 1327581813, 0, 4, 0, 0, 0, 0, 1, 'nyxus', 'AA0000', 1, 2, 'nyxus', 'AA0000', 'Welkom bij phpBB3', 1327581813, 1351970260, 0, 0, 0, '', 0, 0, 1, 0, 0),
(2, 2, 0, 0, 1, 0, 'gatus test', 2, 1332762423, 0, 20, 3, 3, 0, 0, 2, 'nyxus', 'AA0000', 9, 57, 'skizo', '', 'Re: gatus test', 1351969669, 1351970239, 0, 0, 0, '', 0, 0, 0, 0, 0),
(3, 11, 0, 0, 1, 0, 'Toepassen in het live systeem', 2, 1341251743, 0, 7, 0, 0, 0, 0, 4, 'nyxus', 'AA0000', 4, 2, 'nyxus', 'AA0000', 'Toepassen in het live systeem', 1341251743, 1351868350, 0, 0, 0, '', 0, 0, 1, 0, 0),
(6, 11, 0, 0, 1, 0, 'Toekomst muziek activiteiten systeem', 2, 1341999658, 0, 9, 0, 0, 0, 0, 8, 'nyxus', 'AA0000', 8, 2, 'nyxus', 'AA0000', 'Toekomst muziek activiteiten systeem', 1341999658, 1351970136, 0, 0, 0, '', 0, 0, 0, 0, 0),
(7, 14, 0, 1, 1, 0, 'De Woningzoeker; studenten gedupeerd!', 57, 1351970382, 0, 5, 2, 2, 0, 0, 10, 'skizo', '', 15, 57, 'skizo', '', 'Re: De Woningzoeker; studenten gedupeerd!', 1351971602, 1351971617, 0, 0, 0, '', 0, 0, 1, 0, 0),
(8, 14, 0, 0, 1, 0, 'Huwelijk Bas Rutgers en Margreet Houtman', 57, 1351970702, 0, 1, 0, 0, 0, 0, 11, 'skizo', '', 11, 57, 'skizo', '', 'Huwelijk Bas Rutgers en Margreet Houtman', 1351970702, 1351970706, 0, 0, 0, '', 0, 0, 1, 0, 0),
(9, 14, 0, 1, 1, 0, 'Tussentijdse ALV 7 juni', 58, 1351971088, 0, 10, 1, 1, 0, 0, 13, 'lmd', '', 14, 57, 'skizo', '', 'Re: Tussentijdse ALV 7 juni', 1351971352, 1351979932, 0, 0, 0, '', 0, 0, 1, 0, 0),
(10, 15, 0, 0, 1, 0, 'Hebben we zin in het nieuwe schooljaar?', 57, 1351971725, 0, 2, 0, 0, 0, 0, 16, 'skizo', '', 16, 57, 'skizo', '', 'Hebben we zin in het nieuwe schooljaar?', 1351971725, 1351971869, 0, 0, 0, 'Hebben we zin in het nieuwe schooljaar?', 1351971725, 1209600, 1, 1351971871, 0),
(11, 15, 0, 0, 1, 0, 'Sinterklaas of Kerstman', 58, 1351971801, 0, 2, 0, 0, 0, 0, 17, 'lmd', '', 17, 58, 'lmd', '', 'Sinterklaas of Kerstman', 1351971801, 1351971861, 0, 0, 0, 'Sinterklaas of Kerstman?', 1351971801, 0, 1, 1351971863, 0),
(12, 15, 0, 0, 1, 0, 'Is het al weer tijd voor een kerstboom in plaza?', 57, 1351971804, 0, 2, 0, 0, 0, 0, 18, 'skizo', '', 18, 57, 'skizo', '', 'Is het al weer tijd voor een kerstboom in plaza?', 1351971804, 1351977634, 0, 0, 0, 'Is het al weer tijd voor een kerstboom in plaza?', 1351971804, 0, 1, 1351975733, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_topics_posted`
--

CREATE TABLE IF NOT EXISTS `dc_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dc_topics_posted`
--

INSERT INTO `dc_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 6, 1),
(57, 2, 1),
(57, 7, 1),
(57, 8, 1),
(57, 9, 1),
(57, 10, 1),
(57, 12, 1),
(58, 7, 1),
(58, 9, 1),
(58, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dc_topics_track`
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
-- Dumping data for table `dc_topics_track`
--

INSERT INTO `dc_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
(2, 6, 11, 1348939320),
(58, 7, 14, 1351971602),
(58, 9, 14, 1351971502),
(58, 11, 15, 1351971801);

-- --------------------------------------------------------

--
-- Table structure for table `dc_topics_watch`
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
-- Table structure for table `dc_users`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

--
-- Dumping data for table `dc_users`
--

INSERT INTO `dc_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_pass_convert`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dst`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_from`, `user_icq`, `user_aim`, `user_yim`, `user_msnm`, `user_jabber`, `user_website`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '00000000003khra3nk0jz6rk\ni1cjyo000000\ni1cjyo000000\n\n\n\n\n\n\n\n\n\n\ni1cjyo000000\ni1cjyo000000\ni1cjyo000000', 0, '', 1327581813, 'Anonymous', 'anonymous', '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '922a8bd887906291', 1, 0, 0),
(2, 3, 5, '', 0, '192.168.178.17', 1327581813, 'nyxus', 'nyxus', '$H$9t7EaCr75Bc4dUu4X1lVKcM5cxuI8q1', 0, 0, 'gercoversloot@gmail.com', 245388321323, '', 1351966265, 0, 1341999658, 'adm/index.php?i=1', '', 0, 0, 0, 0, 0, 0, 6, 'en', '1.00', 1, 'D d M Y, H:i', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24a8ff8217fbdefb', 0, 0, 0),
(3, 2, 6, '', 0, '', 1327581827, 'AdsBot [Google]', 'adsbot [google]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0dc67ce8e3a21993', 0, 0, 0),
(4, 2, 6, '', 0, '', 1327581827, 'Alexa [Bot]', 'alexa [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7e70edc6d5c26ebd', 0, 0, 0),
(5, 2, 6, '', 0, '', 1327581827, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'db73d733ad7d6ea1', 0, 0, 0),
(6, 2, 6, '', 0, '', 1327581827, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c870dcc09f25a670', 0, 0, 0),
(7, 2, 6, '', 0, '', 1327581827, 'Baidu [Spider]', 'baidu [spider]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20b68beee5a1ecf6', 0, 0, 0),
(8, 2, 6, '', 0, '', 1327581827, 'Bing [Bot]', 'bing [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8e46bd70091c18a0', 0, 0, 0),
(9, 2, 6, '', 0, '', 1327581827, 'Exabot [Bot]', 'exabot [bot]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fdc552030fe73461', 0, 0, 0),
(10, 2, 6, '', 0, '', 1327581827, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1327581827, 0, '', 0, '', 0, 1327581827, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b6229c60dfc64741', 0, 0, 0),
(11, 2, 6, '', 0, '', 1327581828, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '07affed6fc6b6fe8', 0, 0, 0),
(12, 2, 6, '', 0, '', 1327581828, 'Francis [Bot]', 'francis [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9b56e3e6caa96147', 0, 0, 0),
(13, 2, 6, '', 0, '', 1327581828, 'Gigabot [Bot]', 'gigabot [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '900f557d4521c38c', 0, 0, 0),
(14, 2, 6, '', 0, '', 1327581828, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b19789acff6c8bb6', 0, 0, 0),
(15, 2, 6, '', 0, '', 1327581828, 'Google Desktop', 'google desktop', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7645994dfb3b6437', 0, 0, 0),
(16, 2, 6, '', 0, '', 1327581828, 'Google Feedfetcher', 'google feedfetcher', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'efad5c4cd3bfa7e4', 0, 0, 0),
(17, 2, 6, '', 0, '', 1327581828, 'Google [Bot]', 'google [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5f15b503dfcb4a1b', 0, 0, 0),
(18, 2, 6, '', 0, '', 1327581828, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c2a2441491488227', 0, 0, 0),
(19, 2, 6, '', 0, '', 1327581828, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5f5aa7d2b8f96d99', 0, 0, 0),
(20, 2, 6, '', 0, '', 1327581828, 'IBM Research [Bot]', 'ibm research [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '47ff0d7e1ead181d', 0, 0, 0),
(21, 2, 6, '', 0, '', 1327581828, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '49f76cf98033c2e2', 0, 0, 0),
(22, 2, 6, '', 0, '', 1327581828, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f1d471ba630b9758', 0, 0, 0),
(23, 2, 6, '', 0, '', 1327581828, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3da661edd831d6ec', 0, 0, 0),
(24, 2, 6, '', 0, '', 1327581828, 'Metager [Bot]', 'metager [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '874c7b9a5b8e45b0', 0, 0, 0),
(25, 2, 6, '', 0, '', 1327581828, 'MSN NewsBlogs', 'msn newsblogs', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2788c40feab60312', 0, 0, 0),
(26, 2, 6, '', 0, '', 1327581828, 'MSN [Bot]', 'msn [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c9341b13dfa5aa1d', 0, 0, 0),
(27, 2, 6, '', 0, '', 1327581828, 'MSNbot Media', 'msnbot media', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'af65427f9def6694', 0, 0, 0),
(28, 2, 6, '', 0, '', 1327581828, 'NG-Search [Bot]', 'ng-search [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1529c2a1e30e4927', 0, 0, 0),
(29, 2, 6, '', 0, '', 1327581828, 'Nutch [Bot]', 'nutch [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15504ff16a6b83b8', 0, 0, 0),
(30, 2, 6, '', 0, '', 1327581828, 'Nutch/CVS [Bot]', 'nutch/cvs [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b7b14984a5fb8dd0', 0, 0, 0),
(31, 2, 6, '', 0, '', 1327581828, 'OmniExplorer [Bot]', 'omniexplorer [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '84a1cf6b8a0a7591', 0, 0, 0),
(32, 2, 6, '', 0, '', 1327581828, 'Online link [Validator]', 'online link [validator]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '27cfdc3bbe47adc2', 0, 0, 0),
(33, 2, 6, '', 0, '', 1327581828, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9b8681ef84586210', 0, 0, 0),
(34, 2, 6, '', 0, '', 1327581828, 'Seekport [Bot]', 'seekport [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1c71f14091970790', 0, 0, 0),
(35, 2, 6, '', 0, '', 1327581828, 'Sensis [Crawler]', 'sensis [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '65ca9fa8aa0d61cf', 0, 0, 0),
(36, 2, 6, '', 0, '', 1327581828, 'SEO Crawler', 'seo crawler', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'edf2fd498638ec96', 0, 0, 0),
(37, 2, 6, '', 0, '', 1327581828, 'Seoma [Crawler]', 'seoma [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '82ff21b571055127', 0, 0, 0),
(38, 2, 6, '', 0, '', 1327581828, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '576dc795a5726807', 0, 0, 0),
(39, 2, 6, '', 0, '', 1327581828, 'Snappy [Bot]', 'snappy [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f43b216a515d8522', 0, 0, 0),
(40, 2, 6, '', 0, '', 1327581828, 'Steeler [Crawler]', 'steeler [crawler]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6646935abf66c24e', 0, 0, 0),
(41, 2, 6, '', 0, '', 1327581828, 'Synoo [Bot]', 'synoo [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '44b2e3fecfc4414b', 0, 0, 0),
(42, 2, 6, '', 0, '', 1327581828, 'Telekom [Bot]', 'telekom [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ace5f550f005363f', 0, 0, 0),
(43, 2, 6, '', 0, '', 1327581828, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a7c154d936bfb440', 0, 0, 0),
(44, 2, 6, '', 0, '', 1327581828, 'Voyager [Bot]', 'voyager [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ae84e9c3bb746577', 0, 0, 0),
(45, 2, 6, '', 0, '', 1327581828, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0347c328e1097eb1', 0, 0, 0),
(46, 2, 6, '', 0, '', 1327581828, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3c011b69125e90f2', 0, 0, 0),
(47, 2, 6, '', 0, '', 1327581828, 'W3C [Validator]', 'w3c [validator]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '158d4de273447a98', 0, 0, 0),
(48, 2, 6, '', 0, '', 1327581828, 'WiseNut [Bot]', 'wisenut [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e6cb80c9e6c48966', 0, 0, 0),
(49, 2, 6, '', 0, '', 1327581828, 'YaCy [Bot]', 'yacy [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4848640ca6672d88', 0, 0, 0),
(50, 2, 6, '', 0, '', 1327581828, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e3edd4db707fc6a1', 0, 0, 0),
(51, 2, 6, '', 0, '', 1327581828, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9e471537392d294e', 0, 0, 0),
(52, 2, 6, '', 0, '', 1327581828, 'Yahoo [Bot]', 'yahoo [bot]', '', 1327581828, 0, '', 0, '', 0, 1327581828, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cd0c8aa7abf125d7', 0, 0, 0),
(53, 2, 6, '', 0, '', 1327581829, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1327581829, 0, '', 0, '', 0, 1327581829, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '0.00', 0, 'D d M Y, H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b7c9ee68e45e9877', 0, 0, 0),
(54, 0, 2, '', 0, '192.168.178.17', 1327933308, 'test', 'test', '$H$9.FVdBvUUGyvGoWARrXxP9uTDohrL31', 1327933308, 0, 'test@test.com', 67648593413, '', 1351948626, 1327933308, 1341925197, 'grouplist.php?mode=searchgroup&separator=,&exclude_groups=BOTS,REGISTERED_COPPA,NEWLY_REGISTERED&form=acp_activity_new&field=add_group_manager', '', 0, 0, 0, 0, 0, 0, 0, 'nl', '1.00', 0, 'D d M Y, H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e03fbec1b1e9cce0', 1, 0, 0),
(55, 3, 5, '', 0, '192.168.178.20', 1332187746, 'wrdallinga', 'wrdallinga', '$H$9LNcLYLH7ZHFlDXjCXtiXvieNBzqD11', 1332187746, 0, 'w.r.dallinga@gmail.com', 65577414522, '', 1332192949, 1332187746, 0, 'adm/index.php?i=forums&icat=7&mode=manage&parent_id=0', '', 0, 0, 0, 0, 0, 0, 0, 'en', '1.00', 0, 'D d M Y, H:i', 1, 0, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bf203ad33551960e', 1, 0, 0),
(56, 3, 5, '', 0, '127.0.0.1', 1340751050, 'DigitaleCommissie', 'digitalecommissie', '$H$9h/kT6jQHfxsF/6TfXTc.sIbWtXyYH.', 1340751050, 0, 'dc@gumbo-millennium.nl', 45545798822, '', 1341925253, 1340751050, 1341925251, 'viewforum.php?f=2', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D d M Y, H:i', 1, 0, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c1e8e821981653f3', 1, 0, 0),
(57, 3, 2, '005m9rzik0zjzik0xvsku6f4\ni1cjyo000000\nzik0zjzhb2tc\n\n\n\n\n\n000000000000\n\ni1cjyo000000\nzik0zi000000\nzik0zi000000\nzik0zi000000\nqlc4pi000000\nzik0zi000000\nzik0zi000000', 0, '::1', 1351951710, 'skizo', 'skizo', '$H$94erZCHwkeR8iVN6BQkf8XI2y5550f/', 1351951710, 0, 'skizo1989@gmail.com', 287305852919, '', 1351973608, 1351951710, 1351971804, 'index.php', '', 1351970615, 0, 0, 0, 0, 0, 7, 'en', '1.00', 1, 'D d M Y, H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e6d6b18789a82992', 0, 0, 0),
(58, 3, 2, '005m9rzik0zjzik0xvsku6f4\ni1cjyo000000\nzik0zjzhb2tc\n\n\n\n\n\n000000000000\n\ni1cjyo000000\nzik0zi000000\nzik0zi000000\nzik0zi000000\nqlc4pi000000\nzik0zi000000\nzik0zi000000', 0, '::1', 1351952047, 'lmd', 'lmd', '$H$9D/38eK91lYWpdukOog02jSI7oWmMd0', 1351952047, 0, 'lmd.p0cus@gmail.com', 374677755919, ' 8-11-1928', 1351976104, 1351952047, 1351971801, 'index.php', '', 0, 0, 0, 0, 0, 0, 3, 'en', '1.00', 1, 'D d M Y, H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e6f7737cff112656', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_user_group`
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
-- Dumping data for table `dc_user_group`
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
(5, 56, 1, 0),
(15, 2, 0, 0),
(16, 54, 0, 0),
(2, 57, 0, 0),
(5, 57, 0, 0),
(15, 57, 0, 0),
(2, 58, 0, 0),
(5, 58, 0, 0),
(15, 58, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dc_warnings`
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
-- Table structure for table `dc_words`
--

CREATE TABLE IF NOT EXISTS `dc_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dc_zebra`
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
-- Structure for view `dc_activity_comming_active`
--
DROP TABLE IF EXISTS `dc_activity_comming_active`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dc_activity_comming_active` AS select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`start_datetime` AS `startdate` from `dc_activity` `a` where ((`a`.`start_datetime` >= now()) and (`a`.`active` = 1));

-- --------------------------------------------------------

--
-- Structure for view `dc_activity_full_list_active`
--
DROP TABLE IF EXISTS `dc_activity_full_list_active`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dc_activity_full_list_active` AS select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`start_datetime` AS `startdate` from `dc_activity` `a` where (`a`.`active` = 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dc_activity_chancelog`
--
ALTER TABLE `dc_activity_chancelog`
  ADD CONSTRAINT `fk_Activity_chance_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dc_activity_enroll`
--
ALTER TABLE `dc_activity_enroll`
  ADD CONSTRAINT `fk_enroll_user_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `dc_activity_errorlog`
--
ALTER TABLE `dc_activity_errorlog`
  ADD CONSTRAINT `fk_Activity_Error_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dc_activity_groupacces`
--
ALTER TABLE `dc_activity_groupacces`
  ADD CONSTRAINT `fk_Activity_show_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dc_activity_group_manage`
--
ALTER TABLE `dc_activity_group_manage`
  ADD CONSTRAINT `fk_Activity_show_Activity10` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dc_activity_read`
--
ALTER TABLE `dc_activity_read`
  ADD CONSTRAINT `fk_Activaty_read_Activity1` FOREIGN KEY (`activity_id`) REFERENCES `dc_activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
