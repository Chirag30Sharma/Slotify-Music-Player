-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freesqldatabase.com
-- Generation Time: May 11, 2023 at 11:58 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12593294`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Eggs', 2, 4, 'assets/images/artwork/clearday.jpg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello World', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mickey Mouse'),
(2, 'Goofy'),
(3, 'Bart Simpson'),
(4, 'Homer'),
(5, 'Bruce Lee');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bil_no` int(11) NOT NULL,
  `bil_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bil_no`, `bil_date`, `email`) VALUES
(1, '2023-01-28 10:24:24', 'abc@gmail.com'),
(2, '2023-01-28 10:36:59', 'abc@gmail.com'),
(3, '2023-01-31 05:37:04', 'abc@gmail.com'),
(4, '2023-01-31 05:42:22', 'abc@gmail.com'),
(5, '2023-01-31 06:11:29', 'abc@gmail.com'),
(6, '2023-01-31 06:35:34', 'kedarshidhaye2003@gmail.com'),
(7, '2023-02-03 06:57:43', 'abc@gmail.com'),
(8, '2023-02-13 05:23:54', 'abc@gmail.com'),
(9, '2023-03-01 08:02:36', 'abc@gmail.com'),
(10, '2023-03-31 04:41:31', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill_det`
--

CREATE TABLE `bill_det` (
  `bill_no` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemqty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_det`
--

INSERT INTO `bill_det` (`bill_no`, `itemid`, `itemqty`) VALUES
(1, 24, 1),
(1, 3, 1),
(2, 5, 1),
(2, 6, 1),
(3, 23, 1),
(3, 10, 1),
(4, 5, 1),
(4, 12, 1),
(6, 4, 1),
(7, 3, 1),
(7, 5, 1),
(8, 4, 1),
(9, 12, 1),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecom`
--

CREATE TABLE `ecom` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecom`
--

INSERT INTO `ecom` (`id`, `email`, `password`, `name`, `mobile`, `address`) VALUES
(1, 'abc@gmail.com', 'abc', 'abc', '70090909', 'Mumbai'),
(3, 'kedarshidhaye2003@gmail.com', 'wasd1234', 'me', '3987331868', 'mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `category` varchar(30) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `category`, `photo`) VALUES
(3, 'Margherita Pizza', '15', 'Pizza', 'Margherita.jpg.webp'),
(4, 'Chicken Alfredo Pizza', '20', 'Pizza', 'Alfredo bowl.jpg'),
(5, 'Pepperoni Lover Pizza', '11', 'Pizza', 'Pepproni.webp'),
(6, 'Plain Nutella Pizza', '17', 'Pizza', 'nutella.jpg'),
(7, 'Philly Steak Sandwich', '19', 'Sandwich', 'cheese steak.jpg'),
(8, 'Chicken Sandwich', '12', 'Sandwich', 'Chiken Sandwich.jpg'),
(9, 'Hot Dog Sandwich', '8', 'Sandwich', 'Hotdog.webp'),
(10, 'Turkey Sandwich', '7', 'Sandwich', 'turkey sandwich.jpg'),
(11, 'Caesar Salad', '6', 'Salad', 'Ceaser salad.jpg'),
(12, 'Greek Salad', '5', 'Salad', 'Salad.webp'),
(13, 'Arabic Salad', '9', 'Salad', 'arabicsalad.jpeg'),
(14, 'Tuna Salad', '6', 'Salad', 'tuna salad.jpeg'),
(15, 'Pepsi', '2', 'Beverages', 'Pepsi.jpg'),
(16, 'Diet Pepsi', '3', 'Beverages', 'Diet Pepsi.jpg'),
(17, 'Mountain Dew', '1', 'Beverages', 'Dew.jpg'),
(18, 'Mineral Water', '2', 'Beverages', 'Water.jpg.webp'),
(19, 'Boneless Wings', '4', 'Extra', 'Boneless.webp'),
(20, 'Bone Wings', '6', 'Extra', 'Wings .jpg.webp'),
(23, 'French Fries', '7', 'Extra', 'fries.webp'),
(24, 'Potato Wedges', '19', 'Extra', 'potato wedge.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(2, 'Playlist2', 'reece-kenney', '2017-08-27 00:00:00'),
(3, 'Running Songs', 'reece-kenney', '2017-08-27 00:00:00'),
(4, 'Classics', 'reece-kenney', '2017-08-27 00:00:00'),
(5, 'Party', 'reece-kenney', '2017-08-27 00:00:00'),
(6, 'This is a test', 'reece-kenney', '2017-12-04 00:00:00'),
(7, 'Bulldozer', 'reece-kenney', '2017-12-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE `playlistSongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistSongs`
--

INSERT INTO `playlistSongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(6, 17, 2, 4),
(8, 16, 5, 0),
(9, 15, 3, 0),
(10, 14, 4, 0),
(11, 17, 3, 1),
(12, 16, 3, 2),
(13, 16, 5, 1),
(14, 14, 3, 3),
(15, 5, 5, 2),
(16, 23, 4, 1),
(17, 6, 2, 5),
(18, 29, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 1, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 10),
(2, 'A new beginning', 1, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 5),
(3, 'Better Days', 1, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 10),
(4, 'Buddy', 1, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 14),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 8),
(6, 'Going Higher', 2, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 36),
(7, 'Funny Song', 2, 4, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 14),
(8, 'Funky Element', 2, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 26),
(9, 'Extreme Action', 2, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 29),
(10, 'Epic', 2, 4, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 18),
(11, 'Energy', 2, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 26),
(12, 'Dubstep', 2, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 22),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 3),
(14, 'Happy Rock', 3, 6, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 9),
(15, 'Jazzy Frenchy', 3, 6, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 11),
(16, 'Little Idea', 3, 6, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 12),
(17, 'Memories', 3, 6, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 6),
(18, 'Moose', 4, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 2),
(19, 'November', 4, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 5),
(20, 'Of Elias Dream', 4, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 5),
(21, 'Pop Dance', 4, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 11),
(22, 'Retro Soul', 4, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 12),
(23, 'Sad Day', 5, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 10),
(24, 'Sci-fi', 5, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 9),
(25, 'Slow Motion', 5, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 5),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 19),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 17),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 13),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 7),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 22),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `temp_order`
--

CREATE TABLE `temp_order` (
  `email` varchar(30) NOT NULL,
  `itemid` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(7, 'abc098', 'Abc', 'Xyz', 'Abc@gmail.com', '39b3a849bce0d4a8d4cca9e352637641', '2023-01-31 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(8, 'raghav24', 'Raghav', 'Srivastava', 'Raghavsrivastava2829@gmail.com', 'ab56b4d92b40713acc5af89985d4b786', '2023-02-01 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(9, 'chirag30', 'Chirag', 'Sharma', 'Chirag@gmail.com', 'dbd7159262dc390d5641dc63094c5acd', '2023-04-30 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bil_no`);

--
-- Indexes for table `ecom`
--
ALTER TABLE `ecom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bil_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ecom`
--
ALTER TABLE `ecom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
