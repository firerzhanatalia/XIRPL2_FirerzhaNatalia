-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2026 at 02:38 AM
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
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '123', 1),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 2),
(3, 'admin2', '202cb962ac59075b964b07152d234b70', 2);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(8000);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 15, 'Kaus Lengan Pendek', 5),
(2, 15, 'Celana Jeans Pendek', 10),
(3, 12, 'Celana Kulot', 5),
(4, 1, 'Baju Kemeja Flanel', 10),
(5, 10, 'Seragam Sekolah SD', 6),
(6, 15, 'Rok Linen', 3),
(7, 10, 'Kaus Lengan Panjang', 8),
(8, 9, 'Mini Skirt', 6),
(9, 8, 'Seragam SMP', 6),
(10, 7, 'Seragam SMK ', 8),
(11, 6, 'Seragam Pabrik Kaca', 5),
(12, 5, 'Dress Pantai', 2),
(13, 4, 'Celana 3/4 Jeans', 5),
(14, 3, 'Kemeja Wispie', 6),
(15, 2, 'Crop Top Warna', 7),
(16, 1, 'Kemeja Putih Polos', 6),
(17, 11, 'Rok Hitam Formal', 8),
(18, 13, 'Cutbray Jeans', 8),
(19, 14, 'Gamis Shimmer', 2),
(20, 14, 'Kerudung Pashmina Viscose', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pelanggan_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pelanggan_alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(121, 'Natalia', '081234567890', 'Kedungsari, Singorojo'),
(122, 'Griselda', '080987654321', 'Mijen'),
(123, 'Daniswara', '1234567890', 'Ngareanak'),
(124, 'Dayita', '135798642', 'Bandarejo'),
(125, 'Erza', '0987654321', 'Pasigitan'),
(126, 'Keysa', '98765456789', 'Ngularan'),
(127, 'Byanca', '56783268962', 'Baon Suruhan'),
(128, 'Aisyah', '0987890987', 'Campurejo'),
(129, 'Cyka', '45566544333', 'Semarang'),
(130, 'Anisa', '65872365982', 'Puguh');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(1, '2026-08-01', 121, 64000, 8, '2026-08-03', 0),
(2, '2026-09-02', 122, 80000, 10, '2026-09-05', 2),
(3, '2026-09-03', 123, 8000, 1, '2026-09-03', 1),
(4, '2026-09-03', 124, 16000, 2, '2026-08-04', 2),
(5, '2026-09-04', 125, 24000, 3, '2026-09-05', 2),
(6, '2026-08-04', 125, 32000, 4, '2026-08-05', 0),
(7, '2026-08-04', 126, 48000, 6, '2026-08-06', 1),
(8, '2026-08-04', 121, 8000, 1, '2026-08-04', 2),
(9, '2026-08-05', 124, 40000, 5, '2026-08-07', 2),
(10, '2026-08-05', 125, 24000, 3, '2026-08-06', 2),
(11, '2026-08-06', 128, 56000, 7, '2026-08-07', 0),
(12, '2026-08-06', 129, 80000, 10, '2026-08-09', 0),
(13, '2026-09-06', 130, 16000, 2, '2026-08-07', 1),
(14, '2026-09-07', 128, 72000, 9, '2026-08-09', 2),
(15, '2026-08-07', 127, 32000, 4, '2026-08-08', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
