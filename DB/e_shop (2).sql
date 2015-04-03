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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
