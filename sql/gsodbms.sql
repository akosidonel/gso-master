-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 09:47 AM
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
-- Table structure for table `account_code`
--

CREATE TABLE `account_code` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_code`
--

INSERT INTO `account_code` (`id`, `account_name`, `account_code`, `created_at`) VALUES
(1, 'Medical, Dental and Laboratory Supplies Expenses', '5-02-03-080', '2022-07-11 22:53:56'),
(2, 'Information and Communication Technology Equipment', '1-07-05-030', '2022-07-11 23:02:15'),
(3, 'Office Equipment', '1-07-05-020', '2022-07-11 23:03:48'),
(4, 'Motor Vehicles', '1-07-06-010', '2022-07-11 23:06:20'),
(5, 'Furniture and Fixtures', '1-07-07-010', '2022-07-11 23:07:41'),
(6, 'Other Machinery and Equipment', '1-07-05-990', '2022-07-11 23:10:33'),
(7, 'Computer Software', '1-09-01-020', '2022-07-11 23:12:39');

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
  `total_value` varchar(255) NOT NULL,
  `date_aquired` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `end_user` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `obr_number` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive`
--

INSERT INTO `archive` (`id`, `item`, `description`, `par_number`, `unit_value`, `total_value`, `date_aquired`, `quantity`, `end_user`, `account_code`, `department`, `department_code`, `supplier`, `purchase_order`, `obr_number`, `status`) VALUES
(347, 'Projector', 'Projector - 3200 ANSI Lumens, 3LCD Technology Projector with HDMI XGA (1024 x 768* with 70\" x 70\" tripod projector screen (EPSON EB-X41 ESP) SN: X4HW9600062', '19 - 129', '68,900.00', '68,900.00', '6/3/2019', '1', 'Leonel Valenzuela', '221', 'B.A.C', '8', 'Brighter Stars Trading', '', '', ''),
(4, 'Internal Harddrive', '1TB sky Hawk Surveillance 3.5 SATA 6GB/s', '21-3246-3249', '11,400.00', '45,600.00', '12/24/2021', '4', 'Jose O. Nariz', '223', 'Accounting Office', '2', 'Beamly Consumer Goods Trading', '', '', '');

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
(3, 'General Services Office', '10'),
(4, 'C.E.N.R.O', '15'),
(5, 'Assessor\'s', '17'),
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
  `unit_value` decimal(8,2) NOT NULL,
  `date_aquired` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `obr_number` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_fund`
--

INSERT INTO `general_fund` (`id`, `item`, `description`, `par_number`, `unit_value`, `date_aquired`, `account_code`, `department_code`, `supplier`, `purchase_order`, `obr_number`, `remarks`) VALUES
(2, 'Laptop', 'ACER - intel i7-8500,16GB RAM 2x8 , 1TB SSD, 3TB HDD SATA, GTX 730 DDR5 2GB, \"15inch WQHD+ 3200x1440 DUAL AUDIO SOUND', '2022-07-223', '300000.00', '12-12-2022', '1-07-05-030', '8', 'Lemon and Lime', '000-001', '000-001', 'Serviceable'),
(4, 'Printer', 'CANON G2020- print , scan, copy refillable ink tank all in one for high volume  SN: KMBE83021', '21-421', '17.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(5, 'Printer', 'CANON G2020- print , scan, copy refillable ink tank all in one for high volume  SN: KMYV06220', '21-422', '17.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(6, 'Printer', 'CANON G2020- print , scan, copy refillable ink tank all in one for high volume SN: KMYV05242', '21-423', '17.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(7, 'Printer', 'CANON G2020- print , scan, copy refillable ink tank all in one for high volume SN: KMYV06219', '21-424', '17.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(8, 'Printer', 'CANON G2020- print , scan, copy refillable ink tank all in one for high volume SN: KMYV05249', '21-425', '17.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(9, 'Printer', 'CANON G2020- print , scan, copy refillable ink tank all in one for high volume SN: KMBE83089', '21-426', '17.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(10, 'Computer Desktop', 'System Unit : HP CDTS 2089 - intel i5-9400F,128GB NVME M.2 SSD,NVIDIA GeForce GTX 1030 2GB, W10, \nSN: 4CEO390N41 , Monitor - HP 22M Backlit  SN: ICRO420XLQ', '21-427', '112.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(11, 'Computer Desktop', 'System Unit : HP CDTS 2089 - intel i5-9400F,128GB NVME M.2 SSD,NVIDIA GeForce GTX 1030 2GB, W10, SN:4CE0390CRM,  , Monitor - HP 22M Backlit SN: ICRO211FVS\nLCD Monitor ', '21-428', '112.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(12, 'Computer Desktop', 'System Unit : HP CDTS 2089 - intel i5-9400F,128GB NVME M.2 SSD,NVIDIA GeForce GTX 1030 2GB, W10, SN: 4CE0390NK9 , Monitor - HP 22M Backlit  SN: ICRO420XKV\nLCD Monitor', '21-429', '112.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(13, 'Computer Desktop', 'System Unit : HP CDTS 2089 - intel i5-9400F,128GB NVME M.2 SSD,NVIDIA GeForce GTX 1030 2GB, W10, SN:4CEO390CRM ,Monitor - HP 22M Backlit SN: ICRO420XM5\nLCD Monitor   ', '21-430', '112.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(14, 'Computer Desktop', 'System Unit : HP CDTS 2089 - intel i5-9400F,128GB NVME M.2 SSD,NVIDIA GeForce GTX 1030 2GB, W10, SN: 4CE0390QRW, Monitor - HP 22M Backlit \nLCD Monitor SN: ICRO420XN1', '21-431', '112.00', '2021', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(15, 'Chair', 'Office Ergo Comfort Black fabric high back executive perator chair, suitable for 24 hr use. Comfort arm rests optional 3 level synchronous ergo tilt seat back angle adjustment', '19 - 2337', '28.00', '6/3/2019', '1-07-07-010', '8', 'JenJusJem', '', '', ''),
(16, 'Copier', 'Multi Function Laser Copier parts main engine assembly KYOCERA multi function laser copier task alfa 2201 SN: LXE4800085', '18 - 2046', '15.00', '3/3/2019', '1-07-05-020', '8', 'Eminence Builders and Traders', '', '', ''),
(17, 'Aircon', '2.0 HP Window type aircon inverter Condura SN: 10918-0137003, 1018-0163342', '18 - 177-178', '123.00', '6/2/2018', '1-07-05-020', '8', 'JenJusJem', '', '', ''),
(18, 'Typewriter', 'Manual Typewriter 18\" carriage with 3 position ribbon selector w/ tabulator setting; line spacing 1/1.5/2/2.5/3 metal casing OLYMPIA SN: 6933343', '18 - 176', '49.00', '6/2/2018', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(19, 'Printer', 'Printer all in one inkjet print, copy, scan and wifi continous EPSON L4160 SN: 4E3001850 EPSON L405 SN: X4FJ02041', '18 - 174-175', '34.00', '6/2/2018', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(20, 'Computer set', 'Computer set - operating system windows 10 Home 17-7700 processor (8MB cache, up to 3.60GHz): memory: 16GB 2400MHz: Hard disk 1TB GB 7200+128GB SSD graphics NVIDIA, Geforce, GTX 1050 2GB DDR5 Optical Drive  Monitor S2318H 23\" DW 1705 80211 bgn bluetooth 4', '18 - 173', '179.00', '6/2/2018', '1-07-05-030', '8', 'JenJusJem', '', '', ''),
(21, 'Motorcycle', 'RUSI Motorcycle 125cc Black Engine No.: RSPTC125-Z32100 Frame No.: RSPTC125Z32100', '439', '35.00', '2017', '1-07-06-010', '8', '', '', '', 'Donated'),
(22, 'Printer ', 'Printer - L110 , 180 Nozzles, black 50 nozzles each color (cyan, magenta, yellow) 50 sheets A4 plain paper 75 mgsm, 10 sh eets premium glossy paper  SN -RADK - 429838', '1665', '11.00', '5/3/2015', '1-07-05-030', '8', 'Lemon N\' Lime ', '', '', 'previous mr issued to Annaliza Germano BAC'),
(23, 'Computers', 'Computer i3-3240, IH6ICT- icope Motherboard , 4gb ddr3 ram, 500gb, HDD Sata , air casing w/600whs PSc, key and mouse USB, 18.5 \" Monitor, Volts AVR 500 whs Monitor SN - G063HCG301769', '1669', '35.00', '5/3/2015', '1-07-05-030', '8', 'Lemon N\' Lime ', '', '', 'previous mr issued to Annaliza Germano BAC'),
(24, 'Computer desktop', 'Computer desktop 500-334D cor i5-4460 3.2GHZ 20\" LED Monitor DELL SN: 0HH66M-64180-49P-1CWL CPU Service Tag #3XXN622', '4132', '77.00', '5/3/2015', '1-07-05-030', '8', 'MA-REV Gen. Mdse.', '', '', ''),
(25, 'Printer', 'Printer deskjet all in one printer SN: HP Deskjet 1000 CN36R19K7Rs', '4133', '6.00', '5/3/2015', '1-07-05-030', '8', 'MA-REV Gen. Mdse.', '', '', ''),
(26, 'Laptop', 'Laptop - AMD A4 series A4-3300M 2.5ghz DELL Laptop 26VJM72 SN: 4769345254', '4098', '100000.00', '5/3/2015', '1-07-05-030', '8', 'MA-REV Gen. Mdse.', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ics_general_fund`
--

