-- phpmyadmin sql dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- host: 127.0.0.1
-- generation time: jan 08, 2014 at 09:37 pm
-- server version: 5.5.34
-- php version: 5.4.22

set sql_mode = "no_auto_value_on_zero";
set time_zone = "+00:00";


/*!40101 set @old_character_set_client=@@character_set_client */;
/*!40101 set @old_character_set_results=@@character_set_results */;
/*!40101 set @old_collation_connection=@@collation_connection */;
/*!40101 set names utf8 */;

--
-- database: `bug_project`
--

-- --------------------------------------------------------

--
-- table structure for table `bug_info`
--

create table if not exists `bug_info` (
  `bug_info_id` int(11) not null auto_increment,
  `bug_title` varchar(255) not null,  
  `status` varchar(45) not null,  
  `assign_to_developper` int(11) default null,  
  `assign_to_tester` int(11) default null,   
  `priority` tinyint(4) default null,
  `description` text not null, 
  `comments` text not null,
  `created_by` int(11) not null,
  `created_at` datetime not null,  
  `closed_at` datetime default null,
  `closed_by` int(11) default null,
  `fixed_at` datetime default null,
  `fixed_by` int(11) default null,  
  `project_id` int(11) default null,

  primary key (`bug_info_id`),
  key `bug_title` (`bug_title`),  
  key `status` (`status`),
  key `assign_to_developper` (`assign_to_developper`),
  key `assign_to_tester` (`assign_to_tester`),  
  key `created_by` (`created_by`),
  key `closed_by` (`closed_by`),
  key `fixed_at` (`fixed_at`),
  key `idx_projectid_bug_info_id` (`project_id`,`bug_info_id`),
  key `bug_info_project` (`project_id`)
) engine=innodb  default charset=utf8 auto_increment=2 ;

--
-- constraints for table `bug_info`
--
alter table `bug_info`
  add constraint `bug_info_project` foreign key (`project_id`) references `project` (`project_id`) on delete no action on update no action;

/*!40101 set character_set_client=@old_character_set_client */;
/*!40101 set character_set_results=@old_character_set_results */;
/*!40101 set collation_connection=@old_collation_connection */;
