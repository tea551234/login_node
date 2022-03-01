-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-03-01 03:35:22
-- 伺服器版本： 5.7.24
-- PHP 版本： 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `sql_login`
--

-- --------------------------------------------------------

--
-- 資料表結構 `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `productName` text NOT NULL,
  `problem` text NOT NULL,
  `problemOptions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `form`
--

INSERT INTO `form` (`id`, `email`, `productName`, `problem`, `problemOptions`) VALUES
(28, 'tea551234@gmail.com', 'demo', 'eq', 'flaw'),
(29, 'sombra551234@gmail.com', '3', 'www', '貨品錯誤'),
(30, 'tea551234@gmail.com', 'qwe', 'qew', '貨品錯誤'),
(31, 'tea551234@gmail.com', 'qqq', 'WWW', '貨品錯誤'),
(32, 'tea551234@gmail.com', 'qwe', 'eq', '貨品錯誤');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(14, 'tea551234@gmail.com', '$2a$08$4qsOP5sQu0RUt91ToRQsjulubshjcFvIMfFJ3PYyDyzsDf1esQJYq'),
(15, 'pippy0204@gmail.com', '$2a$08$Rc0rmmWTSx7KfYyDTKtWYuV/ogGj0Zfeke2K9R8QbIewzZiE53CS2'),
(16, 'sombra551234@gmail.com', '$2a$08$NOW6xq..i.hp0sODHf9NJufiJAgXVYPh8Os7LcY/x.QCdjkZOEF3q');

-- --------------------------------------------------------

--
-- 資料表結構 `users_image`
--

CREATE TABLE `users_image` (
  `id` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Product_Description` varchar(200) NOT NULL,
  `commodity_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users_image`
--

INSERT INTO `users_image` (`id`, `email`, `name`, `image`, `Product_Description`, `commodity_name`) VALUES
(1, 'tes551234@gmai;', 'tp6m3', '1.jpg', 'qpwelrpqwr', ''),
(2, 'tea551234@gmail.com', '陳宇勝', '-4ada3Q17b-1i5qZ1pT3cSo0-217.png', '測試', '測試'),
(3, 'ggbbhhnn15@gmail.com', '陳宇勝', 'Nito_early_bird_banner_820x313px.jpg', 'dmoe', 'demo');

-- --------------------------------------------------------

--
-- 資料表結構 `wish`
--

CREATE TABLE `wish` (
  `id` int(100) NOT NULL,
  `email` text NOT NULL,
  `WishName` text NOT NULL,
  `wishImag` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `users_image`
--
ALTER TABLE `users_image`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `wish`
--
ALTER TABLE `wish`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users_image`
--
ALTER TABLE `users_image`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `wish`
--
ALTER TABLE `wish`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
