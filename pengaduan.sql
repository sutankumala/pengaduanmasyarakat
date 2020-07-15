-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 10:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` char(16) NOT NULL,
  `nama` varchar(36) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('0000000000000000', 'masyarakat', 'masyarakat', 'masyarakat', '000000000'),
('098988989', 'toel', 'toel', 'toel', '089898989898'),
('123', '123', '123', '123', '1211212121212'),
('1234', 'Sutan Kumala', 'sutan2', 'sutan', '089650007015'),
('1234567890123456', 'aku', 'aku', 'aku', '123123'),
('22052002', 'Sutan Kumala', 'sutan', 'sutan', '089650007015'),
('689540361973', 'Yanto Hermawan', 'asd', 'asd', '0896543746694');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` int(11) NOT NULL,
  `nik` char(16) NOT NULL,
  `notifikasi` text NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id_notifikasi`, `nik`, `notifikasi`, `tgl`) VALUES
(5, '22052002', 'Pengaduan anda dengan ID: 31 telah diproses oleh petugas.', '2020-02-24'),
(8, '22052002', 'Pengaduan anda dengan ID: 31 telah Selesai diproses.', '2020-02-24'),
(9, '1234', 'Pengaduan anda dengan ID: 32 sedang diproses oleh petugas.', '2020-02-24'),
(10, '1234', 'Pengaduan anda dengan ID: 32 telah Selesai diproses.', '2020-02-24'),
(12, '22052002', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-24'),
(13, '689540361973', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-24'),
(14, '689540361973', 'Pengaduan anda dengan ID: 36 sedang diproses oleh petugas.', '2020-02-24'),
(15, '22052002', 'Pengaduan anda dengan ID: 35 sedang diproses oleh petugas.', '2020-02-24'),
(16, '22052002', 'Pengaduan anda dengan ID: 35 telah Selesai diproses.', '2020-02-24'),
(17, '123', 'Pengaduan anda dengan ID: 33 sedang diproses oleh petugas.', '2020-02-24'),
(18, '0000000000000000', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-24'),
(19, '689540361973', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-25'),
(20, '689540361973', 'Pengaduan anda dengan ID: 36 telah Selesai diproses.', '2020-02-25'),
(22, '1234', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-25'),
(23, '22052002', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-25'),
(24, '1234', 'Pengaduan anda dengan ID: 39 telah ditanggapi oleh Petugas.', '2020-02-25'),
(25, '689540361973', 'Pengaduan anda dengan ID: 38 telah ditanggapi oleh Petugas.', '2020-02-26'),
(26, '22052002', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-26'),
(27, '22052002', 'Pengaduan anda dengan ID: 41 telah ditanggapi oleh Petugas.', '2020-02-26'),
(28, '098988989', 'Pengaduan anda Berhasil dikirim dan segera diproses oleh Petugas.', '2020-02-26'),
(29, '098988989', 'Pengaduan anda dengan ID: 42 telah ditanggapi oleh Petugas.', '2020-02-26'),
(30, '689540361973', 'Pengaduan anda dengan ID: 38 telah Selesai diproses.', '2020-02-26'),
(31, '22052002', 'Pengaduan anda dengan ID: 40 telah ditanggapi oleh Petugas.', '2020-02-26'),
(32, '22052002', 'Pengaduan anda dengan ID: 40 telah Selesai diproses.', '2020-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(28, '2020-02-23', '1234', 'Ada Masalah Whatsapp', 'whatsapp-icon.png', 'selesai'),
(31, '2020-02-22', '22052002', 'Saya tidak tahu', 'webdev.jpg', 'selesai'),
(32, '2020-02-24', '1234', 'Sebenernya saya Jurusan TSM gan, tapi saya suka sama yang namanya Ngoding', 'indexahs.jpg', 'selesai'),
(33, '2020-02-24', '123', 'Contoh Form Daftar', 'p1-2.png', 'selesai'),
(35, '2020-02-24', '22052002', 'Mengapa Login tidak berhasil ?', 'p2-2.png', 'selesai'),
(36, '2020-02-24', '689540361973', 'cek new user', '20190923_180206.jpg', 'selesai'),
(37, '2020-02-24', '0000000000000000', 'Muka temen gua gini amat :v', 'adminarya.png', '0'),
(38, '2020-02-25', '689540361973', 'Turunkan Harga BBM !', 'ahassmotor.jpg', 'selesai'),
(39, '2020-02-25', '1234', 'Gunakanlah Kalimat yang baku dan benar.\r\nPengaduan Wajib menyertakan Bukti Gambar.\r\nPengaduan hanya bisa dikirim satu kali dalam 24 Jam.\r\nPengaduan yang tidak valid, tidak akan diproses oleh petugas.\r\nPastikan Pengaduan yang anda kirim adalah masalah yang Valid.\r\nBerikanlah Keterangan yang Jelas sebelum mengirim Pengaduan.', 'admin.png', 'proses'),
(40, '2020-02-25', '22052002', 'Debugger data Grafik dan Laporan\r\n', 'catering2.jpg', 'selesai'),
(41, '2020-02-26', '22052002', 'Andreno', 'up.png', 'proses'),
(42, '2020-02-26', '098988989', 'grgfgdrgfdrg', 'admin.png', 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas','nonaktif') NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`, `token`) VALUES
(1, 'Sutan Kumala', 'admin', 'admin', '089650007015', 'admin', '43b69f084a9bbf74cc278d636e29d877'),
(3, 'Rudi Santoso', 'petugas', 'petugas', '081282206093', 'petugas', 'bdb0652e3f202e6f973fe2950339b6f3');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(7, 28, '2020-02-23', 'testokokokokok', 3),
(13, 31, '2020-02-24', 'Saya juga tidak tahu', 1),
(14, 32, '2020-02-24', 'Oke gan Gpp !', 1),
(15, 36, '2020-02-24', 'siap tanggap !', 1),
(16, 35, '2020-02-24', 'Ternyata salah dalam penulisan ;', 1),
(17, 33, '2020-02-24', 'Bener lo gan !', 1),
(18, 39, '2020-02-25', 'Siap boss !', 1),
(19, 38, '2020-02-26', 'header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);', 1),
(20, 41, '2020-02-26', 'header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);header(&quot;Location:?berhasil=proses_ubah&quot;);', 1),
(21, 42, '2020-02-26', 'gshfgjsfgh', 1),
(22, 40, '2020-02-26', 'Tanggapan dari pengaduan masyarakat', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `notifikasi_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`);

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`);

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_1` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`),
  ADD CONSTRAINT `tanggapan_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
