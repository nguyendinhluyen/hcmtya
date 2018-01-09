-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Client: localhost:3306
-- Généré le: Mar 27 Septembre 2016 à 00:17
-- Version du serveur: 5.6.33
-- Version de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `hcmctya1_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_control_user`
--

CREATE TABLE IF NOT EXISTS `admin_control_user` (
  `idadmin_control_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `type_of_user` varchar(255) DEFAULT NULL,
  `dateadd` int(11) DEFAULT NULL,
  `datemodify` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `checked_box_save` varchar(255) DEFAULT NULL,
  `user_name_visible` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birthday` int(30) DEFAULT NULL,
  `avarta` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `facebook` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idadmin_control_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Contenu de la table `admin_control_user`
--

INSERT INTO `admin_control_user` (`idadmin_control_user`, `user_name`, `type_of_user`, `dateadd`, `datemodify`, `password`, `checked_box_save`, `user_name_visible`, `name`, `sex`, `birthday`, `avarta`, `phone`, `email`, `address`, `short_content`, `facebook`, `google`, `twitter`, `linkedin`) VALUES
(82, 'hcmctyaadmin', 'user', 1470056351, 1470106447, 'b376dc7ad4f0f71c0fac133481eff464', ';1;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;28;29;30;31;32;33;34;35;36;37;', 'admin ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `adver_id` int(11) NOT NULL AUTO_INCREMENT,
  `adver_catalogue` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `adver_pos` int(11) DEFAULT NULL,
  `adver_webname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ads` text COLLATE utf8_unicode_ci,
  `description_ads_en` text COLLATE utf8_unicode_ci,
  `adver_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adver_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adver_width` int(11) DEFAULT NULL,
  `adver_height` int(11) DEFAULT NULL,
  `adver_status` int(11) DEFAULT NULL,
  `adver_order` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_modifile` int(11) DEFAULT NULL,
  PRIMARY KEY (`adver_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=112 ;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_description` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `categories_status` tinyint(3) NOT NULL DEFAULT '1',
  `date_added` int(11) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `recycle_bin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=347 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_key`, `categories_description`, `keywords`, `description`, `parent_id`, `level`, `sort_order`, `categories_status`, `date_added`, `modified_date`, `language`, `recycle_bin`) VALUES
(343, 'Bộ đề 1', 'bo-de-1-343', NULL, '', '', 0, 1, 1, 1, 1467564266, NULL, 'vi', 0);

-- --------------------------------------------------------

--
-- Structure de la table `categoriesadoption`
--

CREATE TABLE IF NOT EXISTS `categoriesadoption` (
  `categoriesadoption_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoriesadoption_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesadoption_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesadoption_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordsadoption` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionadoption` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parentadoption_id` int(11) DEFAULT NULL,
  `leveladoption` int(11) DEFAULT NULL,
  `sortadoption_order` int(3) DEFAULT NULL,
  `categoriesadoption_status` tinyint(3) DEFAULT NULL,
  `dateadoption_added` int(11) DEFAULT NULL,
  `modifiedadoption_date` int(11) DEFAULT NULL,
  `languageadoption` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recycleadoption_bin` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoriesadoption_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `categoriesadoption`
--

INSERT INTO `categoriesadoption` (`categoriesadoption_id`, `categoriesadoption_name`, `categoriesadoption_key`, `categoriesadoption_description`, `keywordsadoption`, `descriptionadoption`, `parentadoption_id`, `leveladoption`, `sortadoption_order`, `categoriesadoption_status`, `dateadoption_added`, `modifiedadoption_date`, `languageadoption`, `recycleadoption_bin`) VALUES
(3, 'Bài thi trắc nghiệm', 'bai-thi-trac-nghiem', NULL, '', '', 0, 1, 2, 1, 1466266047, NULL, 'vi', NULL),
(4, 'Danh sách thí sinh', 'danh-sach-thi-sinh', NULL, '', '', 0, 1, 1, 1, 1466266057, NULL, 'vi', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorieshelp`
--

CREATE TABLE IF NOT EXISTS `categorieshelp` (
  `categorieshelp_id` int(11) NOT NULL AUTO_INCREMENT,
  `categorieshelp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorieshelp_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorieshelp_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordshelp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionhelp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parenthelp_id` int(11) DEFAULT NULL,
  `levelhelp` int(11) DEFAULT NULL,
  `sorthelp_order` int(3) DEFAULT NULL,
  `categorieshelp_status` tinyint(3) DEFAULT NULL,
  `datehelp_added` int(11) DEFAULT NULL,
  `modifiedhelp_date` int(11) DEFAULT NULL,
  `languagehelp` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recyclehelp_bin` int(11) DEFAULT NULL,
  PRIMARY KEY (`categorieshelp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Contenu de la table `categorieshelp`
--

INSERT INTO `categorieshelp` (`categorieshelp_id`, `categorieshelp_name`, `categorieshelp_key`, `categorieshelp_description`, `keywordshelp`, `descriptionhelp`, `parenthelp_id`, `levelhelp`, `sorthelp_order`, `categorieshelp_status`, `datehelp_added`, `modifiedhelp_date`, `languagehelp`, `recyclehelp_bin`) VALUES
(67, 'Danh sách thí sinh', 'danh-sach-thi-sinh', NULL, '', '', 0, 1, 1, 1, 1466266438, 1466266558, 'vi', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categoriesintroduce`
--

CREATE TABLE IF NOT EXISTS `categoriesintroduce` (
  `categoriesintroduce_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoriesintroduce_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesintroduce_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesintroduce_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordsintroduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionintroduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parentintroduce_id` int(11) DEFAULT NULL,
  `levelintroduce` int(11) DEFAULT NULL,
  `sortintroduce_order` int(3) DEFAULT NULL,
  `categoriesintroduce_status` tinyint(3) DEFAULT NULL,
  `dateintroduce_added` int(11) DEFAULT NULL,
  `modifiedintroduce_date` int(11) DEFAULT NULL,
  `languageintroduce` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recycleintroduce_bin` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoriesintroduce_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `categoriesintroduce`
--

INSERT INTO `categoriesintroduce` (`categoriesintroduce_id`, `categoriesintroduce_name`, `categoriesintroduce_key`, `categoriesintroduce_description`, `keywordsintroduce`, `descriptionintroduce`, `parentintroduce_id`, `levelintroduce`, `sortintroduce_order`, `categoriesintroduce_status`, `dateintroduce_added`, `modifiedintroduce_date`, `languageintroduce`, `recycleintroduce_bin`) VALUES
(12, 'Quyền và nghĩa vụ', 'quyen-va-nghia-vu', NULL, '', '', 0, 1, 3, 1, 1466265977, 1466265991, 'vi', NULL),
(13, 'Thể lệ dự tuyển', 'the-le-du-tuyen', NULL, '', '', 0, 1, 2, 1, 1466266006, NULL, 'vi', NULL),
(14, 'Tiêu chí xét tuyển', 'tieu-chi-xet-tuyen', NULL, '', '', 0, 1, 1, 1, 1466266018, 1466266022, 'vi', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorieslibary`
--

CREATE TABLE IF NOT EXISTS `categorieslibary` (
  `categorieslibary_id` int(11) NOT NULL AUTO_INCREMENT,
  `categorieslibary_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorieslibary_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorieslibary_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordslibary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionlibary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parentlibary_id` int(11) DEFAULT NULL,
  `levellibary` int(11) DEFAULT NULL,
  `sortlibary_order` int(3) DEFAULT NULL,
  `categorieslibary_status` tinyint(3) DEFAULT NULL,
  `datelibary_added` int(11) DEFAULT NULL,
  `modifiedlibary_date` int(11) DEFAULT NULL,
  `languagelibary` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recyclelibary_bin` int(11) DEFAULT NULL,
  PRIMARY KEY (`categorieslibary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Contenu de la table `categorieslibary`
--

INSERT INTO `categorieslibary` (`categorieslibary_id`, `categorieslibary_name`, `categorieslibary_key`, `categorieslibary_description`, `keywordslibary`, `descriptionlibary`, `parentlibary_id`, `levellibary`, `sortlibary_order`, `categorieslibary_status`, `datelibary_added`, `modifiedlibary_date`, `languagelibary`, `recyclelibary_bin`) VALUES
(81, 'Thông tin cuộc thi', 'thong-tin-cuoc-thi', NULL, '', '', 0, 1, 1, 1, 1466266818, NULL, 'vi', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categoriesresult`
--

CREATE TABLE IF NOT EXISTS `categoriesresult` (
  `categoriesresult_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoriesresult_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesresult_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoriesresult_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywordsresult` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `descriptionresult` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parentresult_id` int(11) DEFAULT NULL,
  `levelresult` int(11) DEFAULT NULL,
  `sortresult_order` int(3) DEFAULT NULL,
  `categoriesresult_status` tinyint(3) DEFAULT NULL,
  `dateresult_added` int(11) DEFAULT NULL,
  `modifiedresult_date` int(11) DEFAULT NULL,
  `languageresult` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recycleresult_bin` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoriesresult_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `categoriesresult`
--

INSERT INTO `categoriesresult` (`categoriesresult_id`, `categoriesresult_name`, `categoriesresult_key`, `categoriesresult_description`, `keywordsresult`, `descriptionresult`, `parentresult_id`, `levelresult`, `sortresult_order`, `categoriesresult_status`, `dateresult_added`, `modifiedresult_date`, `languageresult`, `recycleresult_bin`) VALUES
(13, 'Vòng chung kết', 'vong-chung-ket', NULL, '', '', 0, 1, 2, 1, 1466266579, NULL, 'vi', NULL),
(14, 'Vòng sơ tuyển', 'vong-so-tuyen', NULL, '', '', 0, 1, 1, 1, 1466266588, NULL, 'vi', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cats_adver`
--

CREATE TABLE IF NOT EXISTS `cats_adver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_value` text COLLATE utf8_unicode_ci,
  `date_added` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Contenu de la table `config`
--

INSERT INTO `config` (`config_id`, `config_name`, `config_value`, `date_added`) VALUES
(1, 'banner', 'banner_2.png', '0'),
(2, 'logo', 'logo.png', '0'),
(3, 'email', 'info@hcmctya.com.vn', '0'),
(4, 'textcolor', '4D4040', '0'),
(5, 'active', '0', '0'),
(6, 'mail_host', 'hcmctya.com.vn', '0'),
(7, 'mail_password', 'in2Lxe8D', '0'),
(8, 'mail_port', '80', '0'),
(9, 'themes', 'noel', '0'),
(10, 'header', '', '0'),
(11, 'body', '', '0'),
(12, 'mail_admin', 'support@nanapet.com', '0'),
(13, 'description', 'a', '0'),
(14, 'anti_spam', '1', '0'),
(15, 'MaxOnline', '142', '0'),
(16, 'timeMaxOnline', '1379745594', '0'),
(17, 'time_encourage', '', '0'),
(18, 'banner_2', '', '0'),
(19, 'banner_3', '', '0'),
(20, 'banner_4', '', '0'),
(21, 'banner_5', '', '0'),
(22, 'banner_left_1_1', 'banner-left-1.jpg', '0'),
(23, 'banner_left_1_2', '', '0'),
(24, 'banner_left_1_3', NULL, '0'),
(25, 'banner_left_1_4', NULL, '0'),
(26, 'banner_left_1_5', NULL, '0'),
(27, 'banner_left_2_1', 'banner-left-2.jpg', '0'),
(28, 'banner_left_2_2', '', '0'),
(29, 'banner_left_2_3', NULL, '0'),
(30, 'banner_left_2_4', NULL, '0'),
(31, 'banner_left_2_5', NULL, '0'),
(32, 'pre_limit_product', '0', '2016-06-18'),
(33, 'pre_limit_news', '510', '2015-07-25'),
(34, 'pre_limit_product_dog', '0', '2016-06-18'),
(35, 'pre_limit_product_cat', '0', '2016-06-18'),
(36, 'pre_limit_product_medicine', '0', '2016-06-18'),
(37, 'pre_limit_product_demo', '0', '2015-08-14'),
(38, 'pre_limit_combo_best_sale', '0', '2016-06-18');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `status` int(4) NOT NULL DEFAULT '0',
  `ip` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=315 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `title`, `comment`, `address`, `phone`, `email`, `fax`, `company`, `date`, `status`, `ip`) VALUES
(312, 'asd', 'asdsadasd', 'asdsadasd', NULL, 'asdasdasd', 'asd@asd.com', NULL, NULL, 1470285285, 0, '1.53.224.172');

-- --------------------------------------------------------

--
-- Structure de la table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_value` longtext COLLATE utf8_unicode_ci,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Contenu de la table `contents`
--

INSERT INTO `contents` (`content_id`, `content_key`, `content_name`, `content_value`, `language`) VALUES
(26, 'contact', 'Thông tin liên hệ', '<div id="company_name"><font size="3"><b></b></font></div><span style="font-weight: normal; font-style: normal; text-decoration: none; color: rgb(255, 0, 0); background-color: rgb(255, 0, 0); letter-spacing: 0px; "><div id="company_name"><font size="3"><b></b></font></div></span><span style="background-color: rgb(255, 0, 0); "><span style="background-color: rgb(255, 0, 0); "><font face="Arial"><div id="company_name" style="font-style: normal; letter-spacing: 0px; text-decoration: none; color: rgb(255, 0, 0); font-weight: normal; text-align: left; "><b><font size="4">        NanaPet Online Shop</font></b></div><div id="company_name"><br></div><div id="company_name"><br><font size="3"><span style="background-color: rgb(255, 255, 255); color: rgb(105, 105, 105); line-height: 19px; letter-spacing: 0px; text-align: left; ">Bắt đầu</span><span class="Apple-tab-span" style="background-color: rgb(255, 255, 255); color: rgb(105, 105, 105); line-height: 19px; letter-spacing: 0px; text-align: left; white-space: pre; ">		</span><span style="background-color: rgb(255, 255, 255); color: rgb(105, 105, 105); line-height: 19px; letter-spacing: 0px; text-align: left; "><b>2010</b></span></font></div><div id="company_name" style="font-style: normal; letter-spacing: 0px; text-decoration: none; color: rgb(255, 0, 0); text-align: left; "><span style="color: rgb(105, 105, 105); line-height: 19px; background-color: rgb(255, 255, 255); "><font size="3">Hotline<span class="Apple-tab-span" style="white-space:pre">		</span><b>0933.103.203</b></font></span></div><div id="company_name" style="font-style: normal; letter-spacing: 0px; text-decoration: none; text-align: left; "><font color="#696969" size="3"><span style="line-height: 19px;">Email<span class="Apple-tab-span" style="white-space:pre">		</span><b>support@nanapet.com</b></span></font></div><div id="company_name" style="font-style: normal; letter-spacing: 0px; text-decoration: none; text-align: left; "><font color="#696969" size="3"><span style="line-height: 19px;">Website<span class="Apple-tab-span" style="white-space:pre">		</span><a href="http://nanapet.com/index.htm"><b>nanapet.com</b></a></span></font></div><div id="company_name" style="font-style: normal; letter-spacing: 0px; text-decoration: none; color: rgb(255, 0, 0); text-align: left; "><span style="color: rgb(105, 105, 105); line-height: 19px; background-color: rgb(255, 255, 255); "><br></span></div></font></span></span><div id="company_name"><span style="background-color: rgb(255, 255, 255); "><font face="Arial" size="3"><div style="text-align: right; "><font style="color: rgb(105, 105, 105); "><b style="line-height: 19px; "><br></b></font></div><div style="line-height: 19px; text-align: left; "><font style="color: rgb(105, 105, 105); ">Business hours<b> </b></font><b>09:00 - 20:00</b><font style="color: rgb(105, 105, 105); "> các ngày trong tuần</font></div><div style="line-height: 19px; text-align: left; "><font style="color: rgb(105, 105, 105); "><br></font></div><div style="line-height: 19px; text-align: left; "><font color="#696969"><br></font></div></font></span></div><div id="company_name"><div style="text-align: left;"><strong><font color="#696969" face="Arial" size="3"><br></font></strong></div><table border="0" cellspacing="0" cellpadding="0" style="text-align: left; line-height: 19px; background-color: rgb(255, 255, 255); width: 366px; height: 101px; "><tbody><tr><td width="317" valign="top"><font color="#696969" face="Arial"><br></font></td><td width="317" valign="top"><font color="#696969" face="Arial"><br><br></font></td></tr></tbody></table></div>', 'vi'),
(24, 'footer', 'Chân trang', '<div id="company_name"><font color="#4f4f4f" face="Arial, Helvetica, sans-serif"><span style="font-size: 12px; line-height: 19px;"><br></span></font></div>', 'vi'),
(25, 'header', 'Đầu trang', '<div id="company_name"><br></div>', 'vi'),
(27, 'gioithieu', 'Giới thiệu', 'Giới thiệu', 'vi'),
(28, 'thanhtoan', 'Thanh Toán', '<div><font color="#00bfff" face="Arial" size="2"><b><br></b></font></div>', 'vi'),
(29, 'huongdan', 'Hướng Dẫn', 'Hướng Dẫn', 'vi'),
(30, 'contact', 'Thông tin liên hệ', '<div id="company_name">Engineering Co., Ltd Planet (DC Tech)</div><span id="result_box" class="" lang="en"><span style="" title="">Address: 64 Street No. 12, Ward 11, Go Vap, Ho Chi Minh.<br></span><span style="" title="">Phone: (08) 39965737 - Fax: (08) 39212189<br></span><span style="" title="">Hotline: 0903 723303 - 0127 3993678</span></span>', 'en'),
(31, 'footer', 'Chân trang', '<span id="result_box" class="" lang="en"><span style="" title="">Business license number: 0103013839, where the issue: HCMC Department of Industry and Commerce, issued on 21/09/2010<br></span><span style="" title="">License establish websites on the Internet some 90/GP-BC, issued on 07/17/2010</span></span>', 'en'),
(32, 'header', 'Đầu trang', '<div id="company_name">Engineering Co., Ltd Planet (DC Tech)</div><span id="result_box" class="" lang="en"><span style="" title="">Address: 64 Street No. 12, Ward 11, Go Vap, Ho Chi Minh.<br></span><span style="" title="">Phone: (08) 39965737 - Fax: (08) 39212189<br></span><span style="" title="">Hotline: 0903 723303 - 0127 3993678</span></span>', 'en'),
(44, 'gioithieu', 'Giới thiệu', 'about us<br>', 'en'),
(36, 'thanhtoan', 'Thanh Toán', 'payment', 'en'),
(37, 'huongdan', 'Hướng Dẫn', 'Guides', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `id_coupon` int(11) NOT NULL AUTO_INCREMENT,
  `code_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `begin_cost_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_cost_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_coupon` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_coupon` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_update_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_deadline_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email_coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_coupon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `file_download` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_download` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `count_download` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `date_add` int(11) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Structure de la table `GroupMember`
--

CREATE TABLE IF NOT EXISTS `GroupMember` (
  `idGroupMember` int(11) NOT NULL AUTO_INCREMENT,
  `NameGroupMember` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DisCount` int(10) DEFAULT '0',
  `Date` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`idGroupMember`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `guest_comment`
--

CREATE TABLE IF NOT EXISTS `guest_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date` int(11) DEFAULT NULL,
  `ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browse` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendmail` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=121 ;

-- --------------------------------------------------------

--
-- Structure de la table `image_product`
--

CREATE TABLE IF NOT EXISTS `image_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image_path` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=347 ;

-- --------------------------------------------------------

--
-- Structure de la table `img_galary`
--

CREATE TABLE IF NOT EXISTS `img_galary` (
  `galary_id` int(11) NOT NULL AUTO_INCREMENT,
  `galary_district_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_begin_price` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_end_price` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_fee` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_description` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `galary_status` int(11) DEFAULT NULL,
  `galary_sort` int(11) DEFAULT NULL,
  `_delete` int(11) DEFAULT '0',
  `galary_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`galary_id`),
  KEY `galary_id` (`galary_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=110 ;

-- --------------------------------------------------------

--
-- Structure de la table `ip_based_access`
--

CREATE TABLE IF NOT EXISTS `ip_based_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `time` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=151 ;

-- --------------------------------------------------------

--
-- Structure de la table `keywords`
--

CREATE TABLE IF NOT EXISTS `keywords` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_key` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `language` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Contenu de la table `keywords`
--

INSERT INTO `keywords` (`page_id`, `page_key`, `page_title`, `title`, `keywords`, `description`, `language`) VALUES
(1, 'home', 'Trang chủ', 'nanapet', 'nanapet', 'nanapet', 'vi'),
(7, 'gioithieu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'vi'),
(8, 'huongdan', 'Hướng dẫn', 'Hướng dẫn', 'Hướng dẫn', 'Hướng dẫn', 'vi'),
(9, 'thanhtoan', 'Thông tin thanh toán', 'Thông tin thanh toán', 'Thông tin thanh toán', 'Thanh toán', 'vi'),
(10, 'contact', 'Liên hệ', 'Liên hệ', 'Liên hệ', 'Liên hệ', 'vi'),
(19, 'thanhtoan', 'Thông tin thanh toán', 'Payment', 'Payment', 'Payment', 'en'),
(15, 'search', 'Tìm kiếm', 'Tìm kiếm', 'Tìm kiếm', 'Tìm kiếm', 'vi'),
(17, 'gioithieu', 'Giới thiệu', 'About us', 'About us', 'About us', 'en'),
(18, 'huongdan', 'Hướng dẫn', 'Guies', 'Guies', 'Guies', 'en'),
(16, 'home', 'Trang chủ', 'DCTech  company', 'DCTech  company', 'DCTech  company', 'en'),
(25, 'search', 'Tìm kiếm', 'Search', 'Search', 'Search', 'en'),
(20, 'contact', 'Liên hệ', 'Contact', 'Contact', 'Contact', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `KindHelp`
--

CREATE TABLE IF NOT EXISTS `KindHelp` (
  `idKindHelp` int(11) NOT NULL DEFAULT '0',
  `nameKindHelp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`idKindHelp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lag_config`
--

CREATE TABLE IF NOT EXISTS `lag_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=319 ;

--
-- Contenu de la table `lag_config`
--

INSERT INTO `lag_config` (`id`, `key_name`, `value`, `language`) VALUES
(102, 'service', 'SERVICE', 'en'),
(101, 'service', 'DỊCH VỤ', 'vi'),
(100, 'payment', 'Payment', 'en'),
(99, 'payment', 'Thanh toán', 'vi'),
(98, 'delivery', 'Delivery', 'en'),
(97, 'delivery', 'Giao hàng', 'vi'),
(96, 'htorder', 'Cách đặt hàng', 'vi'),
(95, 'htorder', 'How to Order', 'en'),
(94, 'promotions', 'Promotions', 'en'),
(93, 'promotions', 'Thông tin khuyến mãi', 'vi'),
(92, 'knowledge', 'Kiến thức cho mẹ và bé', 'vi'),
(91, 'knowledge', 'Knowledge for mother and baby', 'en'),
(90, 'addcart', 'Add cart', 'en'),
(89, 'addcart', 'Thêm vào giỏ hàng', 'vi'),
(88, 'detail', 'Detail', 'en'),
(87, 'detail', 'Chi tiết', 'vi'),
(86, 'new_product', 'New product', 'en'),
(85, 'new_product', 'Sản phẩm mới', 'vi'),
(84, 'findnotfile', 'Find not file', 'en'),
(83, 'findnotfile', 'Không tìm thấy file', 'vi'),
(82, 'del_all_poduct', 'All product of catalogue will delete all', 'en'),
(81, 'del_all_poduct', 'Tất cả sản phẩm thuộc danh mục này sẽ bị xóa hết\r\n', 'vi'),
(80, 'root_cats', 'Root catalogue', 'en'),
(79, 'root_cats', 'Danh mục gốc', 'vi'),
(78, 'err_size', 'File size is more than ', 'en'),
(77, 'err_size', 'Dung lượng file vượt quá mức cho phép', 'vi'),
(76, 'err_checkExtent', 'File extention in ', 'en'),
(75, 'err_checkExtent', 'Chỉ chấp nhận file', 'vi'),
(74, 'err_product_detail_short', 'Product detail is short', 'en'),
(73, 'err_product_detail_short', 'Chi tiết sản phẩm quá ngắn', 'vi'),
(72, 'err_product_name_short', 'Product name is short', 'en'),
(71, 'err_product_name_short', 'Tên sản phẩm quá ngắn', 'vi'),
(70, 'update_product', 'Update product', 'en'),
(69, 'update_product', 'Cập nhật sản phẩm', 'vi'),
(68, 'error', 'Error', 'en'),
(67, 'error', 'Lỗi', 'vi'),
(66, 'product_detail', 'Product detail', 'en'),
(65, 'product_detail', 'Chi tiết sản phẩm', 'vi'),
(64, 'decription', 'Decription', 'en'),
(63, 'decription', 'Mô tả', 'vi'),
(62, 'product_of_catalogue', 'Catalogue', 'en'),
(61, 'product_of_catalogue', 'Thuộc danh mục', 'vi'),
(60, 'price', 'Price', 'en'),
(59, 'price', 'Giá', 'vi'),
(58, 'add_product', 'Add product', 'en'),
(57, 'add_product', 'Thêm sản phẩm', 'vi'),
(56, 'image', 'Image', 'en'),
(55, 'image', 'Hình ảnh', 'vi'),
(54, 'product_name', 'Product name', 'en'),
(53, 'product_name', 'Tên sản phẩm', 'vi'),
(52, 'product_manager', 'Product manager', 'en'),
(51, 'product_manager', 'Quản lý sản phẩm', 'vi'),
(50, 'updatecat', 'Catalogue update', 'en'),
(49, 'updatecat', 'Cập nhật danh mục', 'vi'),
(48, 'addcat', 'Add catalogue', 'en'),
(47, 'addcat', 'Thêm danh mục', 'vi'),
(46, 'date_modifiled', 'Last modifiled', 'en'),
(45, 'date_modifiled', 'Lần sửa cuối', 'vi'),
(44, 'err_cat_name_valid', 'Catalogories is valid', 'en'),
(43, 'err_cat_name_valid', 'Danh mục này đã có trong CSDL', 'vi'),
(42, 'err_cat_name_short', 'Catalogories name is short ', 'en'),
(41, 'err_cat_name_short', 'Tên danh mục quá ngắn', 'vi'),
(40, 'update_cat', 'Catalogories update ', 'en'),
(39, 'update_cat', 'Cập nhật danh mục', 'vi'),
(38, 'update', 'Update', 'en'),
(37, 'update', 'Cập nhật', 'vi'),
(36, 'reset', 'Reset', 'en'),
(35, 'reset', 'Làm lại', 'vi'),
(34, 'add', 'Add new', 'en'),
(33, 'add', 'Thêm mới', 'vi'),
(32, 'show', 'Hiển thị', 'vi'),
(31, 'show', 'Show', 'en'),
(30, 'hidden', 'Đang ẩn', 'vi'),
(29, 'hidden', 'Hidden', 'en'),
(28, 'del_confirm', 'Are you sure delete', 'en'),
(27, 'del_confirm', 'Bạn có chắc chắn là muốn xoá', 'vi'),
(26, 'add_cat', 'Add cats', 'en'),
(25, 'add_cat', 'Thêm danh mục', 'vi'),
(24, 'del_check', 'Detele check', 'en'),
(23, 'del_check', 'Xoá chọn', 'vi'),
(22, 'page', 'Page', 'en'),
(21, 'page', 'Trang', 'vi'),
(20, 'date_added', 'Add date', 'en'),
(19, 'date_added', 'Ngày thêm', 'vi'),
(18, 'status', 'Status', 'en'),
(17, 'status', 'Trạng thái', 'vi'),
(16, 'order', 'Order', 'en'),
(15, 'order', 'Sắp xếp', 'vi'),
(14, 'cat_name', 'Catalogue name', 'en'),
(13, 'cat_name', 'Tên danh mục', 'vi'),
(12, 'edit', 'Edit', 'en'),
(11, 'edit', 'Sửa', 'vi'),
(10, 'del', 'Delete', 'en'),
(9, 'del', 'Xoá', 'vi'),
(8, 'cat_manage', 'Catalogue manage', 'en'),
(7, 'cat_manage', 'Quản lý danh mục', 'vi'),
(6, 'home', 'Trang chủ', 'vi'),
(5, 'home', 'Home', 'en'),
(4, 'contact', 'Liên hệ', 'vi'),
(3, 'contact', 'Contact', 'en'),
(2, 'product', 'Tên sản phẩm', 'vi'),
(1, 'product', 'Product name', 'en'),
(103, 'productSell', 'selling products', 'en'),
(104, 'productSell', 'Sản phẩm bán chạy', 'vi'),
(105, 'updating', 'Đang cập nhật', 'vi'),
(106, 'updating', 'updating', 'en'),
(107, 'cart1', 'Bạn đang có', 'vi'),
(108, 'cart1', 'You have', 'en'),
(109, 'cart2', 'items', 'en'),
(110, 'cart2', 'sản phẩm', 'vi'),
(111, 'cart', 'Giỏ hàng', 'vi'),
(112, 'cart', 'Cart', 'en'),
(113, 'not_find_product', 'Không tìm thấy sản phẩm này', 'vi'),
(114, 'not_find_product', 'Product not found', 'en'),
(115, 'code', 'Mã', 'vi'),
(116, 'code', 'Code', 'en'),
(117, 'addcart2', 'Đặt hàng', 'vi'),
(118, 'addcart2', 'Add Cart', 'en'),
(119, 'product2', 'SẢN PHẨM', 'vi'),
(120, 'product2', 'PRODUCT', 'en'),
(121, 'productcat', 'DANH MỤC SẢN PHẨM', 'vi'),
(122, 'productcat', 'CATEGORIES', 'en'),
(123, 'product3', 'Product', 'en'),
(124, 'product3', 'Sản phẩm', 'vi'),
(127, 'entertainment', 'ENTERTAINMENT', 'en'),
(128, 'entertainment', 'GIẢI TRÍ VỚI BÉ YÊU', 'vi'),
(129, 'contact2', 'LIÊN HỆ', 'vi'),
(130, 'contact2', 'CONTACT', 'en'),
(131, 'amount', 'Số lượng', 'vi'),
(132, 'amount', 'Amount', 'en'),
(133, 'delete', 'Xóa', 'vi'),
(134, 'delete', 'Delete', 'en'),
(135, 'info_cus', 'Thông tin khách hàng', 'vi'),
(136, 'info_cus', 'Custommer info', 'en'),
(137, 'contact_fullname', 'Họ và tên', 'vi'),
(138, 'contact_fullname', 'Full name', 'en'),
(139, 'contact_address', 'Address', 'en'),
(140, 'contact_address', 'Địa chỉ', 'vi'),
(141, 'contact_phone', 'Phone', 'en'),
(142, 'contact_phone', 'Điện thoại', 'vi'),
(143, 'com_other', 'Yêu cầu khác', 'vi'),
(144, 'com_other', 'Comment', 'en'),
(145, 'lagtotal', 'Tổng', 'vi'),
(146, 'lagtotal', 'Total', 'en'),
(147, 'send_cart', 'Đặt hàng', 'vi'),
(148, 'send_cart', 'Send', 'en'),
(149, 'cart_is_empty', 'Chưa có sản phẩm nào trong giỏ hàng', 'vi'),
(150, 'cart_is_empty', 'Cart is empty', 'en'),
(151, 'sure_del', 'Bạn có chắc chắn là muốn xóa ?', 'vi'),
(152, 'sure_del', 'Are you sure ?', 'en'),
(153, 'cart_send_ok', 'Đã gởi giỏ hàng.', 'vi'),
(154, 'cart_send_ok', 'Send cart successfull', 'en'),
(155, 'no_info', 'Bạn chưa nhập đủ thông tin liên lạc', 'vi'),
(156, 'no_info', 'You have not entered enough information contact', 'en'),
(157, 'total_traffic', 'Total traffic', 'en'),
(158, 'total_traffic', 'Tổng lượt truy cập', 'vi'),
(159, 'search', 'Tìm kiếm\r\n', 'vi'),
(160, 'search', 'Search', 'en'),
(161, 'com_other2', 'Nội dung', 'vi'),
(162, 'com_other2', 'Comment', 'en'),
(163, 'error_email', 'Email nhập không chính xác!', 'vi'),
(164, 'error_email', 'Email is correct!', 'en'),
(165, 'nameisshort', 'Tên quá ngắn', 'vi'),
(166, 'nameisshort', 'Name is short', 'en'),
(167, 'emailisshort', 'Email quá ngắn', 'vi'),
(168, 'emailisshort', 'Email is short', 'en'),
(169, 'addressisshort', 'Địa chỉ quá ngắn', 'vi'),
(170, 'addressisshort', 'Address is short', 'en'),
(171, 'phoneisshort', 'Số điện thoại quá ngắn', 'vi'),
(172, 'phoneisshort', 'Phone is short', 'en'),
(173, 'messisshort', 'Nội dung quá ngắn', 'vi'),
(174, 'messisshort', 'Comment is short', 'en'),
(175, 'sendmailerror', 'Không thể send mail,vui lòng thử lại sau !', 'vi'),
(176, 'sendmailerror', 'Can''t send mail.Try againt !', 'en'),
(177, 'notfind', 'Không tìm thấy sản phẩm nào', 'vi'),
(178, 'notfind', 'Product find is empty', 'en'),
(179, 'newsOther', 'Các bản tin khác', 'vi'),
(180, 'newsOther', 'News other', 'en'),
(181, 'order_manage', 'Quản lý đơn hàng', 'vi'),
(182, 'order_manage', 'Order manager', 'en'),
(183, 'selectcontent', 'Select content', 'en'),
(184, 'selectcontent', 'Chọn nội dung', 'vi'),
(185, 'content', 'Nội dung', 'vi'),
(186, 'content', 'Content', 'en'),
(187, 'move', 'Chuyển', 'vi'),
(188, 'move', 'Move', 'en'),
(189, 'infowebsite', 'Information website', 'en'),
(190, 'infowebsite', 'Thông tin chung website', 'vi'),
(191, 'viewastree', 'View as tree', 'en'),
(192, 'viewastree', 'Xem dạng cây', 'vi'),
(193, 'ofcatalogue', 'Catalogue', 'en'),
(194, 'ofcatalogue', 'Thuộc danh mục', 'vi'),
(195, 'shi', 'Ẩn/hiện', 'vi'),
(196, 'shi', 'Show/hide', 'en'),
(197, 'viewlist', 'View as list', 'en'),
(198, 'viewlist', 'Xem dạng danh sách', 'vi'),
(199, 'cat_managertree', 'Quản lý danh mục - dạng cây', 'vi'),
(200, 'cat_managertree', 'Catalogue manager tree', 'en'),
(201, 'expand', 'Mở rộng', 'vi'),
(202, 'expand', 'Expand', 'en'),
(203, 'collapse', 'Collapse', 'en'),
(204, 'collapse', 'Thu gọn', 'vi'),
(205, 'ppromotions', 'Product Promotions', 'en'),
(206, 'ppromotions', 'Sản phẩm bán chạy', 'vi'),
(207, 'pnew', 'Sản phẩm mới', 'vi'),
(208, 'pnew', 'Product new', 'en'),
(209, 'sellers', 'Sellers', 'en'),
(210, 'sellers', 'Sản phẩm bán chạy', 'vi'),
(211, 'enternameproduct', 'Enter product name', 'en'),
(212, 'enternameproduct', 'Nhập tên sản phẩm', 'vi'),
(213, 'err_select_cat', 'You have not selected product categories', 'en'),
(214, 'err_select_cat', 'Bạn chưa chọn danh mục sản phẩm', 'vi'),
(215, 'newsmanager', 'Quản lý tin tức', 'vi'),
(216, 'newsmanager', 'News manager', 'en'),
(217, 'title', 'Title', 'en'),
(218, 'title', 'Tiêu đề', 'vi'),
(219, 'addnews', 'Thêm tin', 'vi'),
(220, 'addnews', 'Add news', 'en'),
(221, 'detailnews', 'Detail', 'en'),
(222, 'detailnews', 'Chi tiết tin tức', 'vi'),
(223, 'upnews', 'Cập nhật tin tức', 'vi'),
(224, 'upnews', 'News update', 'en'),
(225, 'onlinename', 'Online name', 'en'),
(226, 'onlinename', 'Tên trực tuyến', 'vi'),
(227, 'phone', 'Điện thoại', 'vi'),
(228, 'phone', 'Phone', 'en'),
(229, 'add', 'Thêm mới', 'vi'),
(230, 'add', 'Add', 'en'),
(231, 'supportCus', 'Customer Support', 'en'),
(232, 'supportCus', 'Hỗ trợ khách hàng', 'vi'),
(233, 'linkman', 'Management link', 'en'),
(234, 'linkman', 'Quản lý liên kết', 'vi'),
(235, 'addlink', 'Add link', 'en'),
(236, 'addlink', 'Địa chỉ liên kết', 'vi'),
(237, 'uplink', 'Cập nhật liên kêt', 'vi'),
(238, 'uplink', 'Link update', 'en'),
(239, 'err_select_file', 'You have not selected file', 'en'),
(240, 'err_select_file', 'Bạn chưa chọn file', 'vi'),
(241, 'delivery', 'Delivery', 'en'),
(242, 'delivery', 'Giao hàng', 'vi'),
(243, 'detailorder', 'Chi tiết đơn hàng', 'vi'),
(244, 'detailorder', 'Order detail', 'en'),
(245, 'colorweb', 'Màu chữ', 'vi'),
(246, 'colorweb', 'Color', 'en'),
(247, 'configweb', 'Cấu hình chung cho website', 'vi'),
(248, 'configweb', 'Config website', 'en'),
(249, 'note_change_admin', 'Khuyến cáo khách hàng không nên sử dụng tên truy cập và mật khẩu quá dễ đoán. Tránh dùng tên admin hoặc tên website công ty làm mật khẩu.', 'vi'),
(250, 'note_change_admin', 'Advised customers not to use the username and password too easy to guess. Avoid using the name admin or company name website as a password.', 'en'),
(251, 'new', 'Mới', 'vi'),
(252, 'new', 'New', 'en'),
(253, '5char', 'Minimum 5 characters', 'en'),
(254, '5char', 'Tối thiểu 5 ký tự', 'vi'),
(255, 'psecurity', 'Point security', 'en'),
(256, 'psecurity', 'Điểm bảo mật', 'vi'),
(257, 'point', 'Point', 'en'),
(258, 'point', 'Điểm', 'vi'),
(259, 'reEnterpass', 'Re-enter password', 'en'),
(260, 'reEnterpass', 'Nhập lại mật khẩu', 'vi'),
(261, 'changacc', 'Thay đổi thông tin', 'vi'),
(262, 'changacc', 'Change account', 'en'),
(263, 'err_enter_pass', 'Bạn chưa nhập mật khẩu truy cập', 'vi'),
(264, 'err_enter_pass', 'Your password is required', 'en'),
(265, 'err_user_is_short', 'Tên đăng nhập mới quá ngắn', 'vi'),
(266, 'err_user_is_short', 'Login name is short', 'en'),
(267, 'err_reenter_pass', 'Mật khẩu nhập lại chưa đúng', 'vi'),
(268, 'err_reenter_pass', 'Enter the correct password', 'en'),
(269, 'err_pass_is_short', 'Mật khẩu mới quá ngắn', 'vi'),
(270, 'err_pass_is_short', 'New password is short', 'en'),
(271, 'err_pass_not', 'Mật khẩu truy cập không đúng', 'vi'),
(272, 'err_pass_not', 'Password incorrect', 'en'),
(273, 'last_login_admin', 'Lần đăng nhập gần đây nhất của bạn là', 'vi'),
(274, 'last_login_admin', 'Last login', 'en'),
(275, 'hello', 'Hello', 'en'),
(276, 'hello', 'Xin chào', 'vi'),
(277, 'note_admin', 'Nơi lưu ghi chú của admin', 'vi'),
(278, 'note_admin', 'Where to save notes admin', 'en'),
(279, 'hislogin', 'Lịch sử đăng nhập', 'vi'),
(280, 'hislogin', 'Login history', 'en'),
(281, 'information', 'Information', 'en'),
(282, 'information', 'Thông tin chung', 'vi'),
(283, 'navpro', 'Navigation - Products', 'en'),
(284, 'navpro', 'Danh mục - Sản phẩm', 'vi'),
(285, 'newsmanger', 'Quản lý tin tức', 'vi'),
(286, 'newsmanger', 'News manager', 'en'),
(287, 'news', 'News', 'en'),
(288, 'news', 'Tin tức', 'vi'),
(289, 'custommer', 'Khách hàng', 'vi'),
(290, 'custommer', 'Custommer', 'en'),
(291, 'ads', 'Quảng cáo', 'vi'),
(292, 'ads', 'Ads', 'en'),
(293, 'config', 'Cấu hình', 'vi'),
(294, 'config', 'Config', 'en'),
(295, 'logout', 'Đăng xuất', 'vi'),
(296, 'logout', 'Logout', 'en'),
(297, 'order2', 'Order', 'en'),
(298, 'order2', 'Đơn hàng', 'vi'),
(299, 'view', 'Xem', 'vi'),
(300, 'view', 'View', 'en'),
(301, 'logout_conf', 'Bạn có chắc chắn muốn thoát', 'vi'),
(302, 'logout_conf', 'Are you sure logout', 'en'),
(303, 'about', 'Giới thiệu', 'vi'),
(304, 'about', 'About us', 'en'),
(305, 'payment', 'Payment', 'en'),
(306, 'payment', 'Thanh Toán', 'vi'),
(307, 'guides', 'Guides', 'en'),
(308, 'guides', 'Hướng dẫn', 'vi'),
(309, 'pp', 'Sản phẩm bán chạy', 'vi'),
(310, 'pp', 'Products Promotional', 'en'),
(311, 'fp', 'Featured products', 'en'),
(312, 'fp', 'Sản phẩm đặc trưng', 'vi'),
(313, 'np', 'New Products', 'en'),
(314, 'np', 'Hàng mới về', 'vi'),
(315, 'call', 'Liên hệ', 'vi'),
(316, 'call', 'Call', 'en'),
(317, 'op', 'OTHER PRODUCTS', 'en'),
(318, 'op', 'SẢN PHẨM CÙNG LOẠI', 'vi');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `news_catalogue` int(11) DEFAULT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  `news_shortcontent` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_ordered` int(11) DEFAULT '0',
  `news_view` int(11) DEFAULT NULL,
  `news_wait` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu` int(11) DEFAULT '0',
  `help_flag` int(2) DEFAULT NULL,
  `resource` text COLLATE utf8_unicode_ci,
  `author` text COLLATE utf8_unicode_ci,
  `translator` text COLLATE utf8_unicode_ci,
  `title_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relax` int(11) DEFAULT NULL,
  `upgrade_news_catalogue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_publisher` text COLLATE utf8_unicode_ci,
  `flag_publisher` int(2) DEFAULT NULL,
  PRIMARY KEY (`news_id`,`news_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=908 ;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`news_id`, `keywords`, `description`, `news_catalogue`, `news_name`, `news_key`, `news_image`, `status`, `news_shortcontent`, `news_content`, `date_added`, `last_modified`, `news_source`, `news_ordered`, `news_view`, `news_wait`, `language`, `menu`, `help_flag`, `resource`, `author`, `translator`, `title_page`, `meta_description`, `meta_keyword`, `relax`, `upgrade_news_catalogue`, `date_publisher`, `flag_publisher`) VALUES
(903, NULL, NULL, 67, 'Danh sách thí sinh', 'danh-sach-thi-sinh', NULL, 1, NULL, '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>Đang cập nhật<span class="Apple-tab-span" style="white-space:pre">	</span>\r\n<div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div></body></HTML>', 1466266731, '1466956477', NULL, 0, NULL, NULL, 'vi', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(904, NULL, NULL, NULL, 'Cuộc thi tìm kiếm đại sứ du lịch Hồ Chí Minh 2016', 'cuoc-thi-tim-kiem-dai-su-du-lich-ho-chi-minh-2016', 'p-cuoc-thi-tim-kiem-dai-su-du-lich-ho-chi-minh-2016-904.jpg', 1, 'Cuộc thi tìm kiếm đại sứ du lịch 2016', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body style="">    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>Đang cập nhật ...<div><br></div></body></HTML>', 1466266912, '1469254053', '', 0, NULL, NULL, 'vi', 0, NULL, '', '', 'admin', 'Cuộc thi tìm kiếm đại sứ du lịch Hồ Chí Minh 2016', 'Cuộc thi tìm kiếm đại sứ du lịch Hồ Chí Minh 2016', 'đại sứ du lịch, hồ chí minh', 0, ',81,', '2016-07-23', 1),
(905, NULL, NULL, NULL, 'Vẻ đẹp vịnh Hạ Long Việt Nam', 've-dep-vinh-ha-long-viet-nam', 'p-ve-dep-vinh-ha-long-viet-nam-905.jpg', 1, 'Vẻ đẹp vịnh Hạ Long Việt Nam', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>Đang cập nhật\r\n</body></HTML>', 1471345948, '1471345986', '', 0, NULL, NULL, 'vi', 0, NULL, '', 'cảnh đẹp Hạ Long, Hạ Long', 'superadmin', 'Vẻ đẹp vịnh Hạ Long Việt Nam', 'Vẻ đẹp vịnh Hạ Long Việt Nam', 'Vẻ đẹp vịnh Hạ Long Việt Nam', 0, ',81,', '2016-08-16', 1),
(906, NULL, NULL, NULL, 'Du lịch biển Việt Nam', 'du-lich-bien-viet-nam', 'p-du-lich-bien-viet-nam-906.jpg', 1, 'Du lịch biển Việt Nam', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body style="">    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>Đang cập nhật\r\n\r\n</body></HTML>', 1471346073, '1471365153', '', 0, NULL, NULL, 'vi', 0, NULL, '', 'biển Việt Nam', 'superadmin', 'Du lịch biển Việt Nam', 'Du lịch biển Việt Nam', 'Du lịch biển Việt Nam', 0, ',81,', '2016-08-16', 1),
(907, NULL, NULL, NULL, 'Cảnh quan Việt Nam', 'canh-quan-viet-nam', 'p-canh-quan-viet-nam-907.jpg', 1, 'Cảnh quan Việt Nam', '<HTML><head><style>BODY { font-family:Arial;font-size:12px; } </style></head><body>    <style>BODY { font-family:Arial;font-size:12px; } </style>    <style>BODY { font-family:Arial;font-size:12px; } </style>Đang cập nhật\r\n\r\n</body></HTML>', 1471346181, '1471346186', '', 0, NULL, NULL, 'vi', 0, NULL, '', '', 'superadmin', 'cảnh quan Việt Nam', 'cảnh quan Việt Nam', 'cảnh quan Việt Nam', 0, ',81,', '2016-08-16', 1);

-- --------------------------------------------------------

--
-- Structure de la table `news_adoption`
--

CREATE TABLE IF NOT EXISTS `news_adoption` (
  `newsadoption_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsadoption_catalogue` int(11) DEFAULT NULL,
  `newsadoption_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `newsadoption_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `statusadoption` tinyint(3) DEFAULT NULL,
  `newsadoption_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dateadoption_added` int(11) DEFAULT NULL,
  `lastadoption_modified` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `languageadoption` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`newsadoption_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `news_adoption`
--

INSERT INTO `news_adoption` (`newsadoption_id`, `newsadoption_catalogue`, `newsadoption_name`, `newsadoption_key`, `statusadoption`, `newsadoption_content`, `dateadoption_added`, `lastadoption_modified`, `languageadoption`) VALUES
(3, 4, 'Danh sách thí sinh', 'danh-sach-thi-sinh', NULL, '<HTML><head><style>BODY { font:12px arial; } </style></head><body>    <style>BODY { font:12px arial; } </style>    <style>BODY { font:12px arial; } </style>Đang cập nhật\r\n<div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div>\r\n</body></HTML>', 1466266690, '1466956425', 'vi'),
(4, 3, 'Bài thi trắc nghiệm', 'bai-thi-trac-nghiem', NULL, '<HTML><head><style>BODY { font:12px arial; } </style></head><body>    <style>BODY { font:12px arial; } </style>    <style>BODY { font:12px arial; } </style>    <style>BODY { font:12px arial; } </style>    <style>BODY { font:12px arial; } </style>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:DocumentProperties>\r\n  <o:Revision>0</o:Revision>\r\n  <o:TotalTime>0</o:TotalTime>\r\n  <o:Pages>1</o:Pages>\r\n  <o:Words>32</o:Words>\r\n  <o:Characters>187</o:Characters>\r\n  <o:Company>anhpha</o:Company>\r\n  <o:Lines>1</o:Lines>\r\n  <o:Paragraphs>1</o:Paragraphs>\r\n  <o:CharactersWithSpaces>218</o:CharactersWithSpaces>\r\n  <o:Version>14.0</o:Version>\r\n </o:DocumentProperties>\r\n <o:OfficeDocumentSettings>\r\n  <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  <o:TargetScreenSize>800x600</o:TargetScreenSize>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>JA</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="&#45;-"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="276">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n\r\n\r\n\r\n<!--StartFragment-->\r\n\r\n<p class="MsoNormal">Đang cập nhật</p><p class="MsoNormal"><br></p><p class="MsoNormal"><br></p><p class="MsoNormal"><br></p><p class="MsoNormal"><br></p><p class="MsoNormal"><br></p><p class="MsoNormal"><br></p>\r\n\r\n<!--EndFragment-->\r\n\r\n\r\n\r\n</body></HTML>', 1466266706, '1466956447', 'vi');

-- --------------------------------------------------------

--
-- Structure de la table `news_catalogue`
--

CREATE TABLE IF NOT EXISTS `news_catalogue` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_key` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_order` int(11) DEFAULT NULL,
  `categories_date_added` int(11) DEFAULT NULL,
  `categories_modified_date` int(11) DEFAULT NULL,
  `categories_status` int(11) NOT NULL DEFAULT '1',
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Structure de la table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `idnews_category` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idnews_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4948 ;

--
-- Contenu de la table `news_category`
--

INSERT INTO `news_category` (`idnews_category`, `news_id`, `category_id`, `status`) VALUES
(4942, 904, 81, '1'),
(4944, 905, 81, '1'),
(4945, 907, 81, '1'),
(4947, 906, 81, '1');

-- --------------------------------------------------------

--
-- Structure de la table `news_introduce`
--

CREATE TABLE IF NOT EXISTS `news_introduce` (
  `newsintroduce_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsintroduce_catalogue` int(11) DEFAULT NULL,
  `newsintroduce_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `newsintroduce_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `statusintroduce` tinyint(3) DEFAULT NULL,
  `newsintroduce_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dateintroduce_added` int(11) DEFAULT NULL,
  `lastintroduce_modified` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `languageintroduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`newsintroduce_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `news_introduce`
--

INSERT INTO `news_introduce` (`newsintroduce_id`, `newsintroduce_catalogue`, `newsintroduce_name`, `newsintroduce_key`, `statusintroduce`, `newsintroduce_content`, `dateintroduce_added`, `lastintroduce_modified`, `languageintroduce`) VALUES
(7, 14, 'Tiêu chí xét tuyển', 'tieu-chi-xet-tuyen', NULL, '<HTML><head><style>BODY { font:12px arial; } </style></head><body style=""><p class="MsoNormal" style="margin: 4pt 0cm; line-height: 17.85pt; vertical-align: baseline;"><span lang="VI">- Là học viên, sinh viên </span><span style="background-color: white;">(nam, nữ) có đ</span><span lang="VI">ộ tuổi từ 18 đến 25 đang học tập, (hoặc nghiên cứu sinh cao học Việt Nam) các ngành liên quan đến du lịch, ẩm thực, văn hóa, thể thao;<o:p></o:p></span></p><p class="MsoNormal" align="left" style="margin: 4pt 0cm; line-height: 17.85pt; vertical-align: baseline;"><span lang="VI">- Có sức khỏe tinh thần và thể chất tốt;<o:p></o:p></span></p><p class="MsoNormal" align="left" style="margin: 4pt 0cm; line-height: 17.85pt; vertical-align: baseline;"><span lang="VI">- Có kỹ năng giao tiếp bằng tiếng Anh lưu loát;<o:p></o:p></span></p><p class="MsoNormal" align="left" style="margin: 4pt 0cm; line-height: 17.85pt; vertical-align: baseline;"><span lang="VI">- Có khả năng và ý thức trong việc giới thiệu, quảng bá hình ảnh đẹp của đất nước, con người Việt Nam và thành phố Hồ Chí Minh;<o:p></o:p></span></p><p class="MsoNormal" style="margin: 4pt 0cm; line-height: 17.85pt; vertical-align: baseline;"><span lang="VI">- Có hiểu biết cơ bản về tình hình kinh tế chính trị, văn hóa xã hội các nước tiểu vùng sông Mê Công;<o:p></o:p></span></p><p class="MsoNormal" style="margin: 4pt 0cm; line-height: 17.85pt; vertical-align: baseline;"><span lang="VI">- Có ý thức kỷ luật tốt; có khả năng lãnh đạo; có tinh thần đoàn kết, làm việc nhóm tốt.</span><span lang="VI"> </span>Đặc biệt ưu tiên ứng viên có kỹ năng thực hành xã hội và văn hóa, thể thao, <span lang="VI">thường xuyên tham gia hoạt động Đoàn - Hội.</span></p></body></HTML>', 1466266640, '1466953923', 'vi'),
(8, 13, 'Thể lệ dự thi', 'the-le-du-thi', NULL, '<HTML><head><style>BODY { font:12px arial; } </style></head><body style="">    <style>BODY { font:12px arial; } </style>    <style>BODY { font:12px arial; } </style>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:DocumentProperties>\r\n  <o:Revision>0</o:Revision>\r\n  <o:TotalTime>0</o:TotalTime>\r\n  <o:Pages>1</o:Pages>\r\n  <o:Words>104</o:Words>\r\n  <o:Characters>599</o:Characters>\r\n  <o:Company>anhpha</o:Company>\r\n  <o:Lines>4</o:Lines>\r\n  <o:Paragraphs>1</o:Paragraphs>\r\n  <o:CharactersWithSpaces>702</o:CharactersWithSpaces>\r\n  <o:Version>14.0</o:Version>\r\n </o:DocumentProperties>\r\n <o:OfficeDocumentSettings>\r\n  <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  <o:TargetScreenSize>800x600</o:TargetScreenSize>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>JA</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="&#45;-"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="276">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n\r\n\r\n\r\n<!--StartFragment-->\r\n\r\n<p class="MsoNormal" style="margin: 6pt 0cm; line-height: normal;"><span lang="VI" style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-ansi-language:VI;mso-fareast-language:VI">Hồ sơ đăng ký bao gồm: <o:p></o:p></span></p><p class="MsoNormal" style="margin: 6pt 0cm; line-height: normal;"><span style="mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:VI">-</span><span lang="VI" style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-ansi-language:VI;mso-fareast-language:VI"> Phiếu đăng ký: ghi rõ </span><span style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:VI">các </span><span lang="VI" style="mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI;\r\nmso-fareast-language:VI">thông tin </span><span style="mso-bidi-font-size:14.0pt;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:VI">cá nhân cụ\r\nthể như </span><span lang="VI" style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-ansi-language:VI;mso-fareast-language:VI">họ tên, năm\r\nsinh, </span><span style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:VI">trường, trình độ,</span><span lang="VI" style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-ansi-language:VI;mso-fareast-language:VI"> địa chỉ </span><span style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:VI">nhà, số điện thoại liên hệ, </span><span lang="VI" style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-ansi-language:VI;mso-fareast-language:VI">email. <o:p></o:p></span></p><p class="MsoNormal" style="margin: 6pt 0cm; line-height: normal;"><span style="mso-bidi-font-size:\r\n14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:VI">- </span><span lang="VI" style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-ansi-language:VI;mso-fareast-language:VI">01 tấm ảnh chụp chân dung</span><span style="mso-bidi-font-size:14.0pt;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:VI">;<o:p></o:p></span></p><p class="MsoNormal" style="margin: 4pt 0cm; line-height: 17.85pt; vertical-align: baseline;">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:DocumentProperties>\r\n  <o:Revision>0</o:Revision>\r\n  <o:TotalTime>0</o:TotalTime>\r\n  <o:Pages>1</o:Pages>\r\n  <o:Words>32</o:Words>\r\n  <o:Characters>187</o:Characters>\r\n  <o:Company>anhpha</o:Company>\r\n  <o:Lines>1</o:Lines>\r\n  <o:Paragraphs>1</o:Paragraphs>\r\n  <o:CharactersWithSpaces>218</o:CharactersWithSpaces>\r\n  <o:Version>14.0</o:Version>\r\n </o:DocumentProperties>\r\n <o:OfficeDocumentSettings>\r\n  <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  <o:TargetScreenSize>800x600</o:TargetScreenSize>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>JA</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="&#45;-"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="276">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n\r\n\r\n\r\n<!--StartFragment-->\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--EndFragment--></p><p class="MsoNormal" style="margin-bottom: 6pt; line-height: normal;"><span lang="DE" style="mso-bidi-font-size:14.0pt;mso-ansi-language:DE">-\r\nBài dự thi (trắc nghiệm).<o:p></o:p></span></p>\r\n\r\n<!--EndFragment-->\r\n\r\n</body></HTML>', 1466266653, '1466953964', 'vi');
INSERT INTO `news_introduce` (`newsintroduce_id`, `newsintroduce_catalogue`, `newsintroduce_name`, `newsintroduce_key`, `statusintroduce`, `newsintroduce_content`, `dateintroduce_added`, `lastintroduce_modified`, `languageintroduce`) VALUES
(9, 12, 'Quyền và nghĩa vụ đại sứ', 'quyen-va-nghia-vu-dai-su', NULL, '<HTML><head><style>BODY { font:12px arial; } </style></head><body>    <style>BODY { font:12px arial; } </style>    <style>BODY { font:12px arial; } </style>    <style>BODY { font:12px arial; } </style>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:DocumentProperties>\r\n  <o:Revision>0</o:Revision>\r\n  <o:TotalTime>0</o:TotalTime>\r\n  <o:Pages>1</o:Pages>\r\n  <o:Words>120</o:Words>\r\n  <o:Characters>686</o:Characters>\r\n  <o:Company>anhpha</o:Company>\r\n  <o:Lines>5</o:Lines>\r\n  <o:Paragraphs>1</o:Paragraphs>\r\n  <o:CharactersWithSpaces>805</o:CharactersWithSpaces>\r\n  <o:Version>14.0</o:Version>\r\n </o:DocumentProperties>\r\n <o:OfficeDocumentSettings>\r\n  <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  <o:TargetScreenSize>800x600</o:TargetScreenSize>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>JA</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="&#45;-"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="276">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n\r\n\r\n\r\n<!--StartFragment-->\r\n\r\n<p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;"><b>1. Quyền lợi</b></p><p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;">Thí sinh đạt giải được công nhận là Gương mặt trẻ đại\r\ndiện ngành du lịch Thành phố Hồ Chí Minh năm 2016 - 2017;<o:p></o:p></p>\r\n\r\n<p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;">- Đại sứ du lịch trẻ Thành phố Hồ Chí Minh sẽ được tài\r\ntrợ chi phí đi lại, ăn uống, nghỉ khách sạn theo tiêu chuẩn chung của Ban Tổ chức\r\nkhi tham dự cuộc thi tìm kiếm Đại sứ Du lịch trẻ các Thành phố Hạ nguồn Mê Công\r\ntrong khuôn khổ chương trình giao lưu Đại sứ Du lịch Trẻ khu vực Hạ nguồn Mê\r\nCông (TYA) năm 2016 tại Thủ đô Phnom\r\nPênh, Vương quốc Campuchia (gồm 5 nước\r\nthành viên Lào, Campuchia, Thái Lan,\r\nMyanmar và Việt Nam);<o:p></o:p></p>\r\n\r\n<p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;">- Thí sinh dự tuyển được Ban Tổ chức đảm bảo an ninh,\r\nan toàn, được đảm bảo về bí mật hình ảnh và bài dự thi riêng trong suốt quá\r\ntrình dự thi;<o:p></o:p></p>\r\n\r\n<p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;">- Các thí sinh\r\nđạt giải được nhận tiền thưởng (tiền mặt) và Giấy khen theo\r\nkết quả mà thí sinh đạt được trong cuộc thi.<o:p></o:p></p><p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;"><b>2. Nghĩa vụ</b></p><p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;">- Đại diện ngành du lịch Thành phố tham dự cuộc thi\r\ntìm kiếm Đại sứ Du lịch trẻ các Thành phố Hạ nguồn Mê Công trong khuôn khổ chương\r\ntrình Giao lưu Đại sứ Du lịch Trẻ khu vực Hạ nguồn Mê Công (TYA) năm 2016 tại\r\nThủ đô Phnom Pênh, Vương quốc Campuchia: Đây là hoạt động chính của chương trình\r\nvới mục đích tìm kiếm Đại sứ Du lịch cho các Thành phố Hạ nguồn Mê Công nhằm quảng\r\nbá du lịch Thành phố Hồ Chí Minh nói riêng và ngành du lịch Việt Nam nói chung\r\nđến bạn bè quốc tế;<o:p></o:p></p><p class="MsoNormal" style="margin: 4pt 0cm; vertical-align: baseline;">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:DocumentProperties>\r\n  <o:Revision>0</o:Revision>\r\n  <o:TotalTime>0</o:TotalTime>\r\n  <o:Pages>1</o:Pages>\r\n  <o:Words>113</o:Words>\r\n  <o:Characters>648</o:Characters>\r\n  <o:Company>anhpha</o:Company>\r\n  <o:Lines>5</o:Lines>\r\n  <o:Paragraphs>1</o:Paragraphs>\r\n  <o:CharactersWithSpaces>760</o:CharactersWithSpaces>\r\n  <o:Version>14.0</o:Version>\r\n </o:DocumentProperties>\r\n <o:OfficeDocumentSettings>\r\n  <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  <o:TargetScreenSize>800x600</o:TargetScreenSize>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>JA</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="&#45;-"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="276">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]-->\r\n\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n\r\n\r\n\r\n<!--StartFragment-->\r\n\r\n\r\n\r\n\r\n\r\n<!--EndFragment--></p><p class="MsoNoSpacing" style="margin-bottom: 6pt;">- Tham gia\r\ncác hoạt động xúc tiến du lịch Thành phố do Sở Du lịch tổ chức, các hoạt động của\r\ngiới trẻ và sinh viên, các sự kiện chào đón, hướng dẫn viên và giới thiệu các\r\nđiểm nhằm quảng bá du lịch Thành phố Hồ Chí Minh nói riêng và ngành du lịch Việt\r\nNam nói chung đến khách du lịch.</p>\r\n\r\n<!--EndFragment-->\r\n\r\n\r\n</body></HTML>', 1466266671, '1469252953', 'vi');

-- --------------------------------------------------------

--
-- Structure de la table `news_result`
--

CREATE TABLE IF NOT EXISTS `news_result` (
  `newsresult_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsresult_catalogue` int(11) DEFAULT NULL,
  `newsresult_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `newsresult_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `statusresult` tinyint(3) DEFAULT NULL,
  `newsresult_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dateresult_added` int(11) DEFAULT NULL,
  `lastresult_modified` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `languageresult` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`newsresult_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `news_result`
--

INSERT INTO `news_result` (`newsresult_id`, `newsresult_catalogue`, `newsresult_name`, `newsresult_key`, `statusresult`, `newsresult_content`, `dateresult_added`, `lastresult_modified`, `languageresult`) VALUES
(7, 13, 'Vòng chung kết', 'vong-chung-ket', NULL, '<HTML><head><style>BODY { font:12px arial; } </style></head><body>    <style>BODY { font:12px arial; } </style>Đang cập nhật\r\n<div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div></body></HTML>', 1466266758, '1466956499', 'vi'),
(8, 14, 'Vòng sơ tuyển', 'vong-so-tuyen', NULL, '<HTML><head><style>BODY { font:12px arial; } </style></head><body>    <style>BODY { font:12px arial; } </style>Đang cập nhật\r\n<div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></div></body></HTML>', 1466266774, '1466956494', 'vi');

-- --------------------------------------------------------

--
-- Structure de la table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) DEFAULT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1955 ;

-- --------------------------------------------------------

--
-- Structure de la table `pet_profile`
--

CREATE TABLE IF NOT EXISTS `pet_profile` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` int(30) DEFAULT NULL,
  `species` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(2) DEFAULT NULL,
  `height` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Structure de la table `PriceOfUnit`
--

CREATE TABLE IF NOT EXISTS `PriceOfUnit` (
  `idPriceOfUnit` int(11) NOT NULL AUTO_INCREMENT,
  `PriceScore` int(10) DEFAULT NULL,
  PRIMARY KEY (`idPriceOfUnit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `products_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_count` int(11) DEFAULT '0',
  `products_price` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `product_encourage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_type` text COLLATE utf8_unicode_ci,
  `p_unit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_date_added` int(11) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL,
  `products_status` tinyint(3) DEFAULT '1',
  `products_ordered` int(11) DEFAULT '0',
  `products_description` longblob,
  `description_ads_vi` text COLLATE utf8_unicode_ci,
  `product_detail` longtext COLLATE utf8_unicode_ci,
  `categories_id` int(11) DEFAULT '0',
  `p_new` int(11) DEFAULT NULL,
  `p_bestsell` int(11) DEFAULT NULL,
  `p_encourage` int(11) DEFAULT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `recycle_bin` int(11) DEFAULT NULL,
  `species` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '00:null, 01: cho, 10:meo',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_detail_tacdung` longtext COLLATE utf8_unicode_ci,
  `product_detail_phuhopcho` longtext COLLATE utf8_unicode_ci,
  `product_detail_nguyenlieu_thanhphan` longtext COLLATE utf8_unicode_ci,
  `product_detail_phantichdambao` longtext COLLATE utf8_unicode_ci,
  `product_detail_huongdansudung` longtext COLLATE utf8_unicode_ci,
  `product_detail_huongdanbaoquan` longtext COLLATE utf8_unicode_ci,
  `product_detail_luuy` longtext COLLATE utf8_unicode_ci,
  `product_detail_khuyenkhich` longtext COLLATE utf8_unicode_ci,
  `product_detail_donggoi_thetich` longtext COLLATE utf8_unicode_ci,
  `product_detail_nhasanxuat` longtext COLLATE utf8_unicode_ci,
  `product_detail_xuatxu` longtext COLLATE utf8_unicode_ci,
  `upgrade_categories_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultfirst` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsecond` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultthird` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordernumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1246 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`products_id`, `keywords`, `description`, `products_key`, `products_name`, `products_image`, `view_count`, `products_price`, `product_encourage`, `price_unit`, `manufacturer`, `manufacturer_link`, `origin`, `p_type`, `p_unit`, `p_attribute`, `p_color`, `products_date_added`, `modified_date`, `products_status`, `products_ordered`, `products_description`, `description_ads_vi`, `product_detail`, `categories_id`, `p_new`, `p_bestsell`, `p_encourage`, `language`, `username`, `sort_order`, `recycle_bin`, `species`, `status`, `product_detail_tacdung`, `product_detail_phuhopcho`, `product_detail_nguyenlieu_thanhphan`, `product_detail_phantichdambao`, `product_detail_huongdansudung`, `product_detail_huongdanbaoquan`, `product_detail_luuy`, `product_detail_khuyenkhich`, `product_detail_donggoi_thetich`, `product_detail_nhasanxuat`, `product_detail_xuatxu`, `upgrade_categories_id`, `resultfirst`, `resultsecond`, `resultthird`, `result`, `ordernumber`) VALUES
(1192, '', NULL, 'cau-hoi-thu-1-1192', 'Câu hỏi thứ 1', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1468259322, NULL, 1, 0, NULL, NULL, 'Không có', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'Nguyen Van A', 'Ly Van B', 'Nguyen Van C', '3', 1),
(1197, '', NULL, 'cau-hoi-thu-2-1197', 'Câu hỏi thứ 2', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1468858541, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'dap an 1', 'dap an 2', 'dap an 3', '3', 2),
(1198, '', NULL, 'cau-hoi-thu-3-1198', 'Câu hỏi thứ 3', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469420097, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 3),
(1199, '', NULL, 'cau-hoi-thu-4-1199', 'Cau hoi thu 4', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469420115, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 4),
(1200, '', NULL, 'cau-hoi-thu-5-1200', 'Cau hoi thu 5', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469420135, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 5),
(1201, '', NULL, 'cau-hoi-thu-6-1201', 'Câu hỏi thứ 6', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469503504, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 6),
(1202, '', NULL, 'cau-hoi-thu-7-1202', 'Câu hỏi thứ 7', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469503533, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 7),
(1203, '', NULL, 'cau-hoi-thu-8-1203', 'Câu hỏi thứ 8', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469504784, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 8),
(1204, '', NULL, 'cau-hoi-thu-9-1204', 'Câu hỏi thứ 9', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469504806, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 9),
(1205, '', NULL, 'cau-hoi-thu-10-1205', 'Câu hỏi thứ 10', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469504854, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 10),
(1206, '', NULL, 'cau-hoi-thu-11-1206', 'Câu hỏi thứ 11', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469505226, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 11),
(1207, '', NULL, 'cau-hoi-thu-12-1207', 'Câu hỏi thứ 12', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469505251, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 12),
(1208, '', NULL, 'cau-hoi-thu-13-1208', 'Câu hỏi thứ 13', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469505319, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 13),
(1209, '', NULL, 'cau-hoi-thu-14-1209', 'Câu hỏi thứ 14', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469505339, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 14),
(1210, '', NULL, 'cau-hoi-thu-15-1210', 'Câu hỏi thứ 15', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469505966, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 15),
(1211, '', NULL, 'cau-hoi-thu-16-1211', 'Câu hỏi thứ 16', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469505997, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 16),
(1212, '', NULL, 'cau-ho-thu-17-1212', 'Câu hỏ thứ 17', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469506028, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 17),
(1213, '', NULL, 'cau-hoi-thu-18-1213', 'Câu hỏi thứ 18', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469507365, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 18),
(1214, '', NULL, 'cau-hoi-thu-19-1214', 'Câu hỏi thứ 19', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469508185, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 19),
(1215, '', NULL, 'cau-hoi-thu-20-1215', 'Câu hỏi thứ 20', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469508659, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 20),
(1216, '', NULL, 'cau-hoi-thu-21-1216', 'Cẩu hỏi thứ 21', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469508700, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 21),
(1217, '', NULL, 'cau-hoi-thu-22-1217', 'Câu hỏi thứ 22', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469508721, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 22),
(1218, '', NULL, 'cau-hoi-thu-23-1218', 'Câu hỏi thứ 23', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469508740, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 23),
(1219, '', NULL, 'cau-hoi-thu-24-1219', 'Câu hỏi thứ 24', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469508768, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 24),
(1220, '', NULL, 'cau-hoi-thu-25-1220', 'Câu hỏi thứ 25', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469508784, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '3', 25),
(1221, '', NULL, 'cau-hoi-thu-26-1221', 'Câu hỏi thứ 26', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509080, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 26),
(1222, '', NULL, 'cau-hoi-thu-27-1222', 'Câu hỏi thứ 27', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509102, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 27),
(1223, '', NULL, 'cau-hoi-thu-28-1223', 'Câu hỏi thứ 28', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509120, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 28),
(1224, '', NULL, 'cau-hoi-thu-29-1224', 'Câu hỏi thứ 29', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509169, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 29),
(1225, '', NULL, 'cau-hoi-thu-30-1225', 'Câu hỏi thứ 30', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509669, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 30),
(1226, '', NULL, 'cau-hoi-thu-31-1226', 'Câu hỏi thứ 31', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509687, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 31),
(1227, '', NULL, 'cau-hoi-thu-32-1227', 'Câu hỏi thứ 32', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509709, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 32),
(1228, '', NULL, 'cau-hoi-thu-33-1228', 'Câu hỏi thứ 33', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509733, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 33),
(1229, '', NULL, 'cau-hoi-thu-34-1229', 'Câu hỏi thứ 34', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469509753, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 34),
(1230, '', NULL, 'cau-hoi-thu-35-1230', 'Câu hỏi thứ 35', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469510445, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 35),
(1231, '', NULL, 'cau-hoi-thu-36-1231', 'Câu hỏi thứ 36', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469510682, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 36),
(1232, '', NULL, 'cau-hoi-thu-37-1232', 'Câu hỏi thứ 37', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469510885, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 37),
(1233, '', NULL, 'cau-hoi-thu-38-1233', 'Câu hỏi thứ 38', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469510952, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 38),
(1234, '', NULL, 'cau-hoi-thu-39-1234', 'Câu hỏi thứ 39', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469510971, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 39),
(1235, '', NULL, 'cau-hoi-thu-40-1235', 'Câu hỏi thứ 40', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469511143, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 40),
(1236, '', NULL, 'cau-hoi-thu-41-1236', 'Câu hỏi thứ 41', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469511268, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 41),
(1237, '', NULL, 'cau-hoi-thu-42-1237', 'Câu hỏi thứ 42', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469514205, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 42),
(1238, '', NULL, 'cau-hoi-thu-43-1238', 'Câu hỏi thứ 43', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469514239, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 43),
(1239, '', NULL, 'cau-hoi-thu-44-1239', 'Câu hỏi thứ 44', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469514265, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 44),
(1240, '', NULL, 'cau-hoi-thu-45-1240', 'Câu hỏi thứ 45', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469514288, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 45),
(1241, '', NULL, 'cau-hoi-thu-46-1241', 'Câu hỏi thứ 46', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469514318, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 46),
(1242, '', NULL, 'cau-hoi-thu-47-1242', 'Câu hỏi thứ 47', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469514981, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 47),
(1243, '', NULL, 'cau-hoi-thu-48-1243', 'Câu hỏi thứ 48', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469515889, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 2', 'DA 2', 'DA 3', '1', 48),
(1244, '', NULL, 'cau-hoi-thu-49-1244', 'Câu hỏi thứ 49', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469515914, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 49),
(1245, '', NULL, 'cau-hoi-thu-50-1245', 'Câu hỏi thứ 50', NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1469516088, NULL, 1, 0, NULL, NULL, '', 0, NULL, NULL, NULL, 'vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',343,344,345,', 'DA 1', 'DA 2', 'DA 3', '1', 50);

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `idproduct_category` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idproduct_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4915 ;

--
-- Contenu de la table `product_category`
--

INSERT INTO `product_category` (`idproduct_category`, `product_id`, `category_id`, `status`) VALUES
(4639, 1192, 343, '1'),
(4640, 1192, 344, '1'),
(4641, 1192, 345, '1'),
(4651, 1203, 343, '1'),
(4652, 1203, 344, '1'),
(4653, 1203, 345, '1'),
(4657, 1205, 343, '1'),
(4658, 1205, 344, '1'),
(4659, 1205, 345, '1'),
(4687, 1215, 343, '1'),
(4688, 1215, 344, '1'),
(4689, 1215, 345, '1'),
(4702, 1220, 343, '1'),
(4703, 1220, 344, '1'),
(4704, 1220, 345, '1'),
(4780, 1245, 343, '1'),
(4781, 1245, 344, '1'),
(4782, 1245, 345, '1'),
(4783, 1244, 343, '1'),
(4784, 1244, 344, '1'),
(4785, 1244, 345, '1'),
(4786, 1243, 343, '1'),
(4787, 1243, 344, '1'),
(4788, 1243, 345, '1'),
(4789, 1242, 343, '1'),
(4790, 1242, 344, '1'),
(4791, 1242, 345, '1'),
(4792, 1241, 343, '1'),
(4793, 1241, 344, '1'),
(4794, 1241, 345, '1'),
(4795, 1240, 343, '1'),
(4796, 1240, 344, '1'),
(4797, 1240, 345, '1'),
(4798, 1239, 343, '1'),
(4799, 1239, 344, '1'),
(4800, 1239, 345, '1'),
(4801, 1238, 343, '1'),
(4802, 1238, 344, '1'),
(4803, 1238, 345, '1'),
(4804, 1237, 343, '1'),
(4805, 1237, 344, '1'),
(4806, 1237, 345, '1'),
(4807, 1236, 343, '1'),
(4808, 1236, 344, '1'),
(4809, 1236, 345, '1'),
(4810, 1235, 343, '1'),
(4811, 1235, 344, '1'),
(4812, 1235, 345, '1'),
(4813, 1234, 343, '1'),
(4814, 1234, 344, '1'),
(4815, 1234, 345, '1'),
(4816, 1233, 343, '1'),
(4817, 1233, 344, '1'),
(4818, 1233, 345, '1'),
(4819, 1232, 343, '1'),
(4820, 1232, 344, '1'),
(4821, 1232, 345, '1'),
(4822, 1231, 343, '1'),
(4823, 1231, 344, '1'),
(4824, 1231, 345, '1'),
(4825, 1230, 343, '1'),
(4826, 1230, 344, '1'),
(4827, 1230, 345, '1'),
(4828, 1229, 343, '1'),
(4829, 1229, 344, '1'),
(4830, 1229, 345, '1'),
(4831, 1228, 343, '1'),
(4832, 1228, 344, '1'),
(4833, 1228, 345, '1'),
(4834, 1227, 343, '1'),
(4835, 1227, 344, '1'),
(4836, 1227, 345, '1'),
(4837, 1226, 343, '1'),
(4838, 1226, 344, '1'),
(4839, 1226, 345, '1'),
(4840, 1225, 343, '1'),
(4841, 1225, 344, '1'),
(4842, 1225, 345, '1'),
(4843, 1224, 343, '1'),
(4844, 1224, 344, '1'),
(4845, 1224, 345, '1'),
(4846, 1223, 343, '1'),
(4847, 1223, 344, '1'),
(4848, 1223, 345, '1'),
(4849, 1222, 343, '1'),
(4850, 1222, 344, '1'),
(4851, 1222, 345, '1'),
(4852, 1221, 343, '1'),
(4853, 1221, 344, '1'),
(4854, 1221, 345, '1'),
(4855, 1219, 343, '1'),
(4856, 1219, 344, '1'),
(4857, 1219, 345, '1'),
(4858, 1218, 343, '1'),
(4859, 1218, 344, '1'),
(4860, 1218, 345, '1'),
(4861, 1217, 343, '1'),
(4862, 1217, 344, '1'),
(4863, 1217, 345, '1'),
(4864, 1216, 343, '1'),
(4865, 1216, 344, '1'),
(4866, 1216, 345, '1'),
(4867, 1214, 343, '1'),
(4868, 1214, 344, '1'),
(4869, 1214, 345, '1'),
(4870, 1213, 343, '1'),
(4871, 1213, 344, '1'),
(4872, 1213, 345, '1'),
(4873, 1212, 343, '1'),
(4874, 1212, 344, '1'),
(4875, 1212, 345, '1'),
(4876, 1211, 343, '1'),
(4877, 1211, 344, '1'),
(4878, 1211, 345, '1'),
(4879, 1210, 343, '1'),
(4880, 1210, 344, '1'),
(4881, 1210, 345, '1'),
(4882, 1209, 343, '1'),
(4883, 1209, 344, '1'),
(4884, 1209, 345, '1'),
(4885, 1208, 343, '1'),
(4886, 1208, 344, '1'),
(4887, 1208, 345, '1'),
(4888, 1207, 343, '1'),
(4889, 1207, 344, '1'),
(4890, 1207, 345, '1'),
(4891, 1206, 343, '1'),
(4892, 1206, 344, '1'),
(4893, 1206, 345, '1'),
(4894, 1204, 343, '1'),
(4895, 1204, 344, '1'),
(4896, 1204, 345, '1'),
(4897, 1202, 343, '1'),
(4898, 1202, 344, '1'),
(4899, 1202, 345, '1'),
(4900, 1201, 343, '1'),
(4901, 1201, 344, '1'),
(4902, 1201, 345, '1'),
(4903, 1200, 343, '1'),
(4904, 1200, 344, '1'),
(4905, 1200, 345, '1'),
(4906, 1199, 343, '1'),
(4907, 1199, 344, '1'),
(4908, 1199, 345, '1'),
(4909, 1198, 343, '1'),
(4910, 1198, 344, '1'),
(4911, 1198, 345, '1'),
(4912, 1197, 343, '1'),
(4913, 1197, 344, '1'),
(4914, 1197, 345, '1');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_date_added` int(11) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL,
  `question_status` tinyint(3) DEFAULT '1',
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `sort_order` int(11) DEFAULT NULL,
  `ordernumber` int(11) DEFAULT NULL,
  `question_detail` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`question_id`, `question_key`, `question_date_added`, `modified_date`, `question_status`, `language`, `sort_order`, `ordernumber`, `question_detail`) VALUES
(11, 'hien-nay-the-gioi-dang-ngay-cang-o-nhiem-boi-cac-khu-cong-nghiep-nhung-kho-khan-de-khac-phuc-moi-truong-la-rat-lon-ban-se-co-giai-phap-gi-cho-van-de-nay-11', 1470334178, NULL, 1, 'vi', NULL, 2, 'Hiện nay thế giởi đang ngày càng ô nhiễm bởi các khu công nghiệp. Những khó khăn để khắc phục môi trường là rất lớn. Bạn sẽ có giải pháp gì cho vấn đề này?'),
(10, 'cac-ban-nghi-gi-khi-tro-thanh-dai-su-du-lich-viet-nam-nam-2016-khi-tro-thanh-dai-su-co-anh-huong-lon-toi-cuoc-song-hien-tai-cua-ban-10', 1470334109, NULL, 1, 'vi', NULL, 1, 'Các bạn nghĩ gì khi trở thành đại sứ du lịch Việt Nam năm 2016. Khi trở thành đại sứ có ảnh hưởng lớn tới cuộc sống hiện tại của bạn?');

-- --------------------------------------------------------

--
-- Structure de la table `question_image`
--

CREATE TABLE IF NOT EXISTS `question_image` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_date_added` int(11) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL,
  `question_status` tinyint(3) DEFAULT '1',
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `sort_order` int(11) DEFAULT NULL,
  `ordernumber` int(11) DEFAULT NULL,
  `question_detail` longtext COLLATE utf8_unicode_ci,
  `question_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `question_image`
--

INSERT INTO `question_image` (`question_id`, `question_key`, `question_date_added`, `modified_date`, `question_status`, `language`, `sort_order`, `ordernumber`, `question_detail`, `question_image`) VALUES
(6, 'cam-nhan-cua-ban-ve-phu-quoc-viet-nam-6', 1470549426, NULL, 1, 'vi', NULL, 1, 'Cảm nhận của bạn về Phú Quốc Việt Nam', 'p-cam-nhan-cua-ban-ve-phu-quoc-viet-nam-6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `rate_product`
--

CREATE TABLE IF NOT EXISTS `rate_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=265 ;

-- --------------------------------------------------------

--
-- Structure de la table `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `recordID` int(11) NOT NULL AUTO_INCREMENT,
  `recordText` varchar(255) DEFAULT NULL,
  `recordListingID` int(11) DEFAULT NULL,
  `img_galary_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

-- --------------------------------------------------------

--
-- Structure de la table `relation_news_product`
--

CREATE TABLE IF NOT EXISTS `relation_news_product` (
  `id_news_product` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_news_product`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1271 ;

-- --------------------------------------------------------

--
-- Structure de la table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `honors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee4Ever` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `scorelevel` int(10) DEFAULT '0',
  `scoreaward` int(10) DEFAULT NULL,
  `scorebirthday` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1976 ;

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `providers_id` int(11) NOT NULL AUTO_INCREMENT,
  `providers_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_im` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `providers_status` tinyint(3) DEFAULT '1',
  `providers_order` int(11) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL,
  `language` varchar(4) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `providers_skype` int(11) DEFAULT '0',
  PRIMARY KEY (`providers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_contact_list`
--

CREATE TABLE IF NOT EXISTS `tbl_contact_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_favorite`
--

CREATE TABLE IF NOT EXISTS `tbl_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=252 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_history_score`
--

CREATE TABLE IF NOT EXISTS `tbl_history_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `action_date` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custommer_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_addtress` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_phone` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_fax` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_comment` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `order_date` int(11) DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_name_receiver` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_address_receiver` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custommer_phone_receiver` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transport_district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_cash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_product_transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_discount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_coupon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=753 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birthday` int(30) DEFAULT NULL,
  `linkactive` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_group` tinyint(4) NOT NULL DEFAULT '3',
  `avarta` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yahoo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(30) DEFAULT NULL,
  `last_login` int(30) DEFAULT NULL,
  `date_delete` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `active_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_flag` int(2) NOT NULL DEFAULT '0',
  `birthday_flag` int(2) NOT NULL DEFAULT '0',
  `GroupMember` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `result_exam` longtext COLLATE utf8_unicode_ci,
  `exam_check` int(11) DEFAULT NULL,
  `start_time_exam` int(11) DEFAULT NULL,
  `end_time_exam` int(11) DEFAULT NULL,
  `score_exam` int(11) DEFAULT NULL,
  `exam_answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_answer_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time_exam_question` int(11) DEFAULT NULL,
  `end_time_exam_question` int(11) DEFAULT NULL,
  `exam_check_question` int(11) DEFAULT NULL,
  `exam_question` int(11) DEFAULT NULL,
  `start_time_exam_question_image` int(11) DEFAULT NULL,
  `end_time_exam_question_image` int(11) DEFAULT NULL,
  `exam_check_question_image` int(11) DEFAULT NULL,
  `exam_question_image` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2616 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `sex`, `birthday`, `linkactive`, `user_group`, `avarta`, `phone`, `email`, `yahoo`, `skype`, `address`, `signature`, `date`, `last_login`, `date_delete`, `status`, `active_link`, `update_flag`, `birthday_flag`, `GroupMember`, `exam`, `result_exam`, `exam_check`, `start_time_exam`, `end_time_exam`, `score_exam`, `exam_answer`, `exam_answer_image`, `start_time_exam_question`, `end_time_exam_question`, `exam_check_question`, `exam_question`, `start_time_exam_question_image`, `end_time_exam_question_image`, `exam_check_question_image`, `exam_question_image`) VALUES
(2614, NULL, 'e10adc3949ba59abbe56e057f20f883e', '(Anh) luyen', 1, 347562000, NULL, 3, 'c-2614.jpg', '(999) 999 - 99999', 'luyen2@jvn', '', NULL, '2 nanapet.com Đường 2 nanapet.com Phường 2  nanapet.com Chung cư/Tòa nhà  nanapet.com Lầu  nanapet.com Căn hộ  nanapet.com Huyện Tam Nông nanapet.com Tỉnh Phú Thọ', NULL, 1470884354, 1471490271, NULL, 0, NULL, 1, 0, 'Chưa là thành viên', 343, ';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;1245_1;', 1, 1470906880, 1470993280, 1, NULL, NULL, 1470969798, 1471228998, 2, 10, 1470971505, 1471576305, NULL, 6),
(2615, NULL, 'e10adc3949ba59abbe56e057f20f883e', '(Chị) Mimosa', 0, 537642000, NULL, 3, 'c-2615.jpeg', '(121) 231 - 23123', 'mo.pham@verztec.com', '', NULL, '123 nanapet.com Đường 123 nanapet.com Phường 123  nanapet.com Chung cư/Tòa nhà 123 nanapet.com Lầu 123 nanapet.com Căn hộ 123 nanapet.com Quận 1 nanapet.com Hồ Chí Minh', NULL, 1471244845, NULL, NULL, 0, NULL, 1, 0, 'Chưa là thành viên', 343, ';1192_3;1197_2;1198_2;1199_1;1200_2;1201_2;1202_1;1203_2;1204_1;1205_1;1206_3;1207_3;1208_2;1209_2;1210_2;1211_2;1212_3;1213_3;1214_3;1215_1;1216_3;1217_2;1218_2;1219_2;1220_2;1221_1;1222_1;1223_1;1224_1;;1226_2;1227_2;1228_1;1229_1;1230_1;1231_2;1232_1;1233_3;1234_2;1235_2;1236_3;1237_3;;1239_3;1240_2;1241_1;1242_1;1243_2;1244_2;1245_2;', 1, 1471246048, 1471332448, 17, '(Chị) Mimosa-answer-2615.pdf', '(Chị) Mimosa-answer-image-2615.pdf', 1471246134, 1471505334, 1, 11, 1471247353, 1471852153, 1, 6),
(2613, NULL, 'e10adc3949ba59abbe56e057f20f883e', '(Anh) luyen', 1, 576000, NULL, 3, 'c-2613.jpg', '(999) 999 - 99999', 'luyen@jvn', '', NULL, '2 nanapet.com Đường 2 nanapet.com Phường 2  nanapet.com Chung cư/Tòa nhà  nanapet.com Lầu  nanapet.com Căn hộ  nanapet.com Huyện Trà Lĩnh nanapet.com Tỉnh Cao Bằng', NULL, 1470764642, 1474874549, NULL, 0, NULL, 1, 0, 'Chưa là thành viên', 343, ';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;1244_1;1245_1;', 1, 1470764702, 1470851102, 2, '(Anh) luyen-answer-2613.pdf', '(Anh) luyen-answer-image-2613.docx', 1470764785, 1471023985, 1, 10, 1470765080, 1471369880, 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `usersonline`
--

CREATE TABLE IF NOT EXISTS `usersonline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refurl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_host` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip_address`),
  KEY `file` (`refurl`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1014192 ;

--
-- Contenu de la table `usersonline`
--

INSERT INTO `usersonline` (`id`, `user`, `timestamp`, `ip_address`, `refurl`, `user_agent`, `user_host`) VALUES
(1014191, NULL, 1474877607, '115.79.48.231', 'http://hcmctya.com.vn/vong-so-tuyen', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '/index.htm'),
(1014190, NULL, 1474876735, '113.161.75.5', 'http://hcmctya.com.vn/vong-so-tuyen', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '/gioi-thieu'),
(1014189, NULL, 1474869998, '113.161.75.200', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13E238 Safari/601.1', '/index.htm'),
(1014188, NULL, 1474811747, '27.67.38.169', 'http://hcmctya.com.vn/gioi-thieu/quyen-va-nghia-vu.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13E238 Safari/601.1', '/index.htm');

-- --------------------------------------------------------

--
-- Structure de la table `user_comment`
--

CREATE TABLE IF NOT EXISTS `user_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_comment` int(11) DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Structure de la table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `color`) VALUES
(1, 'Admin', 'red'),
(3, 'Super Mod', 'green');

-- --------------------------------------------------------

--
-- Structure de la table `VIPCustomer`
--

CREATE TABLE IF NOT EXISTS `VIPCustomer` (
  `idVIPCustomer` int(11) NOT NULL AUTO_INCREMENT,
  `NameVIPCustomer` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Score` int(10) DEFAULT NULL,
  `DisCount` int(10) DEFAULT NULL,
  `FeeLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idVIPCustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `day` int(15) NOT NULL DEFAULT '0',
  `mon` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `visitor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`day`),
  KEY `ip` (`visitor`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1766 ;

--
-- Contenu de la table `visitor`
--

INSERT INTO `visitor` (`id`, `day`, `mon`, `year`, `visitor`) VALUES
(1675, 18, 6, 2016, 2),
(1676, 18, 6, 2016, 2),
(1677, 26, 6, 2016, 4),
(1678, 27, 6, 2016, 9),
(1679, 28, 6, 2016, 4),
(1680, 29, 6, 2016, 8),
(1681, 30, 6, 2016, 5),
(1682, 1, 7, 2016, 7),
(1683, 2, 7, 2016, 4),
(1684, 3, 7, 2016, 6),
(1685, 4, 7, 2016, 5),
(1686, 5, 7, 2016, 1),
(1687, 6, 7, 2016, 3),
(1688, 7, 7, 2016, 5),
(1689, 8, 7, 2016, 1),
(1690, 10, 7, 2016, 1),
(1691, 11, 7, 2016, 4),
(1692, 12, 7, 2016, 5),
(1693, 13, 7, 2016, 2),
(1694, 15, 7, 2016, 2),
(1695, 16, 7, 2016, 2),
(1696, 18, 7, 2016, 3),
(1697, 19, 7, 2016, 2),
(1698, 20, 7, 2016, 2),
(1699, 21, 7, 2016, 2),
(1700, 22, 7, 2016, 1),
(1701, 23, 7, 2016, 4),
(1702, 24, 7, 2016, 4),
(1703, 25, 7, 2016, 5),
(1704, 26, 7, 2016, 4),
(1705, 27, 7, 2016, 4),
(1706, 28, 7, 2016, 4),
(1707, 29, 7, 2016, 4),
(1708, 30, 7, 2016, 9),
(1709, 31, 7, 2016, 3),
(1710, 31, 7, 2016, 3),
(1711, 1, 8, 2016, 2),
(1712, 1, 8, 2016, 2),
(1713, 2, 8, 2016, 4),
(1714, 3, 8, 2016, 3),
(1715, 4, 8, 2016, 8),
(1716, 5, 8, 2016, 5),
(1717, 6, 8, 2016, 2),
(1718, 7, 8, 2016, 2),
(1719, 8, 8, 2016, 3),
(1720, 9, 8, 2016, 8),
(1721, 10, 8, 2016, 7),
(1722, 11, 8, 2016, 5),
(1723, 12, 8, 2016, 3),
(1724, 13, 8, 2016, 3),
(1725, 14, 8, 2016, 2),
(1726, 15, 8, 2016, 4),
(1727, 16, 8, 2016, 5),
(1728, 17, 8, 2016, 4),
(1729, 18, 8, 2016, 5),
(1730, 19, 8, 2016, 5),
(1731, 20, 8, 2016, 3),
(1732, 21, 8, 2016, 3),
(1733, 22, 8, 2016, 5),
(1734, 23, 8, 2016, 4),
(1735, 24, 8, 2016, 3),
(1736, 25, 8, 2016, 4),
(1737, 26, 8, 2016, 6),
(1738, 26, 8, 2016, 6),
(1739, 27, 8, 2016, 3),
(1740, 28, 8, 2016, 1),
(1741, 29, 8, 2016, 5),
(1742, 30, 8, 2016, 4),
(1743, 31, 8, 2016, 1),
(1744, 3, 9, 2016, 1),
(1745, 5, 9, 2016, 1),
(1746, 6, 9, 2016, 1),
(1747, 7, 9, 2016, 4),
(1748, 8, 9, 2016, 1),
(1749, 9, 9, 2016, 2),
(1750, 10, 9, 2016, 2),
(1751, 12, 9, 2016, 1),
(1752, 13, 9, 2016, 1),
(1753, 14, 9, 2016, 2),
(1754, 15, 9, 2016, 4),
(1755, 16, 9, 2016, 3),
(1756, 17, 9, 2016, 2),
(1757, 18, 9, 2016, 2),
(1758, 19, 9, 2016, 2),
(1759, 20, 9, 2016, 3),
(1760, 21, 9, 2016, 2),
(1761, 22, 9, 2016, 3),
(1762, 23, 9, 2016, 2),
(1763, 24, 9, 2016, 2),
(1764, 25, 9, 2016, 3),
(1765, 26, 9, 2016, 4);

-- --------------------------------------------------------

--
-- Structure de la table `website`
--

CREATE TABLE IF NOT EXISTS `website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_decription` text COLLATE utf8_unicode_ci,
  `_order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `typical` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_modifile` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Structure de la table `word_replace`
--

CREATE TABLE IF NOT EXISTS `word_replace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` text COLLATE utf8_unicode_ci,
  `_replace` text COLLATE utf8_unicode_ci,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