CREATE TABLE `ics_general_fund` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `par_number` varchar(255) NOT NULL,
  `unit_value` varchar(255) NOT NULL,
  `date_aquired` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `obr_number` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_history`
--

CREATE TABLE `item_history` (
  `id` int(11) NOT NULL,
  `par_number` varchar(255) NOT NULL,
  `end_user` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_history`
--

INSERT INTO `item_history` (`id`, `par_number`, `end_user`, `department_code`, `status`, `date`) VALUES
(2, '2022-07-223', 'Malou Tanel', '2', '0', '2022-06-13 16:35:25.348143'),
(7, '2022-07-223', 'Reydonel Martinez', '2', '0', '2022-06-13 16:35:25.348143'),
(8, '2022-07-223', 'Elisa S. Pojanes', '8', '0', '2022-06-13 16:35:25.348143'),
(9, '21-834', 'Marie Josephine Claire Reyes', '8', '0', '2022-06-13 16:35:25.348143'),
(10, '21-835', 'Marie Josephine Claire Reyes', '8', '0', '2022-06-13 16:35:25.348143'),
(11, '21-836', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(12, '21-837', 'Marie Josephine Claire Reyes', '8', '0', '2022-06-13 16:35:25.348143'),
(13, '21-421', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(14, '21-422', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(15, '21-423', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(16, '21-424', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(17, '21-425', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(18, '21-426', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(19, '21-427', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(20, '21-428', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(21, '21-429', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(22, '21-430', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(23, '21-431', 'Marie Josephine Claire Reyes', '8', '1', '2022-06-13 16:35:25.348143'),
(24, '19 - 2337', 'Anna Liza R. Germano - B.A.C.', '8', '1', '2022-06-13 16:35:25.348143'),
(25, '18 - 2046', 'Anna Liza R. Germano - B.A.C.', '8', '1', '2022-06-13 16:35:25.348143'),
(26, '18 - 177-178', 'Anna Liza R. Germano - B.A.C.', '8', '1', '2022-06-13 16:35:25.348143'),
(27, '18 - 176', 'Anna Liza R. Germano - B.A.C.', '8', '1', '2022-06-13 16:35:25.348143'),
(28, '18 - 174-175', 'Anna Liza R. Germano - B.A.C.', '8', '1', '2022-06-13 16:35:25.348143'),
(29, '18 - 173', 'Anna Liza R. Germano - B.A.C.', '8', '1', '2022-06-13 16:35:25.348143'),
(30, '439', 'Leonel Valenzuela', '8', '1', '2022-06-13 16:35:25.348143'),
(31, '1665', 'Leonel Valenzuela', '8', '1', '2022-06-13 16:35:25.348143'),
(32, '1669', 'Leonel Valenzuela', '8', '1', '2022-06-13 16:35:25.348143'),
(33, '4132', 'Leonel Valenzuela', '8', '1', '2022-06-13 16:35:25.348143'),
(34, '4133', 'Leonel Valenzuela', '8', '1', '2022-06-13 16:35:25.348143'),
(35, '4098', 'Leonel Valenzuela', '8', '1', '2022-06-13 16:35:25.348143'),
(36, '4098', 'Anna Liza R. Germano - B.A.C.', '8', '0', '2022-06-13 16:35:25.348143'),
(37, '4098', 'Marie Josephine Claire Reyes', '8', '0', '2022-06-13 16:35:25.348143'),
(38, '4098', 'Andrea Nicole S. Edora', '8', '0', '2022-06-13 16:35:25.348143'),
(39, '2022-07-223', 'Reydonel Martinez', '8', '1', '2022-06-28 07:55:33.307093');

-- --------------------------------------------------------

--
-- Table structure for table `property_clearance`
--

CREATE TABLE `property_clearance` (
  `id` int(11) NOT NULL,
  `end_user` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `department` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `obr_number` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return_item`
--

INSERT INTO `return_item` (`id`, `item`, `description`, `par_number`, `unit_value`, `date_aquired`, `account_code`, `department`, `department_code`, `supplier`, `purchase_order`, `obr_number`, `remarks`) VALUES
(3, 'Photocopier', 'IMC2500 - Digital colored copier - 320 GB HDD standard, 7.4 sec. output speed, 25pm continous, 2GB standard speed memory,SPDF capacity 200 sheets, weight: 91kg, 1 set CYMK and 1 pcs steel cabinet, SN: 3090R220215', '21-837', '433,205.82', '2021', '221', 'B.A.C', '8', 'Philippines Duplicators Inc.', '', '', '');

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
-- Indexes for table `account_code`
--
ALTER TABLE `account_code`
  ADD PRIMARY KEY (`id`,`account_code`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_history`
--
ALTER TABLE `item_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `property_clearance`
--
ALTER TABLE `property_clearance`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `account_code`
--
ALTER TABLE `account_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `general_fund`
--
ALTER TABLE `general_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `item_history`
--
ALTER TABLE `item_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `property_clearance`
--
ALTER TABLE `property_clearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
