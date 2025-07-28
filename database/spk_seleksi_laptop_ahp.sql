-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 08:55 AM
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
  `prioritas_kepentingan` varchar(20) NOT NULL,
  `bobot` decimal(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`kd_kriteria`, `nama_kriteria`, `prioritas_kepentingan`, `bobot`) VALUES
('K1', 'Performa', 'Sangat Penting ke-1', 0.395),
('K2', 'Harga', 'Penting ke-2', 0.239),
('K3', 'Penyimpanan', 'Cukup Penting ke-3', 0.173),
('K4', 'Daya Tahan Baterai', 'Biasa ke-4', 0.120),
('K5', 'RAM', 'Kurang Penting ke-5', 0.073);

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
  `hasil_penilaian` decimal(4,2) NOT NULL,
  `ranking` int(3) DEFAULT NULL,
  `tanggal_seleksi` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seleksi`
--

INSERT INTO `seleksi` (`id_laptop`, `nama_laptop`, `hasil_penilaian`, `ranking`, `tanggal_seleksi`) VALUES
('LP001', 'MacBook Pro 14"', 0.85, 1, '2025-07-29 08:55:00'),
('LP002', 'Dell XPS 13', 0.72, 2, '2025-07-29 08:55:00'),
('LP003', 'Lenovo ThinkPad E14', 0.58, 3, '2025-07-29 08:55:00'),
('LP004', 'Axio Pongo', 0.35, 5, '2025-07-29 08:55:00'),
('LP005', 'Asus ROG Strix G15', 0.68, 4, '2025-07-29 08:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `no_sub` int(3) NOT NULL,
  `kd_kriteria` char(3) NOT NULL,
  `kd_sub_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(30) NOT NULL,
  `nama_sub_kriteria` varchar(30) NOT NULL,
  `prioritas_kepentingan` varchar(20) NOT NULL,
  `bobot` decimal(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`no_sub`, `kd_kriteria`, `kd_sub_kriteria`, `nama_kriteria`, `nama_sub_kriteria`, `prioritas_kepentingan`, `bobot`) VALUES
-- Sub Kriteria Performa (K1)
(1, 'K1', 'K11', 'Performa', 'High-End', 'Sangat Penting ke-1', 0.503),
(2, 'K1', 'K12', 'Performa', 'Mid-Range', 'Penting ke-2', 0.260),
(3, 'K1', 'K13', 'Performa', 'Entry-Level', 'Cukup Penting ke-3', 0.134),
(4, 'K1', 'K14', 'Performa', 'Basic', 'Biasa ke-4', 0.068),
(5, 'K1', 'K15', 'Performa', 'Low-End', 'Kurang Penting ke-5', 0.035),

-- Sub Kriteria Harga (K2)
(6, 'K2', 'K21', 'Harga', 'Sangat Terjangkau', 'Sangat Penting ke-1', 0.445),
(7, 'K2', 'K22', 'Harga', 'Terjangkau', 'Penting ke-2', 0.292),
(8, 'K2', 'K23', 'Harga', 'Normal', 'Cukup Penting ke-3', 0.133),
(9, 'K2', 'K24', 'Harga', 'Mahal', 'Biasa ke-4', 0.096),
(10, 'K2', 'K25', 'Harga', 'Sangat Mahal', 'Kurang Penting ke-5', 0.035),

-- Sub Kriteria Penyimpanan (K3)
(11, 'K3', 'K31', 'Penyimpanan', 'Sangat Besar', 'Sangat Penting ke-1', 0.408),
(12, 'K3', 'K32', 'Penyimpanan', 'Besar', 'Penting ke-2', 0.251),
(13, 'K3', 'K33', 'Penyimpanan', 'Sedang', 'Cukup Penting ke-3', 0.167),
(14, 'K3', 'K34', 'Penyimpanan', 'Kecil', 'Biasa ke-4', 0.109),
(15, 'K3', 'K35', 'Penyimpanan', 'Sangat Kecil', 'Kurang Penting ke-5', 0.066),

-- Sub Kriteria Daya Tahan Baterai (K4)
(16, 'K4', 'K41', 'Daya Tahan Baterai', 'Sangat Lama', 'Sangat Penting ke-1', 0.454),
(17, 'K4', 'K42', 'Daya Tahan Baterai', 'Lama', 'Penting ke-2', 0.267),
(18, 'K4', 'K43', 'Daya Tahan Baterai', 'Sedang', 'Cukup Penting ke-3', 0.149),
(19, 'K4', 'K44', 'Daya Tahan Baterai', 'Kurang', 'Biasa ke-4', 0.082),
(20, 'K4', 'K45', 'Daya Tahan Baterai', 'Sangat Kurang', 'Kurang Penting ke-5', 0.049),

