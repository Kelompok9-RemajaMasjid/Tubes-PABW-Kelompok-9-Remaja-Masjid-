-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 04:32 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php2`
--

-- --------------------------------------------------------

--
-- Table structure for table `akumulasi biaya`
--

CREATE TABLE `akumulasi biaya` (
  `id` int(11) NOT NULL,
  `objek_wisata` varchar(30) NOT NULL,
  `estimasi_biaya` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akumulasi biaya`
--

INSERT INTO `akumulasi biaya` (`id`, `objek_wisata`, `estimasi_biaya`) VALUES
(1, 'Raja Ampat', 975000),
(2, 'Teluk Cenderawasih', 330000),
(3, 'Raja Ampat', 1500000000);

-- --------------------------------------------------------

--
-- Table structure for table `objek wisata`
--

CREATE TABLE `objek wisata` (
  `id` int(6) NOT NULL,
  `objek_wisata` varchar(50) NOT NULL,
  `harga` int(30) NOT NULL,
  `lokasi` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `objek wisata`
--

INSERT INTO `objek wisata` (`id`, `objek_wisata`, `harga`, `lokasi`) VALUES
(1, 'Raja Ampat', 150000, 'kepulauan raja ampat '),
(2, 'Danau Sentani', 25000, 'jayapura'),
(3, 'Jayawijaya', 200000, 'Kabupaten Jayawijaya'),
(4, 'Teluk Cenderawasih', 80000, 'Provinsi Papua'),
(5, 'Kuala Kencana', 60000, 'Kabupaten Timika'),
(6, 'Lembah Baliem', 75000, 'Kabupaten Jayawijaya');

-- --------------------------------------------------------

--
-- Table structure for table `turis`
--

CREATE TABLE `turis` (
  `ema` varchar(30) NOT NULL,
  `pis` varchar(20) NOT NULL,
  `id` int(225) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turis`
--

INSERT INTO `turis` (`ema`, `pis`, `id`, `username`) VALUES
('a@m.com', '12345', 1, 'sss'),
('ad@yaha', '1231', 2, 'sss'),
('sadas@awkoa.com', 'e10adc3949ba59abbe56', 3, 'tqwe'),
('akmal@c.com', '6074c6aa3488f3c2dddf', 4, 'akmal'),
('yaha@gmai.com', 'f379eaf3c831b04de153', 5, 'yaha'),
('bp@g.com', 'yaha', 6, 'BoyPutra'),
('imam@g.com', 'bebas', 7, 'imam'),
('mumu@gmail.com', 'ayamgoreng', 8, 'mumu'),
('pakde@gmail.com', '12345', 9, 'jokowi'),
('joko@g.com', '12345', 10, 'jokoboy'),
('hanip@g.com', '123', 11, 'hanip'),
('sasa@g.com', '1234', 12, 'sasa'),
('agus@g.com', 'asdf', 13, 'agus'),
('andi@gmai.com', '12345', 14, 'andi'),
('marcus@g.com', '123', 15, 'marcus'),
('budi@g.com', '123', 16, 'budi'),
('andika@g.com', '123', 17, 'andika'),
('caca@gmai.com', '123', 18, 'caca'),
('badu@g.com', '123', 19, 'badu');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id` int(6) NOT NULL,
  `objek_wisata` varchar(50) NOT NULL,
  `ulasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id`, `objek_wisata`, `ulasan`) VALUES
(1, 'raja_ampat', 'mantap'),
(2, 'teluk_cenderawasih', 'ok deh'),
(3, 'kuala_kencana', 'amazing'),
(4, 'jayawijaya', 'dingin'),
(5, 'danau_sentani', 'danau sentani indah sekali'),
(6, 'lembah_baliem', 'warga asli lembah baliem merupakan suku asli di papua'),
(7, 'jayawijaya', 'waw'),
(8, 'raja_ampat', 'waw'),
(9, 'raja_ampat', 'waw'),
(10, 'jayawijaya', 'mantap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akumulasi biaya`
--
ALTER TABLE `akumulasi biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objek wisata`
--
ALTER TABLE `objek wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turis`
--
ALTER TABLE `turis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akumulasi biaya`
--
ALTER TABLE `akumulasi biaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `objek wisata`
--
ALTER TABLE `objek wisata`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `turis`
--
ALTER TABLE `turis`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
