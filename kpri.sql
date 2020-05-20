-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 06:00 PM
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
-- Table structure for table `absen_karyawan`
--

CREATE TABLE `absen_karyawan` (
  `no` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `tgl_masuk` datetime NOT NULL,
  `tgl_keluar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen_karyawan`
--

INSERT INTO `absen_karyawan` (`no`, `id_karyawan`, `nama`, `jabatan`, `tanggal`, `hari`, `tipe`, `jadwal`, `tgl_masuk`, `tgl_keluar`) VALUES
(1, 2, 'ELLYS TR', 'STAFF', '2018-05-01', 'Selasa', 'Hari Kerja', 'STAFF I', '2018-05-01 08:00:00', '2018-05-01 16:30:00'),
(2, 2, 'ELLYS TR', 'STAFF', '2018-05-02', 'Rabu ', 'Hari Kerja', 'STAFF I', '2018-05-02 08:00:00', '2018-05-02 16:30:00'),
(3, 2, 'ELLYS TR', 'STAFF', '2018-05-03', 'Kamis', 'Hari Kerja', 'STAFF I', '2018-05-03 08:00:00', '2018-05-03 16:30:00'),
(4, 2, 'ELLYS TR', 'STAFF', '2018-05-04', 'Jumat', 'Hari Kerja', 'STAFF I', '2018-05-04 08:00:00', '2018-05-04 16:30:00'),
(5, 2, 'ELLYS TR', 'STAFF', '2018-05-05', 'Sabtu', 'Hari Kerja', 'LEMBUR', '2018-05-05 09:00:00', '2018-05-05 16:00:00'),
(6, 2, 'ELLYS TR', 'STAFF', '2018-05-06', 'Minggu', 'Istirahat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 'ELLYS TR', 'STAFF', '2018-05-07', 'Senin', 'Hari Kerja', 'STAFF I', '2018-05-07 08:00:00', '2018-05-07 16:30:00'),
(8, 2, 'ELLYS TR', 'STAFF', '2018-05-08', 'Selasa', 'Hari Kerja', 'STAFF I', '2018-05-08 08:00:00', '2018-05-08 16:30:00'),
(9, 2, 'ELLYS TR', 'STAFF', '2018-05-09', 'Rabu ', 'Hari Kerja', 'STAFF I', '2018-05-09 08:00:00', '2018-05-09 16:30:00'),
(10, 2, 'ELLYS TR', 'STAFF', '2018-05-10', 'Kamis', 'Hari Kerja', 'STAFF I', '2018-05-10 08:00:00', '2018-05-10 16:30:00'),
(11, 2, 'ELLYS TR', 'STAFF', '2018-05-11', 'Jumat', 'Hari Kerja', 'STAFF I', '2018-05-11 08:00:00', '2018-05-11 16:30:00'),
(12, 2, 'ELLYS TR', 'STAFF', '2018-05-12', 'Sabtu', 'Hari Kerja', 'LEMBUR', '2018-05-12 09:00:00', '2018-05-12 16:00:00'),
(13, 2, 'ELLYS TR', 'STAFF', '2018-05-13', 'Minggu', 'Istirahat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, 'ELLYS TR', 'STAFF', '2018-05-14', 'Senin', 'Hari Kerja', 'STAFF I', '2018-05-14 08:00:00', '2018-05-14 16:30:00'),
(15, 2, 'ELLYS TR', 'STAFF', '2018-05-15', 'Selasa', 'Hari Kerja', 'STAFF I', '2018-05-15 08:00:00', '2018-05-15 16:30:00'),
(16, 2, 'ELLYS TR', 'STAFF', '2018-05-16', 'Rabu ', 'Hari Kerja', 'STAFF I', '2018-05-16 08:00:00', '2018-05-16 16:30:00'),
(17, 2, 'ELLYS TR', 'STAFF', '2018-05-17', 'Kamis', 'Hari Kerja', 'STAFF I', '2018-05-17 08:00:00', '2018-05-17 16:30:00'),
(18, 2, 'ELLYS TR', 'STAFF', '2018-05-18', 'Jumat', 'Hari Kerja', 'STAFF I', '2018-05-18 08:00:00', '2018-05-18 16:30:00'),
(19, 2, 'ELLYS TR', 'STAFF', '2018-05-19', 'Sabtu', 'Hari Kerja', 'LEMBUR', '2018-05-19 09:00:00', '2018-05-19 16:00:00'),
(20, 2, 'ELLYS TR', 'STAFF', '2018-05-20', 'Minggu', 'Istirahat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 'ELLYS TR', 'STAFF', '2018-05-21', 'Senin', 'Hari Kerja', 'STAFF I', '2018-05-21 08:00:00', '2018-05-21 16:30:00'),
(22, 2, 'ELLYS TR', 'STAFF', '2018-05-22', 'Selasa', 'Hari Kerja', 'STAFF I', '2018-05-22 08:00:00', '2018-05-22 16:30:00'),
(23, 2, 'ELLYS TR', 'STAFF', '2018-05-23', 'Rabu ', 'Hari Kerja', 'STAFF I', '2018-05-23 08:00:00', '2018-05-23 16:30:00'),
(24, 2, 'ELLYS TR', 'STAFF', '2018-05-24', 'Kamis', 'Hari Kerja', 'STAFF I', '2018-05-24 08:00:00', '2018-05-24 16:30:00'),
(25, 2, 'ELLYS TR', 'STAFF', '2018-05-25', 'Jumat', 'Hari Kerja', 'STAFF I', '2018-05-25 08:00:00', '2018-05-25 16:30:00'),
(26, 2, 'ELLYS TR', 'STAFF', '2018-05-26', 'Sabtu', 'Hari Kerja', 'LEMBUR', '2018-05-26 09:00:00', '2018-05-26 16:00:00'),
(27, 2, 'ELLYS TR', 'STAFF', '2018-05-27', 'Minggu', 'Istirahat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 2, 'ELLYS TR', 'STAFF', '2018-05-28', 'Senin', 'Hari Kerja', 'STAFF I', '2018-05-28 08:00:00', '2018-05-28 16:30:00'),
(29, 2, 'ELLYS TR', 'STAFF', '2018-05-29', 'Selasa', 'Hari Kerja', 'STAFF I', '2018-05-29 08:00:00', '2018-05-29 16:30:00'),
(30, 2, 'ELLYS TR', 'STAFF', '2018-05-30', 'Rabu ', 'Hari Kerja', 'STAFF I', '2018-05-30 08:00:00', '2018-05-30 16:30:00'),
(31, 2, 'ELLYS TR', 'STAFF', '2018-05-31', 'Kamis', 'Hari Kerja', 'STAFF I', '2018-05-31 08:00:00', '2018-05-31 16:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `detail_karyawan`
--

CREATE TABLE `detail_karyawan` (
  `no` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
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
  `no` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `jml_hr_kerja` int(11) NOT NULL,
  `jml_hr_libur` int(11) NOT NULL,
  `jml_hadir` int(11) NOT NULL,
  `jml_tidakmasuk` int(11) NOT NULL,
  `datang_terlambat` int(11) NOT NULL,
  `pulang_awal` int(11) NOT NULL,
  `pulang_terlambat` int(11) NOT NULL,
  `tgl_datang_terlambat` datetime NOT NULL,
  `tgl_pulang_awal` datetime NOT NULL,
  `tgl_pulang_terlambat` datetime NOT NULL,
  `tgl_tidak_masuk` datetime NOT NULL,
  `uang_makan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kehadiran_karyawan`
--

INSERT INTO `kehadiran_karyawan` (`no`, `id_karyawan`, `nama`, `jabatan`, `jml_hr_kerja`, `jml_hr_libur`, `jml_hadir`, `jml_tidakmasuk`, `datang_terlambat`, `pulang_awal`, `pulang_terlambat`, `tgl_datang_terlambat`, `tgl_pulang_awal`, `tgl_pulang_terlambat`, `tgl_tidak_masuk`, `uang_makan`) VALUES
(1, 1, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:00', '2018-05-01 08:00:00', '2018-05-01 08:00:00', '2018-05-01 08:00:00', 0),
(2, 2, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:01', '2018-05-01 08:00:01', '2018-05-01 08:00:01', '2018-05-01 08:00:01', 0),
(3, 3, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:02', '2018-05-01 08:00:02', '2018-05-01 08:00:02', '2018-05-01 08:00:02', 0),
(4, 4, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:03', '2018-05-01 08:00:03', '2018-05-01 08:00:03', '2018-05-01 08:00:03', 0),
(5, 5, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:04', '2018-05-01 08:00:04', '2018-05-01 08:00:04', '2018-05-01 08:00:04', 0),
(6, 6, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:05', '2018-05-01 08:00:05', '2018-05-01 08:00:05', '2018-05-01 08:00:05', 0),
(7, 7, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:06', '2018-05-01 08:00:06', '2018-05-01 08:00:06', '2018-05-01 08:00:06', 0),
(8, 8, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:07', '2018-05-01 08:00:07', '2018-05-01 08:00:07', '2018-05-01 08:00:07', 0),
(9, 9, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:08', '2018-05-01 08:00:08', '2018-05-01 08:00:08', '2018-05-01 08:00:08', 0),
(10, 10, 'YOYOK', 'D', 0, 22, 9, 18, 4, 2, 2, '2018-05-01 08:00:09', '2018-05-01 08:00:09', '2018-05-01 08:00:09', '2018-05-01 08:00:09', 0);

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
-- Indexes for table `absen_karyawan`
--
ALTER TABLE `absen_karyawan`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

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
-- AUTO_INCREMENT for table `absen_karyawan`
--
ALTER TABLE `absen_karyawan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `detail_karyawan`
--
ALTER TABLE `detail_karyawan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kehadiran_karyawan`
--
ALTER TABLE `kehadiran_karyawan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
