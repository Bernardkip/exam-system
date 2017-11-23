-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: april 01, 2017 at 01:19 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15
/*
@author Bernard
@copyright bernard rono.0727087053
 */

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Sports'),
(2, 'HTML'),
(3, 'PHP'),
(4, 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_name` text NOT NULL,
  `answer1` varchar(250) NOT NULL,
  `answer2` varchar(250) NOT NULL,
  `answer3` varchar(250) NOT NULL,
  `answer4` varchar(250) NOT NULL,
  `answer5` varchar(250) NOT NULL,
  `answer6` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_name`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `answer6`, `answer`, `category_id`) VALUES
(1, 'Where did India play its 1st one day international match?', 'Lords', 'Headingley', 'Taunton', 'The Oval', '', '', '2', 1),
(2, 'Who was the 1st ODI captain for India?\r\n', 'Ajit Wadekar ', 'Bishen Singh Bedi', 'Nawab Pataudi', 'Vinoo Mankad ', '', '', '1', 1),
(3, 'Who has made the Fastest Test century in Test Cricket ?\r\n\r\n\r\n\r\n', 'Sachin Tendulkar', ' Sahid Afridi', ' Virender Sehwag', 'Vivian Richards', '', '', '4', 1),
(4, 'Which Bowler had the Best figures in a Test Match ?\r\n\r\n\r\n\r\n\r\n', 'Muttiah Muralitharan', 'Bob Massie', 'Jim Laker', 'George Lohmann', '', '', '3', 1),
(5, 'Which team has the Largest successful run chase record in ODIs ?\r\n\r\n\r\n\r\n\r\n', 'England', 'South Africa', 'Australia', 'India', '', '', '2', 1),
(6, 'What does HTML stand for?\r\n\r\n	\r\n	\r\n	', 'Hyper Text Markup Language', 'Hyperlinks and Text Markup Language', 'Home Tool Markup Language', 'Highly Text Markup Language', '', '', '1', 2),
(7, 'Who is making the Web standards?\r\n\r\n	\r\n	\r\n	\r\n	\r\n', 'Microsoft', 'Google', 'The World Wide Web Consortium', 'Mozilla', '', '', '3', 2),
(8, 'What is the correct HTML for creating a hyperlink?\r\n\r\n	\r\n	\r\n	\r\n	', '&lt;a name=&quot;http://vetbossel.in&quot;&gt;VetBosSel&lt;/a&gt;', '&lt;a&gt;http://vetbossel.in&lt;/a&gt;', '&lt;a url=&quot;http://vetbossel.in&quot;&gt;VetBosSel&lt;/a&gt;', '&lt;a href=&quot;http://vetbossel.in&quot;&gt;VetBosSel&lt;/a&gt;', '', '', '4', 2),
(9, 'What is the HTML element to bold a text?\r\n\r\n\r\n\r\n\r\n', '&lt;b&gt;', '&lt;bold&gt;', '&lt;wide&gt;', '&lt;big&gt;', '', '', '1', 2),
(10, 'What is the HTML tag for a link?\r\n\r\n\r\n\r\n\r\n', '&lt;link&gt;', '&lt;ref&gt;', '&lt;a&gt;', '&lt;hper&gt;', '', '', '3', 2),
(11, 'What does CSS stand for?\r\n\r\n	\r\n	\r\n	\r\n	', 'Creative Style Sheets', 'Colorful Style Sheets', 'Computer Style Sheets', 'Cascading Style Sheets', '', '', '4', 4),
(12, 'Where in an HTML document is the correct place to refer to an external style sheet?\r\n\r\n	\r\n	\r\n	\r\n	', 'In the &lt;body&gt; section ', 'At the end of the document', 'At the top of the document', 'In the &lt;head&gt; section ', '', '', '4', 4),
(13, 'Which HTML tag is used to define an internal style sheet?\r\n\r\n	\r\n	\r\n	', '&lt;script&gt;', '&lt;css&gt;', '&lt;style&gt;', '&lt;link&gt;', '', '', '3', 4),
(14, 'Which is the correct CSS syntax?\r\n\r\n	\r\n	\r\n	\r\n	', 'body:color=black;', '{body;color:black;}', 'body {color: black;}', '{body:color=black;}', '', '', '3', 4),
(15, 'Which property is used to change the background color?\r\n\r\n	\r\n	\r\n	', 'background-color', 'color', 'bgcolor', 'bg-color', '', '', '1', 4),
(16, 'What does PHP stand for?\r\n\r\n	\r\n	\r\n	', ' PHP: Hypertext Preprocessor', 'Personal Hypertext Processor', 'Personal Home Page', 'Private Home Page', '', '', '1', 3),
(17, 'PHP server scripts are surrounded by delimiters, which?\r\n\r\n	\r\n	\r\n	\r\n	', '&lt;?php&gt;...&lt;/?&gt;', '&lt;?php ... ?&gt;', '&lt;script&gt;...&lt;/script&gt;', '&lt;&amp;&gt;...&lt;/&amp;&gt;', '', '', '2', 3),
(18, 'How do you write "Hello World" in PHP\r\n\r\n	\r\n	\r\n	', '&quot;Hello World&quot;', 'echo &quot;Hello World&quot;', 'Document.Write(&quot;Hello World&quot;);', 'print_f(&quot;Hello World&quot;);', '', '', '2', 3),
(19, ' Which of the following is the way to create comments in PHP?\r\n\r\n\r\n	\r\n	\r\n	', '// commented code to end of line', '/* commented code here */', '# commented code to end of line', 'all of the above - correct', '', '', '4', 3),
(20, 'What is the correct way to end a PHP statement?\r\n\r\n	\r\n	\r\n	\r\n	', '&lt;/php&gt;', '.', ';', 'New line', '', '', '3', 3),
(21, 'World Cup 2011', 'India', 'Pakistan', '', '', '', '', '1', 2),
(22, 'Master Blaster', 'Sachin', 'Sehwag', 'Watson', 'Smith', 'Yuvraj', 'Ganguly', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `right_answer` int(11) NOT NULL,
  `wrong_answer` int(11) NOT NULL,
  `unanswered` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `category_id`, `right_answer`, `wrong_answer`, `unanswered`) VALUES
