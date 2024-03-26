-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 08:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `intGlCode` int(10) UNSIGNED NOT NULL,
  `varTitle` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`intGlCode`, `varTitle`) VALUES
(97, 'England\'s Ipswich U15 football team fly to Cayman on Cayman Airways'),
(98, 'Authorization of CAL medical fares'),
(99, 'Rundown flies up to the Brac with CAL'),
(100, 'CAL increases La Ceiba flights for the Summer'),
(101, 'Cayman Airways fleet expands with new Saab340 B+ aircraft'),
(102, 'Cayman Airways to launch second Cuba route - Holguin '),
(103, 'Cayman Airways\' new Saab 340B+ aircraft christened in Cayman Brac'),
(104, 'Cayman Airways ramps up'),
(105, 'Cayman Airways staff honour International Day of People with Disability'),
(106, 'Cayman Airways named Caribbean Airline of the Year '),
(107, 'Cayman Airways launches first international flights from Cayman Brac'),
(108, 'Airlines ban hoverboards'),
(109, 'CAL welcomes the return of VP-CKW'),
(110, 'Cayman Airways U14 Youth Cup 2016 attracts English Premier League team'),
(111, 'USA issues passport compliance update for British passport holders'),
(112, 'CAL Saab receives minor damage on tarmac from private jet blast'),
(113, 'Cayman Airways announces fleet modernization plan'),
(114, 'Digicel and CAL partnership to offer bonus air miles to customers'),
(115, 'CAL Board Chairman awarded a Certificate and Badge of Honour'),
(116, 'Cayman Airways donates gently used ipads to Pediatric Ward'),
(117, 'Cayman Airways CEO greets local players gearing up to compete in the U14 football tournament'),
(118, 'Cayman Airways expands nonstop service from Tampa to Grand Cayman with daily Summer flights'),
(119, 'ttttt'),
(120, 'Cayman Airways goes daily to Tampa this Summer, and celebrates 30 years on the Tampa route'),
(121, 'The Cayman Islands and Cayman Airways \"lands\" a surprise event at the Grapevine Mills Mall in Dallas'),
(122, 'Cayman Airways monitoring Tropical Wave; change fees waived'),
(123, 'Cayman Airways statement on the Samsung Galaxy Note 7 device'),
(124, 'CAL statement on KX106 event on Sept. 13, 2016'),
(125, 'CAL monitoring Hurricane Matthew'),
(126, 'CA News'),
(127, 'test image'),
(128, 'Hurricane Matthew PSA2, flight changes'),
(129, 'Hurricane Matthew PSA3: Change fees waived for Miami flights'),
(130, 'Hurricane Matthew PSA4: Miami flights cancelled for Oct. 6, 2016 '),
(131, 'Samsung Galaxy Note 7 device banned from Cayman Airways aircraft'),
(132, 'Cayman Islands Government and Cayman Airways send relief flight to Haiti after Hurricane Matthew'),
(133, 'CAL adds extra Jamaica flights for the Christmas season'),
(134, 'Cayman Airways to start nonstop flights to Roatan in March'),
(135, 'CAL employees rocked cool socks for World Down Syndrome Day'),
(136, 'Cayman Airways launches nonstop flights to Roatan, Honduras'),
(137, 'More Sister Islands flights added'),
(138, 'Cayman Airways continues support of NORCECA Beach Volleyball Tournament'),
(139, 'PSA: Cayman Airways waives change fees for Jamaica flights due to flash flood warnings'),
(140, 'Cayman Airways partners with Stellar Loyalty to enhance its Sir Turtle Rewards Programme'),
(141, 'Cayman Airways Summer schedule is in full swing'),
(142, 'New nonstop flights added for Cayman/MoBay route this Summer'),
(143, 'Irma PSA1 - CAL waives change fees for Miami, Tampa, and Havana flights '),
(144, 'CAL\'s Miami, Tampa, and Havana flights canceled; Hurricane Fares activated'),
(145, 'Monday\'s Tampa flight canceled due to TPA airport closure'),
(146, 'Lightening strike closes Kingston airport; CAL Kingston flights cancelled'),
(147, 'Irma PSA4: Miami, Tampa, and Havana flights canceled for Sept. 11, 2017'),
(148, 'Update on CAL Kingston flights Sept. 10 and 11, 2017'),
(149, 'Irma PSA5 - Miami and Tampa flights resume'),
(150, 'NMIA air traffic control returned to normal; Kingston flights resume as scheduled.'),
(151, 'Update on KX200, Sept. 14, 2017 ');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) UNSIGNED NOT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `officeCode` varchar(10) DEFAULT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `salary` decimal(20,2) DEFAULT NULL,
  `joinDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`, `salary`, `joinDate`) VALUES
