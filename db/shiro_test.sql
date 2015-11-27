-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2015 at 05:46 AM
-- Server version: 5.1.70-0ubuntu0.10.04.1
-- PHP Version: 5.4.14-1~lucid+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shiro_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'TB', 'TIMBANG');

-- --------------------------------------------------------

--
-- Table structure for table `perms`
--

CREATE TABLE IF NOT EXISTS `perms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `perms`
--

INSERT INTO `perms` (`id`, `group_id`, `permission`) VALUES
(1, 1, 'admin:*'),
(2, 2, 'user:read,write'),
(3, 2, 'branch:*');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `branch_code` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `idx_username` (`username`,`email`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `ip_address`, `username`, `password`, `salt`, `email`, `photo`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `branch_code`) VALUES
(1, 1, '127.0.0.1', 'administrator', 'c93ccd78b2076528346216b3b2f701e6', '', 'admin@admin.com', '0', '', NULL, NULL, NULL, 1268889823, 1447697531, 1, 'Admin', 'Admin', 'ADMIN', '0', 'MDN-POINT'),
(2, 2, '127.0.0.1', 'admin', 'c93ccd78b2076528346216b3b2f701e6', NULL, 'auth401@gmail.com', '3042403_20130317060304.jpg', NULL, NULL, NULL, NULL, 1408809661, 1447041464, 1, 'Agung', 'Susanto', '0', '222', 'BRI-MDN-PTR'),
(6, 2, '127.0.0.1', 'rangga', 'c93ccd78b2076528346216b3b2f701e6', NULL, 'rangga@praditya.com', '', NULL, NULL, NULL, NULL, 1419754982, 1419754982, 1, 'rangga', 'praditya', '', '', 'MDN-POINT'),
(7, 2, '127.0.0.1', 'fatih', 'c93ccd78b2076528346216b3b2f701e6', NULL, 'fatih@abiyasa.com', '', NULL, NULL, NULL, NULL, 1419755120, 1419755120, 1, 'Fatih', 'Abiyasa', '', '111111', 'MDN-POINT'),
(8, 1, '127.0.0.1', 'bima', 'c93ccd78b2076528346216b3b2f701e6', NULL, 'bima@sena.com', '', NULL, NULL, NULL, NULL, 1419755249, 1447474837, 1, 'Bima', 'Sena', '', '', 'MDN-POINT'),
(9, 2, '127.0.0.1', 'dina', 'c93ccd78b2076528346216b3b2f701e6', NULL, 'dina@wulansari.com', '', NULL, NULL, NULL, NULL, 1419755362, 1419755362, 1, 'dina', 'wulansari', '', '', 'MDN-POINT'),
(13, 2, '127.0.0.1', 'agung', 'c93ccd78b2076528346216b3b2f701e6', NULL, 'agung@gmail.com', '', NULL, NULL, NULL, NULL, 1447474416, 1447697458, 1, 'Danang', 'Junaedi', NULL, '91919', 'MDN-POINT');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
