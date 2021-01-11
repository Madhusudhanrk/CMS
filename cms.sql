-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2019 at 08:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `cat_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_user_id`) VALUES
(20, 'Movies', 80),
(21, 'Motivation', 86),
(22, 'Beauty', 81),
(23, 'Coding', 86),
(35, 'Technology', 86),
(36, 'Space', 80);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_user` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_user`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(9, 8, 'Madhusudhan', 'madhusudhanrk98@gmail.com', 'never quit if u get wex think about y u started', 'Approved', '2019-03-22'),
(10, 10, 'Madhusudhan', 'madhusudhanrk98@gmail.com', 'tony stark your attitude god like ', 'Approved', '2019-03-22'),
(11, 20, 'Madhusudhan', 'm@gmail.com', 'waste', 'Approved', '2019-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_category_id`, `post_title`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(6, 20, 'Iron Man', '80', '2019-04-25', 'wp3703417.jpg', '<h2>Don\'t think more do it ,learn from mistakes</h2>', 'iron man', 9, 'publish', 57),
(8, 21, 'Never ever give up', '80', '2019-04-22', 'Mithun 20180614_205250.jpg', '<p>motivation for programming</p>', 'never ever giveup', 2, 'publish', 5),
(10, 23, 'TonyStark', '86', '2019-04-22', 'Robert-Downey-Jr-Iron-Man-Pepper-Potts-Tony-Stark.jpg', '<p>Dont Think more do it right now and think</p>', 'Tony,programming', 2, 'publish', 0),
(15, 20, 'Terminator', '80', '2019-04-22', '21612930318_9a9070cc34_b.jpg', '<p>A wonderful AI Future Movies</p>', 'arnold,teminator', 0, 'publish', 0),
(16, 20, 'Titanic', '81', '2019-04-22', 'titanic.jpg', '<p>A heart touching movie</p>', 'love,tianic', 2, 'publish', 41),
(17, 20, 'Baahubali', '80', '2019-04-22', 'maxresdefault.jpg', '<p>Honor to TollyWood</p>', 'baahubali', 0, 'publish', 0),
(18, 21, 'Be motivate', '80', '2019-04-25', '430889.jpg', '<p>self motivation is the key for success</p>', 'self motivation', 0, 'publish', 0),
(19, 20, 'Avengers', '86', '2019-04-22', 'avengers-4.jpg', '<p>one of My favorite hollywood movie</p>', 'marvel,avengers', 0, 'publish', 0),
(20, 36, 'Space', '80', '2019-04-22', 'download.jpg', '<p>saturn is my favorite planet because it is different than other planets</p>', 'space,saturn', 0, 'publish', 3),
(21, 36, 'Solar system', '80', '2019-04-22', 'solar.jpg', '<p>Our solar system</p>', 'solar,space', 0, 'publish', 1),
(22, 22, 'Keerthi', '81', '2019-04-22', 'keerthy-suresh-wallpapers-new-keerthi-suresh-wallpapers-beautiful-pix-of-keerthy-suresh-wallpapers.jpg', '<p>My lady</p>', 'beauty,girl', 0, 'publish', 3),
(23, 23, 'Coding PHP,Javascript,CSS', '80', '2019-04-22', '09-05-2017-why-coding-infographic-blog.png', '<p>My real goal</p>', 'coding', 0, 'publish', 0),
(24, 23, 'PHP', '86', '2019-04-22', 'Screenshot (24).png', '<p>Used for My present project</p>', 'coding', 0, 'publish', 0),
(25, 21, 'Experience', '80', '2019-04-22', 'IMG-20180519-WA0000.jpg', '<p>valuable words</p>', 'motivation', 0, 'publish', 0),
(26, 21, 'Kalam', '80', '2019-04-22', 'IMG-20180518-WA0000.jpg', '<p>kalam words</p>', 'kalam,motivation', 0, 'publish', 1),
(27, 35, 'Hyperloop', '80', '2019-04-22', 'hyper.jpg', '<p>A new and smart way for transportaiton</p>', 'tech,hyper', 0, 'publish', 0),
(28, 35, 'Voyager', '80', '2019-04-22', 'AS9SC14.jpg', '<p>large distance travelled machine invented by humans</p>', 'tech,voyager', 0, 'publish', 0),
(29, 35, 'Processors', '80', '2019-04-22', 'intel-core-i5-8400-cpu-1000px-0002-v1.jpg', '<p>A new invention for quality and compact design</p>', 'processors', 0, 'publish', 1),
(31, 20, 'Role model', '80', '2019-04-25', 'wp3703417.jpg', '<ul><li>Don\'t think do it learn from mistakes</li></ul>', 'a iron man', 0, 'publish', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`) VALUES
(80, 'Madhusudhan', '$2y$08$FjmjyFzf0UEINBNKcylE9ukXJ68nuMiisSvvGl20IdItFZA0fS9Ci', 'Madhusudhan', 'K', 'madhusudhan@gmail.com', '', 'admin'),
(81, 'Keerthisuresh', '$2y$08$Nrtk5yGB.00rDjHVnj5gXuL5NhQ3tULcCIvX5XEtMgeT/vddaHtl6', 'Keerthi', 'suresh', 'keerthi@gmail.com', '', 'subscriber'),
(86, 'Tonystark', '$2y$08$PgDcd1PKb3uEb6zX1SUNQO6fiwMzJoDommmg2Vw7cG3xgDdjqvOcW', 'Tony', 'Stark', 'madhusudhanrk98@gmail.com', '', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(30, 'hm9rtiobgatrnkstm4ie40d89i', 1555089136),
(31, 'pq06kvs4tqgd2njpf3h61dj82q', 1556197793),
(33, '99l1ev62lo2d5itpemg1k2n7p1', 1555088192),
(34, 'cm24lehs8mrhqs2qhjdjj1taom', 1555088902),
(35, 'i8kpm9fs1j4lq550a7g1v94ft7', 1555566537),
(36, 'bgrsih6ajnm7mn7qjeou9l7edo', 1556197960),
(37, '8buu6moj3e6r5p7b7j759v8637', 1556208816),
(38, 'obk5pad6o2icn5k1rlmlstockk', 1558274500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
