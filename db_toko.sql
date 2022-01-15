-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 12:48 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(4, 'BR004', 1, 'Kertas A4', 'Joyko', '5500', '8000', 'PCS', '100', '1 January 2022, 16:50', '1 January 2022, 16:52'),
(5, 'BR005', 9, 'Buku Tulis ', 'SIDU', '2000', '3500', 'PCS', '56', '1 January 2022, 16:58', NULL),
(6, 'BR006', 9, 'Pensil', 'Faber Castle', '5000', '8000', 'PCS', '70', '1 January 2022, 16:59', NULL),
(7, 'BR007', 9, 'Pulpen', 'Pilot', '1000', '2000', 'PCS', '200', '1 January 2022, 16:59', NULL),
(8, 'BR008', 8, 'Sleeping Mask', 'VIVA', '28000', '35000', 'PCS', '20', '1 January 2022, 17:00', NULL),
(9, 'BR009', 8, 'Facial Wash', 'Wardah', '18000', '26000', 'PCS', '26', '1 January 2022, 17:00', NULL),
(10, 'BR010', 8, 'Lightening Toner', 'Wardah', '30000', '35000', 'PCS', '35', '1 January 2022, 17:02', NULL),
(11, 'BR011', 10, 'Sabun', 'Shinzui', '2000', '3000', 'PCS', '50', '1 January 2022, 17:03', NULL),
(12, 'BR012', 10, 'Sabun', 'NUVO', '2500', '3500', 'PCS', '50', '1 January 2022, 17:04', NULL),
(13, 'BR013', 10, 'Odol 100gr', 'Pepsodent', '15000', '17000', 'PCS', '90', '1 January 2022, 17:04', NULL),
(14, 'BR014', 9, 'Tipe - X', 'Joyko', '3000', '5000', 'PCS', '46', '1 January 2022, 17:05', NULL),
(15, 'BR015', 10, 'Lulur Mandi', 'Shinzui', '14000', '18000', 'PCS', '30', '3 January 2022, 20:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Alat Kecantikan', '1 January 2022, 16:53'),
(9, 'ATK', '1 January 2022, 16:54'),
(10, 'Peralatan Mandi', '1 January 2022, 16:54');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Mahasiswa Unsika', 'Mata Kuliah Keamanan Sistem', '087618173690', 'mahasiswaUnsika@gmail.com', 'logo.png', '321387634852336');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(10, 'BR014', 1, '1', '5000', '1 January 2022, 17:07', '01-2022'),
(11, 'BR014', 1, '1', '5000', '1 January 2022, 17:07', '01-2022'),
(12, 'BR014', 1, '1', '5000', '1 January 2022, 17:07', '01-2022'),
(13, 'BR014', 1, '1', '5000', '1 January 2022, 17:07', '01-2022'),
(14, 'BR009', 1, '1', '26000', '1 January 2022, 17:24', '01-2022'),
(15, 'BR009', 1, '1', '26000', '1 January 2022, 17:24', '01-2022'),
(16, 'BR005', 1, '1', '3500', '1 January 2022, 17:34', '01-2022');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(27, 'BR005', 1, '1', '3500', '1 January 2022, 17:34');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'CV. Unsika Jaya', 'Jl. HS.Ronggo Waluyo, Puseurjaya, Kec. Telukjambe Tim., Kabupaten Karawang, Jawa Barat 41361', '089618173609', 'Mahasiswa Unsika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
