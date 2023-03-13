-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Mar 2023 pada 01.29
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` int(16) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `name`, `username`, `password`, `telp`) VALUES
(111, 'meong', 'meong', 'meong', 111),
(123, 'maung', 'maung', 'maung', 125),
(125, 'maung', 'maung', 'maung', 125);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pangaduan` int(16) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` int(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','Proses','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pangaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2010-02-23', 321, 'meong congkok', '5.png', 'Selesai'),
(2, '2010-02-23', 321, 'meong congkok', '5.png', 'Selesai'),
(3, '2010-02-23', 321, 'meong congkok', '5.png', 'Selesai'),
(4, '2010-02-23', 321, 'meong congkok', '5.png', 'Selesai'),
(5, '2010-02-23', 123, 'maung na leupas', 'Foodbar.png', 'Selesai'),
(7, '0000-00-00', 123, 'Maung na ganteng', 'Foodbar.png', 'Selesai'),
(8, '2023-02-10', 123, 'Si Maung', '5.png', 'Selesai'),
(9, '0000-00-00', 123, 'Si Maung 2', 'Foodbar.png', 'Selesai'),
(10, '2023-02-10', 123, 'Maung', '5.png', 'Selesai'),
(11, '2023-02-10', 5436457, 'Maung', '5.png', 'Selesai'),
(12, '2023-02-14', 321, 'dasfsdfsdfsdgsdgsd', '5.png', 'Selesai'),
(13, '2023-02-22', 123, 'maung na hiu', 'hiu.jpg', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(16) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'Dian', 'maung', 'maung', 123, 'Admin'),
(2, 'Hardiana', 'meong', 'meong', 321, 'Petugas'),
(3, ' Dian ', ' admin ', ' admin ', 123, 'Petugas'),
(4, 'Hardiana', 'petugas', 'petugas', 1230, 'Petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(16) NOT NULL,
  `id_pengaduan` int(16) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(1, 0, '0000-00-00', ' ', 0),
(2, 1, '2023-02-13', ' sfdggsfdgdg', 3),
(3, 11, '2023-02-13', ' maung', 1),
(4, 2, '2023-02-14', ' meong leuweung', 1),
(5, 3, '2023-02-14', 'maung leutik ', 1),
(6, 7, '2023-02-15', ' si ganteng', 3),
(7, 10, '2023-02-15', ' meong', 1),
(8, 4, '2023-02-15', ' siap', 1),
(9, 12, '2023-02-15', ' dfbfdbgnhgmmjhmjhmh', 1),
(10, 9, '2023-02-15', ' si meong 2', 1),
(11, 5, '2023-02-16', 'maung na cangcang', 1),
(12, 13, '2023-02-22', ' anjay', 1),
(13, 8, '2023-02-25', ' maung na di tewak', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pangaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `nik` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pangaduan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
