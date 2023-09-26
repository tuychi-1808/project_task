-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 26 2023 г., 15:58
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task_shopping`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `catname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `catname`) VALUES
(1, 'Пылесос'),
(2, 'Телефон'),
(3, 'Кресло'),
(4, 'Очки'),
(5, 'Тетрадь'),
(6, 'Колонки');

-- --------------------------------------------------------

--
-- Структура таблицы `task_order`
--

CREATE TABLE `task_order` (
  `id` int(11) NOT NULL,
  `order_name` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `task_order`
--

INSERT INTO `task_order` (`id`, `order_name`, `createdate`, `updatedate`, `status`) VALUES
(32, 1, '2023-07-18 10:55:43', '2023-07-18 07:55:55', 0),
(33, 3, '2023-07-18 11:02:51', '0000-00-00 00:00:00', 0),
(34, 4, '2023-07-18 11:05:47', '2023-07-18 08:06:56', 0),
(35, 6, '2023-07-18 11:08:11', '0000-00-00 00:00:00', 0),
(36, 1, '2023-07-18 11:09:16', '0000-00-00 00:00:00', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task_order`
--
ALTER TABLE `task_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_name` (`order_name`),
  ADD KEY `order_name_2` (`order_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `task_order`
--
ALTER TABLE `task_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `task_order`
--
ALTER TABLE `task_order`
  ADD CONSTRAINT `task_order_ibfk_1` FOREIGN KEY (`order_name`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
