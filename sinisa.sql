-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 09:05 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sinisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_admin`
--

CREATE TABLE `daftar_admin` (
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_karyawan` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daftar_user`
--

CREATE TABLE `daftar_user` (
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(14) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_sewa`
--

CREATE TABLE `form_sewa` (
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(14) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `lama_sewa` int(11) NOT NULL,
  `asal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyuluhan`
--

CREATE TABLE `penyuluhan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tanggal_input` date NOT NULL,
  `tanggal_output` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_admin`
--
ALTER TABLE `daftar_admin`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `password` (`password`);

--
-- Indexes for table `daftar_user`
--
ALTER TABLE `daftar_user`
  ADD PRIMARY KEY (`no_telepon`),
  ADD KEY `password` (`password`);

--
-- Indexes for table `form_sewa`
--
ALTER TABLE `form_sewa`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `no_telepon` (`no_telepon`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `penyuluhan`
--
ALTER TABLE `penyuluhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_admin`
--
ALTER TABLE `daftar_admin`
  ADD CONSTRAINT `daftar_admin_ibfk_1` FOREIGN KEY (`password`) REFERENCES `login` (`password`);

--
-- Constraints for table `daftar_user`
--
ALTER TABLE `daftar_user`
  ADD CONSTRAINT `daftar_user_ibfk_1` FOREIGN KEY (`password`) REFERENCES `login` (`password`);

--
-- Constraints for table `form_sewa`
--
ALTER TABLE `form_sewa`
  ADD CONSTRAINT `form_sewa_ibfk_1` FOREIGN KEY (`no_telepon`) REFERENCES `daftar_user` (`no_telepon`);

--
-- Constraints for table `penyuluhan`
--
ALTER TABLE `penyuluhan`
  ADD CONSTRAINT `penyuluhan_ibfk_1` FOREIGN KEY (`nama`) REFERENCES `daftar_user` (`no_telepon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