(1002, 'Murphy', 'Diane', 'x5800', 'v2.netclues@gmail.com', '1', NULL, 'President', 150000.00, '2010-02-10 12:15:38'),
(1056, 'Patterson', 'Mary', 'x4611', 'v2.netclues@gmail.com', '1', 1002, 'VP Sales', 30500.00, '2005-03-12 12:15:40'),
(1076, 'Firrelli', 'Jeff', 'x9273', 'v2.netclues@gmail.com', '1', 1002, 'VP Marketing', 15260.00, '2018-02-23 12:15:41'),
(1088, 'Patterson', 'William', 'x4871', 'v2.netclues@gmail.com', '6', 1056, 'Sales Manager (APAC)', 25320.00, '2019-02-25 12:15:43'),
(1102, 'Bondur', 'Gerard', 'x5408', 'v2.netclues@gmail.com', '4', 1056, 'Sale Manager (EMEA)', 85000.00, '2020-02-26 12:15:43'),
(1143, 'Bow', 'Anthony', 'x5428', 'v2.netclues@gmail.com', '1', 1056, 'Sales Manager (NA)', 30520.00, '2021-02-26 12:15:44'),
(1165, 'Jennings', 'Leslie', 'x3291', 'v2.netclues@gmail.com', '1', 1143, 'Sales Rep', 40000.00, '2023-02-19 10:15:45'),
(1166, 'Thompson', 'Leslie', 'x4065', 'v2.netclues@gmail.com', '1', 1143, 'Sales Rep', 150000.00, NULL),
(1188, 'Firrelli', 'Julie', 'x2173', 'v2.netclues@gmail.com', '2', 1143, 'Sales Rep', 36500.00, '2022-05-02 12:17:02'),
(1216, 'Patterson', 'Steve', 'x4334', 'v2.netclues@gmail.com', '2', 1143, 'Sales Rep', 60000.00, '2020-02-06 12:17:08'),
(1286, 'Tseng', 'Foon Yue', 'x2248', 'v2.netclues@gmail.com', '3', 1143, 'Sales Rep', 70000.00, '2016-06-02 12:17:20'),
(1323, 'Vanauf', 'George', 'x4102', 'v2.netclues@gmail.com', '3', 1143, 'Sales Rep', 75000.00, NULL),
(1337, 'Bondur', 'Loui', 'x6493', 'v2.netclues@gmail.com', '4', 1102, 'Sales Rep', 80000.00, '2013-10-12 12:17:40'),
(1370, 'Hernandez', 'Gerard', 'x2028', 'v2.netclues@gmail.com', '4', 1102, 'Sales Rep', 27000.00, '2023-03-02 12:17:51'),
(1401, 'Castillo', 'Pamela', 'x2759', 'v2.netclues@gmail.com', '4', 1102, 'Sales Rep', 29650.00, NULL),
(1501, 'Bott', 'Larry', 'x2311', 'v2.netclues@gmail.com', '7', 1102, 'Jr Manager', 105000.00, '2023-03-02 12:17:52'),
(1504, 'Jones', 'Barry', 'x102', 'v2.netclues@gmail.com', '7', 1102, 'Sales Rep', 32000.00, '2023-03-02 12:17:52'),
(1611, 'Fixter', 'Andy', 'x101', 'v2.netclues@gmail.com', '6', 1088, 'Sales Rep', 15000.00, '2023-03-02 12:17:53'),
(1612, 'Marsh', 'Peter', 'x102', 'v2.netclues@gmail.com', '6', 1088, 'Sales Rep', 65000.00, NULL),
(1619, 'King', 'Tom', 'x103', 'v2.netclues@gmail.com', '6', 1088, 'Sales Rep', 95000.00, '2004-03-02 12:17:54'),
(1621, 'Nishi', 'Mami', 'x101', 'v2.netclues@gmail.com', '5', 1056, 'Sr Manager', 98000.00, '2005-03-02 12:17:55'),
(1625, 'Kato', 'Yoshimi', 'x102', 'v2.netclues@gmail.com', '5', 1621, 'Sales Rep', 87000.00, '1996-03-02 12:17:56'),
(1702, 'Gerard', 'Martin', 'x2312', 'v2.netclues@gmail.com', '4', 1102, 'Sales Rep', 48652.00, '2023-03-02 12:17:57'),
(1704, 'John', 'Doe', 'X223', 'john@example.com', '5', 1370, 'Jr. Manager', 15500.00, '2006-03-02 12:17:58'),
(1705, 'John1', 'Doe1', 'Xfsfs223', 'john1@example.com', '5', 1370, 'Sr. Manager', 69000.00, '2023-03-02 12:17:59'),
(1706, NULL, NULL, 'X1887', NULL, '4', 1370, 'Branch Manager', 105000.00, '2023-03-02 12:17:59'),
(1707, NULL, NULL, 'X1887', NULL, '4', 1370, 'HR', 100000.00, '2001-03-02 12:17:59'),
(1708, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL),
(1709, NULL, NULL, NULL, NULL, '4', NULL, 'Jr HR', 35100.00, NULL),
(1710, NULL, NULL, NULL, NULL, '6', NULL, 'SR HR', 64000.00, '2011-07-09 12:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `intGlCode` int(10) UNSIGNED NOT NULL,
  `varTitle` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`intGlCode`, `varTitle`) VALUES
