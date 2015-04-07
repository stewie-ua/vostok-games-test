-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 07 2015 г., 14:59
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
-- Структура таблицы `system_auth`
--

CREATE TABLE IF NOT EXISTS `system_auth` (
  `id` int(8) NOT NULL,
  `login` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `acl_role_id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `system_auth`
--

INSERT INTO `system_auth` (`id`, `login`, `email`, `acl_role_id`, `password`, `added_at`) VALUES
(1, 'user_1', 'user_1@mail.com', 2, '8e2b0e6d2c6d4bfe4912343ef563346e', '2014-03-02 14:00:29'),
(2, 'user_2', 'user_2@mail.com', 2, '8e2b0e6d2c6d4bfe4912343ef563346e', '2014-10-16 12:28:34');

-- --------------------------------------------------------

--
-- Структура таблицы `system_auth_sessions`
--

CREATE TABLE IF NOT EXISTS `system_auth_sessions` (
  `id` int(11) NOT NULL,
  `auth_id` int(8) NOT NULL,
  `uni_key` varchar(32) NOT NULL,
  `user_agent` varchar(128) NOT NULL DEFAULT '',
  `user_ip` int(10) NOT NULL DEFAULT '0',
  `expired_date` datetime NOT NULL,
  `last_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `system_auth_tokens`
--

CREATE TABLE IF NOT EXISTS `system_auth_tokens` (
  `id` int(10) unsigned NOT NULL,
  `auth_id` int(10) unsigned NOT NULL,
  `token_key` varchar(64) NOT NULL,
  `user_agent` varchar(128) NOT NULL,
  `user_ip` int(10) NOT NULL,
  `expired_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `user_data`
--

INSERT INTO `user_data` (`user_id`, `phone`, `address`) VALUES
(1, '22-44-33', 'kiev'),
(2, '00-22-00', 'kiev');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `system_auth`
--
ALTER TABLE `system_auth`
  ADD PRIMARY KEY (`id`), ADD KEY `login` (`login`,`password`);

--
-- Индексы таблицы `system_auth_sessions`
--
ALTER TABLE `system_auth_sessions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`auth_id`,`uni_key`);

--
-- Индексы таблицы `system_auth_tokens`
--
ALTER TABLE `system_auth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_data`
--
ALTER TABLE `user_data`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `system_auth`
--
ALTER TABLE `system_auth`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT для таблицы `system_auth_sessions`
--
ALTER TABLE `system_auth_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT для таблицы `system_auth_tokens`
--
ALTER TABLE `system_auth_tokens`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
