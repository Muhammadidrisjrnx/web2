-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 11:04 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kursioner`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_all`
--

CREATE TABLE `table_all` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `id_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_answer`
--

CREATE TABLE `table_answer` (
  `id_answer` int(11) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_answer`
--

INSERT INTO `table_answer` (`id_answer`, `jawaban`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'ya', 'karena itu sangat bermanfaat sekali', '2018-12-11 00:00:00', '2018-12-11 00:00:00'),
(2, 'tidak', '', '2018-12-12 00:00:00', '2018-12-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_question`
--

CREATE TABLE `table_question` (
  `id_question` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_question`
--

INSERT INTO `table_question` (`id_question`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 'Hyperthyroid', '2018-12-07 18:55:31', '2018-12-07 18:55:31'),
(2, 'Rheumatism', '2018-12-07 18:56:22', '2018-12-07 18:56:22'),
(3, 'Are you currently pregnant?', '2018-12-07 18:56:46', '2018-12-07 18:56:46'),
(4, 'Varicose veins', '2018-12-07 18:57:23', '2018-12-07 18:57:23'),
(5, 'Lumbar Problem', '2018-12-07 18:57:45', '2018-12-07 18:57:45'),
(6, 'Uric Arid Problem', '2018-12-07 18:58:00', '2018-12-07 18:58:01'),
(7, 'Is there a metal tool planted?', '2018-12-07 18:58:30', '2018-12-07 18:58:30'),
(8, 'Should the spa therapist avoid any particular body area?', '2018-12-08 15:14:44', '2018-12-08 15:14:44'),
(9, 'Have you just eaten?', '2018-12-08 15:20:27', '2018-12-08 15:20:27'),
(10, 'Do you have sensitive skin or any allergies?', '2018-12-08 15:28:35', '2018-12-08 15:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `table_treatment`
--

CREATE TABLE `table_treatment` (
  `id` int(11) NOT NULL,
  `treatment` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_treatment`
--

INSERT INTO `table_treatment` (`id`, `treatment`, `created_at`, `updated_at`) VALUES
(2, 'Tangria Essence Massage', '2018-12-11 09:16:01', '2018-12-11 09:16:01'),
(3, 'Tangria Signature Massage', '2018-12-11 09:16:19', '2018-12-11 09:16:19'),
(4, 'Relaxing Massage', '2018-12-11 09:16:30', '2018-12-11 09:16:30'),
(5, 'Rejuvenate Massage', '2018-12-11 09:16:48', '2018-12-11 09:16:48'),
(6, 'Tangria Hot Stone', '2018-12-11 09:17:01', '2018-12-11 09:17:01'),
(7, 'Tangria Stamps', '2018-12-11 09:17:08', '2018-12-11 09:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`id_user`, `nama`, `alamat`) VALUES
(2, 'jslsa', 'skjsk'),
(3, 'idris', 'jurang'),
(4, 'yyyy', 'rrr'),
(5, 'aaa', 'bbb'),
(6, 'jelita', 'kudus'),
(7, 'nama', 'nama'),
(8, 'sass', 'sjkjsk'),
(9, 'rufiah', 'rerere'),
(10, 'asd', 'asd'),
(11, 'ddsdd', 'asdas'),
(12, 'jung', 'korea'),
(13, 'fay', 'irlandia'),
(18, '', ''),
(19, 'kitekite', 'japan'),
(20, 'hjhjhj', 'landia'),
(21, 'hoseok', 'belanda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_all`
--
ALTER TABLE `table_all`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_question` (`id_question`),
  ADD KEY `id_answer` (`id_answer`);

--
-- Indexes for table `table_answer`
--
ALTER TABLE `table_answer`
  ADD PRIMARY KEY (`id_answer`);

--
-- Indexes for table `table_question`
--
ALTER TABLE `table_question`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `table_treatment`
--
ALTER TABLE `table_treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_all`
--
ALTER TABLE `table_all`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_answer`
--
ALTER TABLE `table_answer`
  MODIFY `id_answer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_question`
--
ALTER TABLE `table_question`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `table_treatment`
--
ALTER TABLE `table_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_all`
--
ALTER TABLE `table_all`
  ADD CONSTRAINT `id_answer` FOREIGN KEY (`id_answer`) REFERENCES `table_answer` (`id_answer`),
  ADD CONSTRAINT `id_question` FOREIGN KEY (`id_question`) REFERENCES `table_question` (`id_question`),
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `table_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
