-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2014 at 11:35 PM
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
  `bug_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action_type` varchar(255) NOT NULL,
  `action_note` text,
  `bug_info_id` int(11) NOT NULL,
  PRIMARY KEY (`bug_action_id`),
  KEY `fk_bugaction_buginfo` (`bug_info_id`),
  KEY `action_type` (`action_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `bug_file`
--

CREATE TABLE IF NOT EXISTS `bug_file` (
  `bug_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_title` varchar(255) NOT NULL,
  `file_location` text NOT NULL,
  `file_type` varchar(45) DEFAULT NULL,
  `file_size` varchar(45) NOT NULL,
  `is_dropped` enum('0','1') NOT NULL,
  `bug_info_id` int(11) NOT NULL,
  `add_action_id` int(11) NOT NULL,
  `delete_action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bug_file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `bug_history`
--

CREATE TABLE IF NOT EXISTS `bug_history` (
  `bug_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_field` varchar(45) NOT NULL,
  `old_value` text,
  `new_value` text,
  `bug_action_id` int(11) NOT NULL,
  PRIMARY KEY (`bug_history_id`),
  KEY `fk_bughistory_bugaction` (`bug_action_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `bug_info`
--

CREATE TABLE IF NOT EXISTS `bug_info` (
  `bug_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `bug_title` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `assign_to_developper` int(11) DEFAULT NULL,
  `assign_to_tester` int(11) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `description` text NOT NULL,
  `comments` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `closed_at` datetime DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `fixed_at` datetime DEFAULT NULL,
  `fixed_by` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bug_info_id`),
  KEY `bug_title` (`bug_title`),
  KEY `status` (`status`),
  KEY `assign_to_developper` (`assign_to_developper`),
  KEY `assign_to_tester` (`assign_to_tester`),
  KEY `created_by` (`created_by`),
  KEY `closed_by` (`closed_by`),
  KEY `fixed_at` (`fixed_at`),
  KEY `idx_projectid_bug_info_id` (`project_id`,`bug_info_id`),
  KEY `bug_info_project` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_dropped` enum('0','1') NOT NULL,
  `display_order` smallint(6) NOT NULL,
  `bug_priority` varchar(255) NOT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_name_unique` (`project_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fname`, `lname`, `email`, `user_type`) VALUES
(11, 'admin', 'f9b271bcead0d100fc6399488', 'tam', 'tamtam', 'admin@vanier.com', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bug_action`
--
ALTER TABLE `bug_action`
  ADD CONSTRAINT `fk_bugaction_buginfo` FOREIGN KEY (`bug_info_id`) REFERENCES `bug_info` (`bug_info_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bug_history`
--
ALTER TABLE `bug_history`
  ADD CONSTRAINT `fk_bughistory_bugaction` FOREIGN KEY (`bug_action_id`) REFERENCES `bug_action` (`bug_action_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bug_info`
--
ALTER TABLE `bug_info`
  ADD CONSTRAINT `bug_info_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
