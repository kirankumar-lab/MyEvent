-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 09:18 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id14720994_myevent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Creation: Nov 03, 2020 at 12:38 PM
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mono` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Truncate table before insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `address`, `mono`, `email`, `password`) VALUES
(1, 'Vaghela Kirankumar', 'Nr. Fuleshvar Temple Chuda', '9067863410', 'kiranwebsite63410@gmail.com', 'Kiran63410@@'),
(2, 'Parmar Bhavesh', 'Surendranagar', '9662023439', 'gullyboy606060@gmail.com', 'Bhavesh1999@@');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--
-- Creation: Nov 17, 2020 at 06:42 PM
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `book_date_from` date NOT NULL,
  `book_date_to` date NOT NULL,
  `amount` int(10) NOT NULL DEFAULT 0,
  `payment_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `confirm` tinyint(1) NOT NULL DEFAULT 0,
  `pre_book` tinyint(1) NOT NULL DEFAULT 0,
  `cancle` tinyint(1) NOT NULL DEFAULT 0,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `booking`:
--   `uid`
--       `user` -> `uid`
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_catering`
--
-- Creation: Nov 18, 2020 at 06:46 AM
--

CREATE TABLE `booking_catering` (
  `cbid` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `wedding_menu` tinyint(1) NOT NULL DEFAULT 0,
  `reception_menu` tinyint(1) NOT NULL DEFAULT 0,
  `coffee_break` tinyint(1) NOT NULL DEFAULT 0,
  `no_person_wedding` int(11) NOT NULL DEFAULT 0,
  `no_person_reception` int(11) NOT NULL DEFAULT 0,
  `no_coffee_break` int(11) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `booking_catering`:
--   `baid`
--       `business_account` -> `baid`
--   `book_id`
--       `booking` -> `book_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_decorator`
--
-- Creation: Nov 18, 2020 at 06:47 AM
--

CREATE TABLE `booking_decorator` (
  `dbid` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `venue_deco` tinyint(1) NOT NULL DEFAULT 0,
  `outdoor_deco` tinyint(1) NOT NULL DEFAULT 0,
  `welcome_deco` tinyint(1) NOT NULL DEFAULT 0,
  `table_deco` tinyint(1) NOT NULL DEFAULT 0,
  `chair_deco` tinyint(1) NOT NULL DEFAULT 0,
  `car_deco` tinyint(1) NOT NULL DEFAULT 0,
  `no_table` int(11) NOT NULL DEFAULT 0,
  `no_chair` int(11) NOT NULL DEFAULT 0,
  `no_car` int(11) NOT NULL DEFAULT 0,
  `tent` tinyint(1) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `booking_decorator`:
--   `baid`
--       `business_account` -> `baid`
--   `book_id`
--       `booking` -> `book_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_photographer`
--
-- Creation: Nov 18, 2020 at 06:48 AM
--

CREATE TABLE `booking_photographer` (
  `pbid` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `photo_day` tinyint(1) NOT NULL DEFAULT 0,
  `photo_vedio_day` tinyint(1) NOT NULL DEFAULT 0,
  `photo_2_day` tinyint(1) NOT NULL DEFAULT 0,
  `photo_vedio_2_day` tinyint(1) NOT NULL DEFAULT 0,
  `photo_3_day` tinyint(1) NOT NULL DEFAULT 0,
  `photo_vedio_3_day` tinyint(1) NOT NULL DEFAULT 0,
  `album` tinyint(1) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `booking_photographer`:
--   `book_id`
--       `booking` -> `book_id`
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_venue`
--
-- Creation: Nov 17, 2020 at 06:44 PM
--

