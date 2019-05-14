-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 04:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(20) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `q_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `fname`, `lname`, `email`, `answer`, `s_name`, `q_id`) VALUES
(166, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Everyday ', '1', 1),
(167, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'More than 4 hours a day', '1', 2),
(168, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Social Networking (e.g. Facebook, Myspace)', '1', 3),
(169, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Home', '1', 4),
(170, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Living Room', '1', 5),
(171, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Voice call(Mobile)', '1', 6),
(172, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Sometime', '1', 7),
(173, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Yes', '1', 8),
(174, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'Social Networking', '1', 9),
(175, 'Sarimul Hoque', 'Laskar', 'sarimtalk@gmail.com', 'event planning', '1', 10),
(176, 'lakhu', 'das', 'lakhu@gmail.com', 'Less than 24', '2', 11),
(177, 'lakhu', 'das', 'lakhu@gmail.com', 'Male', '2', 12),
(178, 'lakhu', 'das', 'lakhu@gmail.com', 'Student', '2', 13),
(179, 'lakhu', 'das', 'lakhu@gmail.com', 'Meeting friends and relatives', '2', 14),
(180, 'lakhu', 'das', 'lakhu@gmail.com', 'Italy', '2', 15),
(181, 'lakhu', 'das', 'lakhu@gmail.com', 'Little Bit', '2', 16),
(182, 'lakhu', 'das', 'lakhu@gmail.com', 'Price', '2', 17),
(183, 'lakhu', 'das', 'lakhu@gmail.com', 'Adventure', '2', 18),
(184, 'lakhu', 'das', 'lakhu@gmail.com', 'Sometime', '2', 19),
(185, 'lakhu', 'das', 'lakhu@gmail.com', 'Bus', '2', 20),
(186, 'Biswajit', 'Mondal', 'biswajit@gmail.com', 'Male', '3', 21),
(187, 'Biswajit', 'Mondal', 'biswajit@gmail.com', '18 - 29', '3', 22),
(188, 'Biswajit', 'Mondal', 'biswajit@gmail.com', 'Eye shadow', '3', 24),
(189, 'Biswajit', 'Mondal', 'biswajit@gmail.com', 'when I go on dates', '3', 25),
(190, 'Biswajit', 'Mondal', 'biswajit@gmail.com', 'Someone who is good in terms of personality?', '3', 27),
(191, 'Biswajit', 'Mondal', 'biswajit@gmail.com', 'To express who you are?', '3', 28),
(192, 'Biswajit', 'Mondal', 'biswajit@gmail.com', 'Yes', '3', 29),
(193, 'Biswajit', 'Mondal', 'biswajit@gmail.com', 'Sometimes', '3', 30),
(194, 'xyz', 'pqr', 'xyz@gmail.com', 'Female', '3', 21),
(195, 'xyz', 'pqr', 'xyz@gmail.com', '<18', '3', 22),
(196, 'xyz', 'pqr', 'xyz@gmail.com', 'Only when I go out with friends', '3', 23),
(197, 'xyz', 'pqr', 'xyz@gmail.com', 'Face powder', '3', 24),
(198, 'xyz', 'pqr', 'xyz@gmail.com', 'when I go out', '3', 25),
(199, 'xyz', 'pqr', 'xyz@gmail.com', 'Someone who dresses well?', '3', 27),
(200, 'xyz', 'pqr', 'xyz@gmail.com', 'To follow the trend?', '3', 28),
(201, 'xyz', 'pqr', 'xyz@gmail.com', 'Sometimes', '3', 29),
(202, 'xyz', 'pqr', 'xyz@gmail.com', 'Yes', '3', 30),
(203, 'jhu', 'kju', 'df@gmail.com', 'Male', '3', 21),
(204, 'jhu', 'kju', 'df@gmail.com', '30 - 44', '3', 22),
(205, 'jhu', 'kju', 'df@gmail.com', 'Everyday', '3', 23),
(206, 'jhu', 'kju', 'df@gmail.com', 'Concealer', '3', 24),
(207, 'jhu', 'kju', 'df@gmail.com', 'during job interviews', '3', 25),
(208, 'jhu', 'kju', 'df@gmail.com', 'Someone who is good in terms of personality?', '3', 27),
(209, 'jhu', 'kju', 'df@gmail.com', 'To fit in to the crowd?', '3', 28),
(210, 'jhu', 'kju', 'df@gmail.com', 'Yes', '3', 29),
(211, 'jhu', 'kju', 'df@gmail.com', 'Sometimes', '3', 30),
(212, 'jku', 'llk', 'jhku@gmail.com', 'Male', '3', 21),
(213, 'jku', 'llk', 'jhku@gmail.com', '45 - 59', '3', 22),
(214, 'jku', 'llk', 'jhku@gmail.com', 'Everyday', '3', 23),
(215, 'jku', 'llk', 'jhku@gmail.com', 'Mascara', '3', 24),
(216, 'jku', 'llk', 'jhku@gmail.com', 'at work', '3', 25),
(217, 'jku', 'llk', 'jhku@gmail.com', 'only if its for a medical condition (burns, loose skin, etc)', '3', 26),
(218, 'jku', 'llk', 'jhku@gmail.com', 'Someone who is good in terms of personality?', '3', 27),
(219, 'jku', 'llk', 'jhku@gmail.com', 'All of the above.', '3', 28),
(220, 'jku', 'llk', 'jhku@gmail.com', 'Always', '3', 29),
(221, 'jku', 'llk', 'jhku@gmail.com', 'Always', '3', 30);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(20) NOT NULL,
  `question` varchar(200) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `s_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `s_name`) VALUES
