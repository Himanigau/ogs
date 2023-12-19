-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 05:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `username`, `password`) VALUES
(5, 'admin', '12345678'),
(6, 'sweety', 'gaur'),
(7, 'admin', '12345'),
(8, 'admin', 'admin'),
(9, 'admin', '12345'),
(10, 'sweety', '12345'),
(11, 'sweety', '12345'),
(12, 'sweety', '12345'),
(13, 'sweety', '12345'),
(14, 'sweety', '12345'),
(15, 'sweety', '12345'),
(16, 'sweety', '12345'),
(17, 'Sweety', '12345'),
(18, 'sweety', '12345'),
(19, 'sweety', '12345'),
(20, 'sweety', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categories`, `status`) VALUES
(1, 'Food Grains', 1),
(2, 'Packed Food', 1),
(3, 'Personal care', 1),
(4, 'Household items', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `comment` text NOT NULL,
  `addedon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `username`, `email`, `mobile`, `comment`, `addedon`) VALUES
(1, '$username', '$email', '$mobile', '$comment', '0000-00-00 00:00:00'),
(2, 'Shalini', 'shalini@gmail.com', '987654', 'abc', '2021-04-02 12:49:12'),
(4, 'Kshmankar', 'kshmankar@gmail.com', '987654321', '		r4itijghk			', '2021-04-02 13:25:02'),
(5, 'admin', 'sweety@gmail.com', '6234567890', '	eWQ43FFVXCI87				', '2021-07-22 12:20:15'),
(6, 'Sweety', 'Sweety123@gmail.com', '9876543210', '		In how many days I received my product?		', '2021-07-25 06:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `ordr`
--

CREATE TABLE `ordr` (
  `id` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `price1` float NOT NULL,
  `qnty` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordr`
--

INSERT INTO `ordr` (`id`, `cname`, `address`, `price1`, `qnty`, `total`) VALUES
(1, 'Sweety', 'Sudarshana Nagar', 100, 2, 200),
(2, 'Princy', 'Bajaj Nagar', 165, 2, 130),
(3, 'Sweety', 'Sudarshana Nagar', 120, 1, 120);

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`id`, `categories_id`, `name`, `price`, `image`) VALUES
(1, 1, 'Aashirwaad Atta', 300, 'uploadimg/a7.jpeg'),
(2, 1, ' Multigrain Aashirwaad Atta', 350, 'uploadimg/IMG_20200501_202413_371.jpg'),
(3, 1, 'Brahmins Fried Rawa', 80, 'uploadimg/fried-rawa.jpg'),
(6, 1, 'Kabuli Chana', 100, 'uploadimg/kabuli.jpg'),
(7, 1, 'Chana Dal', 80, 'uploadimg/chana.jpg'),
(8, 1, 'Mix Dal', 123, 'uploadimg/mix.jpg'),
(9, 1, 'Toor Dal', 90, 'uploadimg/toor.jpg'),
(10, 1, 'Moong Dal', 120, 'uploadimg/tata-sampann-moong-dal-250x250.jpg'),
(11, 1, 'Everest Garam Masala', 50, 'uploadimg/a8.jpg'),
(12, 1, 'Everest Pav Bhaji Masala', 49, 'uploadimg/everest-spices-500x500.jpg'),
(13, 1, 'Everest Shahi Biryani Masala', 45, 'uploadimg/everest-masala-250x250.jpg'),
(16, 2, 'Dark Fantasy', 100, 'uploadimg/dark.jpg'),
(17, 2, 'Marie Gold', 90, 'uploadimg/marie.jpg'),
(21, 2, 'Fuse', 80, 'uploadimg/fuse.jpg'),
(22, 2, 'Nestle Munch Chocolate', 99, 'uploadimg/nestle.jpg'),
(23, 2, 'Cadbury Silk', 165, 'uploadimg/silk.jpg'),
(24, 2, 'Snikers', 120, 'uploadimg/snikers.jpg'),
(26, 2, 'Bikaneri Bhujia', 150, 'uploadimg/bhujia.jpg'),
(27, 2, 'Mini Chakri', 120, 'uploadimg/chakri.jpg'),
(31, 2, 'Maggie Cheese Macroni', 75, 'uploadimg/macroni.jpg'),
(32, 2, 'Ribbon Pakoda', 120, 'uploadimg/pakoda.jpg'),
(33, 2, 'Chiwda', 75, 'uploadimg/chiwda.jpg'),
(34, 2, 'Pasta', 80, 'uploadimg/pasta.jpg'),
(35, 2, 'Yippie Noodles', 90, 'uploadimg/yippee.jpg'),
(36, 3, 'Dabur Almond Hair Oil', 50, 'uploadimg/almond.jpg'),
(37, 3, 'Head & Shoulder Shampoo', 120, 'uploadimg/head.jpg'),
(38, 3, 'Loreal Coloured Hair Conditioner', 149, 'uploadimg/loreal.jpg'),
(39, 3, 'Sunsilk Conditioner', 90, 'uploadimg/sunsilk.jpg'),
(41, 3, 'Vaseline body Lotion', 220, 'uploadimg/vaseline.jpg'),
(42, 3, 'Ponds Freshness Talc', 49, 'uploadimg/pond.jpg'),
(46, 3, 'Savlon Handwash And pen Sanitizer Spray', 125, 'uploadimg/savlon.jpg'),
(47, 3, 'Safe Life Handwash', 70, 'uploadimg/safe-life-.jpg'),
(51, 4, 'Ariel Stain Removal Detergent', 220, 'uploadimg/ariel.jpg'),
(52, 4, 'Tide High Efficiency Detergent', 450, 'uploadimg/tideoriginal.jpg'),
(53, 4, 'Comfort Fabric Conditioner', 450, 'uploadimg/comfort.jpg'),
(56, 4, 'Harpic Bathroom Cleaner', 110, 'uploadimg/a9.jpg'),
(57, 4, 'Dettol Floor Cleaner', 99, 'uploadimg/a10.jpg'),
(58, 4, 'Harpic', 90, 'uploadimg/harpic.jpg'),
(59, 1, 'Daawat Brown Basmati Rice', 99, 'uploadimg/5-brown-na-basmati-rice-bag-daawat-original-imafcezmnarpmhwu-1.jpeg'),
(60, 3, 'Tresemme Shampoo', 299, 'uploadimg/tresemme.jpg'),
(61, 2, 'Maggie', 45, 'uploadimg/maggi-2-minute-masala-instant-noodles-280-g-0-20201112.jpg'),
(62, 4, 'Lifebuoy  Handwash Refill', 90, 'uploadimg/8901030765032.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `add` varchar(70) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `pincode` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `add`, `gender`, `city`, `state`, `pincode`, `mobile`, `email`, `password`) VALUES
(1, '$name', '$add', '0', '$city', 0, 0, 0, '$email', '$password'),
(2, '$name', '$add', '0', '$city', 0, 0, 0, '$email', '$password'),
(3, 'Himani', 'Sudarshana Nagar', '0', 'Bikaner', 0, 334003, 12345, 'sweety@gmail.com', '12345'),
(4, 'Sweety', 'Sudarshana Nagar', '0', 'Bikaner', 0, 1234567, 987654321, 'sweety@gmail.com', '12345'),
(5, 'Sweety', 'Sudarshana Nagar', 'fema', 'Bikaner', 0, 334001, 2147483647, 'sweety@gmail.com', '123abcABC'),
(6, 'Sweety', 'Sudarshana Nagar', 'fema', 'Bikaner', 0, 334001, 2147483647, 'sweety@gmail.com', '123abcABC'),
(7, 'Princy', 'Bajaj Nagar', 'fema', 'Jaipur', 0, 334009, 2147483647, 'pricncy123@gmail.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordr`
--
ALTER TABLE `ordr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordr`
--
ALTER TABLE `ordr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
