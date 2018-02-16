-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2018 at 05:14 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thewebportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
`activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(11, 'admin', '2017-11-05 13:23:08', 'Add School Year 2017-2018'),
(12, 'jesie', '2017-11-05 18:58:03', 'Add Subject 110011'),
(13, 'dominick', '2017-11-05 21:42:21', 'Add Subject 110012'),
(14, 'dominick', '2017-11-06 11:48:59', 'Add User armand'),
(15, '', '2017-11-28 12:48:27', 'Edit Subject FIL001'),
(16, '', '2017-11-28 12:48:39', 'Edit Subject MATH002'),
(17, '', '2017-11-28 12:49:18', 'Add Subject ENG003'),
(18, '', '2017-11-28 12:49:49', 'Add Subject SCI004'),
(19, '', '2017-11-28 12:50:26', 'Add Subject MAPEH005'),
(20, '', '2017-11-28 12:50:52', 'Add Subject TLE006'),
(21, '', '2017-11-28 12:51:26', 'Add Subject EP007'),
(22, '', '2017-12-01 16:30:33', 'Add School Year 2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
`answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
`assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(1, 'admin/uploads/2375_File_daemon tools.txt', '2018-01-29 21:15:05', 'use for school', 15, 194, 'tools');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(26, 'Grade 1'),
(27, 'Grade 2'),
(28, 'Grade 3'),
(29, 'Grade 4'),
(30, 'Grade 5'),
(31, 'Grade 6'),
(32, 'Grade 7'),
(33, 'Grade 8'),
(34, 'Grade 9'),
(35, 'Grade 10');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE IF NOT EXISTS `class_quiz` (
`class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE IF NOT EXISTS `class_subject_overview` (
`class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
`content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style="font-size:16px"><strong>Mission</strong></span></pre>\r\n\r\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span> &nbsp; <span style="font-size:18px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="background-color:rgb(241, 241, 241); color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:15px">Bacoor Parochial School of St. Michael the Archangel, Incorporated envision to be centre of learning providing quality, accessible and relevant education to the youth committed to the promotion of Christian values, wisdom, academic excellence and human dignity.&nbsp;</span><br />\r\n<span style="font-size:18px">&nbsp;</span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre>\r\n<span style="font-size:large"><strong>Vision</strong></span></pre>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:large">&nbsp;</span><span style="background-color:rgb(241, 241, 241); color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:15px">Our education is to give the youth a high level and quality education based on Christian principles. To guide the pupils/students in their quest of fulfilment, to train them in their Christian way of life, provide them opportunities for the development of academic excellence, vocational interest and skills, encourage them to search for the truth in order that will become intelligent and responsible citizens</span></p>\r\n'),
(3, 'History', '<pre>\r\n<span style="font-size:large">HISTORY &nbsp;</span> </pre>\r\n\r\n<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="background-color:rgb(255, 255, 255); color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:15px">In the year 1965, Rev. Fr. Jose Montenegro II and the young people of the Parish of St. Michael the Archangel of the Philippine Independent Catholic Church, Bacoor City, Cavite Philippines started a kindergarten class of 30 pupils. The following year, the parish applied to the Department of education of the Philippine Government for the authorization to operate the kindergarten course and to open Grade one of the Elementary course. A small space between the church building and the Rectory was use for this purpose. Every year, additional grades were opened and more rooms were constructed crowding not only the Rectory but also the Church Plaza. Meanwhile, parishioners responded by giving voluntary contributions for the construction of the additional rooms. The bulk of the funds come from the Easter and Christmas offerings.</span><br />\r\n<br />\r\n<span style="background-color:rgb(255, 255, 255); color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:15px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;By the School Year 1971-1976, a complete Elementary Course was in full operation with 241 pupils. At the end of the school year, the first graduation exercise was held. Before opening of the school year, the kindergarten course and complete elementary course were fully recognized by the Government.Even before the young people thought of starting a kindergarten class, the faithful of the parish and the community had long wanted to have a high school course. Even though the lack of funds, they still managed to establish the High School course and more youth were given the chance to be educated in this well established school. Bacoor Parish School was one of the excellent schools and produced graduates that are now professionals. But the storm came, challenge the strengths not only the parishioners but also the school. There was a big misunderstanding between the boards of the church and the priest. It ends up splitting the Aglipayan Church a well as the school. The main school ends up with the other parties. On the other hand, Father Lewis T. Lucea took up the place of Msgr. Montenegro when he passed away and started to stand up again with the helped of Mrs. Veronica Bernardo and the lay people.</span><br />\r\n<br />\r\n<span style="background-color:rgb(255, 255, 255); color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:15px">&nbsp;&nbsp;&nbsp;&nbsp;Bacoor Parish School managed by Bishop Lucea and Mrs. Bernardo continued to operate the kindergarten course. By School Year 2001-2002, they started to establish the High school course. By 2005, they thought of changing the school&rsquo;s name for some legal purposes. Dr. Macha helped by giving them a new name in Spanish but they end up with Bacoor Parochial School of St. Michael the Archangel Inc. In 2006, they produced the First Graduates of the High School course. By the next School Year 2006-2007, Bacoor Parochial operated a complete Kindergarten, Elementary and High School Course up to present.</span></p>\r\n'),
(4, 'Footer', '<p style="text-align:center">Welcome to: Bacoor Parochial school of St. Michael the Archangel, Inc. Web Portal</p>\r\n\r\n<p style="text-align:center">All Rights Reserved &reg;2017</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT 2018</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style="font-family:trebuchet ms,geneva">Bacoor Parochial School of St. Michaels the Archangel, Inc.</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style="font-size:medium"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style="font-size:medium"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style="text-align:center">\r\n<span style="font-size:medium"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align="center" cellpadding="0" cellspacing="0" style="line-height:1.6em; margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>June 10, 2016 to October 11, 2017</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n			<td>\r\n			<p>Oct. 12, 2016 to November 3, 2017</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Second Semester</p>\r\n			</td>\r\n			<td>\r\n			<p>Nov. 5, 2016 to March 27, 2017</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer Break</p>\r\n			</td>\r\n			<td>\r\n			<p>March 27, 2015 to April 8, 2017</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer</p>\r\n			</td>\r\n			<td>\r\n			<p>April 8 , 2016 to May 24, 2017</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<table cellpadding="0" cellspacing="0" style="line-height:1.6em; margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="4">\r\n			<p><strong>June 5, 2016 to October 11, 2017 &ndash; First Semester AY 2016-2017</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 4, 2017 &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with the Parents of the College&nbsp;Freshmen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>College Personnel General Assembly</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 6,7</p>\r\n			</td>\r\n			<td>\r\n			<p>In-Service Training (Departmental)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 10</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with Students by College/Campus/Department</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 19,20,21</p>\r\n			</td>\r\n			<td>\r\n			<p>Branch/Campus Visit for Administrative / Academic/Accreditation/ Concerns</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2">\r\n			<p>June</p>\r\n			</td>\r\n			<td>\r\n			<p>Club Organizations (By Discipline/Programs)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Student Affiliation/Induction Programs</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July</p>\r\n			</td>\r\n			<td>\r\n			<p>Nutrition Month (Sponsor: Laboratory School)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July 11, 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August&nbsp; 8, 9</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 19</p>\r\n			</td>\r\n			<td>\r\n			<p>ArawngLahi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 23</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grade Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition Program (Dean&rsquo;s List)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 26</p>\r\n			</td>\r\n			<td>\r\n			<p>National Heroes Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 28, 29, 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Sports and Cultural Meet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 5</p>\r\n			</td>\r\n			<td>\r\n			<p>Teachers&rsquo; Day / World Teachers&rsquo; Day</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 10, 11</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examination</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<table cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="4">\r\n			<p><strong>Nov. 4, 2016 to March 27, 2017 &ndash; Second Semester AY 2016-2017</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 19, 20, 21, 22</p>\r\n			</td>\r\n			<td>\r\n			<p>Intercampus Sports and Cultural Fest/College Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 5, 6</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Thanksgiving Celebrations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Christmas Vacation</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 25</p>\r\n			</td>\r\n			<td>\r\n			<p>Christmas Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Rizal Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 6, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>Classes Resume</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 9, 10</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 29</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grades Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>February 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 6, 7</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Non-Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 17, 18, 19, 20, 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition / Graduation Rites</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 27</p>\r\n			</td>\r\n			<td>\r\n			<p>Last Day of Service for Faculty</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5, 2016</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service for SY 2016-2017</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(11, 'Directories', '<div class="jsn-article-content" style="text-align: left;">\r\n<pre>\r\n<span style="font-size:medium"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Phone: 0927-235-1985 / 0906-239-9507</li>\r\n	<li>Email: bacoorparochialschool@gmail.com</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', ''),
(13, 'motto', '<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">CHMSC EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style="font-size:16px"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>Bacoor City Cavite Campus</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(9, 'ELEMENTARY DEPARTMENT', 'Yolanda A. Penaranda'),
(10, 'HIGH SCHOOL DEPARTMENT', 'Marissa Anonuevo'),
(11, 'IT', 'Gizelle ROdero');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(20, 'bday ko', 186, '11/08/2017', '11/08/2017'),
(26, 'New Year', 0, '01/01/2018', '01/02/2018'),
(27, 'People Power Aniversary', 0, '02/16/2018', '01/16/2018'),
(28, 'Maundy Thursday', 0, '03/29/2018', '03/29/2018'),
(29, 'Good Friday', 0, '03/30/2018', '03/30/2018'),
(30, 'The Day of Valor', 0, '04/09/2018', '04/09/2018'),
(31, 'Labor Day', 0, '05/01/2018', '05/01/2018');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
`file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(139, 'admin/uploads/6130_File_ricalde.jpg', '2017-11-06 16:35:22', 'series', 19, 187, 'Horror News', 'Denesalaro'),
(140, 'admin/uploads/5803_File_dominick.jpg', '2017-11-06 17:18:50', 'qwedqd', 0, 187, 'qqqqq', 'DominickMuyalde'),
(141, 'admin/uploads/7473_File_Throwaway Prototyping methodology.docx', '2017-11-28 11:47:08', 'asss', 15, 188, 'review', 'CarmelaVisitacion'),
(142, 'admin/uploads/2652_File_1st PT 3.docx', '2017-11-28 13:01:53', 'Please Answer', 222, 192, 'Quiz3', ''),
(143, 'admin/uploads/2457_File_1st PT 3.docx', '2017-11-28 13:04:10', 'Gawin mo', 15, 188, 'ASS3', 'CarmelaVisitacion'),
(144, 'admin/uploads/1661_File_1st PT 3.docx', '2017-12-01 12:48:52', 'haha', 222, 192, 'blood', ''),
(145, 'admin/uploads/4422_File_grade sample.xls', '2017-12-01 13:25:01', 'dsahkjdfh', 15, 188, 'grade', 'CarmelaVisitacion'),
(146, 'admin/uploads/7553_File_grade sample.pdf', '2017-12-01 14:36:24', 'grademoto', 15, 188, 'grade', 'CarmelaVisitacion'),
(147, 'admin/uploads/2459_File_grade sample.pdf', '2017-12-01 14:40:27', 'grade', 15, 193, 'grade', 'CarmelaVisitacion'),
(148, 'admin/uploads/5984_File_grade sample.pdf', '2017-12-01 16:21:33', 'ret', 15, 193, 'ret', 'CarmelaVisitacion');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 221, 'kkkkk', '2017-11-06 11:38:58', 222, 'Dominick Muyalde', 'Christopher Salles', 'read'),
(4, 19, 'petmali lodi', '2017-11-06 17:34:25', 19, 'Denesa laro', 'Denesa laro', ''),
(5, 221, 'adfadawdawd', '2017-11-06 17:36:01', 19, 'Dominick Muyalde', 'Denesa laro', 'read'),
(8, 221, 'hello', '2017-11-10 12:24:54', 19, 'Dominick Muyalde', 'Denesa laro', 'read'),
(9, 15, 'hi mam', '2017-11-28 11:50:09', 222, 'Carmela Visitacion', 'Christopher Salles', ''),
(11, 222, 'hi topher', '2017-12-01 13:46:10', 15, 'Christopher Salles', 'Carmela Visitacion', 'read'),
(12, 15, 'hi dinmam', '2017-12-01 13:47:14', 222, 'Carmela Visitacion', 'Christopher Salles', ''),
(13, 15, 'hello lodi\r\n', '2017-12-26 15:24:42', 221, 'Carmela Visitacion', 'Dominick Muyalde', ''),
(14, 15, 'hello lodi\r\n', '2017-12-26 15:24:43', 221, 'Carmela Visitacion', 'Dominick Muyalde', ''),
(15, 15, 'hi\r\n', '2017-12-26 15:25:52', 221, 'Carmela Visitacion', 'Dominick Muyalde', ''),
(16, 15, 'j', '2017-12-26 15:26:27', 221, 'Carmela Visitacion', 'Dominick Muyalde', ''),
(17, 221, 'hoy\r\n', '2017-12-26 15:26:54', 15, 'Dominick Muyalde', 'Carmela Visitacion', 'read'),
(18, 222, '', '2018-01-03 21:53:11', 221, 'Christopher Salles', 'Dominick Muyalde', ''),
(19, 221, 'hello', '2018-01-27 16:07:49', 221, 'Dominick Muyalde', 'Dominick Muyalde', 'read'),
(20, 15, 'ad', '2018-01-29 21:42:15', 15, 'Carmela Visitacion', 'Carmela Visitacion', ''),
(21, 221, 'hi', '2018-01-29 21:42:30', 15, 'Dominick Muyalde', 'Carmela Visitacion', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE IF NOT EXISTS `message_sent` (
`message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 222, 'hello', '2017-11-06 10:25:19', 221, 'Christopher Salles', 'Dominick Muyalde'),
(2, 221, 'kkkkk', '2017-11-06 11:38:58', 222, 'Dominick Muyalde', 'Christopher Salles'),
(3, 19, 'hello\r\n', '2017-11-06 17:33:58', 19, 'Denesa laro', 'Denesa laro'),
(4, 19, 'petmali lodi', '2017-11-06 17:34:25', 19, 'Denesa laro', 'Denesa laro'),
(5, 221, 'adfadawdawd', '2017-11-06 17:36:02', 19, 'Dominick Muyalde', 'Denesa laro'),
(6, 222, '', '2017-11-06 17:38:06', 221, 'Christopher Salles', 'Dominick Muyalde'),
(7, 222, '', '2017-11-06 17:39:40', 221, 'Christopher Salles', 'Dominick Muyalde'),
(8, 221, 'hello', '2017-11-10 12:24:54', 19, 'Dominick Muyalde', 'Denesa laro'),
(9, 15, 'hi mam', '2017-11-28 11:50:09', 222, 'Carmela Visitacion', 'Christopher Salles'),
(10, 222, 'pangit mo', '2017-11-28 11:50:45', 15, 'Christopher Salles', 'Carmela Visitacion'),
(11, 222, 'hi topher', '2017-12-01 13:46:10', 15, 'Christopher Salles', 'Carmela Visitacion'),
(12, 15, 'hi dinmam', '2017-12-01 13:47:14', 222, 'Carmela Visitacion', 'Christopher Salles'),
(13, 15, 'hello lodi\r\n', '2017-12-26 15:24:42', 221, 'Carmela Visitacion', 'Dominick Muyalde'),
(14, 15, 'hello lodi\r\n', '2017-12-26 15:24:43', 221, 'Carmela Visitacion', 'Dominick Muyalde'),
(15, 15, 'hi\r\n', '2017-12-26 15:25:52', 221, 'Carmela Visitacion', 'Dominick Muyalde'),
(17, 221, 'hoy\r\n', '2017-12-26 15:26:54', 15, 'Dominick Muyalde', 'Carmela Visitacion'),
(20, 15, 'ad', '2018-01-29 21:42:15', 15, 'Carmela Visitacion', 'Carmela Visitacion'),
(21, 221, 'hi', '2018-01-29 21:42:30', 15, 'Dominick Muyalde', 'Carmela Visitacion');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
`notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(15, 186, 'Add Annoucements', '2017-11-05 19:02:05', 'announcements_student.php'),
(16, 187, 'Add Downloadable Materials file name <b>Horror News</b>', '2017-11-06 16:35:22', 'downloadable_student.php'),
(17, 188, 'Add Downloadable Materials file name <b>review</b>', '2017-11-28 11:47:08', 'downloadable_student.php'),
(18, 0, 'Add Downloadable Materials file name <b>Quiz3</b>', '2017-11-28 13:01:53', 'downloadable_student.php'),
(19, 188, 'Add Downloadable Materials file name <b>ASS3</b>', '2017-11-28 13:04:10', 'downloadable_student.php'),
(20, 192, 'Add Downloadable Materials file name <b>blood</b>', '2017-12-01 12:48:52', 'downloadable_student.php'),
(21, 188, 'Add Annoucements', '2017-12-01 13:22:58', 'announcements_student.php'),
(22, 188, 'Add Downloadable Materials file name <b>grade</b>', '2017-12-01 13:25:01', 'downloadable_student.php'),
(23, 188, 'Add Downloadable Materials file name <b>grade</b>', '2017-12-01 14:36:24', 'downloadable_student.php'),
(24, 193, 'Add Downloadable Materials file name <b>grade</b>', '2017-12-01 14:40:27', 'downloadable_student.php'),
(25, 193, 'Add Downloadable Materials file name <b>ret</b>', '2017-12-01 16:21:33', 'downloadable_student.php'),
(26, 194, 'Add Annoucements', '2018-01-29 21:12:25', 'announcements_student.php'),
(27, 194, 'Add Annoucements', '2018-01-29 21:13:08', 'announcements_student.php'),
(28, 194, 'Add Assignment file name <b>tools</b>', '2018-01-29 21:15:05', 'assignment_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE IF NOT EXISTS `notification_read` (
`notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 221, 'yes', 15),
(2, 221, 'yes', 16),
(3, 221, 'yes', 28),
(4, 221, 'yes', 27),
(5, 221, 'yes', 26),
(6, 222, 'yes', 28),
(7, 222, 'yes', 27),
(8, 222, 'yes', 26),
(9, 229, 'yes', 28),
(10, 229, 'yes', 27),
(11, 229, 'yes', 26);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE IF NOT EXISTS `notification_read_teacher` (
`notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(8, 12, 'yes', 7),
(9, 19, 'yes', 18),
(10, 19, 'yes', 19);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
`quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE IF NOT EXISTS `quiz_question` (
`quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE IF NOT EXISTS `school_year` (
`school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2017-2018'),
(5, '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `my_self` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `guardian_name` varchar(50) NOT NULL,
  `guardian_contact_number` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`, `middlename`, `contact_number`, `email`, `address`, `my_self`, `sex`, `guardian_name`, `guardian_contact_number`) VALUES
(221, 'Dominick', 'Muyalde', 35, '201511413', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/User-100.png', 'Registered', 'Dulle', '09402431234', 'dom@lupet.com', 'Imus Cavite', 'i am malakas', '', '', ''),
(222, 'Christopher', 'Salles', 35, '201412454', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/maxresdefault.jpg', 'Registered', '', '', '', '', '', '', '', ''),
(226, 'Rinchelle Chloe', 'Lagman', 26, '201700001', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '', '', '', '', '', '', '', ''),
(227, 'Jaahzen Aiken', 'Caldosa', 26, '201700002', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', '', '', '', '', '', ''),
(228, 'Khirk Waynee', 'Pereza', 26, '201700003', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', '', '', '', '', '', ''),
(229, 'Miray', 'Vergara', 35, '201411561', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '', '', '', '', '', '', '', ''),
(230, 'juan', 'luna', 34, '20171234', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '', '', '', '', '', '', '', ''),
(231, 'Carl', 'Lome', 9, '123741', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', '', '', '', '', '', ''),
(232, 'Mark', 'Lore', 9, '147789963', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', '', '', '', '', '', ''),
(233, 'Mike', 'More', 28, '1258478', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', '', '', '', '', '', ''),
(234, 'Lito', 'Red', 26, '148234098', '', 'contact_number', 'sex', 'R', '09878786', 'aaa@gmaik.com', 'cavite', '', 'male', 'Lito Sr.', '09982983');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE IF NOT EXISTS `student_assignment` (
`student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE IF NOT EXISTS `student_backpack` (
`file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE IF NOT EXISTS `student_class_quiz` (
`student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(43, 'MATH002', 'Math', '', '', 2, '', 'Major Subject'),
(42, 'FIL001', 'Filipino', '', '', 1, '', '1st'),
(44, 'ENG003', 'English', '', '', 3, '', 'Major Subject'),
(45, 'SCI004', 'Science and Technology', '', '', 3, '', 'Major Subject'),
(46, 'MAPEH005', 'Music, Arts ,PE and Health', '', '', 2, '', 'Minor Subject'),
(47, 'TLE006', 'Home Enomics', '', '', 2, '', 'Minor Subject'),
(48, 'EP007', 'Edukasyon Pagpapahalaga', '', '', 2, '', 'Minor Subject');

-- --------------------------------------------------------

--
-- Table structure for table `super_user`
--

CREATE TABLE IF NOT EXISTS `super_user` (
`user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_user`
--

INSERT INTO `super_user` (`user_id`, `username`, `password`, `firstname`, `lastname`, `address`) VALUES
(1, 'superuser', '81dc9bdb52d04dc20036dbd8313ed055', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
`teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `about_my_self` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`, `middlename`, `contact_number`, `email`, `address`, `about_my_self`, `sex`) VALUES
(15, '897346', '31d5c3221900f07120d3cfd1b2961ded', 'Carmela', 'Visitacion', 10, 'uploads/child-abuse4-300x336.jpg', '', '', 'Deactivated', 'Cruz', '', '', '', '', 'Female'),
(21, '23572', '81dc9bdb52d04dc20036dbd8313ed055', 'Daisy Rey ', 'Luciano', 9, 'uploads/daisy.png', '', '', '', 'W', '', '', '', '', 'Female'),
(19, '23572222', '81dc9bdb52d04dc20036dbd8313ed055', 'Madelyn', 'Lucas', 9, 'uploads/mads.jpg', '', 'Registered', 'Deactivated', 'E', '', '', '', '', 'Female'),
(22, '777999222', '', 'Zaldy', 'Ronquillo', 9, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '', 'T', '', '', '', '', 'Male'),
(23, '349821', '81dc9bdb52d04dc20036dbd8313ed055', 'carl', 'bando', 9, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '', 'R', '', '', '', '', 'Male'),
(24, '1110978', '81dc9bdb52d04dc20036dbd8313ed055', 'Loren', 'Ortega', 9, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '', 'Q', '', '', '', '', 'Female'),
(26, '20181234', '81dc9bdb52d04dc20036dbd8313ed055', 'Ricardo', 'Dalisay', 10, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '', 'D', '', '', '', '', ''),
(27, '20181235', '81dc9bdb52d04dc20036dbd8313ed055', 'Maria', 'Leonora', 10, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '', 'Teresa', '', '', '', '', 'Female'),
(28, '1472883177', '81dc9bdb52d04dc20036dbd8313ed055', 'Xander', 'Ford', 10, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '', 'E', '', '', '', '', 'Male'),
(29, '193478', '81dc9bdb52d04dc20036dbd8313ed055', 'Mike', 'Cruz', 10, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '', 'D', '', '', '', '', 'Male'),
(30, '145034782', '81dc9bdb52d04dc20036dbd8313ed055', 'Luis', 'Dalisay', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '', 'E', '', '', '', '', 'Male'),
(31, '7787232', '', '123', '1231', 10, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '', '123123', '', '', '', '', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE IF NOT EXISTS `teacher_backpack` (
`file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE IF NOT EXISTS `teacher_class` (
`teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2012-2013'),
(135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(188, 15, 25, 43, 'admin/uploads/thumbnails.jpg', '2017-2018'),
(189, 21, 25, 42, 'admin/uploads/thumbnails.jpg', '2017-2018'),
(190, 19, 35, 44, 'admin/uploads/thumbnails.jpg', '2017-2018'),
(191, 19, 35, 42, 'admin/uploads/thumbnails.jpg', '2017-2018'),
(192, 222, 35, 44, 'admin/uploads/thumbnails.jpg', '2017-2018'),
(193, 15, 35, 44, 'admin/uploads/thumbnails.jpg', '2017-2018'),
(194, 15, 35, 46, 'admin/uploads/thumbnails.jpg', '2018-2019'),
(195, 15, 35, 47, 'admin/uploads/thumbnails.jpg', '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE IF NOT EXISTS `teacher_class_announcements` (
`teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt="sad" src="http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif" style="height:20px; width:20px" title="sad" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(40, '<p>SDKJAIKJADJ</p>\r\n', '15', 188, '2017-12-01 13:22:58'),
(42, '<p>hello students</p>\r\n', '15', 194, '2018-01-29 21:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE IF NOT EXISTS `teacher_class_student` (
`teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(380, 188, 222, 15),
(381, 189, 222, 21),
(382, 190, 221, 19),
(383, 190, 222, 19),
(384, 191, 221, 19),
(385, 191, 222, 19),
(386, 192, 221, 222),
(387, 192, 222, 222),
(388, 193, 221, 15),
(389, 193, 222, 15),
(390, 193, 229, 15),
(391, 194, 221, 15),
(392, 194, 222, 15),
(393, 194, 229, 15),
(394, 195, 221, 15),
(395, 195, 222, 15),
(396, 195, 229, 15);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE IF NOT EXISTS `teacher_notification` (
`teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE IF NOT EXISTS `teacher_shared` (
`teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'dominick', '34bd6293fd4a4775fa9a89639282fa49', 'dominick', 'muyalde'),
(14, 'ctopher', '6e72e26c8bd05dd19f63b71fe19ccb75', 'c', 'Salles'),
(15, 'jesie', '7eabac300dae40bc82e36ec2dc0bc422', 'jesie james', 'ricalde'),
(16, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
`user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(84, 'admin', '2017-11-05 12:33:54', '2018-01-10 17:55:42', 15),
(85, 'dominick', '2017-11-05 13:26:33', '2018-02-05 20:34:02', 13),
(86, 'dominick', '2017-11-05 14:32:44', '2018-02-05 20:34:02', 13),
(87, 'dominick', '2017-11-05 14:54:29', '2018-02-05 20:34:02', 13),
(88, 'dominick', '2017-11-05 16:09:15', '2018-02-05 20:34:02', 13),
(89, 'dominick', '2017-11-05 16:17:13', '2018-02-05 20:34:02', 13),
(90, 'ctopper', '2017-11-05 16:22:01', '2017-11-06 08:38:53', 14),
(91, 'dominick', '2017-11-05 16:31:30', '2018-02-05 20:34:02', 13),
(92, 'ctopper', '2017-11-05 17:57:50', '2017-11-06 08:38:53', 14),
(93, 'dominick', '2017-11-05 18:11:42', '2018-02-05 20:34:02', 13),
(94, 'dominick', '2017-11-05 18:40:06', '2018-02-05 20:34:02', 13),
(95, 'dominicK', '2017-11-05 18:48:36', '2018-02-05 20:34:02', 13),
(96, 'dominick', '2017-11-05 20:45:57', '2018-02-05 20:34:02', 13),
(97, 'dominick', '2017-11-05 21:37:16', '2018-02-05 20:34:02', 13),
(98, 'dominick', '2017-11-06 07:59:18', '2018-02-05 20:34:02', 13),
(99, 'ctopher', '2017-11-06 08:30:04', '2017-11-06 08:38:53', 14),
(100, 'dominick', '2017-11-06 08:40:09', '2018-02-05 20:34:02', 13),
(101, 'dominick', '2017-11-06 10:18:19', '2018-02-05 20:34:02', 13),
(102, 'ctopher', '2017-11-06 11:37:11', '', 14),
(103, 'dominick', '2017-11-06 11:48:20', '2018-02-05 20:34:02', 13),
(104, 'armand', '2017-11-06 11:50:15', '', 17),
(105, 'dominick', '2017-11-06 16:03:04', '2018-02-05 20:34:02', 13),
(106, 'dominick', '2017-11-06 16:24:23', '2018-02-05 20:34:02', 13),
(107, 'dominick', '2017-11-06 16:34:15', '2018-02-05 20:34:02', 13),
(108, 'dominick', '2017-11-06 16:39:10', '2018-02-05 20:34:02', 13),
(109, 'dominick', '2017-11-06 16:39:53', '2018-02-05 20:34:02', 13),
(110, 'dominick', '2017-11-06 17:20:07', '2018-02-05 20:34:02', 13),
(111, 'dominick', '2017-11-10 12:17:53', '2018-02-05 20:34:02', 13),
(112, 'dominick', '2017-11-10 12:28:17', '2018-02-05 20:34:02', 13),
(113, 'dominick', '2017-11-11 21:38:06', '2018-02-05 20:34:02', 13),
(114, 'ctopher', '2017-11-28 11:42:33', '', 14),
(115, 'ctopher', '2017-11-28 11:52:07', '', 14),
(116, 'ctopher', '2017-12-01 12:54:10', '', 14),
(117, 'ctopher', '2017-12-01 13:48:12', '', 14),
(118, 'ctopher', '2017-12-01 14:37:50', '', 14),
(119, 'ctopher', '2017-12-01 16:09:08', '', 14),
(120, 'ctopher', '2017-12-01 16:38:47', '', 14),
(121, 'dominick', '2017-12-23 16:42:07', '2018-02-05 20:34:02', 13),
(122, 'dominick', '2017-12-24 16:07:32', '2018-02-05 20:34:02', 13),
(123, 'dominick', '2017-12-29 18:12:21', '2018-02-05 20:34:02', 13),
(124, 'dominick', '2017-12-29 18:35:03', '2018-02-05 20:34:02', 13),
(125, 'dominick', '2018-01-09 16:02:33', '2018-02-05 20:34:02', 13),
(126, 'dominick', '2018-01-09 16:05:49', '2018-02-05 20:34:02', 13),
(127, 'dominick', '2018-01-09 16:08:38', '2018-02-05 20:34:02', 13),
(128, 'dominick', '2018-01-09 16:24:22', '2018-02-05 20:34:02', 13),
(129, 'dominick', '2018-01-09 16:29:59', '2018-02-05 20:34:02', 13),
(130, 'dominick', '2018-01-09 16:35:08', '2018-02-05 20:34:02', 13),
(131, 'dominick', '2018-01-09 16:36:05', '2018-02-05 20:34:02', 13),
(132, 'dominick', '2018-01-09 16:54:43', '2018-02-05 20:34:02', 13),
(133, 'dominick', '2018-01-10 17:53:47', '2018-02-05 20:34:02', 13),
(134, 'dominick', '2018-01-10 17:55:49', '2018-02-05 20:34:02', 13),
(135, 'dominick', '2018-01-10 17:56:35', '2018-02-05 20:34:02', 13),
(136, 'superuser', '2018-01-10 18:11:06', '2018-02-10 22:59:49', 1),
(137, 'dominick', '2018-01-10 18:20:53', '2018-02-05 20:34:02', 13),
(138, 'dominick', '2018-01-10 21:53:33', '2018-02-05 20:34:02', 13),
(139, 'dominick', '2018-01-10 22:00:19', '2018-02-05 20:34:02', 13),
(140, 'dominick', '2018-01-10 22:15:39', '2018-02-05 20:34:02', 13),
(141, 'dominick', '2018-01-10 22:21:40', '2018-02-05 20:34:02', 13),
(142, 'dominick', '2018-02-05 15:57:19', '2018-02-05 20:34:02', 13),
(143, 'dominick', '2018-02-05 20:12:50', '2018-02-05 20:34:02', 13),
(144, 'dominick', '2018-02-05 20:33:58', '2018-02-05 20:34:02', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
 ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
 ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
 ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
 ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
 ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
 ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
 ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
 ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
 ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
 ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
 ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
 ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
 ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`student_id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
 ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
 ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
 ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `super_user`
--
ALTER TABLE `super_user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
 ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
 ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
 ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
 ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
 ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
 ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
 ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
 ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `super_user`
--
ALTER TABLE `super_user`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
