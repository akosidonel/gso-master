-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 01:10 PM
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
-- Dumping data for table `general_fund`
--

INSERT INTO `general_fund` (`id`, `item`, `description`, `par_number`, `unit_value`, `total_value`, `date_aquired`, `quantity`, `end_user`, `account_code`, `department`, `department_code`, `supplier`, `purchase_order`, `obr_number`, `status`) VALUES
(2, 'Aircon', 'Koppel - Airconditioner 3. OTR Floor Mounted inverter with Installation, Indoor SN:3400852150114150810247,SN:3400852150114150810059, Outdoor SN:340D727420118180870048,SN:340D727420118180870109', '21-3243-3244', '264,400.00', '528,800.00', '12/24/2021', '2', 'Jose O. Nariz', '221', 'Accounting Office', '2', 'Beamly Consumer Goods Trading', '', '', ''),
(3, '', '9Synology DS420+4 Bay Distation NAS (Diskless)', '21-3245', '80,400.00', '80,400.00', '12/24/2021', '1', 'Jose O. Nariz', '223', 'Accounting Office', '2', 'Beamly Consumer Goods Trading', '', '', ''),
(4, 'Internal Harddrive', '1TB sky Hawk Surveillance 3.5 SATA 6GB/s', '21-3246-3249', '11,400.00', '45,600.00', '12/24/2021', '4', 'Jose O. Nariz', '223', 'Accounting Office', '2', 'Beamly Consumer Goods Trading', '', '', ''),
(5, 'Copier', 'Gestetner Digital Full Color Copier Model M2701 SN: 328M1530018', '21-3250', '169,380.00', '169,380.00', '12/24/2021', '1', 'Guilermo Pilar', '223', 'Accounting Office', '2', 'Philippine Duplicators Inc.', '', '', ''),
(6, 'Aircon', 'Aircon wall mounted 2.5HP super inverter with installation dismantle CARRIER SN: 02300402', '20 - 2012', '186,900.00', '186,900.00', '9/3/2020', '1', 'Luisa D. Espinas', '221', 'Accounting Office', '2', 'Multi Bliss Office & School Supplies Trading', '', '', ''),
(7, 'Chair', 'Executive swivel chair with arm and backrest', '19 - 5020', '32,325.00', '32,325.00', '10/3/2019', '1', 'Maria Corazon H. Albores', '222', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(8, 'Chair', 'Executive swivel chair with arm and backrest', '19 - 5019', '32,325.00', '32,325.00', '10/3/2019', '1', 'Antonina Sosa', '222', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(9, 'Chair', 'Executive swivel chair with arm and backrest', '19 - 5018', '32,325.00', '32,325.00', '10/3/2019', '1', 'Edith Sarad', '222', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(10, 'Printer', 'Printer ink tank 415 A10 Printer with WIFI SN: CN86R3F1B4', '19 - 5017', '19,000.00', '19,000.00', '10/3/2019', '1', 'Luisa D. Espinas', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(11, 'Chair', 'Executive swivel chair with arm and backrest', '19 - 5015', '32,325.00', '32,325.00', '10/3/2019', '1', 'Luisa D. Espinas', '222', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(12, 'Chair', 'Executive swivel chair with arm and backrest', '19 - 5014', '32,325.00', '32,325.00', '10/3/2019', '1', 'Melanie Ramos', '222', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(13, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Geoffrey C. Bautista', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(14, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318H5', '19 - 5012', '143,050.00', '143,050.00', '10/3/2019', '1', 'Geoffrey C. Bautista', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(15, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Bernardo Tubera, Jr.', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(16, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318GH', '19 - 5011', '143,050.00', '143,050.00', '10/3/2019', '1', 'Bernardo Tubera, Jr.', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(17, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Lourdes Pullon', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(18, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318HD', '19 - 5010', '143,050.00', '143,050.00', '10/3/2019', '1', 'Lourdes Pullon', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(19, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Iris R. Aliwalas', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(20, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318GC', '19 - 5009', '143,050.00', '143,050.00', '10/3/2019', '1', 'Iris R. Aliwalas', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(21, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Jacqueline Aguilar', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(22, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318GG', '19 - 5008', '143,050.00', '143,050.00', '10/3/2019', '1', 'Jacqueline Aguilar', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(23, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Miraflor A. Reyes', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(24, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC9330Q5W', '19 - 5007', '143,050.00', '143,050.00', '10/3/2019', '1', 'Miraflor A. Reyes', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(25, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Fatima Cernal', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(26, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318GZ', '19 - 5006', '143,050.00', '143,050.00', '10/3/2019', '1', 'Fatima Cernal', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(27, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Edith Sarad', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(28, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318J1', '19 - 5005', '143,050.00', '143,050.00', '10/3/2019', '1', 'Edith Sarad', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(29, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Antonina Sosa', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(30, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318HM', '19 - 5004', '143,050.00', '143,050.00', '10/3/2019', '1', 'Antonina Sosa', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(31, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Maria  Corazon Albores', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(32, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318GN', '19 - 5003', '143,050.00', '143,050.00', '10/3/2019', '1', 'Maria  Corazon Albores', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(33, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Melanie Ramos', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(34, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC9330Q28', '19 - 5002', '143,050.00', '143,050.00', '10/3/2019', '1', 'Melanie Ramos', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(35, '', 'MS (OEM) Windows Professional 64 bit', '', '19,450.00', '19,450.00', '10/3/2019', '1', 'Luisa D. Espinas', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(36, 'Desktop Computer', 'Computer set - intel core i5 24X0101 A A10 PC i5 9400t 23.8 HD 8GB 512 SSD MX2302GB DDR5 SWHT Windows 10 MS (PKC) Office 2019 Home N Business 32GB 64GB Eng SN: 8CC93318HT', '19 - 5001', '143,050.00', '143,050.00', '10/3/2019', '1', 'Luisa D. Espinas', '223', 'Accounting Office', '2', 'Lemon N Lime Essentials Inc.', '', '', ''),
(37, 'UPS', 'UPS ES 500V Output Power Capacity 300 watts/500VA SN: 9B1714A05666', '', '6,850.00', '6,850.00', '7/3/2018', '1', 'Edith Sarad', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(38, 'UPS', 'UPS ES 500V Output Power Capacity 300 watts/500VA SN: 9B1818A01282', '', '6,850.00', '6,850.00', '7/3/2018', '1', 'Brummel Baral', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(39, 'UPS', 'UPS ES 500V Output Power Capacity 300 watts/500VA SN: 9B1714A0665', '', '6,850.00', '6,850.00', '7/3/2018', '1', 'Angelica E. Toledo', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(40, 'Computer set', 'Computer set windows 10 home, intel core i5-7400 processor; graphics NVIDIA Geforce GT 730/2GB 21.5 LED ACER Monitor SN: 80901709242 CPU SN: DTB8ASP0120605E3000', '18 - 378', '98,750.00', '98,750.00', '7/3/2018', '1', 'Angelica E. Toledo', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(41, 'UPS', 'UPS ES 500V Output Power Capacity 300 watts/500VA SN: 9B17114A6378', '', '6,850.00', '6,850.00', '7/3/2018', '1', 'Maria Christina F. Perez', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(42, 'Computer set', 'Computer set windows 10 home, intel core i5-7400 processor; graphics NVIDIA Geforce GT 730/2GB 21.5 LED ACER Monitor SN: 72002056142 CPU SN: DTB8ASP012612060623000', '18 - 377', '98,750.00', '98,750.00', '7/3/2018', '1', 'Maria Christina F. Perez', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(43, 'UPS', 'UPS ES 500V Output Power Capacity 300 watts/500VA SN: 9B1714A05667', '', '6,850.00', '6,850.00', '7/3/2018', '1', 'Raymar C. Solano', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(44, 'Computer set', 'Computer set windows 10 home, intel core i5-7400 processor; graphics NVIDIA Geforce GT 730/2GB 21.5 LED ACER Monitor SN: 81006249242 CPU SN: DTB8ASP01205ED03000', '18 - 376', '98,750.00', '98,750.00', '7/3/2018', '1', 'Raymar C. Solano', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(45, 'UPS', 'UPS ES 500V Output Power Capacity 300 watts/500VA', '', '6,850.00', '6,850.00', '7/3/2018', '1', 'Melanie C. Ramos', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(46, 'Computer set', 'Computer set windows 10 home, intel core i5-7400 processor; graphics NVIDIA Geforce GT 730/2GB 21.5 LED ACER Monitor SN: MMT3RSP0018100F41C4217 CPU SN: DTB8ASP012812060493000', '18 - 375', '98,750.00', '98,750.00', '7/3/2018', '1', 'Melanie C. Ramos', '223', 'Accounting Office', '2', 'Cosed Trading', '', '', ''),
(47, 'Copier Machine', 'Copier Machine SHARP MX-M315N SN: 75010627', '17 - 2616', '403,470.00', '403,470.00', '12/3/2017', '1', 'Aristeo D. Peñafuerte', '221', 'Accounting Office', '2', 'Eminence Builders & Traders', '', '', ''),
(48, 'Toyota Innova', '2017 Toyota Innova 2.8 E Diesel A/T Engine No.: 1GD0400939 Chassis No.: PA2JAEM750039407 C/S No. A4F008 Color Thermalyte', '17 - 2053', '1,304,565.00', '1,304,565.00', '3/3/2017', '1', 'Luisa D. Espinas', '241', 'Accounting Office', '2', 'Toyota Bicutan, Parañaque', '', '', ''),
(49, 'Printer', 'Printonix HD Line matrix impact printer open print HD with printmet enterprises (Land Card) 10/100 SN: 8P8V31707029', '17-331', '550,000.00', '550,000.00', '2/3/2017', '1', 'Marilou C. Tanael', '221', 'Accounting Office', '2', 'American Technologies', '', '', ''),
(50, 'Cubicle', 'Cubicle powder coated', '6848', '393,000.00', '393,000.00', '12/29/2016', '1 lot', 'Antonina Sosa', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(51, 'Chair', 'Executive chair, C-BNH 151 (black)', '6847', '8,750.00', '8,750.00', '12/29/2016', '1', 'Luisa DR. Espinas', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(52, 'Chair', 'Gang chair stainless 4', '6844-6846', '50,700.00', '152,100.00', '12/29/2016', '3', 'Luisa DR. Espinas', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(53, 'Refrigerator', 'Refrigerator 7.6 cu. Ft. CRD250MN-G1/1A', '6843', '42,000.00', '42,000.00', '12/29/2016', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(54, 'Curtain roll-up', 'Curtain roll-up installation and materials', '6842', '600,000.00', '600,000.00', '12/29/2016', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(55, 'Chair', 'Visitor\'s chair, sled type black mesh', '6834-6841', '9,450.00', '75,600.00', '12/29/2016', '8', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(56, 'Chair', 'Swivel chair, model Q3 mesh black', '6823-6833', '5,000.00', '55,000.00', '12/29/2016', '11', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(57, 'Chair', 'Swivel chair, model Q3 mesh black', '5573', '5,000.00', '5,000.00', '9/3/2016', '1', 'Nhico S. Corral', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(58, 'Chair', 'Swivel chair, model Q3 mesh black', '5574', '5,000.00', '5,000.00', '9/3/2016', '1', 'Francisco D. Gaddi', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(59, 'Chair', 'Swivel chair, model Q3 mesh black', '5575', '5,000.00', '5,000.00', '9/3/2016', '1', 'Alyssa T. Relox', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(60, 'Chair', 'Swivel chair, model Q3 mesh black', '5576', '5,000.00', '5,000.00', '9/3/2016', '1', 'Gsus J. Campos', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(61, 'Chair', 'Swivel chair, model Q3 mesh black', '5577', '5,000.00', '5,000.00', '9/3/2016', '1', 'Jasper M. Macasinag', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(62, 'Chair', 'Swivel chair, model Q3 mesh black', '5578', '5,000.00', '5,000.00', '9/3/2016', '1', 'John Lenn B. De Leon', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(63, 'Chair', 'Swivel chair, model Q3 mesh black', '5579', '5,000.00', '5,000.00', '9/3/2016', '1', 'Brummel R. Baral', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(64, 'Chair', 'Swivel chair, model Q3 mesh black', '5580', '5,000.00', '5,000.00', '9/3/2016', '1', 'Jenneth E. Hagos', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(65, 'Chair', 'Swivel chair, model Q3 mesh black', '5581', '5,000.00', '5,000.00', '9/3/2016', '1', 'Jacqueline B. Aguilar', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(66, 'Chair', 'Swivel chair, model Q3 mesh black', '5582', '5,000.00', '5,000.00', '9/3/2016', '1', 'Miraflor A. Reyes', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(67, 'Chair', 'Swivel chair, model Q3 mesh black', '5583', '5,000.00', '5,000.00', '9/3/2016', '1', 'Cristina R. Sasota', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(68, 'Chair', 'Swivel chair, model Q3 mesh black', '5584', '5,000.00', '5,000.00', '9/3/2016', '1', 'Catherine P. Estrella', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(69, 'Chair', 'Swivel chair, model Q3 mesh black', '5585', '5,000.00', '5,000.00', '9/3/2016', '1', 'Bernardo Tubera, Jr.', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(70, 'Chair', 'Swivel chair, model Q3 mesh black', '5586', '5,000.00', '5,000.00', '9/3/2016', '1', 'Susan Engloso', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(71, 'Chair', 'Swivel chair, model Q3 mesh black', '5587', '5,000.00', '5,000.00', '9/3/2016', '1', 'Marilou Mercurio', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(72, 'Chair', 'Swivel chair, model Q3 mesh black', '5588', '5,000.00', '5,000.00', '9/3/2016', '1', 'Nonilon Rilles', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(73, 'Chair', 'Swivel chair, model Q3 mesh black', '5589', '5,000.00', '5,000.00', '9/3/2016', '1', 'Guillermo M. Pilar', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(74, 'Chair', 'Swivel chair, model Q3 mesh black', '5590', '5,000.00', '5,000.00', '9/3/2016', '1', 'Angelica E. Toledo', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(75, 'Chair', 'Swivel chair, model Q3 mesh black', '5591', '5,000.00', '5,000.00', '9/3/2016', '1', 'Maria Lorna G. David', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(76, 'Chair', 'Swivel chair, model Q3 mesh black', '5592', '5,000.00', '5,000.00', '9/3/2016', '1', 'Geoffrey C. Bautista', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(77, 'Chair', 'Swivel chair, model Q3 mesh black', '5593', '5,000.00', '5,000.00', '9/3/2016', '1', 'Melannie C. Ramos', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(78, 'Chair', 'Swivel chair, model Q3 mesh black', '5594', '5,000.00', '5,000.00', '9/3/2016', '1', 'Fatima Cernal', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(79, 'Chair', 'Swivel chair, model Q3 mesh black', '5595', '5,000.00', '5,000.00', '9/3/2016', '1', 'Nimia T. Santos', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(80, 'Chair', 'Swivel chair, model Q3 mesh black', '5596', '5,000.00', '5,000.00', '9/3/2016', '1', 'Lourdes V. Pullon', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(81, 'Chair', 'Swivel chair, model Q3 mesh black', '5597', '5,000.00', '5,000.00', '9/3/2016', '1', 'Jose O. Nariz', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(82, 'Chair', 'Swivel chair, model Q3 mesh black', '5598', '5,000.00', '5,000.00', '9/3/2016', '1', 'Lorena Dera', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(83, 'Chair', 'Swivel chair, model Q3 mesh black', '5599', '5,000.00', '5,000.00', '9/3/2016', '1', 'Iris R. Aliwalas', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(84, 'Chair', 'Swivel chair, model Q3 mesh black', '5600', '5,000.00', '5,000.00', '9/3/2016', '1', 'Wesly Baysac', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(85, 'Chair', 'Swivel chair, model Q3 mesh black', '5601', '5,000.00', '5,000.00', '9/3/2016', '1', 'Lovelybeth U. Vera', '222', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(86, 'Divider', 'Modular Divider (Powder Coated)', '4320', '3,535,000.00', '3,535,000.00', '5/3/2016', '1 lot', 'Marilou C. Tanael- City Accountant', '222 & 240', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', 'With 37 pcs. Mobile pedestal cabinet (222 = 2,500,000 and 240 = 1,043,880)'),
(87, 'Aircon ', 'Aircon - Floor Mounted 3.0TR KFM36EOA KPC361HOA SN: GH248282; GH248245', '3006-3007', '132,300.00', '264,600.00', '12/3/2015', '2', 'Marilou C. Tanael- City Accountant', '240', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(88, 'Divider', 'Modular Divider (Powder Coated)', '3009', '1,398,300.00', '1,398,300.00', '12/3/2015', '1', 'Maria Corazon H. Albores', '240', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(89, 'Aircon', 'Aircon wall mounted 2.0HP KSW 18RS KPC18HHR SN: 150305401914', '3010', '72,100.00', '72,100.00', '12/3/2015', '1', 'Luisa DR. Espinas', '240', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(90, 'Aircon', 'Aircon window type w/ remote 2.0HP KWR 18RB4 MZ300 SN: FH500042', '3011', '62,300.00', '62,300.00', '12/3/2015', '1', 'Antonina T. Sosa', '240', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', ''),
(91, 'Computer Desktop', 'Computer Desktop w/ 20\" monitor, pavilion 500 334D intel core i5 4460 3.2GHz 4GBm 1TB Monitor SN: 6CM450141J; 6CM4501476; 6CM4501347; 6CM4501474; 6CM45012ZT CPU SN: 4CE52310H8; 4CE52310JN; 4CE52310J6; 4CE52310JG; 4CE52310JP', '1760-1764', '79,750.00', '398,750.00', '9/3/2015', '5', 'Marilou C. Tanael- City Accountant', '223', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. ', '', '', ''),
(92, 'Projector', 'Projector with projector screen, heavy duty SN: S15YE012373DQ', '1765', '72,200.00', '72,200.00', '9/3/2015', '1', 'Marilou C. Tanael- City Accountant', '240', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. ', '', '', ''),
(93, 'Printer', 'Printer - color laserjet pro CP1025 Printer (CF346A) Print speed black SN: Lazer Jet CP1025 printer 2852-HOC38', '3095', '23,900.00', '23,900.00', '11/3/2014', '1', 'Marilou C. Tanael- City Accountant', '221', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', '2015 Budget'),
(94, 'Printer', 'Printer 3 in 1 all in one ink L210 Print Direction Bi-Directional max. resolution 5760x1440 dpi printing SN: VGWK093504', '3096', '19,230.00', '19,230.00', '11/3/2014', '1', 'Melanie Ramos', '221', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', '2015 Budget'),
(95, 'Printer', 'Printer 3 in 1 all in one ink L210 Print Direction Bi-Directional max. resolution 5760x1440 dpi printing SN: VGWK093498', '3097', '19,230.00', '19,230.00', '11/3/2014', '1', 'Luisa DR. Espinas', '221', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', '2015 Budget'),
(96, 'Printer', 'Printer LQ-2190 Dot Matrix Printer 136 columns No. 480 cps. prints speed 24 pins number SN: MK6Y009255', '3098', '60,560.00', '60,560.00', '11/3/2014', '1', 'Bernard M. Tubera Jr.', '221', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', '2015 Budget'),
(97, 'Printer', 'Printer LQ-2190 Dot Matrix Printer 136 columns No. 480 cps. prints speed 24 pins number SN: MK6Y009236', '3099', '60,560.00', '60,560.00', '11/3/2014', '1', 'Johnlenn De Leon', '221', 'Accounting Office', '2', 'Lemon N Lime Essential Inc.', '', '', '2015 Budget'),
(98, 'Biometric Machine', 'Biometric Machine - X628 fingerprint  190 x 140 x 57 SN:', '4000', '29,850.00', '29,850.00', '11/3/2014', '1', 'Marilou C. Tanael- City Accountant', '221', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. ', '', '', '2015 Budget'),
(99, 'Printer', 'Printer LQ-2190 Dot Matrix Printer 136 columns No. 480 cps. prints speed 24 pins number SN: MK6Y009523', '4001', '60,560.00', '60,560.00', '11/3/2014', '1', 'Marilou C. Tanael- City Accountant', '221', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. ', '', '', '2015 Budget'),
(100, 'Laptop', 'TX 201LA CQ003H; Intel Pentium 17-4500 intel atom Z256ou processor Windows 8 android 4.2 jelly bean 1 yr. warranty SN: DBNOCY577134480', '239', '98,300.00', '98,300.00', '8/3/2014', '1', 'Marilou C. Tanael- City Accountant', '223', 'Accounting Office', '2', '', '', '', ''),
(101, 'Laptop', 'TX 201LA CQ003H; Intel Pentium 17-4500 intel atom Z256ou processor Windows 8 android 4.2 jelly bean 1 yr. warranty SN: DBNOCY57793485', '238', '98,300.00', '98,300.00', '8/3/2014', '1', 'Melanie Ramos', '223', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. P.O. #07006 O.B.R. #03-2014-08-3711', '', '', ''),
(102, 'Laptop', 'TX 201LA CQ003H; Intel Pentium 17-4500 intel atom Z256ou processor Windows 8 android 4.2 jelly bean 1 yr. warranty SN: DBNOCY57713248C', '237', '98,300.00', '98,300.00', '8/3/2014', '1', 'Corazon Albores', '223', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. P.O. #07006 O.B.R. #03-2014-08-3711', '', '', ''),
(103, 'Laptop', 'TX 201LA CQ003H; Intel Pentium 17-4500 intel atom Z256ou processor Windows 8 android 4.2 jelly bean 1 yr. warranty SN: DBNOCY5779648B', '236', '98,300.00', '98,300.00', '8/3/2014', '1', 'Luisa DR. Espinas', '223', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. P.O. #07006 O.B.R. #03-2014-08-3711', '', '', ''),
(104, 'Laptop', 'TX 201LA CQ003H; Intel Pentium 17-4500 intel atom Z256ou processor Windows 8 android 4.2 jelly bean 1 yr. warranty SN: DBNOCY57713548C', '235', '98,300.00', '98,300.00', '8/3/2014', '1', 'Antonina Sosa', '223', 'Accounting Office', '2', 'Lemon N Lime Essential Inc. P.O. #07006 O.B.R. #03-2014-08-3711', '', '', ''),
(105, 'Aircon', 'IBMX3100M4 SN- 2582B2A-06WYEK4', '12058', '91,000.00', '91,000.00', '1/22/2014', '1', 'Marilou C. Tanael- City Accountant', '223', 'Accounting Office', '2', 'LS2 System Network Integrator O.R. #001021 O.B.R. #03-2013-12-7062', '', '', ''),
(106, 'Printer', 'Epson Printer SN: Q7CY024886', '219', '8,995.00', '8,995.00', '2014', '1', 'Bernardo M. Tubera Jr.', '240', 'Accounting Office', '2', '', '', '', ''),
(107, 'Printer', 'Epson Printer SN: Q7CY024892', '218', '8,995.00', '8,995.00', '2014', '1', 'Cristina R. Sasota', '240', 'Accounting Office', '2', '', '', '', ''),
(108, 'APC', 'APC Back UPS (ES-500)', '10423', '9,000.00', '9,000.00', '1/9/2013', '1', 'Jose Mariz                                       Admin Aide IV', '223', 'Accounting Office', '2', '', '', '', ''),
(109, 'Computer Package ', 'ASPIRE M3985, Genuine Windows 7 Home Basic, 3rd Generation Intel Core i5-3450 processor, Intel B75 Express chipset                                                                     Monitor SN CNK380COS; CPU SN. 4CE2390JRM', '10416', '75,000.00', '75,000.00', '12/12/2012', '1', 'Nimrod Ybera', '223', 'Accounting Office', '2', '', '', '', 'Returned to G.S.O 11/19/2021'),
(110, 'APC', 'APC Back UPS (ES-500)', '10417', '9,000.00', '9,000.00', '12/12/2012', '1', 'Nimrod Ybera', '223', 'Accounting Office', '2', '', '', '', ''),
(111, 'Printer', 'Epson LX300+II SN: G8NY093467', '7097', '14,400.00', '14,400.00', '9/30/2011', '1', 'Nimrod Ybera', '223', 'Accounting Office', '2', '', '', '', ''),
(112, 'Innova', 'Innova Gas 2.0 V Gas AT ENGINE NO: ITR-7032080 CHASSIS NO: TGN40-5022597 COLOR BLACK', '9687', '1,206,200.00', '1,206,200.00', '1/25/2011', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '241', 'Accounting Office', '2', '', '', '', ''),
(113, 'Printer', 'Epson LX-300+II SN: CEBY180843', '', '7,300.00', '7,300.00', '', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '223', 'Accounting Office', '2', '', '', '', ''),
(114, 'UPS', 'TORNADO UPS mphoenix650va/300w SN- 81600016', '7090', '6,200.00', '6,200.00', '10/27/2008', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '223', 'Accounting Office', '2', '', '', '', ''),
(115, 'Printer', 'Epson LX300+II SN: G8NY092459', '7091', '14,400.00', '14,400.00', '10/27/2008', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '223', 'Accounting Office', '2', '', '', '', ''),
(116, 'Monitor', 'ThinkVision 15\" L171 Monitor Black SN: V6LH214', '', '33,800.00', '33,800.00', '12/18/2006', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '223', 'Accounting Office', '2', '', '', '', ''),
(117, 'Table', 'Exec. Table doco finish with side table', '', '17,500.00', '17,500.00', '5/17/2004', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '222', 'Accounting Office', '2', '', '', '', ''),
(118, 'Cabinet', 'Filing Cabinet large w/ 3 drawers ', '', '25,500.00', '51,000.00', '5/17/2004', '2', 'LUISA ESPINAS- ADMIN. OFFICER IV', '222', 'Accounting Office', '2', '', '', '', ''),
(119, 'Cabinet', 'Filing Cabinet Medium w/ 3 drawers', '', '17,500.00', '52,500.00', '5/17/2004', '3', 'LUISA ESPINAS- ADMIN. OFFICER IV', '222', 'Accounting Office', '2', '', '', '', ''),
(120, 'Table', '20x40 Office Table', '', '4,500.00', '9,000.00', '5/17/2004', '2', 'LUISA ESPINAS- ADMIN. OFFICER IV', '222', 'Accounting Office', '2', '', '', '', ''),
(121, 'Chair', 'Computer Chairs', '', '2,950.00', '11,800.00', '5/17/2004', '4', 'LUISA ESPINAS- ADMIN. OFFICER IV', '222', 'Accounting Office', '2', '', '', '', 'Returned to G.S.O'),
(122, 'Top glass', '20x36 Top glass', '', '3,000.00', '6,000.00', '5/17/2004', '2', 'LUISA ESPINAS- ADMIN. OFFICER IV', '222', 'Accounting Office', '2', '', '', '', 'Returned to G.S.O'),
(123, 'Table', 'Computer Table', '', '7,500.00', '7,500.00', '5/17/2004', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '222', 'Accounting Office', '2', '', '', '', 'BODEGA'),
(124, ' ', '15\" LCD LG COLOR MONITOR SN; 206KG01390 CPU ASUS ', 'x', '70,000.00', '70,000.00', '5/17/2004', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '223', 'Accounting Office', '2', '', '', '', ''),
(125, 'Telephone', 'Telephone Receiver G.E', '', '', '', '1995', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '229', 'Accounting Office', '2', '', '', '', ''),
(126, 'Printer', 'Printer HP 670e', '', '26,500.00', '26,500.00', '7/7/1999', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '223', 'Accounting Office', '2', '', '', '', ''),
(127, 'Fan', 'Box Fan w/ stand', '', '2,700.00', '2,700.00', '8/9/1993', '1', 'LUISA ESPINAS- ADMIN. OFFICER IV', '240', 'Accounting Office', '2', '', '', '', ''),
(128, 'Table', 'Conference Table with chairs Model-89A2 BDTZ 0539A New Country series Description for 6 w/ 1 table w/ 6 chairs', '3090', '35,000.00', '35,000.00', '2/20/1996', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '222', 'Accounting Office', '2', '', '', '', '6 PCS. WOODEN CONFERENCE CHAIRS RETURNED TO G.S.O'),
(129, 'Chair', 'RRC 0209C Office Chairs gray', 'x', '7,500.00', '15,000.00', '10/10/1995', '2', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '222', 'Accounting Office', '2', '', '', '', ''),
(130, 'Cabinet', 'Back Cabinet Brown', 'x', '17,700.00', '17,700.00', '10/10/1995', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '222', 'Accounting Office', '2', '', '', '', ''),
(131, 'Aircon', 'KOPPEL Airconditioning equipment 3 TNR capacity floor mounted slim type, Model SL-36A/1KC526P7A SN: LT-249089', '2116', '103,400.00', '103,400.00', '12/23/2005', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '240', 'Accounting Office', '2', '', '', '', ''),
(132, 'Labor', 'Labor and materials for the installation of the above units', '', '79,340.00', '79,340.00', '12/23/2005', '1 LOT', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '240', 'Accounting Office', '2', '', '', '', ''),
(133, 'Computer Set', 'Dell inspiron 520 I Intel Core 2 Quad Microsoft Windows Vista Business MONITOR SN: CN-OPN380-64180-87M-03YS', '7092', '149,900.00', '149,900.00', '10/27/2008', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', ''),
(134, 'UPS', 'Tornado Untirruptible Power System mphoenix 650va sn: 81600034', '7093', '6,200.00', '6,200.00', '10/27/2008', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', ''),
(135, 'Workstation', ' P4 2.8GHz 512 DDR RAM Memory 15\" LCD Color Monitor LG SN: 206KG00670 ', 'x', '70,000.00', '70,000.00', '10/13/2004', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', 'CPU RETURNED'),
(136, 'Computer', 'Notebook Computer SN: OJ508870166-4 AJB45M', '599', '271,950.00', '271,950.00', '5/12/2005', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', ''),
(137, 'Chair', 'PVC Gang Chair', '', '14,100.00', '28,200.00', '10/6/2004', '2', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '222', 'Accounting Office', '2', '', '', '', ''),
(138, 'Table', '8 Seater Conference Table', '', '48,000.00', '48,000.00', '10/6/2004', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '222', 'Accounting Office', '2', '', '', '', ''),
(139, 'Chair', 'Conference Chair', '', '13,000.00', '78,000.00', '10/6/2004', '6', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '222', 'Accounting Office', '2', '', '', '', ''),
(140, 'Calculator', 'Casio DR1212 SN: 3056090', '', '8,500.00', '8,500.00', '10/13/2004', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '221', 'Accounting Office', '2', '', '', '', ''),
(141, 'Computer', '2.4 GHz Intel Core 20\" Viewable glossy widescreen TFT active Matrix SN: W8730B9SX86', '6043', '91,900.00', '91,900.00', '6/17/2008', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', ''),
(142, 'Chair', 'Executive Chair', '4587', '12,030.00', '12,030.00', '8/10/2007', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(143, 'Chair', 'Executive Chair (conference room)', '4588-4597', '12,047.00', '120,470.00', '8/10/2007', '10', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', '3 units returned to G.S.O'),
(144, 'Sofa', 'Curved Sofa', '4598', '18,145.00', '18,145.00', '8/10/2007', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(145, 'Table', 'Side Table', '4599', '18,720.00', '18,720.00', '8/10/2007', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(146, 'Sofa', 'Corner Sofa', '4600', '49,138.00', '49,138.00', '8/10/2007', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(147, 'Cabinet', 'Back Cabinet w/ drawer', '4601', '40,000.00', '40,000.00', '8/10/2007', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(148, 'Sofa', 'Sofa (3 seater & 2 pcs. , 1 seater)', '4602', '24,000.00', '24,000.00', '8/10/2007', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(149, 'Aircon', 'IBMX3100M4 SN- 2582B2A-06WYEK4', '12058', '91,000.00', '91,000.00', '1/22/2014', '1', 'Marilou C. Tanael- City Accountant', '223', 'Accounting Office', '2', '', '', '', ''),
(150, 'Computer Package', 'ASPIRE M3985 Windows 7 20\" LED Monitor Acer Monitor SN: ETLUGRO3823608582400 CPU SN: ACER ASPIRE M3985', '10422', '75,000.00', '75,000.00', '1/9/2013', '1', 'Jose Mariz                                       Admin Aide IV', '223', 'Accounting Office', '2', '', '', '', ''),
(151, 'APC', 'APC Back UPS (ES-500)', '10423', '9,000.00', '9,000.00', '1/9/2013', '1', 'Jose Mariz                                       Admin Aide IV', '223', 'Accounting Office', '2', '', '', '', ''),
(152, 'Computer Package ', 'ASPIRE M3985, Genuine Windows 7 Home Basic, 3rd Generation Intel Core i5-3450 processor, Intel B75 Express chipset                                                                     Monitor SN: CNK21407PD; CPU SN: 4CE2390JRS', '10418', '75,000.00', '75,000.00', '1/9/2013', '1', 'Ma. Evelyn Virata', '223', 'Accounting Office', '2', '', '', '', ''),
(153, 'Computer Package', 'Intel core 12-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204GD, CPU -SGH311QNTF', '10535', '57,200.00', '57,200.00', '4/18/2013', '1', 'Fatima M. Cernal', '223', 'Accounting Office', '2', '', '', '', ''),
(154, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204HN, CPU -SGH311QNTM', '10576', '57,200.00', '57,200.00', '4/18/2013', '1', 'Edith M. Sarad', '223', 'Accounting Office', '2', '', '', '', ''),
(155, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204HC CPU -SGH311QNVH', '10541', '57,200.00', '57,200.00', '4/18/2013', '1', 'Lourdes V. Pullon', '223', 'Accounting Office', '2', '', '', '', ''),
(156, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204HC, CPU -SGH311QNVHS', '10541-B', '57,200.00', '57,200.00', '4/18/2013', '1', 'Brummel R. Baral', '223', 'Accounting Office', '2', '', '', '', ''),
(157, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204HG, CPU -SGH311QNV9', '10574', '57,200.00', '57,200.00', '4/18/2013', '1', 'Relannie C. Ramos', '223', 'Accounting Office', '2', '', '', '', ''),
(158, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204BF, CPU -SGH311QNW7', '10528', '57,200.00', '57,200.00', '4/18/2013', '1', 'Cristina R. Sasota', '223', 'Accounting Office', '2', '', '', '', ''),
(159, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204CF, CPU -SGH311QNVB', '10530', '57,200.00', '57,200.00', '4/18/2013', '1', 'Daisy G. Vasquez', '223', 'Accounting Office', '2', '', '', '', ''),
(160, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204HK, CPU -SGH311QNW4', '10575', '57,200.00', '57,200.00', '4/18/2013', '1', 'Luisa D.R. Espinas                   Supervising Administrative officer', '223', 'Accounting Office', '2', '', '', '', ''),
(161, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204C4, CPU -SGH311QNTV', '10560', '57,200.00', '57,200.00', '4/18/2013', '1', 'Ma. Corazon Albores', '223', 'Accounting Office', '2', '', '', '', ''),
(162, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204LM CPU,SGH311QNTN', '10551', '57,200.00', '57,200.00', '4/18/2013', '1', 'Jacqueline B. Aguilar', '223', 'Accounting Office', '2', '', '', '', ''),
(163, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204LF, CPU -SGH311QNVI', '10580', '57,200.00', '57,200.00', '4/18/2013', '1', 'Antonina T. Sosa', '223', 'Accounting Office', '2', '', '', '', ''),
(164, 'Computer', 'Intel core 13-3240 3.4G 3M HD 2500 CPU Intel H61 Express Chipset SFF Form Factor Memory Slots 2 DIMM 2GB 1600MHz DDR3 SDRAM Monitor SN -CNC31204LY, CPU -SGH311QNVJ', '10555', '57,200.00', '57,200.00', '4/18/2013', '1', 'Shirley Trinidad', '223', 'Accounting Office', '2', '', '', '', ''),
(165, 'Aircon', 'Carrier Split type Airconditioner 2.0 Toner Indoor FUR SN- 2232800064 CUR SN- 2232700086', '12061', '197,960.00', '197,960.00', '10/30/2013', '1', 'Brummel Baral', '240', 'Accounting Office', '2', '', '', '', ''),
(166, 'Aircon', 'Carrier Split type Airconditioner 2.0 Toner Indoor FUR SN- 2232800057 CUR SN- 2232800078', '12060', '197,960.00', '197,960.00', '10/30/2013', '1', 'Rina Pestaño', '240', 'Accounting Office', '2', '', '', '', ''),
(167, 'Aircon', 'Carrier Split type Airconditioner 2.0 Toner Indoor FUR SN- 2232800058 CUR SN- 2232800079', '12059', '197,960.00', '197,960.00', '10/30/2013', '1', 'Lourdes Pullon', '240', 'Accounting Office', '2', '', '', '', ''),
(168, 'Aircon', 'Carrier Split type Airconditioner 2.0 Toner Indoor FUR SN- 2232280056 CUR SN- 2232800039', '12057', '197,960.00', '197,960.00', '10/30/2013', '1', 'Daisy G. Vasquez', '240', 'Accounting Office', '2', '', '', '', ''),
(169, 'Aircon', 'Carrier Split type Airconditioner 2.0 Toner Indoor FUR SN- 2232800063 CUR SN- 2232800082', '12056', '197,960.00', '197,960.00', '10/30/2013', '1', 'Nimia Santos', '240', 'Accounting Office', '2', '', '', '', ''),
(170, 'APC', 'APC Back UPS (ES-500)', '10419', '9,000.00', '9,000.00', '12/12/2012', '1', 'Antonina T. Sosa                                  Admin Officer V', '223', 'Accounting Office', '2', '', '', '', ''),
(171, 'APC', 'APC Back UPS (ES-500)', '10421', '9,000.00', '9,000.00', '12/12/2012', '1', 'Wesly T. Baysac', '223', 'Accounting Office', '2', '', '', '', ''),
(172, 'Scanner', 'Kodak i1405 Scanner; Speed: 45 pages per minute; Size: A3 size paper, 1 year warranty on parts and labor SN: 46150492', '10121', '331,230.00', '331,230.00', '10/18/2012', '1', 'Luisa D.R. Espinas                   Supervising Administrative officer', '221', 'Accounting Office', '2', '', '', '', ''),
(173, 'Copier', 'Gestetner Digital Full Color Copier Model MPC2030 Serial Number V21216540417', '10080', '373,545.36', '373,545.36', '12/1/2011', '1', 'Luisa D.R. Espina', '221', 'Accounting Office', '2', '', '', '', ''),
(174, 'Copier', 'Gestetner Digital Full Color Copier Model MPC2030 Serial Number V21216540417', '', '373,545.36', '373,545.36', '12/1/2011', '1', 'Luisa DR Espina', '221', 'Accounting Office', '2', '', '', '', ''),
(175, 'Printer', 'Epson FX2175 Dot  Matrix printer Model P362A SN: 6LXY-036524      ', '9818', '21,605.00', '21,605.00', '9/21/2011', '1', 'Antonina T. Sosa', '221', 'Accounting Office', '2', '', '', '', ''),
(176, 'Chair', 'Office chair', '9817', '3,995.00', '3,995.00', '9/21/2011', '1', 'Ma. Corazon Albores', '221', 'Accounting Office', '2', '', '', '', ''),
(177, 'Chair', 'Office chair', '9829', '4,195.00', '4,195.00', '9/2/2011', '1', 'Luisa D.R. Espinas', '221', 'Accounting Office', '2', '', '', '', ''),
(178, 'Computer set', 'Computer AO-780 USFFEV-Dell OptiPlex Intel Core Duo Processor E7500 Monitor SN- CN-OM875N641809CM1Y4U CPU SN- FRT942S', '9489', '119,500.00', '119,500.00', '12/3/2010', '1', 'Guillermo Pilar', '223', 'Accounting Office', '2', '', '', '', ''),
(179, 'Computer set', 'Computer AO-780 USFFEV-Dell OptiPlex Intel Core Duo Processor E7500 Monitor SN- CN-CNOM875N6418009CM-1KPU CPU SN-DLT942S', '9484', '119,500.00', '119,500.00', '12/3/2010', '1', 'Angelica Espiritu', '223', 'Accounting Office', '2', '', '', '', ''),
(180, 'Computer set', 'Computer AO-780 USFFEV-Dell OptiPlex Intel Core Duo Processor E7500 Monitor SN- CNOM875N641809CM0PFU CPU SN- 5PT942S', '9486', '119,500.00', '119,500.00', '12/3/2010', '1', 'Miraflor A. Reyes', '223', 'Accounting Office', '2', '', '', '', ''),
(181, 'Computer Package', 'HP Pavilion S5390D Intel Core i3540 SN: CNX011030G 20\" LCD Wide screen SN: S3CQ009393WIS', '9454', '119,700.00', '119,700.00', '11/8/2010', '1', 'Johnlenn De Leon', '223', 'Accounting Office', '2', '', '', '', ''),
(182, 'Printer', 'LX-300+ SN: G8NY168285', '9451', '18,650.00', '18,650.00', '11/8/2010', '1', 'Guillermo Pilar', '223', 'Accounting Office', '2', '', '', '', 'Transfer MR to Francisco Gaddi (5-27-14)'),
(183, 'CPU', 'HP Pavilion S5390D Intel Core i3540 CPU SN: CNX01102XW 20\" LCD Wide screen SN: S3CQ0042F2S', '9448', '119,700.00', '119,700.00', '11/8/2010', '1', 'Bernardo M. Tubera Jr.', '223', 'Accounting Office', '2', '', '', '', ''),
(184, 'Printer', 'LX-300+ II Printer SN; G8NY168267', '9452', '18,650.00', '18,650.00', '11/8/2010', '1', 'Guillermo Pilar', '223', 'Accounting Office', '2', '', '', '', ''),
(185, 'Printer', 'LX-300+ II Printer SN; G8NY168285', '9453', '18,650.00', '18,650.00', '11/8/2010', '1', 'Johnlenn De Leon', '223', 'Accounting Office', '2', '', '', '', ''),
(186, 'Computer Package', 'HP Pavilion S5390D Intel Core i3540 SN: CNX01102XV 20\" LCD Wide screen SN: S3CQ0042F8G', '9446', '119,700.00', '119,700.00', '11/8/2010', '1', 'Luisa D.R. Espinas                   Supervising Administrative officer', '223', 'Accounting Office', '2', '', '', '', ''),
(187, 'Printer', 'LX-300+ SN: G8NY168284', '9447', '18,650.00', '18,650.00', '11/8/2010', '1', 'Luisa D.R. Espinas', '223', 'Accounting Office', '2', '', '', '', ''),
(188, 'UPS', 'UPS SN: 430953P19961', 'NO PR', '', '', '11/8/2010', '1', 'Luisa D.R. Espinas', '223', 'Accounting Office', '2', '', '', '', ''),
(189, 'Printer', 'LX-300+ II Printer SN: G8NY168228', '9455', '18,650.00', '18,650.00', '11/8/2010', '1', 'Lourdes Pullon', '223', 'Accounting Office', '2', '', '', '', ''),
(190, 'Computer Package', 'HP Pavilion S5390D Intel Core i3540 SN: CNX0110323 20\" LCD Wide screen SN: S3CQ0042F8F', '9450', '119,700.00', '119,700.00', '11/8/2010', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', ''),
(191, 'UPS', 'UPS', '', '', '', '11/8/2010', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', ''),
(192, 'Computer Package', 'HP Pavilion S5390D Intel Core i3540 SN: CNX011036V 20\" LCD Wide screen SN: S3CQ00952D2', '9445', '119,700.00', '119,700.00', '11/8/2010', '1', 'SHIRLEY TRINIDAD- ADMIN. AIDE IV', '223', 'Accounting Office', '2', '', '', '', ''),
(193, 'UPS', 'UPS SN: 4B0953P20512', '', '', '', '11/8/2010', '1', 'SHIRLEY TRINIDAD- ADMIN. AIDE IV', '223', 'Accounting Office', '2', '', '', '', ''),
(194, 'Printer', 'LX-300+ SN: G8NY167974', '9449', '18,650.00', '18,650.00', '11/8/2010', '1', 'EDITH SARAD- ADMIN. AIDE VI', '223', 'Accounting Office', '2', '', '', '', ''),
(195, 'UPS', 'UPS', '', '', '', '11/8/2010', '1', 'EDITH SARAD- ADMIN. AIDE VI', '223', 'Accounting Office', '2', '', '', '', ''),
(196, 'UPS', 'UPS SN:', '', '', '', '11/8/2010', '1', 'JOHNLENN DE LEON- ADMIN, ASST. I', '223', 'Accounting Office', '2', '', '', '', ''),
(197, 'Monitor', 'Samsung Syncmaster 153 V LCD MONITOR SN- GY15HMDX700939T', 'x', '39,000.00', '39,000.00', '4/15/2010', '1', 'LORNA G. DAVID', '223', 'Accounting Office', '2', '', '', '', ''),
(198, 'Mobile Pedestal', 'Mobile Pedestal', 'x', '5,968.00', '5,968.00', '4/15/2010', '1', 'LORNA G. DAVID', '222', 'Accounting Office', '2', '', '', '', ''),
(199, 'UPS', 'Uninterruptible Power System (TORNADO) SN: 81600033', '7102', '6,200.00', '6,200.00', '8/12/2009', '1', 'Luisa D.R Espinas', '223', 'Accounting Office', '2', '', '', '', ''),
(200, 'Mobile Pedestal', 'Mobile Pedestal', '4500', '5,968.00', '5,968.00', '8/12/2009', '1', 'Luisa D.R. Espinas', '222', 'Accounting Office', '2', '', '', '', ''),
(201, 'Digital copier', 'Sharp Digital Copier /Printer with 3 cassette trays Model No: AR-M2050U SN: 75021358/85008455 ID #EC-149326', '8074', '257,355.00', '257,355.00', '3/1/2009', '1', 'Aries D. Peñafuerte', '221', 'Accounting Office', '2', '', '', '', ''),
(202, 'AVR', 'AVR SN: 0102540', '', '', '', '', '1', 'Fatima Cernal', '223', 'Accounting Office', '2', '', '', '', ''),
(203, 'Desk Phone', 'Main Central Unit Desk Phone System', '7961', '25,000.00', '25,000.00', '12/19/2008', '1', 'Luisa D.R. Espinas                   Supervising Administrative officer', '229', 'Accounting Office', '2', '', '', '', ''),
(204, 'Disk Key Telephone', 'Disk Key Telephone w/ display', '7962-7963', '', '', '12/19/2008', '2', 'Luisa D.R. Espinas                   Supervising Administrative officer', '229', 'Accounting Office', '2', '', '', '', ''),
(205, 'Disk Key Telephone', 'Disk key Telephone w/o display cabling for the sysyem', '7964-7965', '', '', '12/19/2008', '2', 'Luisa D.R. Espinas                   Supervising Administrative officer', '229', 'Accounting Office', '2', '', '', '', ''),
(206, 'Computer ', 'Thinkcentre E50 Intel Pentium 4 630 2.0GHz with HT Technologycpu SN: L3A1478', '3780', '113,200.00', '113,200.00', '11/20/2008', '1', 'CristinaR. Sasota', '223', 'Accounting Office', '2', '', '', '', 'GSO (1-9-2013)'),
(207, 'Computer ', 'Thinkcentre E50 Intel Pentium 4 630 2.0GHz with HT Technologycpu SN: L3A1503', '3782', '113,200.00', '113,200.00', '11/20/2008', '1', 'Lourdes Pullon', '223', 'Accounting Office', '2', '', '', '', ''),
(208, 'Monitor', 'ThinkVision 15\" L171 Monitor Black SN: V6LH215', '', '33,800.00', '33,800.00', '11/20/2008', '1', 'Lourdes Pullon', '223', 'Accounting Office', '2', '', '', '', ''),
(209, 'Computer ', 'Thinkcentre E50 Intel Pentium 4 630 2.0GHz with HT Technologycpu SN: L3A1478', '3780', '113,200.00', '113,200.00', '11/20/2008', '1', 'ELIZA PANTONIAL- ACCT. CLERK I', '223', 'Accounting Office', '2', '', '', '', ''),
(210, 'Monitor', 'ThinkVision 15\" L171 Monitor Black SN: V6LH225', 'x', '33,800.00', '33,800.00', '11/20/2008', '1', 'ELIZA PANTONIAL- ACCT. CLERK I', '223', 'Accounting Office', '2', '', '', '', ''),
(211, 'UPS', 'Tornado uninterruptible Power system mphoenix SN: 81600304', '7104', '6,200.00', '6,200.00', '10/27/2008', '1', 'Lourdes Pullon', '223', 'Accounting Office', '2', '', '', '', ''),
(212, 'Laptop', 'Dell XPS M1530 Laptop Computer SN: FSLVRV1S 3481359856', '7106', '173,914.00', '173,914.00', '10/27/2008', '1', 'Luisa Espinas', '223', 'Accounting Office', '2', '', '', '', ''),
(213, 'Computer package', 'Dell Inspiron 530 S MONITOR SN:  CN-OF572H-72872-861-17AM-A01 CPU- CB9ZWIS', '7085', '119,895.00', '119,895.00', '10/27/2008', '1', 'Iris Aliwalas', '223', 'Accounting Office', '2', '', '', '', ''),
(214, 'Computer package', 'Dell Inspiron 530 S MONITOR SN: CN-OF572H-72872-861-1A3M-A01 CPU- 889ZWIS', '7082', '119,895.00', '119,895.00', '10/27/2008', '1', 'Ma. Lorna G. David', '223', 'Accounting Office', '2', '', '', '', ''),
(215, 'Computer Set', 'M-04BS CPU SN: H7VOV1S ', '7089', '149,900.00', '149,900.00', '10/27/2008', '1', 'Francisco Gaddi', '223', 'Accounting Office', '2', '', '', '', ''),
(216, 'UPS', 'Tornado Untirruptible Power System mphoenix 650va SN: 816000183', '7100', '6,200.00', '6,200.00', '10/27/2008', '1', 'Jacqueline B. Aguilar', '223', 'Accounting Office', '2', '', '', '', ''),
(217, 'Printer', 'Epson LX-300+II SN: G8NY093466', '7101', '14,400.00', '14,400.00', '10/27/2008', '1', 'Jacqueline B. Aguilar', '223', 'Accounting Office', '2', '', '', '', '');
INSERT INTO `general_fund` (`id`, `item`, `description`, `par_number`, `unit_value`, `total_value`, `date_aquired`, `quantity`, `end_user`, `account_code`, `department`, `department_code`, `supplier`, `purchase_order`, `obr_number`, `status`) VALUES
(218, 'UPS', 'Tornado Uninterruptible Power System mphoenix SN: 81600181', '7103', '6,200.00', '6,200.00', '10/27/2008', '1', 'Brumme Baral', '223', 'Accounting Office', '2', '', '', '', ''),
(219, 'UPS', 'Tornado UPS SN: 81600301', '7107', '6,200.00', '6,200.00', '10/27/2008', '1', 'MA. EVELYN VIRATA- ADMIN. OFFICER II', '223', 'Accounting Office', '2', '', '', '', ''),
(220, 'Printer', 'Epson LX-300+II SN: G8NY092267', '7094', '14,400.00', '14,400.00', '10/27/2008', '1', 'EDEL ARVIN VALERO- ADMIN. AIDE IV', '223', 'Accounting Office', '2', '', '', '', ''),
(221, 'UPS', 'Tornado UPS SN: 81600182', '7095', '6,200.00', '6,200.00', '10/27/2008', '1', 'EDEL ARVIN VALERO- ADMIN. AIDE IV', '223', 'Accounting Office', '2', '', '', '', ''),
(222, 'UPS', 'Tornado UPS SN: 81600302', '7096', '6,200.00', '6,200.00', '10/27/2008', '1', 'NIMROD YBERA- ACCOUNTANT I', '223', 'Accounting Office', '2', '', '', '', ''),
(223, 'Printer', 'Epson LX-300+II SN: G8NY093467', '', '14,400.00', '14,400.00', '10/27/2008', '1', 'NIMROD YBERA- ACCOUNTANT I', '223', 'Accounting Office', '2', '', '', '', ''),
(224, 'Computer package', 'Dell Inspiron 530 S MONITOR SN:  CN-OF572H-72872-861-186M-A01CPU- 299ZWIS', '7080', '119,895.00', '119,895.00', '10/27/2008', '1', 'Fatima Cernal', '223', 'Accounting Office', '2', '', '', '', ''),
(225, 'UPS', 'Tornado UPS SN: 8160019', '7081', '6,200.00', '6,200.00', '10/27/2008', '1', 'Fatima Cernal', '223', 'Accounting Office', '2', '', '', '', 'G.S.O'),
(226, 'UPS', 'Tornado UPS SN: 81600184', '7098', '6,200.00', '6,200.00', '10/27/2008', '1', 'Nimia T. Santos', '223', 'Accounting Office', '2', '', '', '', ''),
(227, 'Printer', 'Epson LX-300+II SN: G8NY092264', '7099', '14,400.00', '14,400.00', '10/27/2008', '1', 'Nimia T. Santos', '223', 'Accounting Office', '2', '', '', '', ''),
(228, '', 'Tornado uninterruptible Power system mphoenix SN: 81600304', '7104', '6,200.00', '6,200.00', '10/27/2008', '1', 'ELIZA PANTONIAL- ACCT. CLERK I', '223', 'Accounting Office', '2', '', '', '', ''),
(229, 'UPS', 'Tornado UPS SN: 8160014', '7083', '6,200.00', '6,200.00', '10/27/2008', '1', 'MELANIE C. RAMOS- ADMIN. AIDE IV', '223', 'Accounting Office', '2', '', '', '', ''),
(230, 'Printer', 'Epson LX-300+II SN: G8NY092472', '7084', '14,400.00', '14,400.00', '10/27/2008', '1', 'MELANIE C. RAMOS- ADMIN. AIDE IV', '223', 'Accounting Office', '2', '', '', '', ''),
(231, 'UPS', 'Tornado UPS SN: 81600313', '7086', '6,200.00', '6,200.00', '10/27/2008', '1', 'ANTONINA T. SOSA', '223', 'Accounting Office', '2', '', '', '', 'GSO (1-9-2013)'),
(232, 'Computer w/ Printer', 'Dell Inspiron 530 I Intel Core 2 Windows Vista Business MONITOR SN: CN-OF572H-72872-861-177M-A01 CPU SN: 499ZWIS Printer LX-300+ II SN: G98NY016227', '7087', '119,895.00', '119,895.00', '8/27/2008', '1', 'Connie Layba- Admin. Aide IV', '223', 'Accounting Office', '2', '', '', '', ''),
(233, 'UPS', 'Tornado Uninterruptible Power System mphoenix SN: 81600314', '7088', '6,200.00', '6,200.00', '8/27/2008', '1', 'Connie Layba- Admin. Aide IV', '223', 'Accounting Office', '2', '', '', '', ''),
(234, 'Mobile Pedestal', 'Mobile Pedestal', '4491', '5,968.00', '5,968.00', '8/10/2007', '1', 'Aries D. Peñafuerte', '222', 'Accounting Office', '2', '', '', '', ''),
(235, 'Mobile Pedestal', 'Mobile Pedestal', '4486', '5,968.00', '5,968.00', '8/10/2007', '1', 'Jacqueline B. Aguilar', '222', 'Accounting Office', '2', '', '', '', ''),
(236, 'Mobile Pedestal', 'Mobile Pedestal', '4483', '5,968.00', '5,968.00', '8/10/2007', '1', 'Lorna G. David', '222', 'Accounting Office', '2', '', '', '', ''),
(237, 'Mobile Pedestal', 'Mobile Pedestal', '4488', '5,968.00', '5,968.00', '8/10/2007', '1', 'Brummel Baral', '222', 'Accounting Office', '2', '', '', '', ''),
(238, 'Mobile Pedestal', 'Mobile Pedestal', '4489', '5,968.00', '5,968.00', '8/10/2007', '1', 'Steve T. Cantes', '222', 'Accounting Office', '2', '', '', '', ''),
(239, 'Mobile Pedestal', 'Mobile Pedestal', '4495', '5,968.00', '5,968.00', '8/10/2007', '1', 'Fatima Cernal', '222', 'Accounting Office', '2', '', '', '', ''),
(240, 'Mobile Pedestal', 'Mobile Pedestal', '4496', '5,968.00', '5,968.00', '8/10/2007', '1', 'Lorna G. David', '222', 'Accounting Office', '2', '', '', '', ''),
(241, 'Mobile Pedestal', 'Mobile Pedestal', '4478', '5,968.00', '5,968.00', '8/10/2007', '1', 'Ma. Corazon Albores', '222', 'Accounting Office', '2', '', '', '', ''),
(242, 'Mobile Pedestal', 'Mobile Pedestal', '4504', '5,968.00', '5,968.00', '8/10/2007', '1', 'Guillermo Pilar', '222', 'Accounting Office', '2', '', '', '', ''),
(243, 'Mobile Pedestal', 'Mobile Pedestal', '4505', '5,968.00', '5,968.00', '8/10/2007', '1', 'Wesly T. Baysac', '222', 'Accounting Office', '2', '', '', '', ''),
(244, 'Cabinet', 'Cabinet', '4506-4507', '7,552.00', '15,104.00', '8/10/2007', '2', 'Luisa D.R. Espinas                   Supervising Administrative officer', '222', 'Accounting Office', '2', '', '', '', ''),
(245, 'Mobile Pedestal', 'Mobile Pedestal', '4508', '5,968.00', '5,968.00', '8/10/2007', '1', 'Luisa D.R. Espinas', '222', 'Accounting Office', '2', '', '', '', ''),
(246, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '8/10/2007', '1', 'Ma. Theresa R. Grageda', '222', 'Accounting Office', '2', '', '', '', ''),
(247, 'Calculator', 'Casio DR 1212 SN: Q3056338', '', '8,500.00', '8,500.00', '8/10/2007', '1', 'Ma. Theresa R. Grageda', '221', 'Accounting Office', '2', '', '', '', ''),
(248, 'Calculator', 'Canon MP LTS Calculator Body No: 40020221', '', '1,950.00', '1,950.00', '8/10/2007', '1', 'Ma. Theresa R. Grageda', '221', 'Accounting Office', '2', '', '', '', ''),
(249, 'Mobile Pedestal', 'Mobile Pedestal', '4499', '5,968.00', '5,968.00', '8/10/2007', '1', 'Ma. Theresa R. Grageda', '222', 'Accounting Office', '2', '', '', '', ''),
(250, 'Mobile Pedestal', 'Mobile Pedestal', '4502', '5,968.00', '5,968.00', '8/10/2007', '1', 'Jessie Jayne S. Hinahon', '222', 'Accounting Office', '2', '', '', '', ''),
(251, 'Mobile Pedestal', 'Mobile Pedestal', '4501', '5,968.00', '5,968.00', '8/10/2007', '1', 'Connie Layba', '222', 'Accounting Office', '2', '', '', '', ''),
(252, 'Mobile Pedestal', 'Mobile Pedestal', '4492', '5,968.00', '5,968.00', '8/10/2007', '1', 'Jose Nariz', '222', 'Accounting Office', '2', '', '', '', ''),
(253, 'Mobile Pedestal', 'Mobile Pedestal', '4482', '5,968.00', '5,968.00', '8/10/2007', '1', 'Maria Victorina A. Pestaño', '222', 'Accounting Office', '2', '', '', '', ''),
(254, 'Mobile Pedestal', 'Mobile Pedestal', '4485', '5,968.00', '5,968.00', '8/10/2007', '1', 'Lourdes Pullon', '222', 'Accounting Office', '2', '', '', '', ''),
(255, 'Mobile Pedestal', 'Mobile Pedestal', '4481', '5,968.00', '5,968.00', '8/10/2007', '1', 'Miraflor A. Reyes', '222', 'Accounting Office', '2', '', '', '', ''),
(256, 'Mobile Pedestal', 'Mobile Pedestal', '4503', '5,968.00', '5,968.00', '8/10/2007', '1', 'Ma. Cherry A. Rodriguez', '222', 'Accounting Office', '2', '', '', '', ''),
(257, 'Mobile Pedestal', 'Mobile Pedestal', '4490', '5,968.00', '5,968.00', '8/10/2007', '1', 'Nimia T. Santos', '222', 'Accounting Office', '2', '', '', '', ''),
(258, 'Mobile Pedestal', 'Mobile Pedestal', '4494', '5,968.00', '5,968.00', '8/10/2007', '1', 'Cristina R. Sasota', '222', 'Accounting Office', '2', '', '', '', ''),
(259, 'Mobile Pedestal', 'Mobile Pedestal', '4479', '5,968.00', '5,968.00', '8/10/2007', '1', 'Antonina Sosa', '222', 'Accounting Office', '2', '', '', '', ''),
(260, 'Mobile Pedestal', 'Mobile Pedestal', '4497', '5,968.00', '5,968.00', '8/10/2007', '1', 'MARY  HONEYLETT VALENZUELA- ACCT. CLERK', '222', 'Accounting Office', '2', '', '', '', ''),
(261, 'Mobile Pedestal', 'Mobile Pedestal', '4484', '5,968.00', '5,968.00', '8/10/2007', '1', 'DAISY G. VASQUEZ- ', '222', 'Accounting Office', '2', '', '', '', ''),
(262, 'Printer', 'HP F 380 printer SN CN7ZGGQQRJ', '4464', '5,750.00', '5,750.00', '8/1/2007', '1', 'Luisa D. Espinas', '223', 'Accounting Office', '2', '', '', '', ''),
(263, 'Printer', 'Epson LX-300+ Printer SN: G8NY028691', '4465', '5,750.00', '5,750.00', '8/1/2007', '1', 'Cristina R. Sasota', '221', 'Accounting Office', '2', '', '', '', ''),
(264, 'Aircon', '1.5HP Panasonic split type model CS/U-PC12DKQ SN: 7252001303', '4089', '97,449.00', '97,449.00', '5/4/2007', '1', 'Marilou C. Tanael- City Accountant', '240', 'Accounting Office', '2', '', '', '', ''),
(265, 'Aircon', '2.5 HP PANASONIC SPLIT TYPE SN: 7256101613/71601244', '4090', '132,177.00', '132,177.00', '5/4/2007', '1', 'Marilou C. Tanael- City Accountant', '240', 'Accounting Office', '2', '', '', '', ''),
(266, 'Digital copier', 'Sharp Digital Copier with table Model No;AR-M205/RP6 SN: 63036925', '14598', '132,000.00', '132,000.00', '1/5/2007', '1', 'Aries D. Peñafuerte', '221', 'Accounting Office', '2', '', '', '', ''),
(267, 'Computer Set', 'Thinkcentre E50 Intel Pentium 4 630 2.0GHz with HT Technology CPU SN: L3A1360', '3781', '113,200.00', '113,200.00', '12/18/2006', '1', 'Miraflor A. Reyes', '223', 'Accounting Office', '2', '', '', '', ''),
(268, 'Computer', 'ThinkCentre E50 Intel Pentium 4 630 3.0 GHz with HT Technology 1 VGA SN: L3A1498', '3784', '113,200.00', '113,200.00', '12/18/2006', '1', 'Luisa D.R. Espinas                   Supervising Administrative officer', '223', 'Accounting Office', '2', '', '', '', ''),
(269, 'Computer ', 'Thinkcentre E50 Intel Pentium 4 630 2.0GHz with HT Technology', '3779', '113,200.00', '113,200.00', '12/18/2006', '1', 'Nimia T. Santos', '223', 'Accounting Office', '2', '', '', '', ''),
(270, 'Monitor', 'ThinkVision 15\" L171 Monitor Black SN: V2LFL89', '', '33,800.00', '33,800.00', '12/18/2006', '1', 'Nimia T. Santos', '223', 'Accounting Office', '2', '', '', '', ''),
(271, 'Computer Set', 'Thinkcentre E50 Intel Pentium 4 630 2.0GHz with HT Technology cpu SN: L3A1364', '3783', '113,200.00', '113,200.00', '12/18/2006', '1', 'BRUMMEL BARAL', '223', 'Accounting Office', '2', '', '', '', ''),
(272, 'Monitor', 'ThinkVision 15\" L171 Monitor Black SN: V6LH225', '', '33,800.00', '33,800.00', '12/18/2006', '1', 'ELIZA PANTONIAL- ACCT. CLERK I', '223', 'Accounting Office', '2', '', '', '', ''),
(273, 'Monitor', 'ThinkVision 15\" L171 ROHS Monitor black SN- V6LD953', '', '33,800.00', '33,800.00', '12/18/2006', '1', 'Jacqueline Aguilar', '223', 'Accounting Office', '2', '', '', '', ''),
(274, 'Printer', 'Epson LQ 2180 SN: BEBY017968', '1995', '64,000.00', '64,000.00', '11/29/2006', '1', 'ANTONINA T. SOSA-', '223', 'Accounting Office', '2', '', '', '', 'GSO (1-9-2013)'),
(275, 'Aircon', '6HP capacity ceiling cassette type model cs/u-a50cb4h SN: A20051221THC006486/028204275; A20051221THC0006487/028204276', '2297-2298', '259,270.00', '518,540.00', '12/23/2005', '2', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(276, 'Aircon', 'KOPPEL 3TR. CAPACITY FLOOR MOUNTED SLIM TYPE SN: GT248045/KT251014', '2298', '103,400.00', '103,400.00', '12/23/2005', '1', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(277, 'Aircon', 'Panasonic 1.5HP wall mounted type SN: 7153700260', '2299', '54,560.00', '54,560.00', '12/23/2005', '1', 'Marilou C. Tanael- City Accountabt', '222', 'Accounting Office', '2', '', '', '', ''),
(278, '', 'Labor and materials for the installation of the above units', 'x', '317,360.00', '317,360.00', '12/23/2005', '1 lot', 'Marilou C. Tanael- City Accountant', '222', 'Accounting Office', '2', '', '', '', ''),
(279, 'Printer', 'Epson LQ 2180 SN: CEBY 017466', '', '64,000.00', '64,000.00', '11/29/2005', '1', 'Luisa D.R Espinas', '223', 'Accounting Office', '2', '', '', '', ''),
(280, 'Printer', 'Epson LQ 2180 SN: BEBYO17599', '1994', '64,000.00', '64,000.00', '11/29/2005', '1', 'Luisa D.R. Espinas                   Supervising Administrative officer', '223', 'Accounting Office', '2', '', '', '', ''),
(281, 'Adding Machine', 'CANON Adding Machine SN- 40022960', '', '1,950.00', '', '6/6/2005', '1', 'Miraflor A. Reyes', '221', 'Accounting Office', '2', '', '', '', ''),
(282, 'Calculator', 'Casio DR 1212 SN: 3055680', '', '8,500.00', '8,500.00', '8/30/2004', '1', 'Lorna G. David', '221', 'Accounting Office', '2', '', '', '', ''),
(283, 'Table', 'Executive table docofinish w/ side table', '', '17,500.00', '17,500.00', '10/13/2004', '1', 'Luisa D. Espinas', '222', 'Accounting Office', '2', '', '', '', ''),
(284, 'Computer Package', 'Intel pentium IV 1.4G MONITOR AOC 17\" 7VLR SN: VICJ23A187766 CPU SN: C66S61185 KB: 0203151222 UPS SN: 0220235 PRINTER -TH22SIDOW2', 'x', '149,500.00', '149,500.00', '10/13/2004', '1', 'MARILOU C. TANAEL- CITY ACCOUNTANT', '223', 'Accounting Office', '2', '', '', '', 'gso'),
(285, 'Workstation', ' P4 2.8GHz 512 DDR RAM Memory 15\" LCD Color Monitor LG SN: 206KG00702 CPU SN: BN2P3-V125', '', '70,000.00', '70,000.00', '10/13/2004', '1', 'Honey Valenzuela', '223', 'Accounting Office', '2', '', '', '', ''),
(286, 'Chair', 'Clerical Chair', 'x', '9,675.00', '9,675.00', '10/6/2004', '1', 'EDITH SARAD- CLERK I', '222', 'Accounting Office', '2', '', '', '', ''),
(287, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Fatima Cernal', '222', 'Accounting Office', '2', '', '', '', ''),
(288, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Fatima Cernal', '222', 'Accounting Office', '2', '', '', '', 'Transfer to EDP (3-14-06)'),
(289, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Steve T. Cantes', '222', 'Accounting Office', '2', '', '', '', ''),
(290, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Steve T. Cantes', '222', 'Accounting Office', '2', '', '', '', 'TR MR to EDP (3-14-06)'),
(291, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Carlo Almazar', '222', 'Accounting Office', '2', '', '', '', ''),
(292, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Carlo Almazar', '222', 'Accounting Office', '2', '', '', '', 'TR MR to EDP (3-14-06)'),
(293, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Jacqueline B. Aguilar', '222', 'Accounting Office', '2', '', '', '', ''),
(294, 'Table', 'Clerical table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Jacqueline B. Aguilar', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to EDP (3-14-06)'),
(295, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Brummel Baral', '222', 'Accounting Office', '2', '', '', '', ''),
(296, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Brummel Baral', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to COA (3-28-06)'),
(297, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Wesly T. Baysac', '222', 'Accounting Office', '2', '', '', '', ''),
(298, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Wesly T. Baysac', '222', 'Accounting Office', '2', '', '', '', ''),
(299, 'Table', 'Clerical table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Lorna G. David', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to HEALTH'),
(300, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Lorna G. David', '222', 'Accounting Office', '2', '', '', '', ''),
(301, 'Table', 'Clerical Table', '', '4,825.00', '4,825.00', '10/6/2004', '1', 'Cherisma dela cruz', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to Health (3-21-06)'),
(302, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Luisa D.R. Espinas', '222', 'Accounting Office', '2', '', '', '', ''),
(303, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Luisa D.R Espinas', '222', 'Accounting Office', '2', '', '', '', 'TR MR TO HEALTH'),
(304, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Yandei Favia', '222', 'Accounting Office', '2', '', '', '', ''),
(305, 'Table ', 'Clerical table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Yandei Favia', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to Health (3-21-06)'),
(306, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Connie Layba', '222', 'Accounting Office', '2', '', '', '', ''),
(307, 'Table', 'Clerical table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Connie Layba', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to Health (3-21-06)'),
(308, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Jose Nariz', '222', 'Accounting Office', '2', '', '', '', ''),
(309, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Jose Nariz', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to Health (3-21-06)'),
(310, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Aries D. Peñafuerte', '222', 'Accounting Office', '2', '', '', '', ''),
(311, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Aries D. Peñafuerte', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to Health (3-21-06)'),
(312, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Ma. Victoria Pestaño', '222', 'Accounting Office', '2', '', '', '', ''),
(313, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Ma. Victoria Pestaño', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to EDP (3-14-06)'),
(314, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'ELIZA PANTONIAL- ACCT. CLERK I', '222', 'Accounting Office', '2', '', '', '', ''),
(315, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Lourdes Pullon', '222', 'Accounting Office', '2', '', '', '', ''),
(316, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Lourdes Pullon', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to EDP (3-14-06)'),
(317, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Miraflor A. Reyes', '222', 'Accounting Office', '2', '', '', '', ''),
(318, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Miraflor A. Reyes', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to Health (3-21-06)'),
(319, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Nimia T. Santos', '222', 'Accounting Office', '2', '', '', '', ''),
(320, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Edith Sarad', '222', 'Accounting Office', '2', '', '', '', ''),
(321, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'Mary Honeylett Valenzuela', '222', 'Accounting Office', '2', '', '', '', ''),
(322, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'Mary Honeylett Valenzuela', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to EDP'),
(323, 'Chair', 'Clerical Chair', '', '9,675.00', '9,675.00', '10/6/2004', '1', 'DAISY G. VASQUEZ- ', '222', 'Accounting Office', '2', '', '', '', ''),
(324, 'Table', 'Clerical Table', '', '22,170.00', '22,170.00', '10/6/2004', '1', 'DAISY G. VASQUEZ- ', '222', 'Accounting Office', '2', '', '', '', 'Transfer MR to EDP'),
(325, 'Calculator', 'Casio Dr1212 SN: 3056088', '', '8,500.00', '8,500.00', '5/12/2004', '1', 'Antonina Sosa', '221', 'Accounting Office', '2', '', '', '', ''),
(326, 'Workstation', ' P4 2.8GHz 512 DDR RAM Memory 15\" LCD Color Monitor Asus 48x4x52 CDRW', '', '70,000.00', '70,000.00', '4/15/2003', '1', 'Lorna G. David', '223', 'Accounting Office', '2', '', '', '', 'Transfer MR to Dra. Olga Virtusio'),
(327, 'Monitor', '15\" LG COLOR  Monitor SN: 206KG01298', '', '33,800.00', '33,800.00', '4/15/2003', '1', 'Edith Sarad', '223', 'Accounting Office', '2', '', '', '', 'Returned to G.S.O (8-28-12)'),
(328, 'Punching Binding Machine', 'Speedier Punching Binding Machine Model PM-2 QC-9701023', '', '40,000.00', '40,000.00', '9/22/2000', '1', 'Luisa D.R. Espinas', '240', 'Accounting Office', '2', '', '', '', ''),
(329, 'Calculator', 'Casio Dr 1212 SN: Q3056374', '', '8,500.00', '8,500.00', '7/25/2000', '1', 'Connie Layba', '221', 'Accounting Office', '2', '', '', '', ''),
(330, 'Calculator', 'Casio Electronic Calculator Model No. DR 12oL SN: 3056336', '', '8,500.00', '8,500.00', '7/1/2000', '1', 'Ma. Corazon Albores', '221', 'Accounting Office', '2', '', '', '', ''),
(331, 'Calculator', 'Casio Electronic Calculator Model No. DR 1212 SN: Q 3056336', '3136', '8,500.00', '8,500.00', '7/1/2000', '1', 'Steve T. Cantes', '221', 'Accounting Office', '2', '', '', '', ''),
(332, 'Calculator', 'Casio Dr1212 SN: 03048037', '3154', '8,500.00', '8,500.00', '7/1/2000', '1', 'DAISY G. VASQUEZ- ', '221', 'Accounting Office', '2', '', '', '', ''),
(333, 'Calculator', 'Casio Dr1212 SN: 3056371', '3119', '8,500.00', '8,500.00', 'Jul-00', '1', 'Rina Pestaño', '221', 'Accounting Office', '2', '', '', '', ''),
(334, 'Calculator', 'Casio Dr1212 SN: 3055679', '', '8,500.00', '8,500.00', 'Jul-00', '1', 'Lourdes Pullon', '221', 'Accounting Office', '2', '', '', '', ''),
(335, 'Calculator', 'Casio Dr 1212 SN: 3056370', '', '8,500.00', '8,500.00', 'Jul-00', '1', 'Luisa D.R. Espinas', '221', 'Accounting Office', '2', '', '', '', ''),
(336, 'Shredder', 'Paper Shredder', '', '11,200.00', '11,200.00', '3/15/2000', '1', 'Luisa D.R. Espinas', '240', 'Accounting Office', '2', '', '', '', ''),
(337, 'Chair', 'Clerical Chair', '', '4,825.00', '4,825.00', '10/28/1998', '1', 'Cherisma dela cruz', '222', 'Accounting Office', '2', '', '', '', ''),
(338, 'Chair', 'Hennesy Exec. Chair low backl w/ armrest and ballcaster color gray', '', '12,600.00', '12,600.00', '10/28/1998', '1', 'Antonina Sosa', '222', 'Accounting Office', '2', '', '', '', ''),
(339, 'Chair', 'Clerical Cahir with armrest color gray with ball caster', '', '4,825.00', '4,825.00', 'Oct-98', '1', 'Aristeo D. Peñafuerte', '222', 'Accounting Office', '2', '', '', '', ''),
(340, 'Calculator', 'Casio Dr 120 LB SN: Q 3015230', '', '6,500.00', '6,500.00', '3/4/1998', '1', 'Luisa D.R Espinas', '221', 'Accounting Office', '2', '', '', '', ''),
(341, 'Calculator', 'Casio Dr1212 SN: 3017185', '', '6,500.00', '6,500.00', '3/4/1998', '1', 'DAISY G. VASQUEZ- ', '221', 'Accounting Office', '2', '', '', '', 'For Verification'),
(342, 'Calculator', 'Casio Electronic Calculator Model No. DR 12OL SN: Q 3017186', '', '6,500.00', '6,500.00', '2/11/1998', '1', 'Steve T. Cantes', '221', 'Accounting Office', '2', '', '', '', ''),
(343, 'Printer', 'Epson LX300+II SN: G8NY016518', '', '10,000.00', '10,000.00', 'Jul-96', '1', 'Iris Aliwalas', '223', 'Accounting Office', '2', '', '', '', ''),
(344, 'Calculator', 'Casio Electronic Calculator Model No. DR 12oL SN: Q 3027078', '', '8,500.00', '8,500.00', '7/24/1995', '1', 'MA. CORAZON ALBORES', '221', 'Accounting Office', '2', '', '', '', ''),
(345, 'Copier', 'Digital Colored Copier-printer scanner, fax (option)- inclusive of 1CYMK, 1 steel cabinet; lifetime free service warm up time; 21 sec. COPIER IMC2500-ARDF (GESTETNER) SN: 3098RC20160', '19 - 105', '439,726.00', '439,726.00', '6/3/2019', '1', 'Marie Josephine Claire Reyes', '221', 'B.A.C', '', 'Cosed Trading', '', '', ''),
(346, 'Shredder', 'Shredder Cross - cut shredder shreds 16 sheets per pass into 4 x 38mm cross cut particles (Security level P-4) FELLOWES POWER SHRED', '19 - 130', '44,150.00', '44,150.00', '6/3/2019', '1', 'Anna Liza R. Germano - B.A.C.', '221', 'B.A.C', '', 'Brighter Stars Trading', '', '', ''),
(347, 'Projector', 'Projector - 3200 ANSI Lumens, 3LCD Technology Projector with HDMI XGA (1024 x 768* with 70\" x 70\" tripod projector screen (EPSON EB-X41 ESP) SN: X4HW9600062', '19 - 129', '68,900.00', '68,900.00', '6/3/2019', '1', 'Leonel Valenzuela', '221', 'B.A.C', '8', 'Brighter Stars Trading', '', '', ''),
(348, 'Laptop', 'Laptop - 7th generation intel core i5-7200U 2.50GHz (3M cache, up to 3.10 GHz) 1TB 5400 RPM Hard drive 4GB memory 2400MHZ DDR AMD Radeon R5 M430 Graphics w/ 2GB DDR3 14\" HD (1366 x 768) Anti-Glare LED-backlit display (DELL) SN: 87FCZN2', '19 - 128', '79,320.00', '79,320.00', '6/3/2019', '1', 'Anna Liza R. Germano - B.A.C.', '221', 'B.A.C', '8', 'Brighter Stars Trading', '', '', ''),
(349, 'Laptop', 'Laptop - 7th generation intel core i5-7200U 2.50GHz (3M cache, up to 3.10 GHz) 1TB 5400 RPM Hard drive 4GB memory 2400MHZ DDR AMD Radeon R5 M430 Graphics w/ 2GB DDR3 14\" HD (1366 x 768) Anti-Glare LED-backlit display (DELL) SN: 99GCZN2', '19 - 127', '79,320.00', '79,320.00', '6/3/2019', '1', 'Leonel Valenzuela', '221', 'B.A.C', '8', 'Brighter Stars Trading', '', '', ''),
(350, 'Printer', 'Printer all in 1 5760 dpi x 1440\" dpi EPSON L3110 SN: X5DY228451', '19 - 124', '17,350.00', '17,350.00', '6/3/2019', '1', 'Anna Liza R. Germano - B.A.C.', '223', 'B.A.C', '8', 'Brighter Star Trading', '', '', ''),
(351, 'Printer', 'Printer all in 1 5760 dpi x 1440\" dpi EPSON L3110 SN: X5DY219025', '19 - 123', '17,350.00', '17,350.00', '6/3/2019', '1', 'Maria Carla Jean Lumabe', '223', 'B.A.C', '8', 'Brighter Star Trading', '', '', ''),
(352, 'Computer set', 'Computer Set- operating system windows 10 home; i7-7700 processor (8MB cache, up to 3.60 GHz); 1 GB DDR4 2400MHz; hard disk; 1TB GB 7200 + 128GB SSD graphics NVIDIA, GeForce, GTX 1050 2GB DDR5, Optical drive; tray load DVD Drive; Display 23 Monitor S2318H', '18 - 006', '179,500.00', '179,500.00', '6/3/2018', '1', 'Maria Carla Jean Lumabe', '223', 'B.A.C', '8', 'Bian-John Office Supplies & Gen. Mdse.', '', '', ''),
(353, 'Computer set', 'Computer Set- operating system windows 10 home; i7-7700 processor (8MB cache, up to 3.60 GHz); 1 GB DDR4 2400MHz; hard disk; 1TB GB 7200 + 128GB SSD graphics NVIDIA, GeForce, GTX 1050 2GB DDR5, Optical drive; tray load DVD Drive; Display 23 Monitor S2318H', '18 - 005', '179,500.00', '179,500.00', '6/3/2018', '1', 'Leonel Valenzuela', '223', 'B.A.C', '8', 'Bian-John Office Supplies & Gen. Mdse.', '', '', ''),
(354, 'Computer set', 'Computer Set- operating system windows 10 home; i7-7700 processor (8MB cache, up to 3.60 GHz); 1 GB DDR4 2400MHz; hard disk; 1TB GB 7200 + 128GB SSD graphics NVIDIA, GeForce, GTX 1050 2GB DDR5, Optical drive; tray load DVD Drive; Display 23 Monitor S2318H', '18 - 004', '179,500.00', '179,500.00', '6/3/2018', '1', 'Jovelyn Villadares', '223', 'B.A.C', '8', 'Bian-John Office Supplies & Gen. Mdse.', '', '', ''),
(355, 'Computer set', 'Computer Set- operating system windows 10 home; i7-7700 processor (8MB cache, up to 3.60 GHz); 1 GB DDR4 2400MHz; hard disk; 1TB GB 7200 + 128GB SSD graphics NVIDIA, GeForce, GTX 1050 2GB DDR5, Optical drive; tray load DVD Drive; Display 23 Monitor S2318H', '18 - 003', '179,500.00', '179,500.00', '6/3/2018', '1', 'Analyn Quilang', '223', 'B.A.C', '8', 'Bian-John Office Supplies & Gen. Mdse.', '', '', ''),
(356, 'Push Cart', 'Push Cart 400kg folding and heavy duty', '17 - 2719', '14,900.00', '14,900.00', '11/3/2017', '1', 'Anna Liza R. Germano', '03-990', 'B.A.C', '8', 'Eminence Builders and Traders', '', '', ''),
(357, 'Typewriter', 'Manual Typewriter 18\" carriage with 3 tabular position ribbon selectro w/ tabulator setting; Line spacing 1/1.5/2/2.5/3; metal casing OLYMPIA SN: 7354853', '17 - 2718', '49,322.40', '49,322.40', '11/3/2017', '1', 'Anna Liza R. Germano', '221', 'B.A.C', '8', 'Eminence Builders and Traders', '', '', ''),
(358, 'Aircon', 'Airconditioning 2.0 HP window type carrier Model: WCARH024EA SN: 51PMXRACCAR24KEA-HI6PC-0780341; 51PMXRACCAR24KEA-RI6PC-1263805', '17 - 569-570', '78,680.00', '157,360.00', '5/3/2017', '2', 'Anna Liza R. Germano', '221', 'B.A.C', '8', 'Eminence Builders and Traders', '', '', ''),
(359, 'Printer', 'Printer - Office Inkjet all in one printer CR769A 7610 Multifunction\'s print , fax scan copy and web 4 in 1 SN - CES43KQ03B', '4234', '25,000.00', '25,000.00', '2015', '1', 'Anna Liza R. Germano', '221', 'B.A.C', '8', 'Brighter Star Trading', '', '', ''),
(360, 'Printer ', 'Printer all in 1 compact integrated tank designed high yield ink bottles spill-free error - free refilling boardless printing up to 4r continious ink, print resolution up to 5760 dpix1440dpi (epson L3110) SN - X5DY239168', '19 - 125', '17,350.00', '17,350.00', '2019', '1', 'Jovelyn Villadares', '223', 'B.A.C', '8', 'Brighter Star Trading', '', '', ''),
(361, 'Printer ', 'Printer all in 1 compact integrated tank designed high yield ink bottles spill-free error - free refilling boardless printing up to 4r continious ink, print resolution up to 5760 dpix1440dpi (epson L3110) SN - X5DY227726', '19 - 126', '17,350.00', '17,350.00', '2019', '1', 'Theresa ', '223', 'B.A.C', '8', 'Brighter Star Trading', '', '', ''),
(362, 'Laptop', 'Sony Vaio CS Series VPCS117GG/B Specifications: Intel Core i5-520QM (2.4 GHZ) w/ Turbo Boost up to 2.93 ghz 4GB DDR3 Memory and 500 GB HDD SN - 275489887002160', '10036', '120,000.00', '120,000.00', '1/13/2012', '1', 'Leonel Valenzuela', '223', 'B.A.C', '8', '', '', '', 'previous mr issued to Felipe Q. Maniego '),
(363, 'Computer set', 'Computer Set i3 6100 4th generation,H81 mother board, 4GB DDR3 RAM, 500GB HDD SATA, air casing w/600WHS PSQ, keyboard and mouse USB 18.5 inches monitor voltz AVR 500 (PHILIPS) SN - UKOA1404030925 , UKOA1404030934, UKOA1404030758, UKOA1404030964', '6634;6636;6637', '39,700.00', '119,100.00', '2016', '3', 'Anna Liza R. Germano', '223', 'B.A.C', '8', 'Brighter Star Trading', '', '', 'previous mr issued to Atty. Melanie T. Malaya'),
(364, 'Printer ', 'Printer L120 SN - SMQK10289; SMQK103390; SMQK090692; SMQK090700', '6638 - 6641', '11,488.00', '45,952.00', '2016', '4', 'Anna Liza R. Germano', '', 'B.A.C', '8', '', '', '', 'previous mr issued to Atty. Melanie T. Malaya'),
(365, 'Projector', 'Projector Model E-S18-SVGA 800x500, 300 Lumens ACER SN - MRJG110073380168B5910', '6647', '46,760.00', '46,760.00', '2016', '1', 'Anna Liza R. Germano', '223', 'B.A.C', '8', 'Brighter Star Trading', '', '', 'previous mr issued to Atty. Melanie T. Malaya'),
(366, 'Printer ', 'Printer - L110 , 180 Nozzles, black 50 nozzles each color (cyan, magenta, yellow) 50 sheets A4 plain paper 75 mgsm, 10 sh eets premium glossy paper  SN -RADK - 417781 ', '1667', '11,400.00', '11,400.00', '2015', '1', 'Anna Liza R. Germano', '223', 'B.A.C', '8', 'Lemon N\' Lime Essentials INC.', '', '', '');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_fund`
--
ALTER TABLE `general_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
