-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 08:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `movie_id` int(5) NOT NULL,
  `nr_tickets` int(10) NOT NULL,
  `is_approved` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `movie_id`, `nr_tickets`, `is_approved`, `date`, `time`) VALUES
(1, 1, 1, 200, '', 'Sot nje muaj.', 'Kur do qe vendosni ju!');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(5) NOT NULL,
  `movie_name` varchar(255) NOT NULL,
  `movie_desc` varchar(255) NOT NULL,
  `movie_quality` varchar(255) NOT NULL,
  `movie_rating` double NOT NULL,
  `movie_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie_name`, `movie_desc`, `movie_quality`, `movie_rating`, `movie_image`) VALUES
(1, 'Terrifier 3', 'Art the Clown is set to unleash chaos on the unsuspecting residents of Miles County as they peacefully drift off to sleep on Christmas Eve. yeeees', '1920*1080', 7, 'Terrifer.png'),
(2, '3Idiots', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them ', '4k', 8.8, '3idiots.png'),
(4, 'Kung Fu Panda', 'Fantastic Movie', '4K', 9, 'kungfu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `isadmin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`, `confirmpassword`, `isadmin`) VALUES
(1, 'Besart', 'Ibishi', 'besartibishi', 'besartibishi@gmail.com', 'Besarti123', 'Besarti123', 'Yes'),
(2, 'Besart', 'Ibishi', 'besart.ibishi', 'besart@gmail.com', '$2y$10$K6tSlJepEH.tkmYtG4aF4uDne.rkJxaixcp.kpskBWn/V2GpgX8ye', '$2y$10$UhRbuNM3zuuLssLYSAnzbOdyMzDsDop2LUcjeBZm223HRn9fEVUkG', 'true'),
(3, 'Darsej', 'Kastrati', 'seji', 'darsej.kastrati@gmail.com', '$2y$10$ACwXdn3pJKDMhaE3.ncuEetNMS59RM.v0YTJF6CoVsocMrAzpfuJG', '$2y$10$6d1e/eseHwcbzzneq65Sx.t/siOBPFXPTrnxAalNNQVKmpIqVdE26', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