CREATE TABLE `booking_venue` (
  `vbid` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `no_people` int(11) NOT NULL DEFAULT 0,
  `rent` int(11) NOT NULL DEFAULT 0,
  `deco` tinyint(1) NOT NULL DEFAULT 0,
  `deco_amount` int(11) NOT NULL DEFAULT 0,
  `non_veg_food` tinyint(1) NOT NULL DEFAULT 0,
  `veg_food` tinyint(1) NOT NULL DEFAULT 0,
  `non_veg_plate` int(11) NOT NULL DEFAULT 0,
  `veg_plate` int(11) NOT NULL DEFAULT 0,
  `food_amout` int(11) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `booking_venue`:
--   `baid`
--       `business_account` -> `baid`
--   `book_id`
--       `booking` -> `book_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_wedding_planner`
--
-- Creation: Nov 18, 2020 at 06:48 AM
--

CREATE TABLE `booking_wedding_planner` (
  `wbid` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `wed_planning` tinyint(1) NOT NULL DEFAULT 0,
  `wed_manager` tinyint(1) NOT NULL DEFAULT 0,
  `wed_all` tinyint(1) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `booking_wedding_planner`:
--   `book_id`
--       `booking` -> `book_id`
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_account`
--
-- Creation: Nov 11, 2020 at 07:33 AM
-- Last update: Nov 19, 2020 at 06:44 AM
--

CREATE TABLE `business_account` (
  `baid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `name_organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mono` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `business_account`:
--   `uid`
--       `user` -> `uid`
--   `bid`
--       `business_category` -> `bid`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_category`
--
-- Creation: Nov 03, 2020 at 12:38 PM
--

CREATE TABLE `business_category` (
  `bid` int(11) NOT NULL,
  `catagory` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `business_category`:
--

--
-- Truncate table before insert `business_category`
--

TRUNCATE TABLE `business_category`;
--
-- Dumping data for table `business_category`
--

INSERT INTO `business_category` (`bid`, `catagory`, `timestamp`, `del`) VALUES
(1, 'venue', '2020-09-24 17:53:58', 0),
(2, 'catering', '2020-09-27 04:01:42', 0),
(3, 'decorator', '2020-09-27 04:09:38', 0),
(4, 'photographer', '2020-09-27 04:21:27', 0),
(5, 'wedding_planner', '2020-09-27 04:23:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--
-- Creation: Nov 12, 2020 at 02:25 PM
--

CREATE TABLE `catering` (
  `id` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `wedding_menu` int(11) NOT NULL,
  `reception_menu` int(11) NOT NULL,
  `coffee_break` int(11) NOT NULL,
  `other_service` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `catering`:
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--
-- Creation: Nov 12, 2020 at 02:25 PM
--

CREATE TABLE `contact` (
  `cid` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `mono` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `replay` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `read_msg` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `contact`:
--

-- --------------------------------------------------------

--
-- Table structure for table `decorator`
--
-- Creation: Nov 12, 2020 at 02:25 PM
--

CREATE TABLE `decorator` (
  `id` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `venue_decoration` tinyint(1) NOT NULL,
  `outdoor_decoration` tinyint(1) NOT NULL,
  `venue_deco_price` int(11) NOT NULL,
  `outdoor_deco_price` int(11) NOT NULL,
  `table_deco_price` int(11) NOT NULL,
  `chair_deco_price` int(11) NOT NULL,
  `welcome_deco_price` int(11) NOT NULL,
  `tent_price` int(11) NOT NULL,
  `car_deco_price` int(11) NOT NULL,
  `other_service` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `decorator`:
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--
-- Creation: Nov 12, 2020 at 10:33 AM
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `feedback`:
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--
-- Creation: Nov 12, 2020 at 02:26 PM
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `image`:
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--
-- Creation: Nov 17, 2020 at 08:38 AM
--

CREATE TABLE `payment` (
  `pay_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` int(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `payment`:
--   `book_id`
--       `booking` -> `book_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `photographer`
--
-- Creation: Nov 12, 2020 at 02:26 PM
--

CREATE TABLE `photographer` (
  `id` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `photo_day` int(11) NOT NULL,
  `photo_vedio_day` int(11) NOT NULL,
  `photo_2_day` int(11) NOT NULL,
  `photo_vedio_2_day` int(11) NOT NULL,
  `photo_3_day` int(11) NOT NULL,
  `photo_vedio_3_day` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `other_service` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `photographer`:
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Nov 12, 2020 at 02:26 PM
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mono` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `user`:
--

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--
-- Creation: Nov 15, 2020 at 10:06 AM
-- Last update: Nov 19, 2020 at 06:44 AM
--

CREATE TABLE `venue` (
  `id` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `firecrackers` tinyint(1) NOT NULL DEFAULT 0,
  `private_parking` tinyint(1) NOT NULL DEFAULT 0,
  `alcohol` tinyint(1) NOT NULL DEFAULT 0,
  `deco_policy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deco_price` int(11) NOT NULL DEFAULT 0,
  `cash` tinyint(1) NOT NULL DEFAULT 0,
  `credit_debit_card` tinyint(1) NOT NULL DEFAULT 0,
  `bank_transfer` tinyint(1) NOT NULL DEFAULT 0,
  `cheque` tinyint(1) NOT NULL DEFAULT 0,
  `food_policy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `veg_price` int(11) NOT NULL DEFAULT 0,
  `non_veg_price` int(11) NOT NULL DEFAULT 0,
  `rent` int(11) NOT NULL,
  `other_specification` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `venue`:
--   `baid`
--       `business_account` -> `baid`
--

-- --------------------------------------------------------

--
-- Table structure for table `wedding_planner`
--
-- Creation: Nov 12, 2020 at 02:27 PM
--

CREATE TABLE `wedding_planner` (
  `id` int(11) NOT NULL,
  `baid` int(11) NOT NULL,
  `wed_planning` int(11) NOT NULL,
  `wed_manager` int(11) NOT NULL,
  `wed_all` int(11) NOT NULL,
  `other_service` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `wedding_planner`:
--   `baid`
--       `business_account` -> `baid`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `booking_catering`
--
ALTER TABLE `booking_catering`
  ADD PRIMARY KEY (`cbid`),
  ADD KEY `baid` (`baid`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `booking_decorator`
--
ALTER TABLE `booking_decorator`
  ADD PRIMARY KEY (`dbid`),
  ADD KEY `baid` (`baid`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `booking_photographer`
--
ALTER TABLE `booking_photographer`
  ADD PRIMARY KEY (`pbid`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `booking_venue`
--
ALTER TABLE `booking_venue`
  ADD PRIMARY KEY (`vbid`),
  ADD KEY `baid` (`baid`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `booking_wedding_planner`
--
ALTER TABLE `booking_wedding_planner`
  ADD PRIMARY KEY (`wbid`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `business_account`
--
ALTER TABLE `business_account`
  ADD PRIMARY KEY (`baid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `business_category`
--
ALTER TABLE `business_category`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `decorator`
--
ALTER TABLE `decorator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `photographer`
--
ALTER TABLE `photographer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baid` (`baid`);

--
-- Indexes for table `wedding_planner`
--
ALTER TABLE `wedding_planner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baid` (`baid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_catering`
--
ALTER TABLE `booking_catering`
  MODIFY `cbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_decorator`
--
ALTER TABLE `booking_decorator`
  MODIFY `dbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_photographer`
--
ALTER TABLE `booking_photographer`
  MODIFY `pbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_venue`
--
ALTER TABLE `booking_venue`
  MODIFY `vbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_wedding_planner`
--
ALTER TABLE `booking_wedding_planner`
  MODIFY `wbid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_account`
--
ALTER TABLE `business_account`
  MODIFY `baid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_category`
--
ALTER TABLE `business_category`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catering`
--
ALTER TABLE `catering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `decorator`
--
ALTER TABLE `decorator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photographer`
--
ALTER TABLE `photographer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wedding_planner`
--
ALTER TABLE `wedding_planner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `booking_catering`
--
ALTER TABLE `booking_catering`
  ADD CONSTRAINT `booking_catering_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`),
  ADD CONSTRAINT `booking_catering_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `booking` (`book_id`);

--
-- Constraints for table `booking_decorator`
--
ALTER TABLE `booking_decorator`
  ADD CONSTRAINT `booking_decorator_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`),
  ADD CONSTRAINT `booking_decorator_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `booking` (`book_id`);

--
-- Constraints for table `booking_photographer`
--
ALTER TABLE `booking_photographer`
  ADD CONSTRAINT `booking_photographer_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `booking` (`book_id`),
  ADD CONSTRAINT `booking_photographer_ibfk_2` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `booking_venue`
--
ALTER TABLE `booking_venue`
  ADD CONSTRAINT `booking_venue_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`),
  ADD CONSTRAINT `booking_venue_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `booking` (`book_id`);

--
-- Constraints for table `booking_wedding_planner`
--
ALTER TABLE `booking_wedding_planner`
  ADD CONSTRAINT `booking_wedding_planner_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `booking` (`book_id`),
  ADD CONSTRAINT `booking_wedding_planner_ibfk_2` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `business_account`
--
ALTER TABLE `business_account`
  ADD CONSTRAINT `business_account_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  ADD CONSTRAINT `business_account_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `business_category` (`bid`);

--
-- Constraints for table `catering`
--
ALTER TABLE `catering`
  ADD CONSTRAINT `catering_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `decorator`
--
ALTER TABLE `decorator`
  ADD CONSTRAINT `decorator_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_2` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `booking` (`book_id`);

--
-- Constraints for table `photographer`
--
ALTER TABLE `photographer`
  ADD CONSTRAINT `photographer_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `venue`
--
ALTER TABLE `venue`
  ADD CONSTRAINT `venue_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);

--
-- Constraints for table `wedding_planner`
--
ALTER TABLE `wedding_planner`
  ADD CONSTRAINT `wedding_planner_ibfk_1` FOREIGN KEY (`baid`) REFERENCES `business_account` (`baid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