-- Sub Kriteria RAM (K5)
(21, 'K5', 'K51', 'RAM', '32GB (Sangat Tinggi)', 'Sangat Penting ke-1', 0.416),
(22, 'K5', 'K52', 'RAM', '16GB (Tinggi)', 'Penting ke-2', 0.262),
(23, 'K5', 'K53', 'RAM', '12GB (Sedang)', 'Cukup Penting ke-3', 0.161),
(24, 'K5', 'K54', 'RAM', '8GB (Rendah)', 'Biasa ke-4', 0.099),
(25, 'K5', 'K55', 'RAM', '4GB (Sangat Rendah)', 'Kurang Penting ke-5', 0.062);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_laptop`
--

CREATE TABLE `penilaian_laptop` (
  `id_penilaian` int(11) NOT NULL,
  `id_laptop` varchar(5) NOT NULL,
  `kd_kriteria` char(3) NOT NULL,
  `kd_sub_kriteria` varchar(5) NOT NULL,
  `nilai` decimal(4,3) NOT NULL,
  `tanggal_penilaian` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penilaian_laptop`
--

INSERT INTO `penilaian_laptop` (`id_penilaian`, `id_laptop`, `kd_kriteria`, `kd_sub_kriteria`, `nilai`, `tanggal_penilaian`) VALUES
-- MacBook Pro (LP001)
(1, 'LP001', 'K1', 'K11', 0.503, '2025-07-29 08:55:00'),  -- High-End Performance
(2, 'LP001', 'K2', 'K25', 0.035, '2025-07-29 08:55:00'),  -- Sangat Mahal
(3, 'LP001', 'K3', 'K31', 0.408, '2025-07-29 08:55:00'),  -- Sangat Besar Storage
(4, 'LP001', 'K4', 'K41', 0.454, '2025-07-29 08:55:00'),  -- Sangat Lama Battery
(5, 'LP001', 'K5', 'K51', 0.416, '2025-07-29 08:55:00'),  -- 32GB RAM

-- Dell XPS (LP002)
(6, 'LP002', 'K1', 'K12', 0.260, '2025-07-29 08:55:00'),  -- Mid-Range Performance
(7, 'LP002', 'K2', 'K24', 0.096, '2025-07-29 08:55:00'),  -- Mahal
(8, 'LP002', 'K3', 'K32', 0.251, '2025-07-29 08:55:00'),  -- Besar Storage
(9, 'LP002', 'K4', 'K42', 0.267, '2025-07-29 08:55:00'),  -- Lama Battery
(10, 'LP002', 'K5', 'K52', 0.262, '2025-07-29 08:55:00'), -- 16GB RAM

-- Lenovo ThinkPad (LP003)
(11, 'LP003', 'K1', 'K13', 0.134, '2025-07-29 08:55:00'), -- Entry-Level Performance
(12, 'LP003', 'K2', 'K23', 0.133, '2025-07-29 08:55:00'), -- Normal Price
(13, 'LP003', 'K3', 'K33', 0.167, '2025-07-29 08:55:00'), -- Sedang Storage
(14, 'LP003', 'K4', 'K43', 0.149, '2025-07-29 08:55:00'), -- Sedang Battery
(15, 'LP003', 'K5', 'K53', 0.161, '2025-07-29 08:55:00'), -- 12GB RAM

-- Axio Pongo (LP004)
(16, 'LP004', 'K1', 'K14', 0.068, '2025-07-29 08:55:00'), -- Basic Performance
(17, 'LP004', 'K2', 'K22', 0.292, '2025-07-29 08:55:00'), -- Terjangkau
(18, 'LP004', 'K3', 'K34', 0.109, '2025-07-29 08:55:00'), -- Kecil Storage
(19, 'LP004', 'K4', 'K44', 0.082, '2025-07-29 08:55:00'), -- Kurang Battery
(20, 'LP004', 'K5', 'K54', 0.099, '2025-07-29 08:55:00'), -- 8GB RAM

-- Asus ROG (LP005)
(21, 'LP005', 'K1', 'K11', 0.503, '2025-07-29 08:55:00'), -- High-End Performance
(22, 'LP005', 'K2', 'K25', 0.035, '2025-07-29 08:55:00'), -- Sangat Mahal
(23, 'LP005', 'K3', 'K31', 0.408, '2025-07-29 08:55:00'), -- Sangat Besar Storage
(24, 'LP005', 'K4', 'K43', 0.149, '2025-07-29 08:55:00'), -- Sedang Battery
(25, 'LP005', 'K5', 'K51', 0.416, '2025-07-29 08:55:00'); -- 32GB RAM

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
-- Indexes for table `penilaian_laptop`
--
ALTER TABLE `penilaian_laptop`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `fk_laptop` (`id_laptop`),
  ADD KEY `fk_kriteria` (`kd_kriteria`),
  ADD KEY `fk_sub_kriteria` (`kd_sub_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penilaian_laptop`
--
ALTER TABLE `penilaian_laptop`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penilaian_laptop`
--
ALTER TABLE `penilaian_laptop`
  ADD CONSTRAINT `fk_kriteria` FOREIGN KEY (`kd_kriteria`) REFERENCES `kriteria` (`kd_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_laptop` FOREIGN KEY (`id_laptop`) REFERENCES `data_laptop` (`id_laptop`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
