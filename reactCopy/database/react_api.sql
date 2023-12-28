-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 10:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorname` varchar(100) DEFAULT NULL,
  `patientname` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `problems` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorname`, `patientname`, `age`, `problems`, `mobile`, `email`, `date`, `time`) VALUES
(5, '5', 'Robi', '25', 'Headache', '15666', 'jashimasdfsfsfsdfsdfasdfsdaf@gmail.com', '2023-10-06', '00:45'),
(6, '6', 'Galib', '26', 'Teeth pain', '14526', 'jashim@gmail.com', '2023-10-15', '14:19'),
(7, '6', 'Robiul', '26', 'Teeth pain', '156669998', 'tauhid@gmail.com', '2023-10-22', '03:00'),
(8, '6', 'Robi', '35', 'Teeth pain', '1865850477', 'rahim@gmail.com', '2023-10-13', '14:30');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `appdate` varchar(255) DEFAULT NULL,
  `apptime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `appdate`, `apptime`) VALUES
(11, 'Jashim', 'rahim@gmail.com', '2023-09-04', '22:32'),
(12, 'Galib', 'galib@gmail.com', '2023-09-19', '12:00');

-- --------------------------------------------------------

--
-- Table structure for table `our_dentist`
--

CREATE TABLE `our_dentist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_dentist`
--

INSERT INTO `our_dentist` (`id`, `name`, `designation`, `image`) VALUES
(1, 'Dr. John Doe', 'Implant Surgeon', '/assets/img/team-1.jpg'),
(3, 'Dr. John Tauhid', 'Implant Surgeon', 'img/doctors/652e116aa8aed255.jpeg'),
(4, 'Dr Jannat', 'Dental Surgeon', '/assets/img/team-4.jpg'),
(5, 'Dr Kaiser', 'Dental Surgeon', '/assets/img/team-5.jpg'),
(6, 'Dr Noman', 'Dental Surgeon', '/assets/img/team-1.jpg'),
(7, 'Dr Jashim', 'MBBS', '/assets/img/team-1.jpg'),
(8, 'Dr Galib Hasan', 'MBBS', '/assets/img/team-3.jpg'),
(9, 'Dr Jashim', 'MBBS', 'img/doctors/652e5d432321d155.jpeg'),
(10, 'Rahim', 'MBBS', 'img/doctors/652a1bab0b5c3870.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `test_name`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Root Canal', '35', '/assets/img/price-3.jpg', NULL, NULL),
(2, 'Dental Implant', '30', '/assets/img/price-2.jpg', NULL, NULL),
(3, 'Teeth watering', '40', '/assets/img/price-1.jpg', NULL, NULL),
(4, 'Root Canal', '25', '/assets/img/price-1.jpg', NULL, NULL),
(5, 'TyROid', '50', '/assets/img/price-1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `image`) VALUES
(1, 'Rahim', 'rahim@gmail.com', '12345', '16957058153322342a6d662e4c2ba13d77d7e4cbe6849', 'img/user/65126ad7a2c36186.jpeg'),
(2, 'Towhid', 'tauhidulislam1516@gmail.com', '12345', '16957200194175c88353bc4ceb37bf683b429cab30f0f', 'img/user/6512a253c4358995.jpeg'),
(3, 'Arif', 'tauhidulislam1516@gmail.com', '12345', '16963137393255c88353bc4ceb37bf683b429cab30f0f', 'img/user/651bb18bea070910.jpeg'),
(4, 'Rahim', 'rahim@gmail.com', '123', '17036559946522342a6d662e4c2ba13d77d7e4cbe6849', 'img/user/658bba3ad00ca135.jpeg'),
(5, 'Rahim', 'rahim@gmail.com', '123', '17037543395242342a6d662e4c2ba13d77d7e4cbe6849', 'img/user/658d3a632cd0f624.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_dentist`
--
ALTER TABLE `our_dentist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
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
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `our_dentist`
--
ALTER TABLE `our_dentist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
