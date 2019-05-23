-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019-05-18 16:56:28
-- 服务器版本： 5.7.25-log
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qidian`
--

-- --------------------------------------------------------

--
-- 表的结构 `content_0`
--

CREATE TABLE IF NOT EXISTS `content_0` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_1`
--

CREATE TABLE IF NOT EXISTS `content_1` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_2`
--

CREATE TABLE IF NOT EXISTS `content_2` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_3`
--

CREATE TABLE IF NOT EXISTS `content_3` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_4`
--

CREATE TABLE IF NOT EXISTS `content_4` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_5`
--

CREATE TABLE IF NOT EXISTS `content_5` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_6`
--

CREATE TABLE IF NOT EXISTS `content_6` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_7`
--

CREATE TABLE IF NOT EXISTS `content_7` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_8`
--

CREATE TABLE IF NOT EXISTS `content_8` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_9`
--

CREATE TABLE IF NOT EXISTS `content_9` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_a`
--

CREATE TABLE IF NOT EXISTS `content_a` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_b`
--

CREATE TABLE IF NOT EXISTS `content_b` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_c`
--

CREATE TABLE IF NOT EXISTS `content_c` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_d`
--

CREATE TABLE IF NOT EXISTS `content_d` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_e`
--

CREATE TABLE IF NOT EXISTS `content_e` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_f`
--

CREATE TABLE IF NOT EXISTS `content_f` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_g`
--

CREATE TABLE IF NOT EXISTS `content_g` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_h`
--

CREATE TABLE IF NOT EXISTS `content_h` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_i`
--

CREATE TABLE IF NOT EXISTS `content_i` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_j`
--

CREATE TABLE IF NOT EXISTS `content_j` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_k`
--

CREATE TABLE IF NOT EXISTS `content_k` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_l`
--

CREATE TABLE IF NOT EXISTS `content_l` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_m`
--

CREATE TABLE IF NOT EXISTS `content_m` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_n`
--

CREATE TABLE IF NOT EXISTS `content_n` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_o`
--

CREATE TABLE IF NOT EXISTS `content_o` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_p`
--

CREATE TABLE IF NOT EXISTS `content_p` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_q`
--

CREATE TABLE IF NOT EXISTS `content_q` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_r`
--

CREATE TABLE IF NOT EXISTS `content_r` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_s`
--

CREATE TABLE IF NOT EXISTS `content_s` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_t`
--

CREATE TABLE IF NOT EXISTS `content_t` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_u`
--

CREATE TABLE IF NOT EXISTS `content_u` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_v`
--

CREATE TABLE IF NOT EXISTS `content_v` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_w`
--

CREATE TABLE IF NOT EXISTS `content_w` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_x`
--

CREATE TABLE IF NOT EXISTS `content_x` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_y`
--

CREATE TABLE IF NOT EXISTS `content_y` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `content_z`
--

CREATE TABLE IF NOT EXISTS `content_z` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `rand` int(11) DEFAULT '0' COMMENT '章节排序编号',
  `title` varchar(255) NOT NULL COMMENT '章节标题',
  `content` text NOT NULL COMMENT '章节内容',
  `remote` varchar(255) DEFAULT NULL COMMENT '章节备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `qidian_cover`
--

CREATE TABLE IF NOT EXISTS `qidian_cover` (
  `id` int(11) unsigned NOT NULL,
  `code` varchar(255) NOT NULL COMMENT 'code编码',
  `type` varchar(255) NOT NULL COMMENT '数据类型',
  `img` longtext NOT NULL COMMENT '图片base64'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `qidian_index`
--

CREATE TABLE IF NOT EXISTS `qidian_index` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT 'code编码',
  `name` varchar(255) DEFAULT NULL COMMENT '书名',
  `category` varchar(255) DEFAULT NULL COMMENT '分类',
  `sub_category` varchar(255) DEFAULT NULL COMMENT '子分类',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `intro` varchar(255) DEFAULT NULL COMMENT '简介',
  `info` text COMMENT '信息',
  `score` varchar(255) DEFAULT NULL COMMENT '分数',
  `cover_url` varchar(255) DEFAULT NULL COMMENT '图片url',
  `uptime` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `count_chapter` int(10) DEFAULT NULL COMMENT '总章节',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `new_chapter` varchar(255) DEFAULT NULL COMMENT '最新章节',
  `new_uptime` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `size_num` int(11) DEFAULT '0' COMMENT '总字数',
  `click_num` int(11) DEFAULT '0' COMMENT '点击次数',
  `week_click_num` int(11) DEFAULT '0' COMMENT '周点击次数',
  `recommend_num` int(11) DEFAULT '0' COMMENT '推荐数',
  `week_recommend_num` int(11) DEFAULT '0' COMMENT '周推荐',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态:0连载,1完结',
  `chapter_status` int(11) DEFAULT '0' COMMENT '章节状态',
  `qidian_url` varchar(255) DEFAULT NULL COMMENT '起点url',
  `relation_biquge` varchar(255) DEFAULT NULL COMMENT '笔趣阁url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content_0`
