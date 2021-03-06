-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 07, 2020 at 10:56 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_crud_sweetalert2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `a_username` varchar(100) NOT NULL COMMENT 'อีเมลแอดมิน',
  `a_password` varchar(200) NOT NULL COMMENT 'รหัสผ่านแอดมิน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`a_username`, `a_password`) VALUES
('admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `c_id` int(11) NOT NULL COMMENT 'ไอดีลูกค้า',
  `c_name` varchar(100) NOT NULL COMMENT 'ชื่อลูกค้า',
  `c_tel` varchar(10) NOT NULL COMMENT 'เบอร์โทรลูกค้า',
  `c_address` varchar(255) NOT NULL COMMENT 'ที่อยู่ลูกค้า',
  `c_username` varchar(100) NOT NULL COMMENT 'ชื่อผู้ใช้การเข้าสู่ระบบลูกค้า',
  `c_password` varchar(255) NOT NULL COMMENT 'รหัสการเข้าสู่ระบบลูกค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `p_id` int(11) NOT NULL COMMENT 'ไอดีสินค้า',
  `p_name` varchar(100) NOT NULL COMMENT 'ชื่อสินค้า',
  `p_price` float NOT NULL COMMENT 'ราคาสินค้า',
  `p_count` int(11) NOT NULL COMMENT 'จำนวนสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`a_username`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีลูกค้า', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีสินค้า';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
