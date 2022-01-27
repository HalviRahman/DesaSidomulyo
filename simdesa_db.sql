-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 01:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simdesa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warga`
--

CREATE TABLE `tbl_warga` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `rt` int(1) NOT NULL,
  `rw` int(1) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `goldar` varchar(3) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `kawin` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `role` int(2) NOT NULL DEFAULT 0,
  `ktp_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `foto_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_warga`
--

INSERT INTO `tbl_warga` (`nik`, `nama`, `email`, `pass`, `tempat_lahir`, `tgl_lahir`, `no_telp`, `alamat`, `rt`, `rw`, `jk`, `goldar`, `agama`, `pendidikan`, `pekerjaan`, `kawin`, `status`, `role`, `ktp_file`, `kk_file`, `foto_file`) VALUES
('12312301', 'Naufal Hayyu Triwardana', 'naufalhayyu@gmail.com', '$2y$10$85p1ValUv/5GUK1r7qwqd.dNjKG7v4nM8v283e0biTd40C44UpdVa', 'Malang', '2001-01-11', '0856464336222', '', 1, 3, 'l', 'o', 'islam', 'sd', 'pelajar', '', 1, 0, './assets/img/warga/ktp/123123-1641912172-ktp_file.jpg', './assets/img/warga/kk/123123-1641912172-kk_file.jpg', './assets/img/warga/foto/123123-1641912172-foto_file.png'),
('123456', 'Admin', 'admin2@gmail.com', '$2y$10$xBm/5g5QN2siQ/6RES2BnOPBQNbjUnhSTXKdxWXghFVEf00NK/19i', 'Malang', '1998-08-29', '0856464336512', '', 4, 2, 'l', 'b', 'islam', 's1', 'pelajar', 'belum', -1, 2, './assets/img/warga/ktp/123456-1613817183-ktp_file.png', '1591623610-kk.png', './assets/img/warga/foto/123456-1613817305-foto_file.png'),
('16515020', 'Ini User', 'iniuser@gmail.com', '$2y$10$i/xF1dJ7Fg3vKEhW4DSmYuHhTqWtsrnIWL40AF1QD/kImuSQD4IN.', 'Surabaya', '2015-01-06', '085230839313', '', 4, 2, 'l', 'ab', 'islam', 'slta', 'swasta', 'belum', -1, 0, './assets/img/warga/ktp/16515020-1641791834-ktp_file.png', './assets/img/warga/kk/16515020-1641791834-kk_file.jpg', './assets/img/warga/foto/16515020-1641791834-foto_file.png'),
('165150201111134', 'User 2', 'user2@gmail.com', '$2y$10$41B81e5tXWar7GnNSQUo5eLex3z.SOPuesbddFRPBU.Zr2XSWBBC2', 'Malang', '2007-02-12', '08593753289', '', 4, 3, 'l', 'o', 'kristen', 's1', 'wiraswasta', 'belum', -1, 0, './assets/img/warga/ktp/165150201111134-1592312875-ktp_file.jpg', './assets/img/warga/kk/165150201111134-1592312875-kk_file.png', './assets/img/warga/foto/165150201111134-1592312875-foto_file.png'),
('222222', 'Kepala Desa', 'kepala@gmail.com', '$2y$10$99ZkSVB4jG3nD1bIbF6J2uF.cM87uoal1lL3.fagPfqy5WbzLPQt6', 'Batu', '2021-02-20', '08583924111', '', 2, 0, 'l', 'a', 'islam', 'sd', 'pns', '', -1, 0, './assets/img/warga/ktp/default.jpg', '', './assets/img/warga/foto/222222-1614051018-foto_file.png'),
('29481284021', 'Anselma', 'ansel@gmail.com', '$2y$10$D1kmRrXAE7lj8ym9dSa7B.GjqfZBaFMO0gEuMUBd2X20oQpjxFQfa', 'Jakarta', '1996-08-03', '087647385687', '', 3, 2, 'p', 'ab', 'hindu', 's1', 'swasta', 'belum', -1, 2, '', '', ''),
('3578072909010004', 'M Halvi Rahman', 'halvi.rahman@gmail.com', '$2y$10$GMqQVLXAal.AMF1W1/suPOZUhtkNMN3RKaR96UhY912EnLHRrcyqW', 'Surabaya', '2001-09-29', '085748905910', '', 1, 3, 'l', 'a', 'islam', 'slta', 'pelajar', 'belum', -1, 2, './assets/img/warga/ktp/3578072909010004-1641295008-ktp_file.jpg', './assets/img/warga/kk/3578072909010004-1641295008-kk_file.jpeg', './assets/img/warga/foto/3578072909010004-1641910064-foto_file.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_warga`
--
ALTER TABLE `tbl_warga`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
