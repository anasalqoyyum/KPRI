-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 10:33 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpri`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_karyawan`
--

CREATE TABLE `detail_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `datang_terlambat` date NOT NULL,
  `pulang_awal` date NOT NULL,
  `pulang_terlambat` date NOT NULL,
  `tidak_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_karyawan`
--

CREATE TABLE `kehadiran_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `jml_hr_kerja` int(11) NOT NULL,
  `jml_hr_libur` int(11) NOT NULL,
  `jml_hadir` int(11) NOT NULL,
  `jml_tidakmasuk` int(11) NOT NULL,
  `datang_terlambat` int(11) NOT NULL,
  `pulang_awal` int(11) NOT NULL,
  `pulang_terlambat` int(11) NOT NULL,
  `uang_makan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, '123', '321', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_karyawan`
--
ALTER TABLE `detail_karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `kehadiran_karyawan`
--
ALTER TABLE `kehadiran_karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_karyawan`
--
ALTER TABLE `detail_karyawan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kehadiran_karyawan`
--
ALTER TABLE `kehadiran_karyawan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
