-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 12:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_no` int(55) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_no`, `dept_name`) VALUES
(1, 'Cardiology'),
(2, 'Pediatrics'),
(3, 'Orthopedics'),
(4, 'Dermatology'),
(5, 'Neurology'),
(6, 'Oncology'),
(7, 'Gynecology'),
(8, 'Urology'),
(9, 'ENT'),
(10, 'Psychiatry');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `name` varchar(255) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `p_no` int(55) NOT NULL,
  `dept_no` int(55) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`name`, `doctor_id`, `p_no`, `dept_no`, `dept_name`) VALUES
('Dr.Satyaprakash', '1IPC001', 1, 2, 'Pediatrics'),
('Dr.Kulkarni', '1IPC002', 2, 2, 'Pediatrics'),
('Dr.Praveen', '1IPC003', 3, 1, 'Cardiology'),
('Dr.Pranay', '1IPC004', 5, 4, 'Dermatology'),
('Dr.Lawren', '1IPC005', 6, 5, 'Neurology'),
('Dr.Smiha', '1IPC006', 7, 5, 'Neurology'),
('Dr.Jagadesh', '1IPC008', 8, 9, 'ENT'),
('Dr.Carrie', '1IPC009', 10, 10, 'Psychiatry');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `name` varchar(255) NOT NULL,
  `nurse_id` varchar(255) NOT NULL,
  `room_no` int(55) NOT NULL,
  `p_no` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`name`, `nurse_id`, `room_no`, `p_no`) VALUES
('Simran', 'NUR001', 1, 2),
('Ruby', 'NUR002', 2, 1),
('Charm', 'NUR003', 5, 3),
('Nuke', 'NUR004', 3, 4),
('Romeo', 'NUR005', 4, 5),
('July', 'NUR006', 8, 8),
('Stay', 'NUR007', 7, 6),
('Stoney', 'NUR008', 6, 7),
('Vikas', 'NUR009', 9, 10),
('Vani', 'NUR010', 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `p_no` int(55) NOT NULL,
  `age` int(55) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `room_no` int(55) NOT NULL,
  `doct_name` varchar(255) NOT NULL,
  `admit_date` date NOT NULL,
  `discharge_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`first_name`, `last_name`, `p_no`, `age`, `disease`, `gender`, `room_no`, `doct_name`, `admit_date`, `discharge_date`) VALUES
('Sam', 'Adams', 1, 60, 'High Fever', 'Male', 1, 'Dr.Satyaprakash', '2024-02-01', '2024-02-02'),
('Jonas', 'Smith', 2, 65, 'Cough', 'Male', 2, 'Dr.Kulkarni', '2024-02-01', '2024-02-03'),
('Steve', 'Smith', 3, 70, 'Heart Pain', 'Male', 3, 'Dr.Praveen', '2024-02-02', '2024-02-05'),
('Nick', 'Jonny', 4, 72, 'Fever', 'Male', 4, 'Dr.Satyaprakash', '2024-02-04', '2024-02-05'),
('Carrie', 'Roy', 5, 68, 'skin allergy', 'Female', 5, 'Dr.Pranay', '2024-02-04', '2024-02-04'),
('Ram', 'Manohar', 6, 74, 'Migraine', 'Male', 6, 'Dr.Lawren', '2024-02-24', '2024-02-24'),
('suma', 'Rao', 7, 73, 'sclerosis', 'Female', 7, 'Dr.Smiha', '2024-02-22', '2024-02-24'),
('Ruhi', 'Kumar', 8, 55, 'Bone Fracture', 'Female', 8, 'Dr.Jagadesh', '2024-02-22', '2024-02-23'),
('Surya', 'Kumar', 9, 60, 'Throat pain', 'Male', 9, 'Dr.Pranay', '2024-02-14', '2024-02-15'),
('Mona', 'Lisa', 10, 63, 'Depression', 'Female', 10, 'Dr.Carrie', '2024-02-12', '2024-02-12'),
('Shaila', 'Jayram', 11, 58, 'Back pain', 'Female', 11, 'Dr.Jagadesh', '2024-02-08', '2024-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_no`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `p_no` (`p_no`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nurse_id`),
  ADD KEY `p_no` (`p_no`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_no`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`p_no`) REFERENCES `patient` (`p_no`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `department` (`dept_no`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`p_no`) REFERENCES `patient` (`p_no`),
  ADD CONSTRAINT `nurse_ibfk_2` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