(1, 'How often do you use the Internet?', 'More than once a day', 'Everyday ', 'Once a day', 'Once a month', '1'),
(2, 'On average, how many hours per day do you spend on the Internet?', 'Less than 1 hour a day', '2-3 hours', 'More than 4 hours a day', '3-4 hours', '1'),
(3, 'What do you like doing most online?', 'File Sharing', 'Chat rooms', 'Social Networking (e.g. Facebook, Myspace)', 'Internet TV', '1'),
(4, 'Where do you use the Internet?', 'Library', 'Friend\'s or family\'s house', 'School', 'Home', '1'),
(5, 'If you use Internet at home, what room do you use it in?', 'Living Room', 'Dining Room', 'Bedroom', 'Kitchen room', '1'),
(6, 'What is the main way of communication with your offline friends?', 'Skype', 'Instant Messenging', 'Voice call(Mobile)', 'SMS', '1'),
(7, 'Do you watch movie online?', 'No', 'Yes', 'Sometime', 'very often', '1'),
(8, 'Have you ever met someone in the real world you have only met online?', 'Yes', 'No', 'Always', 'Never', '1'),
(9, 'How do you meet your \'internet messenger\' online contacts?', 'Blogs', 'Gaming sites', 'Through friends', 'Social Networking', '1'),
(10, 'what do you use social media for?', 'keeping in touch with friends and family', 'event planning', 'buying and selling ', 'inspiration', '1'),
(11, 'Your age is', 'Less than 24', 'Between 24 and 39', 'Between 40 and 55', 'Over 55', '2'),
(12, 'Are you?', 'Male', 'Female', 'Transgender', 'Others', '2'),
(13, 'Are you?', 'Student', 'Worker', 'Retired person', 'Other', '2'),
(14, 'Do you use to travel for?', 'Leisure', 'Business', 'Meeting friends and relatives', 'Other', '2'),
(15, 'Have you ever visited the following countries?', 'Bulgaria', 'Turkey', 'Italy', 'None', '2'),
(16, 'Do you think that a tour combining different well-known and less-known European cities could be interesting?', 'Yes', 'No', 'Little Bit', 'None', '2'),
(17, 'What are the most challenging problems that you face when choosing a destination?', 'Quality of services', 'Reliability', 'Language difficulties', 'Price', '2'),
(18, 'What are your main interests in selecting a destination?', 'Adventure', 'Night life', 'Culture', 'Health', '2'),
(19, 'Do you prefer to use tourist guide services or tour independently?', 'Yes', 'No', 'Sometime', 'None', '2'),
(20, 'What means of transport do you use while on holiday?', 'Bicycle', 'Bus', 'Car', 'Caravan', '2'),
(21, 'I identify as a..', 'Female', 'Male', 'Non-binary/Other', 'I prefer not to answer', '3'),
(22, 'Age', '<18', '18 - 29', '30 - 44', '45 - 59', '3'),
(23, 'How often do you wear makeup', 'I don\'t wear makeup', 'Only when I go out with friends', 'Everyday', 'Other ', '3'),
(24, 'If you could use only one makeup product, which would you choose?', 'Eye shadow', 'Mascara', 'Face powder', 'Concealer', '3'),
(25, 'I prefer to wear makeup..', 'when I go on dates', 'when I go out', 'during job interviews', 'at work', '3'),
(26, 'Thoughts on plastic surgery?', 'I don\'t agree with it at all', 'it\'s not for me, but I don\'t mind other people getting it', 'only if its for a medical condition (burns, loose skin, etc)', 'sometimes I think about getting it', '3'),
(27, 'Whats your perception of beauty?', 'Someone who dresses well?', 'Someone who is good in terms of personality?', 'Someone who is good looking?', 'All of the above.', '3'),
(28, 'Whats your perception towards fashion?', 'To follow the trend?', 'To fit in to the crowd?', 'To express who you are?', 'All of the above.', '3'),
(29, 'Do you believe that self confidence can be due to the lack of self appreciation when it comes to beauty and fashion?', 'Yes', 'Sometimes', 'No', 'Always', '3'),
(30, 'Do you believe that our perception of beauty should change?', 'Yes', 'No', 'Sometimes', 'Always', '3');

-- --------------------------------------------------------

--
-- Table structure for table `survey_name`
--

CREATE TABLE `survey_name` (
  `id` int(20) NOT NULL,
  `s_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_name`
--

INSERT INTO `survey_name` (`id`, `s_name`) VALUES
(1, 'Social Media'),
(2, 'Tourist'),
(3, 'Fashion');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_name`
--
ALTER TABLE `survey_name`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `survey_name`
--
ALTER TABLE `survey_name`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
