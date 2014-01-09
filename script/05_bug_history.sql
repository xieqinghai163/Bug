-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2014 at 09:38 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bug_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bug_history`
--

CREATE TABLE IF NOT EXISTS `bug_history` (
  `Bug_History_Id` int(11) NOT NULL AUTO_INCREMENT,
  `action_field` varchar(45) NOT NULL,
  `old_value` text,
  `new_value` text,
  `bug_action_id` int(11) NOT NULL,
  PRIMARY KEY (`Bug_History_Id`),
  KEY `fk_BUGHISTORY_BUGACTION` (`bug_action_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Constraints for table `bug_history`
--
ALTER TABLE `bug_history`
  ADD CONSTRAINT `fk_BUGHISTORY_BUGACTION` FOREIGN KEY (`bug_action_id`) REFERENCES `bug_action` (`bug_action_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
