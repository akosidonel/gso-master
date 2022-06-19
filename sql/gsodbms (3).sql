-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 02:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsodbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `par_number` varchar(255) NOT NULL,
  `unit_value` varchar(255) NOT NULL,
  `date_aquired` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `obr_number` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `deptid` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`deptid`, `department_name`, `department_code`) VALUES
(1, 'Accounting', '2'),
(2, 'B.A.C', '8');

-- --------------------------------------------------------

--
-- Table structure for table `general_fund`
--

CREATE TABLE `general_fund` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `par_number` varchar(255) NOT NULL,
  `unit_value` varchar(255) NOT NULL,
  `date_aquired` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `obr_number` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_fund`
--

INSERT INTO `general_fund` (`id`, `item`, `description`, `par_number`, `unit_value`, `date_aquired`, `account_code`, `supplier`, `purchase_order`, `obr_number`, `remarks`) VALUES
(3, 'Computer', 'Acer - i7100F, 16GB DDR5, 512GB SSD, 1TB', '2019-05-030-0001-05', '', '12-12-2019', '223', 'Beamly Consumer Goods Trading', '12', '12', 'Serviceable'),
(1, 'Aircon', '3.0 HP', '63263', '', '12-12-2022', '240', 'Beamly Consumer Goods Trading', '12', '12', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_history`
--

CREATE TABLE `item_history` (
  `id` int(11) NOT NULL,
  `par_number` varchar(255) NOT NULL,
  `end_user` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_history`
--

INSERT INTO `item_history` (`id`, `par_number`, `end_user`, `department_code`, `status`, `created_at`) VALUES
(1, '63263', 'Malou Tanael', '2', 0, '2022-06-12 02:02:16.678630'),
(10, '63263', 'Leonel Valenzuela', '2', 0, '2022-06-11 23:46:10.330306'),
(11, '63263', 'Malou Tanael', '2', 0, '2022-06-11 23:46:30.838714'),
(12, '63263', 'Leonel Valenzuela', '2', 0, '2022-06-19 06:33:15.816856'),
(13, '2022-07', 'Malou Tanael', '2', 0, '2022-06-19 11:52:13.975013'),
(14, '63263', 'Reydonel M. Alafnte', '8', 0, '2022-06-19 10:33:34.448215'),
(15, '63263', 'Elisa S. Pojanes', '2', 1, '2022-06-19 10:35:18.340698'),
(16, '2019-05-030-0001-05', 'Andrea Nicole S. Edora', '2', 1, '2022-06-19 11:26:53.171043');

-- --------------------------------------------------------

--
-- Table structure for table `return_item`
--

CREATE TABLE `return_item` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `par_number` varchar(255) NOT NULL,
  `unit_value` varchar(255) NOT NULL,
  `date_aquired` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `obr_number` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return_item`
--

INSERT INTO `return_item` (`id`, `item`, `description`, `par_number`, `unit_value`, `date_aquired`, `account_code`, `supplier`, `purchase_order`, `obr_number`, `remarks`) VALUES
(2, 'Laptop', 'Acer', '2022-07', '69,900.00', '12-11-2022', '223', 'Brighter Stars Trading', '10', '10', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `empid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`empid`, `fname`, `lname`, `contact`, `email`, `password`, `role`, `status`, `created_at`) VALUES
(1, 'donel', 'martinez', '09296655717', 'iamreydonel@gmail.com', '$2y$10$qdWH4DOhsyKOS5tBEeQSJ.F/62ZnighSWeNzhYv9Y3h6hMUotx1B2', 'Super-Admin', '1', '2022-05-29 05:54:39.180785');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_code`),
  ADD UNIQUE KEY `UNIQUE` (`deptid`);

--
-- Indexes for table `general_fund`
--
ALTER TABLE `general_fund`
  ADD PRIMARY KEY (`par_number`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `item_history`
--
ALTER TABLE `item_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `return_item`
--
ALTER TABLE `return_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_fund`
--
ALTER TABLE `general_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_history`
--
ALTER TABLE `item_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
