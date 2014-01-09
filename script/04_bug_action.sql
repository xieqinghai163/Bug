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
-- Table structure for table `bug_action`
--

CREATE TABLE IF NOT EXISTS `bug_action` (
  `Bug_Action_Id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action_type` varchar(255) NOT NULL,
  `action_note` text,
  `Bug_Info_Id` int(11) NOT NULL,
  PRIMARY KEY (`Bug_Action_Id`),
  KEY `fk_BUGACTION_BUGINFO` (`Bug_Info_Id`),
  KEY `action_type` (`action_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Constraints for table `bug_action`
--
ALTER TABLE `bug_action`
  ADD CONSTRAINT `fk_BUGACTION_BUGINFO` FOREIGN KEY (`bug_info_id`) REFERENCES `bug_info` (`bug_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