(1, 'test'),
(2, 'Second popup'),
(3, 'Reservations and Ticket Office hours extended to better serve customers'),
(4, 'Caymanian Female Pilot Joins CAL'),
(5, 'CAL and Strawberry Hill partner to offer a luxurious getaway to Jamaica'),
(6, 'Nonstop flights to Washington DC and Chicago resume this Winter'),
(7, 'Cuba issues new travel requirement Special news'),
(8, 'Incident: Cayman B733 at Miami on Aug 30th 2010, rejected takeoff\'s '),
(9, 'Brac Barracudas fly on CAL '),
(10, 'CAL launches lowest Business Class fares for Florida gateways'),
(11, 'New Jamaican getaway package with CAL and Strawberry Hill'),
(12, 'Update your Frequent Flyer account'),
(13, 'Cayman Airways Relocates Miami Cargo Office'),
(14, 'Cayman Airways strikes Gold with local business conference'),
(15, 'CAL is Official Carrier of the UCCI Conference'),
(16, 'Cayman Brac youth parliamentarians receive CAL support'),
(17, 'CAL fully compliant with Boeing requirement following Southwest Airlines incident'),
(18, '1st-new\'s'),
(19, 'Cayman Airways monitoring Hurricane Irene - change fees waived for affected customers'),
(20, '2nd-new\'s'),
(21, 'Change fee waivers offered for travel to/from New York due to Hurricane Irene'),
(22, 'JFK Airport closures cancel Cayman Airways\' NYC flights for this weekend'),
(23, 'Cayman Airways adds extra New York flights as JFK Airport reopens'),
(24, 'Extra Section to Tampa October 11, 2011'),
(25, 'Cayman Airways lauds Cayman Homecoming'),
(26, 'Marathon gets flying support'),
(27, 'Grammy Award Winner John Legend flies Cayman Airways'),
(28, 'A taste of Cayman Airways at Taste of Cayman, and beyond'),
(29, 'Chamber Trade Mission to Panama'),
(30, 'Launch Pad toddlers tour Cayman Airways'),
(31, 'Toddlers tour a Cayman Airways plane'),
(32, 'Cayman Airways Youth Football Cup slated for June 2012'),
(33, 'Extra flights added for the Sister Islands after bad weather caused cancellations, May 21 & 22, 2012'),
(34, 'Poor weather causes Havana and Miami flight delays May 22, 2012'),
(35, 'Cayman Airways launches (seasonal) inaugural nonstop flights between Grand Cayman to Dallas'),
(36, 'Cayman Airways puts safety first'),
(37, 'Monitoring Tropical Storm Ernesto - August 5, 2012'),
(38, 'Tropical Storm Isaac - August 24th, Update#1'),
(39, 'Tropical Storm Isaac - August 25th, Update#2'),
(40, 'Tropical Storm Isaac - August 26th 2012- Update#4'),
(41, 'CaymanAirwaysNews'),
(42, 'Test by Netclues'),
(43, 'Update on Cayman Airways Express Operations - PSA #1'),
(44, 'Cayman Airways Express Resumes Scheduled Service'),
(45, 'Cayman Airways Pilots Upgrade to iPad as Electronic Flight Bags'),
(46, 'Cayman Airways improves customer\'s Miami travel experience with new departure gate'),
(47, ' Tropical Storm Sandy, Schedule Changes '),
(48, ' Tropical Storm Sandy, Schedule Changes'),
(49, 'Cayman Airways Flights to/from JFK on schedule'),
(50, 'Cayman Airways Flights to/from JFK, New York'),
(51, 'Cayman Airways Changes Baggage Fees'),
(52, 'Short-term Embargo on Excess Baggage to Cuba'),
(53, 'Cayman Airways will fly to Dallas Year-Round!'),
(54, 'International Departure Tax Increased'),
(55, 'Weather and Runway Conditions force Cayman Airways to Cancel La Ceiba Flights'),
(56, 'Cayman Airways Flight KX 832 Precautionary Return to Grand Cayman'),
(57, 'Winter Storm Nemo forces Flight Cancellation'),
(58, 'Test by netclues'),
(83, 'CAL brings loved ones together for Christmas'),
(84, 'ORIA closure update'),
(85, 'Taste of Cayman festival-goers get a little Taste of New York'),
(86, 'CAL adds extra jet flight for Brac Agriculture Show'),
(87, 'March 28, 2015 operations update for CAL Express '),
(88, 'Taste of Cayman volunteer wins New York trip with CAL'),
(89, 'CAL supports Juniour Batabano'),
(90, 'Caymanian CDFL players kick off to New York thanks to Cayman Airways'),
(91, 'Cayman Airways supports youth football (soccer) in Cayman'),
(92, 'Cayman Airways supports youth football (socce)');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `city`, `phone`, `addressLine1`, `addressLine2`, `state`, `country`, `postalCode`, `territory`) VALUES
('1', 'San Francisco', '+1 650 219 4782', '100 Market Street', 'Suite 300', 'CA', 'USA', '94080', 'NA'),
('2', 'Boston', '+1 215 837 0825', '1550 Court Place', 'Suite 102', 'MA', 'USA', '02107', 'NA'),
('3', 'NYC', '+1 212 555 3000', '523 East 53rd Street', 'apt. 5A', 'NY', 'USA', '10022', 'NA'),
('4', 'Paris', '+33 14 723 4404', '43 Rue Jouffroy D\'abbans', NULL, NULL, 'France', '75017', 'EMEA'),
('5', 'Tokyo', '+81 33 224 5000', '4-1 Kioicho', NULL, 'Chiyoda-Ku', 'Japan', '102-8578', 'Japan'),
('6', 'Sydney', '+61 2 9264 2451', '5-11 Wentworth Avenue', 'Floor #2', NULL, 'Australia', 'NSW 2010', 'APAC'),
('7', 'London', '+44 20 7877 2041', '25 Old Broad Street', 'Level 7', NULL, 'UK', 'EC2N 1HN', 'EMEA'),
('8', 'Ahmedabad', '+91 21 7877 2041', '24 New Broad Street', '1st floor', 'GJ', 'IN', '380015', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `trainee`
--

CREATE TABLE `trainee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainee`
--

INSERT INTO `trainee` (`id`, `firstName`, `lastName`, `email`, `age`) VALUES
(1, 'Nishar', 'Alam', 'nishar@gmail.com', 21),
(2, 'Pankaj', 'Thakur', 'pamkaj@gmail.com', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`intGlCode`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `reportsTo` (`reportsTo`),
  ADD KEY `officeCode` (`officeCode`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`intGlCode`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeCode`);

--
-- Indexes for table `trainee`
--
ALTER TABLE `trainee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `intGlCode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `intGlCode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `trainee`
--
ALTER TABLE `trainee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
