-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 06:37 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `no_of_beds` int(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookings_history`
--

CREATE TABLE `bookings_history` (
  `booking_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `no_of_beds` int(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cancellations`
--

CREATE TABLE `cancellations` (
  `booking_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `no_of_beds` int(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checked_in`
--

CREATE TABLE `checked_in` (
  `booking_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `no_of_beds` int(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checked_in_history`
--

CREATE TABLE `checked_in_history` (
  `booking_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `no_of_beds` int(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

CREATE TABLE `confirmations` (
  `booking_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `no_of_beds` int(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_admin`
--

CREATE TABLE `hr_admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr_admin`
--

INSERT INTO `hr_admin` (`id`, `username`, `password`, `fname`, `lname`, `number`, `email`, `city`, `gender`) VALUES
(1, 'Meet Bhalodiya', '1234567890', 'Meet', 'Bhalodiya ', '9874560123', 'meet@gmail.com', 'Rajkot', 'male'),
(2, 'Urvi', '1234567890', 'Urvi', 'Jodhani', '9756771230', 'urvi@gmail.com', 'Gondal', 'female'),
(4, 'Jeet joshi', '1234567890', 'Jeet ', 'Joshi', '9081234676', 'jkjoshi@gmail.com', 'Junagadh', 'male'),
(5, 'Darshil Lunagariya', '1234567890', 'Darshil', 'Lunagariya', '6590871234', 'darshil@lunagariya.com', 'Ahmedabad', 'male'),
(6, 'Phileman Pius', '1234567890', 'Phileman ', 'Pius', '9105789233', 'pprooms@gmail.com', 'Jamnagar', 'male'),
(7, 'Jignesh patel', '1234567890', 'Jignesh', 'patel', '9789903344', 'jignesh99@gmail.com', 'Gandhinagar', 'others');

-- --------------------------------------------------------

--
-- Table structure for table `hr_feedback`
--

CREATE TABLE `hr_feedback` (
  `id` int(255) NOT NULL,
  `booking_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL,
  `spam` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_table`
--

CREATE TABLE `hr_table` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `hr_admin_name` varchar(255) NOT NULL,
  `hr_name` varchar(255) NOT NULL,
  `hr_type` varchar(255) NOT NULL,
  `hr_address` varchar(255) NOT NULL,
  `hr_city` varchar(255) NOT NULL,
  `hr_number` int(10) NOT NULL,
  `hr_email` varchar(255) NOT NULL,
  `hr_laundry` varchar(255) NOT NULL,
  `hr_food_type` varchar(255) NOT NULL,
  `hr_bg` varchar(255) NOT NULL,
  `hr_total_beds` int(255) NOT NULL,
  `hr_beds_avail` int(255) NOT NULL,
  `hr_beds_occup` int(255) NOT NULL,
  `hr_price_per_year` int(255) NOT NULL,
  `hr_price_per_month` int(255) NOT NULL,
  `hr_price_per_day` int(255) NOT NULL,
  `hr_build_img` varchar(255) NOT NULL,
  `hr_reception_img` varchar(255) NOT NULL,
  `hr_room_img01` varchar(255) NOT NULL,
  `hr_room_img02` varchar(255) NOT NULL,
  `hr_restroom01_img` varchar(255) NOT NULL,
  `hr_restroom02_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr_table`
--

INSERT INTO `hr_table` (`id`, `username`, `hr_admin_name`, `hr_name`, `hr_type`, `hr_address`, `hr_city`, `hr_number`, `hr_email`, `hr_laundry`, `hr_food_type`, `hr_bg`, `hr_total_beds`, `hr_beds_avail`, `hr_beds_occup`, `hr_price_per_year`, `hr_price_per_month`, `hr_price_per_day`, `hr_build_img`, `hr_reception_img`, `hr_room_img01`, `hr_room_img02`, `hr_restroom01_img`, `hr_restroom02_img`) VALUES
(1, 'Meet ', 'Meet Bhalodiya', 'Meet Rooms', 'Room', 'shiv shakti colony University road ', 'Rajkot', 2147483647, 'meetrooms@gmail.com', 'Not-Available', 'Non-Veg', 'Boys', 5, 3, 2, 18000, 1500, 50, '../uploads/images (1).jfif', '../uploads/images (2).jfif', '../uploads/images (23).jfif', '../uploads/download (3).jfif', '../uploads/images (22).jfif', '../uploads/images (26).jfif'),
(2, 'Urvi', 'Urvi', 'UV Hostel ', 'Hostel', 'near swami mandir', 'Gondal', 2147483647, 'UVhostels@gmail.com', 'Available', 'Veg', 'Girls', 15, 12, 3, 80000, 6700, 225, '../uploads/images (10).jfif', '../uploads/download (6).jfif', '../uploads/images (11).jfif', '../uploads/images (1).jfif', '../uploads/download (6).jfif', '../uploads/images (8).jfif'),
(3, 'Jignesh patel', 'Jignesh', 'Jignesh Room\'s', 'Room', 'Krishi bhawan road', 'Gandhinagar', 901223300, 'Jigneshrooms@gmail.com', 'Not-Available', 'Jain', 'Girls', 10, 7, 3, 35000, 2800, 280, '../uploads/images (1).jfif', '../uploads/images (2).jfif', '../uploads/images (23).jfif', '../uploads/download (3).jfif', '../uploads/images (22).jfif', '../uploads/images (26).jfif'),
(4, 'Jeet', 'Jeet joshi', 'JK hostel', 'Hostel', 'Talav Gate Road ', 'Junagadh', 2147483647, 'JKhostels@gmail.com', 'Available', 'Veg', 'Boys', 20, 11, 9, 90000, 7500, 250, '../uploads/badhostels.jpg', '../uploads/download (2).jfif', '../uploads/download.jfif', '../uploads/download (4).jfif', '../uploads/images (27).jfif', '../uploads/images (24).jfif'),
(5, 'Darshil', 'Darshil Lunagariya', 'Khodal hostel', 'Hostel', 'Ranchod nagar', 'Ahmedabad', 2147483647, 'khodal@gmail.com', 'Available', 'Veg', 'Boys', 25, 10, 15, 100000, 8400, 280, '../uploads/download.jfif', '../uploads/badhostels.jpg', '../uploads/images (28).jfif', '../uploads/images (4).jfif', '../uploads/images (6).jfif', '../uploads/images (10).jfif'),
(6, 'Phileman ', 'Phileman Pius', 'Pp Rooms', 'Room', 'Satyanarayan Mandir Road', 'Jamnagar', 2147483647, 'pprooms@gmail.com', 'Not-Available', 'Non-Veg', 'Boys', 8, 5, 3, 20000, 1700, 60, '../uploads/images (1).jfif', '../uploads/images (26).jfif', '../uploads/images (8).jfif', '../uploads/images (2).jfif', '../uploads/images (11).jfif', '../uploads/images (1).jfif');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `g_num01` varchar(10) NOT NULL,
  `g_num02` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `password`, `fname`, `lname`, `number`, `email`, `city`, `gender`, `g_num01`, `g_num02`) VALUES
(1, 'Parth jain', '1234567890', 'Parth', 'Jain', '9080765498', 'jainparth@gmail.com', 'Rajkot', 'Male', '9876981234', '9087123432');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings_history`
--
ALTER TABLE `bookings_history`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `hr_admin`
--
ALTER TABLE `hr_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `hr_feedback`
--
ALTER TABLE `hr_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_table`
--
ALTER TABLE `hr_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings_history`
--
ALTER TABLE `bookings_history`
  MODIFY `booking_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_admin`
--
ALTER TABLE `hr_admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hr_feedback`
--
ALTER TABLE `hr_feedback`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_table`
--
ALTER TABLE `hr_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
