-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 21 Şub 2021, 17:35:03
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `coursesystem`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_Id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `course_detailsTitle` varchar(50) NOT NULL,
  `course_detailsDescription` text NOT NULL,
  `course_videosId` int(11) NOT NULL,
  `course_detailsClicked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`course_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `course_videos`
--

DROP TABLE IF EXISTS `course_videos`;
CREATE TABLE IF NOT EXISTS `course_videos` (
  `course_videosId` int(11) NOT NULL AUTO_INCREMENT,
  `course_videosName` varchar(255) NOT NULL,
  `course_videosURL` text NOT NULL,
  PRIMARY KEY (`course_videosId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_avatar` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_gsmNo` int(11) NOT NULL,
  `il_id` int(11) NOT NULL,
  `ilce_id` int(11) NOT NULL,
  `user_educationDegreeId` int(11) NOT NULL,
  `user_status` enum('0','1') NOT NULL,
  `user_isOnline` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `useractivitydetails`
--

DROP TABLE IF EXISTS `useractivitydetails`;
CREATE TABLE IF NOT EXISTS `useractivitydetails` (
  `userActivityDetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `userActivityDetails_Description` varchar(255) NOT NULL,
  PRIMARY KEY (`userActivityDetails_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE IF NOT EXISTS `user_activity` (
  `userActivity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  ` 	userActivityDetails_id` int(11) NOT NULL,
  `user_activityTime` int(11) NOT NULL,
  PRIMARY KEY (`userActivity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_registeredcategory`
--

DROP TABLE IF EXISTS `user_registeredcategory`;
CREATE TABLE IF NOT EXISTS `user_registeredcategory` (
  `user_registeredCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`user_registeredCategoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_watchedcourses`
--

DROP TABLE IF EXISTS `user_watchedcourses`;
CREATE TABLE IF NOT EXISTS `user_watchedcourses` (
  `user_watchedCoursesId` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `courses_id` int(11) NOT NULL,
  PRIMARY KEY (`user_watchedCoursesId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
