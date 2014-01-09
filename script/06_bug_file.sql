-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2014 at 09:39 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bugfree`
--

-- --------------------------------------------------------

--
-- Table structure for table `bf_test_file`
--

CREATE TABLE IF NOT EXISTS `bf_test_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_title` varchar(255) NOT NULL,
  `file_location` text NOT NULL,
  `file_type` varchar(45) DEFAULT NULL,
  `file_size` varchar(45) NOT NULL,
  `is_dropped` enum('0','1') NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` enum('bug','case','result') NOT NULL,
  `add_action_id` int(11) NOT NULL,
  `delete_action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bf_test_file`
--

INSERT INTO `bf_test_file` (`id`, `file_title`, `file_location`, `file_type`, `file_size`, `is_dropped`, `target_id`, `target_type`, `add_action_id`, `delete_action_id`) VALUES
(1, 'New Text Document.txt', 'Project1/201401/032740130.txt', 'txt', '0.00391KB', '0', 1, 'bug', 7, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
