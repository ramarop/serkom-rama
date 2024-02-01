-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 04:25 PM
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
-- Database: `db_serkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id_peserta` int(11) NOT NULL,
  `kd_skema` varchar(50) NOT NULL,
  `nm_peserta` varchar(50) NOT NULL,
  `jekel` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_peserta`
--

INSERT INTO `tb_peserta` (`id_peserta`, `kd_skema`, `nm_peserta`, `jekel`, `alamat`, `no_hp`) VALUES
(2, 'skm-001', 'rama', 'laki-laki', 'buahbatu', '083875753042');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skema`
--

CREATE TABLE `tb_skema` (
  `id_skema` int(11) NOT NULL,
  `kd_skema` varchar(20) NOT NULL,
  `nm_skema` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `jml_unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_skema`
--

INSERT INTO `tb_skema` (`id_skema`, `kd_skema`, `nm_skema`, `jenis`, `jml_unit`) VALUES
(1, 'skm-001', 'junior web developer', 'kkni', '6'),
(2, 'skm-002', 'digital marketing', 'klaster', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `tb_skema`
--
ALTER TABLE `tb_skema`
  ADD PRIMARY KEY (`id_skema`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_skema`
--
ALTER TABLE `tb_skema`
  MODIFY `id_skema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
