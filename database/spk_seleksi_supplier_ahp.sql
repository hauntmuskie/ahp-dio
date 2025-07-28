-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2025 at 08:55 AM
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
-- Database: `spk_seleksi_laptop_ahp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` char(3) NOT NULL,
  `namalengkap` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `namalengkap`, `user`, `password`) VALUES
('001', 'Aditya Computer Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_laptop`
--

CREATE TABLE `data_laptop` (
  `id_laptop` varchar(5) NOT NULL,
  `nama_laptop` varchar(50) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `spesifikasi` text NOT NULL,
  `performa` varchar(50) NOT NULL,
  `kategori_harga` varchar(50) NOT NULL,
  `penyimpanan` varchar(50) NOT NULL,
  `daya_tahan_baterai` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `stok` int(11) DEFAULT 0,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_laptop`
--

INSERT INTO `data_laptop` (`id_laptop`, `nama_laptop`, `merek`, `harga`, `spesifikasi`, `performa`, `kategori_harga`, `penyimpanan`, `daya_tahan_baterai`, `ram`, `stok`, `gambar`) VALUES
('LP001', 'MacBook Pro 14"', 'Apple', 32000000.00, 'M3 Pro Chip, 14" Liquid Retina XDR Display', 'High-End', 'Sangat Mahal', 'Sangat Besar', 'Sangat Lama', '32GB (Sangat Tinggi)', 5, NULL),
('LP002', 'Dell XPS 13', 'Dell', 18000000.00, 'Intel Core i7-1360P, 13.4" FHD+ Display', 'Mid-Range', 'Mahal', 'Besar', 'Lama', '16GB (Tinggi)', 8, NULL),
('LP003', 'Lenovo ThinkPad E14', 'Lenovo', 12000000.00, 'Intel Core i5-1235U, 14" FHD Display', 'Entry-Level', 'Normal', 'Sedang', 'Sedang', '12GB (Sedang)', 12, NULL),
('LP004', 'Axio Pongo', 'Axio', 8000000.00, 'Intel Core i3-1115G4, 14" HD Display', 'Basic', 'Terjangkau', 'Kecil', 'Kurang', '8GB (Rendah)', 15, NULL),
('LP005', 'Asus ROG Strix G15', 'Asus', 25000000.00, 'AMD Ryzen 7 6800H, RTX 3070, 15.6" FHD 144Hz', 'High-End', 'Sangat Mahal', 'Sangat Besar', 'Sedang', '32GB (Sangat Tinggi)', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `kd_kriteria` char(3) NOT NULL,
  `nama_kriteria` varchar(30) NOT NULL,
  `prioritas_kepentingan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`kd_kriteria`, `nama_kriteria`, `prioritas_kepentingan`) VALUES
('K1', 'Performa', 'Sangat Penting ke-1'),
('K2', 'Harga', 'Penting ke-2'),
('K3', 'Penyimpanan', 'Cukup Penting ke-3'),
('K4', 'Daya Tahan Baterai', 'Biasa ke-4'),
('K5', 'RAM', 'Kurang Penting ke-5');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `user`, `password`) VALUES
(1, 'admin@adityacomputer.com', 'admin', 'admin'),
(2, 'staff@adityacomputer.com', 'staff', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `seleksi`
--

CREATE TABLE `seleksi` (
  `id_laptop` char(5) NOT NULL,
  `nama_laptop` varchar(50) NOT NULL,
  `hasil_penilaian` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seleksi`
--

INSERT INTO `seleksi` (`id_laptop`, `nama_laptop`, `hasil_penilaian`) VALUES
('LP001', 'MacBook Pro 14"', 0.85),
('LP002', 'Dell XPS 13', 0.72),
('LP003', 'Lenovo ThinkPad E14', 0.58),
('LP004', 'Axio Pongo', 0.35),
('LP005', 'Asus ROG Strix G15', 0.68);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `no_sub` int(3) NOT NULL,
  `kd_kriteria` char(3) NOT NULL,
  `nama_kriteria` varchar(30) NOT NULL,
  `nama_sub_kriteria` varchar(30) NOT NULL,
  `prioritas_kepentingan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`no_sub`, `kd_kriteria`, `nama_kriteria`, `nama_sub_kriteria`, `prioritas_kepentingan`) VALUES
-- Sub Kriteria Performa (K1)
(1, 'K1', 'Performa', 'High-End', 'Sangat Penting ke-1'),
(2, 'K1', 'Performa', 'Mid-Range', 'Penting ke-2'),
(3, 'K1', 'Performa', 'Entry-Level', 'Cukup Penting ke-3'),
(4, 'K1', 'Performa', 'Basic', 'Biasa ke-4'),
(5, 'K1', 'Performa', 'Low-End', 'Kurang Penting ke-5'),

-- Sub Kriteria Harga (K2)
(6, 'K2', 'Harga', 'Sangat Terjangkau', 'Sangat Penting ke-1'),
(7, 'K2', 'Harga', 'Terjangkau', 'Penting ke-2'),
(8, 'K2', 'Harga', 'Normal', 'Cukup Penting ke-3'),
(9, 'K2', 'Harga', 'Mahal', 'Biasa ke-4'),
(10, 'K2', 'Harga', 'Sangat Mahal', 'Kurang Penting ke-5'),

-- Sub Kriteria Penyimpanan (K3)
(11, 'K3', 'Penyimpanan', 'Sangat Besar', 'Sangat Penting ke-1'),
(12, 'K3', 'Penyimpanan', 'Besar', 'Penting ke-2'),
(13, 'K3', 'Penyimpanan', 'Sedang', 'Cukup Penting ke-3'),
(14, 'K3', 'Penyimpanan', 'Kecil', 'Biasa ke-4'),
(15, 'K3', 'Penyimpanan', 'Sangat Kecil', 'Kurang Penting ke-5'),

-- Sub Kriteria Daya Tahan Baterai (K4)
(16, 'K4', 'Daya Tahan Baterai', 'Sangat Lama', 'Sangat Penting ke-1'),
(17, 'K4', 'Daya Tahan Baterai', 'Lama', 'Penting ke-2'),
(18, 'K4', 'Daya Tahan Baterai', 'Sedang', 'Cukup Penting ke-3'),
(19, 'K4', 'Daya Tahan Baterai', 'Kurang', 'Biasa ke-4'),
(20, 'K4', 'Daya Tahan Baterai', 'Sangat Kurang', 'Kurang Penting ke-5'),

-- Sub Kriteria RAM (K5)
(21, 'K5', 'RAM', '32GB (Sangat Tinggi)', 'Sangat Penting ke-1'),
(22, 'K5', 'RAM', '16GB (Tinggi)', 'Penting ke-2'),
(23, 'K5', 'RAM', '12GB (Sedang)', 'Cukup Penting ke-3'),
(24, 'K5', 'RAM', '8GB (Rendah)', 'Biasa ke-4'),
(25, 'K5', 'RAM', '4GB (Sangat Rendah)', 'Kurang Penting ke-5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_laptop`
--
ALTER TABLE `data_laptop`
  ADD PRIMARY KEY (`id_laptop`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kd_kriteria`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seleksi`
--
ALTER TABLE `seleksi`
  ADD UNIQUE KEY `id_laptop` (`id_laptop`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`no_sub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
