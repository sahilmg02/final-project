

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `jobscope`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `applicants`
-- 

CREATE TABLE `applicants` (
  `a_id` int(4) NOT NULL auto_increment,
  `a_uid` varchar(30) NOT NULL,
  `a_jid` varchar(30) NOT NULL,
  PRIMARY KEY  (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `applicants`
-- 

INSERT INTO `applicants` (`a_id`, `a_uid`, `a_jid`) VALUES 
(17, '11', '15'),
(18, '10', '18'),
(19, '10', '15'),
(20, '12', '19'),
(21, '12', '17'),
(22, '12', '20'),
(23, '10', '17');

-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
  `cat_id` int(4) NOT NULL auto_increment,
  `cat_nm` varchar(30) NOT NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `categories`
-- 

INSERT INTO `categories` (`cat_id`, `cat_nm`) VALUES 
(1, 'FINANCE'),
(2, 'SOFTWARE / HARDWARE'),
(3, 'PHARMACEUTICAL / MEDICAL'),
(4, 'AUTOMOBILE'),
(5, 'EDUCATION / TRAINING'),
(6,'REAL ESTATE'),
(7,'FOOD / HOTEL / TRAVEL'),
(8,'E-COMMERCE'),
(9,'MARKETING AND ADVERTISING'),
(10,'PHOTOGRAPHY AND DESIGNER'),
(11,'HEALTH AND FITNESS'),
(12,'IMPORT-EXPORT');

-- --------------------------------------------------------

-- 
-- Table structure for table `contact`
-- 

CREATE TABLE `contact` (
  `cont_id` int(4) NOT NULL auto_increment,
  `cont_fnm` varchar(30) NOT NULL,
  `cont_email` varchar(20) NOT NULL,
  `cont_query` varchar(300) NOT NULL,
  PRIMARY KEY  (`cont_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `contact`
-- 

INSERT INTO `contact` (`cont_id`, `cont_fnm`, `cont_email`, `cont_query`) VALUES 
(14, 'SAHIL GAIKWAD', 'sahilgaikwad@gnail.com', 'NEED BANKING SECTOR'),
(15, 'SOURABH SURVE', 'surve@gamil.com', 'AGRI-CULTURE');

-- --------------------------------------------------------

-- 
-- Table structure for table `employees`
-- 

CREATE TABLE `employees` (
  `ee_id` int(4) NOT NULL auto_increment,
  `ee_fnm` varchar(30) NOT NULL,
  `ee_pwd` varchar(10) NOT NULL,
  `ee_gender` varchar(1) NOT NULL,
  `ee_email` varchar(30) NOT NULL,
  `ee_add` varchar(300) NOT NULL,
  `ee_phno` varchar(10) NOT NULL,
  `ee_mobileno` varchar(10) NOT NULL,
  `ee_current_location` varchar(20) NOT NULL,
  `ee_annualsalary` int(10) NOT NULL,
  `ee_current_industry` varchar(20) NOT NULL,
  `ee_qualification` varchar(10) NOT NULL,
  `ee_profile` varchar(300) NOT NULL,
  `ee_resume` longtext NOT NULL,
  PRIMARY KEY  (`ee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `employees`
-- 

INSERT INTO `employees` (`ee_id`, `ee_fnm`, `ee_pwd`, `ee_gender`, `ee_email`, `ee_add`, `ee_phno`, `ee_mobileno`, `ee_current_location`, `ee_annualsalary`, `ee_current_industry`, `ee_qualification`, `ee_profile`, `ee_resume`) VALUES 
(10, 'SHUBHAM YAMGAR', 'shubham11', 'm', 'shubham@gmail.com', '"shubham",2nd floor ,kothrud', '0281257254', '9934235456', 'pune', 45000, 'infosys', 'mba', 'xyz', 'uploads/shubh.doc'),
(11, 'RUTVIK UDEG', 'rutvik11', 'm', 'rutvik_\\@yahoo.com', '"rutvik",bavdhan', '0792345672', '9423456789', 'pune', 35000, 'tcs', 'mtech', 'xyz', 'uploads/rutvik.doc'),
(12, 'PRIYANKA JADHAV', 'priyanka11', 'f', 'priyanka@gmail.com', '"priyanka",bhavnagar.', '0278213355', '9923555676', 'mumbai', 40000, 'tata', 'mcs', 'xyz', 'uploads/priyanka.doc'),
(13, 'ANIKET MAHALE', 'aniket11', 'M', 'aniket@gmail.com', '"aniket",bhosari,mumbai.', '0112345678', '9987766554', 'mumbai', 40000, 'birla', 'mba', 'xyz', 'uploads/aniket.doc');

-- --------------------------------------------------------

-- 
-- Table structure for table `employers`
-- 

CREATE TABLE `employers` (
  `er_id` int(4) NOT NULL auto_increment,
  `er_fnm` varchar(30) NOT NULL,
  `er_pwd` varchar(10) NOT NULL,
  `er_company` varchar(30) NOT NULL,
  `er_add` varchar(100) NOT NULL,
  `er_ph` varchar(10) NOT NULL,
  `er_email` varchar(30) NOT NULL,
  `er_company_profile` varchar(300) NOT NULL,
  PRIMARY KEY  (`er_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `employers`
-- 

INSERT INTO `employers` (`er_id`, `er_fnm`, `er_pwd`, `er_company`, `er_add`, `er_ph`, `er_email`, `er_company_profile`) VALUES 
(12, 'admin', '1111111', 'infosys', '"infosys",mumbai.', '0112345678', 'infosys_company@gmail.com', 'abc'),
(13, 'ALFAJ SHAIKH', 'alfaj22', 'infosys', 'infosys,mumbai.', '9925361132', 'alfaj@gmail.com', 'abc'),
(14, 'VEDANT MARNE', 'vedant22', 'tcs', '"tcs",gandhinagar.', '0792143576', 'vedantmarne@gmail.com', 'abc'),
(15, 'ABHISHEK KEDARI', 'abhishek22', 'accenture', 'accenture,gandhinagar.', '0798765432', 'abhishek_company@yahoo.com', 'abc'),
(16, 'ROHIT PATIL', 'rohit22', 'rohitmasale', 'masale,ahemadabad', '0792345677', 'rohit@gmail.com', 'dsfg');

-- --------------------------------------------------------

-- 
-- Table structure for table `jobs`
-- 

CREATE TABLE `jobs` (
  `j_id` int(4) NOT NULL auto_increment,
  `j_category` varchar(40) NOT NULL,
  `j_owner_name` varchar(30) NOT NULL,
  `j_title` varchar(30) NOT NULL,
  `j_hours` float(3,1) NOT NULL,
  `j_salary` int(10) NOT NULL,
  `j_experience` int(3) NOT NULL,
  `j_discription` varchar(300) NOT NULL,
  `j_city` varchar(20) NOT NULL,
  `j_active` int(1) NOT NULL default '0',
  PRIMARY KEY  (`j_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- 
-- Dumping data for table `jobs`
-- 

INSERT INTO `jobs` (`j_id`, `j_category`, `j_owner_name`, `j_title`, `j_hours`, `j_salary`, `j_experience`, `j_discription`, `j_city`, `j_active`) VALUES 

(21, 'FINANCE', 'ABHISHEK KEDARI', 'REQUIRED GRADUATE FOR FINANCE ROLE', 10.0, 45000, 5, 'dsd', 'GANDHINAGAR', 1),
(22, 'FOOD / HOTEL / TRAVEL', 'ROHIT PATIL', 'NEED FOR ASSISTANT', 12.0, 10000, 1, 'NEED GOOD COMMUNICATION SKILLS', 'ahemadabad', 1);


--(15, 'it-software', 'riddhi', 'need for the manager', 10.0, 40000, 2, 'abc', 'pune', 1),
--(17, 'banking', 'riddhi', 'need for the ca', 8.0, 45000, 4, 'dff', 'ahmedabad', 1),
--(18, 'it-hardware', 'vishwa', 'need for the manager', 10.0, 34000, 2, 'fdrf', 'pune', 1),
--(19, 'inport-export', 'vishwa', 'need for thr tredar', 12.0, 25000, 3, 'sdsdf', 'rajkot', 1),
--(20, 'finance', 'rushika', 'need for the assistent', 8.0, 34667, 3, 'wrert', 'pune', 1),