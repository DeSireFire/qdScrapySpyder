-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-05-11 18:15:55
-- 服务器版本： 5.5.62-log
-- PHP 版本： 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xiaoshuo`
--

-- --------------------------------------------------------

--
-- 表的结构 `qidian_index`
--

CREATE TABLE `qidian_index` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `cover_url` varchar(255) DEFAULT NULL,
  `uptime` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `count_chapter` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `new_chapter` varchar(255) DEFAULT NULL,
  `new_uptime` varchar(255) DEFAULT NULL,
  `size_num` varchar(255) DEFAULT NULL,
  `click_num` varchar(255) DEFAULT NULL,
  `week_click_num` int(11) DEFAULT NULL,
  `recommend_num` varchar(255) DEFAULT NULL,
  `week_recommend_num` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `chapter_status` int(10) UNSIGNED DEFAULT NULL,
  `qidian_url` varchar(255) DEFAULT NULL,
  `relation_81zw` varchar(255) DEFAULT NULL, -- 这里注意 你需要自己修改一下 名称 对应小说笔趣阁地址
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `qidian_index`
--
ALTER TABLE `qidian_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuid_index` (`code`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `qidian_index`
--
ALTER TABLE `qidian_index`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