--
ALTER TABLE `content_0`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_1`
--
ALTER TABLE `content_1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_2`
--
ALTER TABLE `content_2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_3`
--
ALTER TABLE `content_3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_4`
--
ALTER TABLE `content_4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_5`
--
ALTER TABLE `content_5`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_6`
--
ALTER TABLE `content_6`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_7`
--
ALTER TABLE `content_7`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_8`
--
ALTER TABLE `content_8`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_9`
--
ALTER TABLE `content_9`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_a`
--
ALTER TABLE `content_a`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_b`
--
ALTER TABLE `content_b`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_c`
--
ALTER TABLE `content_c`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_d`
--
ALTER TABLE `content_d`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_e`
--
ALTER TABLE `content_e`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_f`
--
ALTER TABLE `content_f`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_g`
--
ALTER TABLE `content_g`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_h`
--
ALTER TABLE `content_h`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_i`
--
ALTER TABLE `content_i`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_j`
--
ALTER TABLE `content_j`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_k`
--
ALTER TABLE `content_k`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_l`
--
ALTER TABLE `content_l`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_m`
--
ALTER TABLE `content_m`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_n`
--
ALTER TABLE `content_n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_o`
--
ALTER TABLE `content_o`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_p`
--
ALTER TABLE `content_p`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_q`
--
ALTER TABLE `content_q`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_r`
--
ALTER TABLE `content_r`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_s`
--
ALTER TABLE `content_s`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_t`
--
ALTER TABLE `content_t`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_u`
--
ALTER TABLE `content_u`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_v`
--
ALTER TABLE `content_v`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_w`
--
ALTER TABLE `content_w`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_x`
--
ALTER TABLE `content_x`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_y`
--
ALTER TABLE `content_y`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `content_z`
--
ALTER TABLE `content_z`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remote` (`remote`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `qidian_cover`
--
ALTER TABLE `qidian_cover`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `qidian_index`
--
ALTER TABLE `qidian_index`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `code_index` (`code`),
  ADD KEY `code_2` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content_0`
--
ALTER TABLE `content_0`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_1`
--
ALTER TABLE `content_1`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_2`
--
ALTER TABLE `content_2`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_3`
--
ALTER TABLE `content_3`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_4`
--
ALTER TABLE `content_4`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_5`
--
ALTER TABLE `content_5`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_6`
--
ALTER TABLE `content_6`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_7`
--
ALTER TABLE `content_7`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_8`
--
ALTER TABLE `content_8`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_9`
--
ALTER TABLE `content_9`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_a`
--
ALTER TABLE `content_a`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_b`
--
ALTER TABLE `content_b`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_c`
--
ALTER TABLE `content_c`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_d`
--
ALTER TABLE `content_d`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_e`
--
ALTER TABLE `content_e`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_f`
--
ALTER TABLE `content_f`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_g`
--
ALTER TABLE `content_g`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_h`
--
ALTER TABLE `content_h`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_i`
--
ALTER TABLE `content_i`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_j`
--
ALTER TABLE `content_j`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_k`
--
ALTER TABLE `content_k`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_l`
--
ALTER TABLE `content_l`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_m`
--
ALTER TABLE `content_m`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_n`
--
ALTER TABLE `content_n`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_o`
--
ALTER TABLE `content_o`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_p`
--
ALTER TABLE `content_p`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_q`
--
ALTER TABLE `content_q`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_r`
--
ALTER TABLE `content_r`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_s`
--
ALTER TABLE `content_s`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_t`
--
ALTER TABLE `content_t`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_u`
--
ALTER TABLE `content_u`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_v`
--
ALTER TABLE `content_v`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_w`
--
ALTER TABLE `content_w`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_x`
--
ALTER TABLE `content_x`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_y`
--
ALTER TABLE `content_y`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_z`
--
ALTER TABLE `content_z`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qidian_cover`
--
ALTER TABLE `qidian_cover`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qidian_index`
--
ALTER TABLE `qidian_index`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