(1, 13, 1, 0, 0, 5),
(2, 13, 2, 0, 0, 5),
(3, 13, 1, 0, 0, 5),
(4, 13, 1, 0, 0, 5),
(5, 13, 2, 0, 0, 5),
(6, 13, 1, 1, 3, 1),
(7, 13, 1, 1, 3, 1),
(8, 13, 1, 3, 2, 0),
(9, 13, 2, 2, 1, 3),
(10, 13, 1, 3, 1, 2),
(11, 13, 1, 5, 1, 0),
(12, 13, 1, 0, 0, 6),
(13, 13, 2, 0, 0, 0),
(14, 13, 1, 4, 2, 0),
(15, 13, 2, 5, 1, 0),
(16, 13, 2, 5, 0, 1),
(17, 13, 2, 6, 0, 0),
(18, 13, 1, 0, 0, 0),
(19, 13, 1, 0, 0, 0),
(20, 13, 2, 0, 0, 0),
(21, 13, 1, 0, 0, 0),
(22, 13, 1, 0, 0, 0),
(23, 13, 1, 0, 0, 0),
(24, 13, 3, 0, 0, 0),
(25, 13, 1, 0, 0, 0),
(26, 13, 1, 0, 0, 0),
(27, 13, 1, 0, 0, 0),
(28, 13, 2, 0, 0, 0),
(29, 13, 1, 0, 0, 0),
(30, 13, 2, 0, 0, 0),
(31, 13, 2, 0, 0, 0),
(32, 13, 2, 0, 0, 0),
(33, 13, 2, 0, 0, 0),
(34, 13, 1, 0, 0, 0),
(35, 13, 1, 0, 0, 0),
(36, 13, 1, 0, 0, 0),
(37, 13, 1, 0, 0, 0),
(38, 13, 2, 0, 0, 0),
(39, 13, 1, 0, 0, 6),
(40, 13, 1, 0, 0, 0),
(41, 13, 1, 0, 0, 0),
(42, 13, 1, 0, 0, 0),
(43, 13, 2, 0, 0, 0),
(44, 13, 1, 0, 0, 6),
(45, 13, 1, 0, 0, 6),
(46, 13, 1, 0, 0, 6),
(47, 13, 2, 0, 0, 6),
(48, 13, 1, 0, 0, 6),
(49, 13, 1, 0, 0, 6),
(50, 13, 1, 0, 0, 6),
(51, 13, 2, 0, 0, 0),
(52, 13, 1, 0, 0, 6),
(53, 13, 1, 0, 0, 0),
(54, 13, 1, 0, 0, 6),
(55, 13, 1, 0, 0, 0),
(56, 13, 1, 0, 0, 0),
(57, 13, 1, 0, 0, 6),
(58, 13, 1, 0, 0, 0),
(59, 13, 1, 0, 0, 6),
(60, 17, 3, 0, 0, 5),
(61, 17, 3, 0, 0, 5),
(62, 17, 2, 0, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `social_id` varchar(100) NOT NULL,
  `picture` varchar(250) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uuid` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `social_id`, `picture`, `created`, `uuid`) VALUES
(18, 'vetri', 'jjvetri2@gmail.com', '6df9b4c533b3a6742738247bfc9fa865', '', '', '2016-07-14 16:45:36', ''),
(19, 'vetbossel', 'admin@vetbossel.in', '8a1413eb0da05c0b2f21b6bc78257a53', '', '', '2016-07-14 16:46:29', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `login` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
