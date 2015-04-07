-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 07 2015 г., 15:00
-- Версия сервера: 5.5.41-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `vostok-games`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user_update_history`
--

CREATE TABLE IF NOT EXISTS `user_update_history` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `column_name` varchar(32) NOT NULL,
  `column_data` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `user_update_history`
--

INSERT INTO `user_update_history` (`id`, `user_id`, `column_name`, `column_data`, `datetime`) VALUES
(7, 1, 'phone', '22-11-33', '2015-04-07 14:54:33'),
(8, 1, 'address', 'kiev', '2015-04-07 14:54:33'),
(9, 1, 'phone', '22-44-33', '2015-04-07 14:54:52'),
(10, 1, 'address', 'kiev', '2015-04-07 14:54:52'),
(11, 2, 'phone', '00-22-00', '2015-04-07 14:55:44'),
(12, 2, 'address', 'kiev', '2015-04-07 14:55:45');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user_update_history`
--
ALTER TABLE `user_update_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user_update_history`
--
ALTER TABLE `user_update_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
