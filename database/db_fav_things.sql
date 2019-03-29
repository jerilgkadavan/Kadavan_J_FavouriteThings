-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2019 at 06:36 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fav_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(50) NOT NULL,
  `movie_img` varchar(50) NOT NULL,
  `movie_year` varchar(10) NOT NULL,
  `movie_time` varchar(10) NOT NULL,
  `movie_rating` varchar(10) NOT NULL,
  `movie_desc` text NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_img`, `movie_year`, `movie_time`, `movie_rating`, `movie_desc`) VALUES
(1, 'How to Train Your Dragon', 'dragon.jpg', '2010', '100min', '8.3/10', 'As the son of a Viking leader on the cusp of manhood, shy Hiccup Horrendous Haddock III faces a rite of passage: \r\n           he must kill a dragon to prove his warrior mettle. But after downing a feared dragon, \r\n           he realizes that he no longer wants to destroy it, and instead befriends the beast – which he names \r\n           Toothless – much to the chagrin of his warrior father.'),
(2, 'The Lion King', 'lionking.jpg', '1944', '89min', '8.5/10', 'A young lion cub named Simba can\'t wait to be king. But his uncle craves the title for himself and will stop at nothing to get it.'),
(3, 'Wall.E', 'walle.jpg', '2008', '98min', '8.5/10', 'WALL·E is the last robot left on an Earth that has been overrun with garbage and all humans have fled to outer space. For\r\n            700 years he has continued to \r\n           try and clean up the mess, but has developed some rather interesting human-like qualities.\r\n            When a ship arrives with a sleek new type of robot, WALL·E thinks he\'s finally found a friend and stows away on the ship when it leaves.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
