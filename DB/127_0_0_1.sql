-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `calendar`
--

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_calendars`
--

CREATE TABLE IF NOT EXISTS `phpc_calendars` (
`cid` int(11) unsigned NOT NULL,
  `hours_24` tinyint(1) NOT NULL DEFAULT '0',
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `week_start` tinyint(1) NOT NULL DEFAULT '0',
  `subject_max` smallint(5) unsigned NOT NULL DEFAULT '50',
  `events_max` tinyint(4) unsigned NOT NULL DEFAULT '8',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PHP-Calendar',
  `anon_permission` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `phpc_calendars`
--

INSERT INTO `phpc_calendars` (`cid`, `hours_24`, `date_format`, `week_start`, `subject_max`, `events_max`, `title`, `anon_permission`, `timezone`, `language`, `theme`) VALUES
(1, 1, 2, 1, 50, 8, 'PHP-Calendar', 3, 'Europe/Sofia', 'bg', '');

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_categories`
--

CREATE TABLE IF NOT EXISTS `phpc_categories` (
`catid` int(11) unsigned NOT NULL,
  `cid` int(11) unsigned NOT NULL,
  `gid` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_events`
--

CREATE TABLE IF NOT EXISTS `phpc_events` (
`eid` int(11) unsigned NOT NULL,
  `cid` int(11) unsigned NOT NULL,
  `owner` int(11) unsigned NOT NULL DEFAULT '1',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `catid` int(11) unsigned DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=79 ;

--
-- Схема на данните от таблица `phpc_events`
--

INSERT INTO `phpc_events` (`eid`, `cid`, `owner`, `subject`, `description`, `readonly`, `catid`, `ctime`, `mtime`) VALUES
(1, 1, 1, 'EVENT 3 EVENT 3 EVENT 3EVENT 3', ' EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3 EVENT DESCRIPTION 3', 0, NULL, '2014-08-09 09:23:16', NULL),
(78, 1, 1, 'kmp', 'kokómm', 0, NULL, '2014-08-14 18:35:50', NULL),
(4, 1, 1, 'EVENT 6', ' EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6 EVENT DESCRIPTION 6', 0, NULL, '2014-08-09 09:23:16', NULL),
(5, 1, 1, 'EVENT 7', ' EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7 EVENT DESCRIPTION 7', 0, NULL, '2014-08-09 09:23:16', NULL),
(6, 1, 1, 'EVENT 8', ' EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8 EVENT DESCRIPTION 8', 0, NULL, '2014-08-09 09:23:16', NULL),
(7, 1, 1, 'EVENT 9', ' EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9 EVENT DESCRIPTION 9', 0, NULL, '2014-08-09 09:23:16', NULL),
(8, 1, 1, 'EVENT 10', ' EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10 EVENT DESCRIPTION 10', 0, NULL, '2014-08-09 09:23:16', NULL),
(9, 1, 1, 'EVENT 11', ' EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11 EVENT DESCRIPTION 11', 0, NULL, '2014-08-09 09:23:16', NULL),
(10, 1, 1, 'EVENT 12', ' EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12 EVENT DESCRIPTION 12', 0, NULL, '2014-08-09 09:23:16', NULL),
(11, 1, 1, 'EVENT 13', ' EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13 EVENT DESCRIPTION 13', 0, NULL, '2014-08-09 09:23:16', NULL),
(12, 1, 1, 'EVENT 14', ' EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14 EVENT DESCRIPTION 14', 0, NULL, '2014-08-09 09:23:16', NULL),
(13, 1, 1, 'EVENT 15', ' EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15 EVENT DESCRIPTION 15', 0, NULL, '2014-08-09 09:23:16', NULL),
(14, 1, 1, 'EVENT 16', ' EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16 EVENT DESCRIPTION 16', 0, NULL, '2014-08-09 09:23:16', NULL),
(15, 1, 1, 'EVENT 17', ' EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17 EVENT DESCRIPTION 17', 0, NULL, '2014-08-09 09:23:16', NULL),
(16, 1, 1, 'EVENT 18', ' EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18 EVENT DESCRIPTION 18', 0, NULL, '2014-08-09 09:23:16', NULL),
(17, 1, 1, 'EVENT 19', ' EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19 EVENT DESCRIPTION 19', 0, NULL, '2014-08-09 09:23:16', NULL),
(18, 1, 1, 'EVENT 20', ' EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20 EVENT DESCRIPTION 20', 0, NULL, '2014-08-09 09:23:16', NULL),
(19, 1, 1, 'EVENT 21', ' EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21 EVENT DESCRIPTION 21', 0, NULL, '2014-08-09 09:23:16', NULL),
(20, 1, 1, 'EVENT 22', ' EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22 EVENT DESCRIPTION 22', 0, NULL, '2014-08-09 09:23:16', NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_groups`
--

CREATE TABLE IF NOT EXISTS `phpc_groups` (
`gid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_logins`
--

CREATE TABLE IF NOT EXISTS `phpc_logins` (
  `uid` int(11) unsigned NOT NULL,
  `series` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `token` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `atime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `phpc_logins`
--

INSERT INTO `phpc_logins` (`uid`, `series`, `token`, `atime`) VALUES
(1, 'o4t5cF1SE9hjoOFOj7npYOgJmKtiik06e6ee_p259-E', 'o4t5cF1SE9hjoOFOj7npYOgJmKtiik06e6ee_p259-E', '2014-08-08 20:24:20'),
(1, '1KWaR308a3p3c244FmXdIZGBq6yLaEfbjJeeBkhFqa4', '1KWaR308a3p3c244FmXdIZGBq6yLaEfbjJeeBkhFqa4', '2014-08-08 20:26:41'),
(1, '0vsuTDQVKvl3-kQ_yuYterGOX1HftmF3UkCy4iCt_oU', '0vsuTDQVKvl3-kQ_yuYterGOX1HftmF3UkCy4iCt_oU', '2014-08-08 21:27:00'),
(1, '4y3Ep_mQCCaYIJDng1M7kvnXgivWI0FhoqtK8KRRnX0', 'u830T6hcSD2g7g40nAScqimU4g6nJx4NY8dgH8k4CSU', '2014-08-09 08:11:51'),
(1, 'CG9r4axNPF1JxGf2-Z2597-C-MpW3jLyFcflf8JlkuM', 'CG9r4axNPF1JxGf2-Z2597-C-MpW3jLyFcflf8JlkuM', '2014-08-09 08:23:49'),
(1, 'f-g7EuJhjUBpdlOysJpe91llFCg0m2zYYjKNgMXFvGk', 'RXAaaqiU6r2UiBgngG4box8FDzFQxd1YOBThT24BFvc', '2014-08-12 20:17:13');

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_occurrences`
--

CREATE TABLE IF NOT EXISTS `phpc_occurrences` (
`oid` int(11) unsigned NOT NULL,
  `eid` int(11) unsigned NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `time_type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=79 ;

--
-- Схема на данните от таблица `phpc_occurrences`
--

INSERT INTO `phpc_occurrences` (`oid`, `eid`, `start_date`, `end_date`, `start_ts`, `end_ts`, `time_type`) VALUES
(1, 1, NULL, NULL, '2014-08-12 09:23:16', '2014-08-13 09:23:16', 0),
(4, 4, NULL, NULL, '2014-08-15 09:23:16', '2014-08-16 09:23:16', 0),
(5, 5, NULL, NULL, '2014-08-16 09:23:16', '2014-08-17 09:23:16', 0),
(6, 6, NULL, NULL, '2014-08-17 09:23:16', '2014-08-18 09:23:16', 0),
(7, 7, NULL, NULL, '2014-08-18 09:23:16', '2014-08-19 09:23:16', 0),
(8, 8, NULL, NULL, '2014-08-19 09:23:16', '2014-08-20 09:23:16', 0),
(9, 9, NULL, NULL, '2014-08-20 09:23:16', '2014-08-21 09:23:16', 0),
(10, 10, NULL, NULL, '2014-08-21 09:23:16', '2014-08-22 09:23:16', 0),
(11, 11, NULL, NULL, '2014-08-22 09:23:16', '2014-08-23 09:23:16', 0),
(12, 12, NULL, NULL, '2014-08-23 09:23:16', '2014-08-24 09:23:16', 0),
(13, 13, NULL, NULL, '2014-08-24 09:23:16', '2014-08-25 09:23:16', 0),
(14, 14, NULL, NULL, '2014-08-25 09:23:16', '2014-08-26 09:23:16', 0),
(15, 15, NULL, NULL, '2014-08-26 09:23:16', '2014-08-27 09:23:16', 0),
(16, 16, NULL, NULL, '2014-08-27 09:23:16', '2014-08-28 09:23:16', 0),
(17, 17, NULL, NULL, '2014-08-28 09:23:16', '2014-08-29 09:23:16', 0),
(18, 18, NULL, NULL, '2014-08-29 09:23:16', '2014-08-30 09:23:16', 0),
(19, 19, NULL, NULL, '2014-08-30 09:23:16', '2014-08-31 09:23:16', 0),
(20, 20, NULL, NULL, '2014-08-31 09:23:16', '2014-09-01 09:23:16', 0),
(78, 78, NULL, NULL, '2014-08-09 14:00:00', '2014-08-09 15:00:00', 0);

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_permissions`
--

CREATE TABLE IF NOT EXISTS `phpc_permissions` (
  `cid` int(11) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `read` tinyint(1) NOT NULL,
  `write` tinyint(1) NOT NULL,
  `readonly` tinyint(1) NOT NULL,
  `modify` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `phpc_permissions`
--

INSERT INTO `phpc_permissions` (`cid`, `uid`, `read`, `write`, `readonly`, `modify`, `admin`) VALUES
(1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_user_groups`
--

CREATE TABLE IF NOT EXISTS `phpc_user_groups` (
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_users`
--

CREATE TABLE IF NOT EXISTS `phpc_users` (
`uid` int(11) unsigned NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `password_editable` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `phpc_users`
--

INSERT INTO `phpc_users` (`uid`, `username`, `password`, `admin`, `password_editable`, `timezone`, `language`, `gid`) VALUES
(1, 'Люси', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1, 1, NULL, 'BG', NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `phpc_version`
--

CREATE TABLE IF NOT EXISTS `phpc_version` (
  `version` smallint(5) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `phpc_version`
--

INSERT INTO `phpc_version` (`version`) VALUES
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phpc_calendars`
--
ALTER TABLE `phpc_calendars`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `phpc_categories`
--
ALTER TABLE `phpc_categories`
 ADD PRIMARY KEY (`catid`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `phpc_events`
--
ALTER TABLE `phpc_events`
 ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `phpc_groups`
--
ALTER TABLE `phpc_groups`
 ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `phpc_logins`
--
ALTER TABLE `phpc_logins`
 ADD PRIMARY KEY (`uid`,`series`);

--
-- Indexes for table `phpc_occurrences`
--
ALTER TABLE `phpc_occurrences`
 ADD PRIMARY KEY (`oid`), ADD UNIQUE KEY `eid_2` (`eid`), ADD KEY `eid` (`eid`);

--
-- Indexes for table `phpc_permissions`
--
ALTER TABLE `phpc_permissions`
 ADD UNIQUE KEY `cid` (`cid`,`uid`);

--
-- Indexes for table `phpc_users`
--
ALTER TABLE `phpc_users`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phpc_calendars`
--
ALTER TABLE `phpc_calendars`
MODIFY `cid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phpc_categories`
--
ALTER TABLE `phpc_categories`
MODIFY `catid` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpc_events`
--
ALTER TABLE `phpc_events`
MODIFY `eid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `phpc_groups`
--
ALTER TABLE `phpc_groups`
MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phpc_occurrences`
--
ALTER TABLE `phpc_occurrences`
MODIFY `oid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `phpc_users`
--
ALTER TABLE `phpc_users`
MODIFY `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Структура на таблица `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
`id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Схема на данните от таблица `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `db_alumni`
--

-- --------------------------------------------------------

--
-- Структура на таблица `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Схема на данните от таблица `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `image`) VALUES
(1, 'Нашите момичета отново първи в турнир по футзал', 'На 28 и 29 май се проведе студентски турнир по футзал за жени за купата на СУ „Св. Климент Охридски“ 2013 г. В него участваха отборите на УНСС, СУ, ЛТУ, УАСГ и ТУ. Нашите момичета бяха безапелационни и след четири победи успяха да завоюват титлата. Най-напрегнат беше мачът с отбора на СУ - финал на турнира, спечелен от отбора на УНСС с 2:1, след голове на Ива Радкова и Олга Попова.\n\nИндивидуални отличия получиха Пламена Бойчева, от УНСС - за най-атрактивен състезател, и Гергана Цанкова, от УНСС - за най-полезен състезател на турнира.\n\nТова е втората титла за годината за нашите момичета, след спечелената титла в турнира за "Купа 8 декември". По този начин с което нашите момичета не оставиха въпросителни кой е най-добрият студентски отбор по футзал за жени.  ', 'images/6ca0a_futsal_winner_women.jpg'),
(2, 'Световния шампион по кикбокс - студент в нашия университет', 'За втори път студентът Емануил Димитров стана световен шампион по кикбокс в стил Лайт контакт на първенството в Анталия. Емануил е IV курс, специалност „Финанси” в нашия университет.\n\nПо случай завоюваното първо място, ректорът проф. д.ик.н. Стати Статев връчи на шампиона почетна грамота за утвърждаване доброто име на УНСС.  На официалното връчване присъства и ректорското ръководство, което също поздрави успелия студент.\n\nЕмануил е състезател на спортен клуб „ИККЕН”. Има две европейски и две световни титли. Негов треньор е Иван Георгиев, който е и един от треньорите на националния отбор.\n\nВсеки ден студентът тренира по два часа, но когато е ангажиран в университета пропуска тежките тренировки. Занимава се със спорт от ранна детска възраст - първо започва с карате, а после се насочва и към кикбокса.\n\n"Всичко е плод и на доста загуби - или печелиш, или се учиш. Играя в два различни стила. В  Лайт контакт нямам загуби, но другият Поинт файтинг ми донесе опит и ми помогна да съм на това ниво в по-новия за мен стил.  Липсата на загуби е респектиращо за моите противници", добавя Емануил.\n\nСпортът носи удовлетвореност на шампиона и той смята да продължи с него. Замисля се и за магистратурата си в университета, тъй като тази година завършва бакалавърската си степен.', 'images/4ab85_DSC_02081.jpg'),
(4, 'Победителите в турнира по тенис на корт за Купата на ректора на УНСС', 'Ректорът на университета проф. д.ик.н. Стати Статев връчи наградите на шампионите и финалистите в Осемнадесетия турнир по тенис на корт за Купата на ректора на УНСС. На официалното награждаване присъстваха и организаторите от спортния клуб на преподавателите и служителите “Св. Георги Победоносец”.\n\nШампиони в тазгодишния турнир с 2:0 сета (6:2, 6:3) станаха доц. д-р Димитър Ненков от катедра „Финанси“ и ст. преп. Спас Ставрев, ръководител на катедра „Физическо възпитание и спорт“. Доц. Ненков за трета поредна година е сред победителите, а за ст. преп. Ставрев това е петата победа. На финала тандемът надделя над тенис-двойката проф. Димитър Димитров, ръководител на катедра „Национална и регионална сигурност“, и ст. преп. д-р Иван Стоилов от катедра “Физическо възпитание и спорт”.Решенията ви се оформят от вашите приятели и роднини. Изучаването на социалните групи разкрива колко много неща, за които смятаме, че са индивидуални, като това дали човек напълнява или спира да пуши, всъщност са колективни. Джеймс Фаулър от Калифорнийския университет и Ник Кристакис от Харвард откриват, че нашето поведение е заразно. Ако най-добрият ви приятел напълнее, вероятността вие също да напълнеете нараства с 57%. Ако близък ваш колега откаже цигарите, вероятността вие да го направите се увеличава с 34%. Понякога е най-добре да управлявате идеите си чрез други хора. Когато учени проследили успеха на служителите в компания от сектора на аеронавтиката, в това число патенти и продукти, които тези служители са пуснали на пазара, те откриват, че това какви познати има даден инженер е от огромна важност. След опита, отношенията, които един служител има, са най-големият предсказател за успеха. При хората, които поддържали отношения с колеги както нагоре, така и надолу в йерархията на компанията и в различните отдели, вероятността да успеят била най-голяма. Защо? Защото когато имаш качествени отношения с хората, можеш да комбинираш идеи и да получаваш обратна връзка, което е поредната причина щедрите хора да успяват. Може да е от полза да се поддавате и да казвате "да" на "грешния избор" от време на време. Ако се поддавате на желанията си от време на време, това може да ви вдъхва нови сили, така че да не се чувствате напълно лишен през цялото време, според New York Times. Това ви помагате да поддържате курса в дългосрочен план. Ако поемете ангажимент към някого, решението става по-лесно. Има ли решения, които не трябва да вземате точно сега или които някой друг може да вземе вместо вас? "Вместо да решават всяка сутрин дали да се насилват да спортуват или не, умните хора се уговарят редовно да спортуват заедно с приятел". Ако се подготвяте за вашите моменти на слабост, ще сте по-способни да вземате добри решения. "Вземането на добри решения не е като отличителна черта на човек, в този смисъл, че тя винаги е налице," казва Баумайстър. "Това е състояние, което се мени": Неговите проучвания показват, че хората с най-добър самоконтрол са тези, които структурират така живота си, че да запазват сила на волята. Те не насрочват безкрайни срещи една след друга. Те избягват изкушения като заведения за хранен, в който плащаш вход и после можеш да ядеш каквото си поискаш и си създават навици, които елиминират умственото усилие да се правят избори. Вместо да разчитат на това силата на волята им да не отслабва цял ден, те я съхраняват така, че да е налична в спешни случаи и при вземането на важни решения. "Хората, които са най-добри във вземането на решения, знаят кога да не се доверяват на себе си.“ Ако можете да упражнявате силата на волята си, вероятността да успявате в живота е по-голяма, според проучвания. В проучване на Станфорд от 1972 г. ученици били накарани да седят с бонбон пред тях, без да го ядат в продължение на мъчителни15 мунити. Те щели да получат допълнителен бонбон, ако издържат. Проучването открива, че учениците, които могли да дочакат втория бонбон, имали по-високи резултати на изпита SAT и по-малко от тях употребявали забранени субстанции, в сравнение с техните по-импулсивни приятели. Това обаче, което понякога изглежда като слаба сила на волята, може да бъде качествено вземане на решение. Ако изглежда, че възможността да се действа може да изчезне, може би е по-добре да се изчака. През 2012 г. Селест Кид от Университета на Рочестър публикува проучване, което оспорва експеримента с бонбона. Когато била по-млада, Кид работела периодично в приюти за бездомни и се питала как израстването в подобна нестабилна среда може да повлияе на вземането на решения. Тези деца, си мислела тя, биха изяли бонбона на момента. Не защото обаче не разполагат с достатъчно сила на волята. По-скоро това би било, защото са израснали в среда, в която не могат да вярват на възрастните, че ще спазят обещанията си. "Нашите резултати определено намаляват обществените нагласи, че експерименти като този с бонбона са много мощни начини за диагностициране на капацитета за самоконтрол," казва Кид. "Отлагането на задоволството е разумен избор, само ако детето вярва, че ще получи втория бонбон след относително кратко време." В проучването на Кид децата били накарани да мислят дали провеждащите проучването са надежни или неблагонадеждни. В една част от проучването експериментаторът дал на децата лист хартия и пастели, като им казал да използват тези материали или да изчакат за по-добри. След това дошла уловката – за едната от групите експериментаторът донесъл маркери и цветни моливи; за другата се върнал и се извинил, заявявайки, че няма по-добри материали. След това вече идва тестът с бонбона. Девет от 14 деца в групата с “надеждния” експериментатор изчакали 15 минути за втория бонбон, но само едно от 14-те деца в другата група изчакало. Урокът: това, което изглежда като сила на волята, може и да е доверие.', 'images/1038d_доц.Д.Ненков-шампионвтурнира.jpg'),
(5, 'УНСС изпревари Харвард в конкурс', 'Отборът на УНСС спечели наградата за най-добри писмени защити на JESSUP 2014 - най-престижното и старо състезание по международно право за студенти в света, пише "Преса". Надпреварата се проведе в американската столица Вашингтон.\nНашите момчета и момичета - Виктория Дочева, Екатерина Димитрушева, Ивайло Димитров, Красимира Игнатова и Траян Косев, успяха да завоюват приза Dillard. Традиционно той се присъжда на отбора, подготвил най-добрата писмена защита (мемориал) в състезание със стотици свои колеги от всички точки на света. \n\nТежката дума кой се е справил най-добре има международно жури от юристи. За да е гарантирана безпристрастността, мемориалът на нашия отбор бе оценен от съдийската комисия като по-добър от тези на първите 32 отбора в света, включително на някои от най-престижните световни университети като Харвард, Джорджтаун, Оксфорд. Българският отбор успя да надмине и шампионите от Куинсланд (Австралия). Техни треньори са Виктор Серафимов и Инна Учкунова от Сдружението за международни състезания по право.\n\n„И тази година имаме огромен наплив от желаещи да изучават право. Кандидатите са с отличен успех и от гимназиалните дипломи, и от изпитите“, отчетоха от икономическия университет. В рейтинга на висшите училища в България за 2013 г. юридическото направление при тях е заело второ място - веднага след това в СУ „Св. Климент Охридски“, който от години е несменяем фаворит на лидерската позиция в тази област.', 'images/20140731.naihjzaizw.jpg'),
(6, 'В УНСС - първи два изпита по подобие на американските SAT', 'В УНСС в столицата се провеждат първите два изпита с тестове на хартиен носител по подобие на американския SAT. Изпитите са от втората предварителна кандидатстудентска сесия.\r\n\r\nТестът по български език и литература е от 9.00 ч., а по география на България от 14.00 ч. Това съобщи пресцентърът на университета.\r\n\r\nНа двата изпита ще се явят общо 2200 кандидат-студенти. С тези тестове може да се кандидатства за всички професионални направления и поднаправления.\r\n\r\nОт УНСС припомнят, че всеки месец - от октомври 2013 г. до юни т.г. включително, във висшето училище ще се организират предварителни електронни единни приемни изпити. Всички продължават по три астрономически часа.\r\n\r\nПриемът в учебното заведение е само с успешно положен кандидатстудентски изпит и с минимален бал "добър" от дипломата за средно образование.', 'images/profile_pictures/eb2614e3c4dedb8580b30044cf67f48c2110132916.jpg');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` int(2) DEFAULT NULL,
  `start_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_teacher` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `avatar`, `sex`, `grade_type`, `grade`, `start_year`, `speciality`, `end_year`, `created`, `is_active`, `is_teacher`) VALUES
(1, 'UNSS', 'slavi104@gmail.com', 'fCryptography::password_hash#i5pGeLWRTV#4a6ca4c760b3270880d173bb920bb385795ab14a', 'images/profile_pictures/30a1670d1127adeb706d4034920854c2login_logo (1).png', 'мъж', 'Магистър', 2, '1968', 'Economics', '1972', '2014-07-26 12:13:26', 1, 1),
(5, 'Люси', 'luci123@mail.bg', 'fCryptography::password_hash#EPcf3wkBFs#0c025a5c232cb6274021071079f96b3edd713593', 'images/profile_pictures/defaultMale.png', 'мъж', 'бакалавър', 4, '2012', 'специалност', '2012', '2014-08-07 16:46:35', 0, 0),
(9, 'ru', 'rsv6910@mail.bg', 'fCryptography::password_hash#cNkx4WhvBh#2d043add5287a2c363974fd42291a0b5addaf8cb', 'images/profile_pictures/defaultMale.png', 'мъж', 'Докторант', 5, '1950', NULL, NULL, '2014-08-07 18:05:21', 0, 0),
(14, 'Test', 'Test@abv.bg', 'fCryptography::password_hash#CFgWzjvXG3#bf9f504a54cd72551f8e7fae6bc355322986365a', 'images/profile_pictures/defaultMale.png', 'мъж', 'Бакалавър', 4, '2010', 'Test', '2014', '2014-08-12 19:02:03', 1, 0),
(15, 'Lyudmiltest', 'testtest@abv.bg', 'fCryptography::password_hash#wNlYb5uJ4K#451b8d481691d5dff34e8488eee4b6181e5bbab6', 'images/profile_pictures/defaultMale.png', 'мъж', 'Бакалавър', 4, '2010', 'testtest', '2014', '2014-08-12 19:04:45', 1, 0),
(16, '123test', '123test@abv.bg', 'fCryptography::password_hash#3TEGhGX0Af#286549b7f5e5b4da2f8937dfef9f08f461cd409c', 'images/profile_pictures/defaultMale.png', 'мъж', 'Бакалавър', 4, '2010', '123test', '2014', '2014-08-12 19:06:44', 1, 0),
(17, '12345test', '12345test', 'fCryptography::password_hash#1KIgwQvpmt#9a88c8930254faf99eec8a3a831419b6064e765d', 'images/profile_pictures/67ce2cf42f3575190f1a16e5740c1c52banski_3.jpg', 'мъж', 'Бакалавър', 3, '1950', '12345test', '1955', '2014-08-12 19:08:29', 1, 0),
(21, 'teacher', 'teacher@abv.bg', 'fCryptography::password_hash#p68S7vJJS5#b298ae3f09285bf2d792e7d681a2852f5229a51e', 'images/profile_pictures/defaultMale.png', 'мъж', 'Докторант', NULL, '1950', NULL, '1955', '2014-08-13 18:09:23', 1, 1),
(22, 'Prepodavatel', 'prep@dbv.com', 'fCryptography::password_hash#4J6u9oCDQS#ca56dd829bb6f4d32fa3f2506eb9c15cf020dbdb', 'images/profile_pictures/defaultMale.png', 'мъж', NULL, NULL, '1950', 'Economics', '1955', '2014-08-13 18:49:44', 1, 1),
(23, 'nevi22', 'nevi2210@gmail,com', 'fCryptography::password_hash#CTd29F7sss#5d19592f7bb5b6efaaebe394a2bc2330079ba524', 'images/profile_pictures/defaultFemale.png', 'жена', 'Бакалавър', 2, '2012', 'Computer science', '2016', '2014-08-14 16:03:02', 1, 0),
(24, 'Lyudmil123', 'lzdravkov90@gmail.com', 'fCryptography::password_hash#Z4Omu1mgBg#06099921cdec57051de50e9974d76e1fb93c65f8', 'images/profile_pictures/defaultMale.png', 'мъж', 'Бакалавър', 5, '2014', 'Biznes informatika', '2019', '2014-08-18 16:19:47', 1, 0),
(25, 'Unss', 'unss@abv.bg', 'fCryptography::password_hash#idpguRMG4W#e801a705c01ccbbe2eb70f7324d0d0c2abb65d66', 'images/profile_pictures/defaultMale.png', 'мъж', 'Бакалавър', 4, '2014', 'Biznes informatika', '2019', '2014-08-18 16:21:44', 1, 0),
(26, 'testnormaln', 'testnormal@abv.bg', 'fCryptography::password_hash#zB9M3AorEc#ad0552476251a5de11757091da1a8082d1e52c06', 'images/profile_pictures/defaultMale.png', 'мъж', 'Бакалавър', 4, '2014', 'Бизнес Информатика', '2019', '2014-08-18 16:23:27', 1, 0),
(27, 'slavi111', 'slavi1@avc.com', 'fCryptography::password_hash#BTQYCEDl6m#58e68a84fb06b7958c5694fa9f44fbcddc2df698', 'images/profile_pictures/defaultFemale.png', 'жена', 'Докторант', 5, '2014', 'aaa', '2019', '2014-08-18 16:25:15', 1, 0),
(28, 'tester', 'tester@tester.com', 'fCryptography::password_hash#G3vT48Bf5k#e5027255bb1d67746a6312952f39ce1556155dc9', 'images/profile_pictures/7b73f8c513f044488b2b64e8c76b1497090720123698.jpg', 'жена', 'Докторант', 4, '2014', 'dddd', '2019', '2014-08-18 16:27:13', 0, 0),
(29, 'profil123', 'profil@abv.bg', 'fCryptography::password_hash#ccytfwHK4r#c97c802180ff573f571f89e63973465cea9d4be7', 'images/profile_pictures/defaultMale.png', 'мъж', 'Бакалавър', 4, '2014', 'Бизнес Информатика', '2019', '2014-08-18 16:31:47', 1, 0),
(30, 'slavi9999', 'slavi7777@abv.bg', 'fCryptography::password_hash#GcfCpGm1DY#b6a77dc32f1fb475d7d20909a2a29e517220efbb', 'images/profile_pictures/defaultMale.png', 'мъж', 'Магистър', 3, '2014', 'ooooo', '2019', '2014-08-18 16:36:49', 1, 0),
(31, 'prepodavatel123', 'prepodavatel@unss.com', 'fCryptography::password_hash#09glTuka06#ac65e1a8f3598b488129bb861d7baf28a0ca72cf', 'images/profile_pictures/defaultMale.png', 'мъж', NULL, NULL, '2014', 'Бизнес Информатика', '2019', '2014-08-18 16:42:17', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;--
-- Database: `e_shop`
--

-- --------------------------------------------------------

--
-- Структура на таблица `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `step_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Схема на данните от таблица `categories`
--

INSERT INTO `categories` (`id`, `name`, `step_category`) VALUES
(13, 'Блузи', '{"step_category_name1":"\\u041c\\u044a\\u0436\\u043a\\u0438","step_category_name2":"\\u0414\\u0435\\u0442\\u0441\\u043a\\u0438","step_category_name3":"\\u0414\\u0430\\u043c\\u0441\\u043a\\u0438"}'),
(14, 'Дънки', '{"step_category_name1":"\\u041c\\u044a\\u0436\\u043a\\u0438","step_category_name2":"\\u0414\\u0435\\u0442\\u0441\\u043a\\u0438","step_category_name3":"\\u0414\\u0430\\u043c\\u0441\\u043a\\u0438"}'),
(15, 'Тениски', '{"step_category_name1":"\\u0414\\u0430\\u043c\\u0441\\u043a\\u0438","step_category_name2":"\\u041c\\u044a\\u0436\\u043a\\u0438","step_category_name3":"\\u0414\\u0435\\u0442\\u0441\\u043a\\u0438"}'),
(16, 'Автомобили', '{"step_category_name1":"BMW","step_category_name2":"Audi"}');

-- --------------------------------------------------------

--
-- Структура на таблица `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'лв',
  `info` text COLLATE utf8_unicode_ci,
  `created` date DEFAULT NULL,
  `valid` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `step_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Схема на данните от таблица `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `currency`, `info`, `created`, `valid`, `is_active`, `user_id`, `images`, `category`, `step_category`) VALUES
(4, 'Вталена блуза тип потник', '32.00', 'лв', 'За поръчка над 10 бр. 10% отстъпка от цената!', '2015-03-22', '2015-03-30', 1, 8, 'images/item_pictures/gallery1.jpg@images/item_pictures/recommend1.jpg', '13', 'Дамски'),
(5, 'Потник', '28.00', 'лв', 'За поръчка над 10 бр. 10% отстъпка от цената!', '2015-03-22', '2015-03-30', 1, 8, 'images/item_pictures/recommend1.jpg', '13', 'Детски'),
(6, 'Тениска с яка', '24.00', 'лв', 'За повече позвънете на 0855655658', '2015-03-22', '2015-03-29', 1, 8, 'images/item_pictures/gallery2.jpg@images/item_pictures/product2.jpg', '15', 'Мъжки'),
(7, 'Тениски различни видове', '18.00', 'лв', 'За повече позвънете на 0855655658', '2015-03-22', '2015-10-11', 1, 8, 'images/item_pictures/product2.jpg@images/item_pictures/shipping.jpg', '15', 'Детски'),
(8, 'Рокли', '24.99', 'лв', 'За повече позвънете на 0855655658', '2015-03-22', '2015-10-11', 1, 8, 'images/item_pictures/girl1.jpg', '15', 'Дамски'),
(9, 'BMW 1.6', '2000.00', 'лв', 'С газова уредба. Лек коментар на цената!', '2015-03-22', '2015-06-26', 1, 8, 'images/item_pictures/2015-02-28 12.10.08.jpg@images/item_pictures/2015-02-28 12.10.33.jpg@images/item_pictures/2015-02-28 12.08.09.jpg', '16', 'BMW');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'person',
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_data` text COLLATE utf8_unicode_ci,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `avatar`, `created`, `is_active`, `user_type`, `address`, `phone`, `contact_data`, `birthday`) VALUES
(2, 'Slavi', 'slavi104@gmail.com', 'fCryptography::password_hash#JvkXl1Zu4B#19dc497e8659e721732236ee95164128974c8fe3', 'images/profile_pictures/61776db3244872ab64a79135bd98d0e72014-10-11 14.17.14.jpg', '2015-02-15 11:46:10', 1, 'person', 'Перник', '0898827916', 'Нямам инфо1', '1993-04-10'),
(3, 'TestReg', 'New@abv.bg', 'fCryptography::password_hash#6TZEFfJ0Rw#941186c1b290a1d65b7afe52c1d9c4c0505d41f6', NULL, '2015-02-15 12:05:48', 1, 'person', NULL, NULL, NULL, NULL),
(4, 'TestSlavi', 'slavi105@gmail.com', 'fCryptography::password_hash#ty8LC5q4Lz#0cf0d3fbe9c5ffc2793d5c4ab21fbe718c577b69', NULL, '2015-02-21 17:16:09', 1, 'person', 'Add info', '0898525411', NULL, NULL),
(5, 'ttttttttt', 'tttttttttttt', 'fCryptography::password_hash#gx6ZgKahsb#e9aa661f18991df624dceb775bdfc3afe0744acc', NULL, '2015-02-21 17:18:40', 1, 'person', 'rrrrrrrrrrrrrrreeeeeeeeeee', '1234567', 'rrrrrrrrrrggggggggggggggggggg', NULL),
(6, 'rrrrrrrrrrr', 'rrrrrrrrrrrrrrrrrrr', 'fCryptography::password_hash#ku8faE8bVP#0d0f87ea36802a764f977541e2b3542dacc3d3fc', NULL, '2015-02-21 17:21:57', 1, 'person', 'xxxxxxxxxxxxxxxxx', '2222222222', 'ccccccccccccccc', '2018-10-01'),
(7, 'TestCompany', 'testCom@ddd.com', 'fCryptography::password_hash#4yHwH0WAat#cfa8a54604bf8d88a0434eb1205bd079930f795c', NULL, '2015-02-21 17:41:33', 1, 'company', 'sfsdfsdf', '9854545454', 'hfghfghfgh', '2009-04-28'),
(8, 'Slaviii', 'slavi106@gmail.com', 'fCryptography::password_hash#JvkXl1Zu4B#19dc497e8659e721732236ee95164128974c8fe3', 'images/profile_pictures/3954f43f9428a517285f7a43df12198b2014-10-11 14.17.12.jpg', '2015-02-26 20:48:32', 1, 'person', NULL, '0898827916', NULL, '2015-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;--
-- Database: `myhomepage_ruby`
--

-- --------------------------------------------------------

--
-- Структура на таблица `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
`menu_id` int(11) NOT NULL,
  `menu_type` tinyint(1) NOT NULL DEFAULT '0',
  `menu_name` varchar(45) NOT NULL,
  `menu_link` varchar(45) NOT NULL,
  `menu_for_logged` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Схема на данните от таблица `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_type`, `menu_name`, `menu_link`, `menu_for_logged`) VALUES
(1, 0, 'Login', '../user/login', 0),
(2, 0, 'Register', '../register', 0),
(3, 0, 'News', '../news', 0),
(4, 1, 'Bookmarks', '../bookmarks', 0),
(5, 0, 'Most Visited', '../chart/most_visited', 1),
(6, 0, 'News', '../news', 1),
(7, 1, 'Profile', '../user/profile', 0),
(8, 1, 'Logout', '../user/logout', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
 ADD PRIMARY KEY (`menu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Структура на таблица `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
`id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
`id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=21 ;

--
-- Схема на данните от таблица `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'e_shop', 'users', 'user_type', '', '', '_', ''),
(2, 'e_shop', 'users', 'address', '', '', '_', ''),
(3, 'e_shop', 'users', 'phone', '', '', '_', ''),
(4, 'e_shop', 'users', 'contact_data', '', '', '_', ''),
(5, 'e_shop', 'users', 'birthday', '', '', '_', ''),
(6, 'e_shop', 'items', 'id', '', '', '_', ''),
(7, 'e_shop', 'items', 'name', '', '', '_', ''),
(8, 'e_shop', 'items', 'price', '', '', '_', ''),
(9, 'e_shop', 'items', 'currency', '', '', '_', ''),
(10, 'e_shop', 'items', 'info', '', '', '_', ''),
(11, 'e_shop', 'items', 'created', '', '', '_', ''),
(12, 'e_shop', 'items', 'valid', '', '', '_', ''),
(13, 'e_shop', 'items', 'is_active', '', '', '_', ''),
(14, 'e_shop', 'items', 'user_id', '', '', '_', ''),
(15, 'e_shop', 'items', 'images', '', '', '_', ''),
(16, 'e_shop', 'items', 'category', '', '', '_', ''),
(17, 'e_shop', 'categories', 'id', '', '', '_', ''),
(18, 'e_shop', 'categories', 'name', '', '', '_', ''),
(19, 'e_shop', 'categories', 'step_category', '', '', '_', ''),
(20, 'e_shop', 'items', 'step_category', '', '', '_', '');

-- --------------------------------------------------------

--
-- Структура на таблица `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
`id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
`page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Схема на данните от таблица `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"e_shop","table":"items"},{"db":"e_shop","table":"categories"},{"db":"e_shop","table":"users"},{"db":"db_alumni","table":"users"},{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"},{"db":"phpmyadmin","table":"pma_history"},{"db":"phpmyadmin","table":"pma_pdf_pages"},{"db":"phpmyadmin","table":"pma_recent"},{"db":"phpmyadmin","table":"pma_relation"}]');

-- --------------------------------------------------------

--
-- Структура на таблица `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
`id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Схема на данните от таблица `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-10-18 21:31:18', '{"lang":"bg","collation_connection":"utf8mb4_general_ci"}');

-- --------------------------------------------------------

--
-- Структура на таблица `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура на таблица `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
 ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
 ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
 ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
 ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
 ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
 ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
 ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
--
-- Database: `to_be_smart`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Структура на таблица `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Схема на данните от таблица `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
 ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
