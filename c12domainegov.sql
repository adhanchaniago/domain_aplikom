-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 03:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c12domainegov`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_qr`
--

CREATE TABLE `absen_qr` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_wa` varchar(20) DEFAULT NULL,
  `id_instansi` int(11) DEFAULT 0,
  `id_event` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `key` varchar(128) DEFAULT NULL,
  `sts` tinyint(1) DEFAULT 0 COMMENT '0=belum hadir, 1=sudah hadir',
  `updated_at` datetime DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_qr`
--

INSERT INTO `absen_qr` (`id`, `nama`, `no_wa`, `id_instansi`, `id_event`, `created_at`, `key`, `sts`, `updated_at`, `jabatan`) VALUES
(1, 'Ketua DPRD Kab Kendal', '000000000', 1, 1, '2019-12-09 07:48:36', 'yT5hA', 0, '0000-00-00 00:00:00', NULL),
(2, 'Bupati Batang', '0000000000', 4, 1, '2019-12-09 07:48:39', 'R0qeG', 0, '0000-00-00 00:00:00', NULL),
(3, 'Ketua DPRD Kabupaten Banjarnegara', '000000000', 2, 1, '2019-12-09 07:49:41', 'YEIsA', 0, '0000-00-00 00:00:00', NULL),
(4, 'Ketua DPRD Kabupaten Banyumas', '000000000', 3, 1, '2019-12-09 07:50:04', 'FJuAZ', 0, '0000-00-00 00:00:00', NULL),
(5, 'Ketua DPRD Kabupaten Batang', '000000000', 4, 1, '2019-12-09 07:50:19', '6nkLi', 0, '0000-00-00 00:00:00', NULL),
(6, 'Ketua DPRD Kabupaten Blora', '000000000', 5, 1, '2019-12-09 07:50:41', 'NsK3B', 0, '0000-00-00 00:00:00', NULL),
(7, 'Ketua DPRD Kabupaten Boyolali', '000000000', 6, 1, '2019-12-09 07:51:17', 'J5gyQ', 0, '0000-00-00 00:00:00', NULL),
(8, 'Ketua DPRD Kabupaten Brebes', '000000000', 7, 1, '2019-12-09 07:52:23', 'RY2QT', 0, '0000-00-00 00:00:00', NULL),
(9, 'Ketua DPRD Kabupaten Cilacap', '000000000', 8, 1, '2019-12-09 07:52:52', 'XjSgm', 0, '0000-00-00 00:00:00', NULL),
(10, 'Ketua DPRD Kabupaten Demak', '000000000', 9, 1, '2019-12-09 07:53:34', 'vQOlA', 0, '0000-00-00 00:00:00', NULL),
(11, 'Ketua DPRD Kabupaten Grobogan', '000000000', 10, 1, '2019-12-09 07:53:54', 'Kzbdx', 0, '0000-00-00 00:00:00', NULL),
(12, 'Ketua DPRD Kabupaten Jepara', '000000000', 11, 1, '2019-12-09 07:54:27', 'e6tCm', 0, '0000-00-00 00:00:00', NULL),
(13, 'Ketua DRPD Kabupaten Karanganyar', '000000000', 12, 1, '2019-12-09 07:54:55', 'nf3cF', 0, '0000-00-00 00:00:00', NULL),
(14, 'Bupati Banjarnegara', '0000000000', 2, 1, '2019-12-09 07:55:00', 'WNfz6', 0, '0000-00-00 00:00:00', NULL),
(15, 'Ketua DPRD Kabupaten Kebumen', '000000000', 13, 1, '2019-12-09 07:55:24', 'RPm30', 0, '0000-00-00 00:00:00', NULL),
(16, 'Ketua DPRD Kabupaten Klaten', '000000000', 14, 1, '2019-12-09 07:55:44', 'SEJUL', 0, '0000-00-00 00:00:00', NULL),
(17, 'Ketua DPRD Kabupaten Kudus', '000000000', 15, 1, '2019-12-09 07:56:03', 'RV1n4', 0, '0000-00-00 00:00:00', NULL),
(18, 'Ketua DPRD Kabupaten Kudus', '000000000', 15, 1, '2019-12-09 07:56:22', 'D2LSQ', 0, '0000-00-00 00:00:00', NULL),
(19, 'Bupati Banyumas', '0000000000', 3, 1, '2019-12-09 07:56:32', '5RgO8', 0, '0000-00-00 00:00:00', NULL),
(20, 'Ketua DPRD Kabupaten Magelang', '000000000', 16, 1, '2019-12-09 07:56:39', '3KTwW', 0, '0000-00-00 00:00:00', NULL),
(21, 'Ketua DPRD Kabupaten Pati', '000000000', 17, 1, '2019-12-09 07:56:54', 'YsXUO', 0, '0000-00-00 00:00:00', NULL),
(22, 'Bupati Blora', '0000000000', 5, 1, '2019-12-09 07:57:13', '2CugF', 0, '0000-00-00 00:00:00', NULL),
(23, 'Ketua DPRD Kabupaten Pekalongan', '000000000', 18, 1, '2019-12-09 07:57:13', 'GiK3y', 0, '0000-00-00 00:00:00', NULL),
(24, 'Ketua DPRD Kabupaten Pemalang', '000000000', 19, 1, '2019-12-09 07:57:42', 'iv7YR', 0, '0000-00-00 00:00:00', NULL),
(25, 'Ketua DPRD Kabupaten Purbalingga', '000000000', 20, 1, '2019-12-09 07:58:03', '7mLAQ', 0, '0000-00-00 00:00:00', NULL),
(26, 'Bupati Boyolali', '0000000000', 6, 1, '2019-12-09 07:58:04', 'X2qUi', 0, '0000-00-00 00:00:00', NULL),
(27, 'Ketua DPRD Kabupaten Purworejo', '000000000', 21, 1, '2019-12-09 07:58:23', 'zNEqo', 0, '0000-00-00 00:00:00', NULL),
(28, 'Bupati Brebes', '0000000000', 7, 1, '2019-12-09 07:58:35', 'vRcfM', 0, '0000-00-00 00:00:00', NULL),
(29, 'Ketua DPRD Kabupaten Rembang', '000000000', 22, 1, '2019-12-09 07:58:42', 'ZxAgH', 0, '0000-00-00 00:00:00', NULL),
(30, 'Ketua DPRD Kabupaten Semarang', '000000000', 23, 1, '2019-12-09 07:59:00', 'GgLUi', 0, '0000-00-00 00:00:00', NULL),
(31, 'Bupati Cilacap', '0000000000', 8, 1, '2019-12-09 07:59:07', '7SlOZ', 0, '0000-00-00 00:00:00', NULL),
(32, 'Ketua DPRD Kabupaten Sragen', '000000000', 24, 1, '2019-12-09 07:59:19', 'rwiUq', 0, '0000-00-00 00:00:00', NULL),
(33, 'Bupati Demak', '0000000000', 9, 1, '2019-12-09 07:59:35', 'MxNpb', 0, '0000-00-00 00:00:00', NULL),
(34, 'Ketua DPRD Kabupaten Sukoharjo', '000000000', 25, 1, '2019-12-09 07:59:36', 'uThqv', 0, '0000-00-00 00:00:00', NULL),
(35, 'Ketua DPRD Kabupaten Tegal', '000000000', 26, 1, '2019-12-09 07:59:56', 'xNOCT', 0, '0000-00-00 00:00:00', NULL),
(36, 'Ketua DPRD Kabupaten Temanggung', '000000000', 27, 1, '2019-12-09 08:00:12', 'PcyOL', 0, '0000-00-00 00:00:00', NULL),
(37, 'Bupati Grobogan', '0000000000', 10, 1, '2019-12-09 08:00:26', 'fBst3', 0, '0000-00-00 00:00:00', NULL),
(38, 'Ketua DPRD Kabupaten Wonogiri', '000000000', 28, 1, '2019-12-09 08:00:32', 'kaVB7', 0, '0000-00-00 00:00:00', NULL),
(39, 'Ketua DPRD Kabupaten Wonosobo', '000000000', 29, 1, '2019-12-09 08:00:48', '6FvkI', 0, '0000-00-00 00:00:00', NULL),
(40, 'Bupati Jepara', '0000000000', 11, 1, '2019-12-09 08:00:58', 'gIStV', 0, '0000-00-00 00:00:00', NULL),
(41, 'Ketua DPRD Kota Magelang', '000000000', 30, 1, '2019-12-09 08:01:11', 'Oty5z', 0, '0000-00-00 00:00:00', NULL),
(42, 'Ketua DPRD Kota Pekalongan', '000000000', 31, 1, '2019-12-09 08:01:33', 'AmdYG', 0, '0000-00-00 00:00:00', NULL),
(43, 'Bupati Karanganyar', '0000000000', 12, 1, '2019-12-09 08:01:35', 'Wx7IU', 0, '0000-00-00 00:00:00', NULL),
(44, 'Ketua DPRD Kota Salatiga', '000000000', 32, 1, '2019-12-09 08:01:57', 'nzuUb', 0, '0000-00-00 00:00:00', NULL),
(45, 'Ketua DPRD Kota Semarang', '000000000', 33, 1, '2019-12-09 08:02:18', 'R2tTI', 0, '0000-00-00 00:00:00', NULL),
(46, 'Bupati Kebumen', '0000000000', 13, 1, '2019-12-09 08:02:18', '9vZBg', 0, '0000-00-00 00:00:00', NULL),
(47, 'Ketua DPRD Kota Surakarta', '000000000', 34, 1, '2019-12-09 08:02:39', '3Epoz', 0, '0000-00-00 00:00:00', NULL),
(48, 'Bupati Kendal', '0000000000', 1, 1, '2019-12-09 08:02:49', 'yU9zF', 0, '0000-00-00 00:00:00', NULL),
(49, 'Ketua DPRD Kota Tegal', '000000000', 35, 1, '2019-12-09 08:03:00', '7sLZo', 0, '0000-00-00 00:00:00', NULL),
(50, 'Ketua DPRD Provinsi Jawa Tengah', '000000000', 37, 1, '2019-12-09 08:03:27', '8ILrZ', 0, '0000-00-00 00:00:00', NULL),
(51, 'Bupati Klaten', '0000000000', 14, 1, '2019-12-09 08:04:21', 'QBmOh', 0, '0000-00-00 00:00:00', NULL),
(52, 'Bupati Kudus', '0000000000', 15, 1, '2019-12-09 08:05:09', '81OFk', 0, '0000-00-00 00:00:00', NULL),
(53, 'Bupati Magelang', '0000000000', 16, 1, '2019-12-09 08:07:39', 'ACJnp', 0, '0000-00-00 00:00:00', NULL),
(54, 'Bupati Pati', '0000000000', 17, 1, '2019-12-09 08:09:24', 'RCyVr', 0, '0000-00-00 00:00:00', NULL),
(55, 'Bupati Pekalongan', '0000000000', 18, 1, '2019-12-09 08:23:17', 'c5VQM', 0, '0000-00-00 00:00:00', NULL),
(56, 'Bupati Pemalang', '0000000000', 19, 1, '2019-12-09 08:23:52', '8jGV0', 0, '0000-00-00 00:00:00', NULL),
(57, 'Bupati Purbalingga', '0000000000', 20, 1, '2019-12-09 08:24:22', 'MbEB3', 0, '0000-00-00 00:00:00', NULL),
(58, 'Bupati Purworejo', '0000000000', 21, 1, '2019-12-09 08:24:46', 'z1JDv', 0, '0000-00-00 00:00:00', NULL),
(59, 'Bupati Rembang', '0000000000', 22, 1, '2019-12-09 08:25:06', 'XAQSD', 0, '0000-00-00 00:00:00', NULL),
(60, 'Bupati Semarang', '0000000000', 23, 1, '2019-12-09 08:25:29', 'Rmh4F', 0, '0000-00-00 00:00:00', NULL),
(61, 'Bupati Sragen', '0000000000', 24, 1, '2019-12-09 08:25:45', 'GuDKh', 0, '0000-00-00 00:00:00', NULL),
(62, 'Bupati Sukoharjo', '0000000000', 25, 1, '2019-12-09 08:26:11', 'VLvcg', 0, '0000-00-00 00:00:00', NULL),
(63, 'Bupati Tegal', '0000000000', 26, 1, '2019-12-09 08:26:30', 'x8CXr', 0, '0000-00-00 00:00:00', NULL),
(64, 'Bupati Temanggung', '0000000000', 27, 1, '2019-12-09 08:26:45', '9Ef70', 0, '0000-00-00 00:00:00', NULL),
(65, 'Bupati Wonogiri', '0000000000', 28, 1, '2019-12-09 08:27:18', 'Dq9mu', 0, '0000-00-00 00:00:00', NULL),
(66, 'Bupati Wonosobo', '0000000000', 29, 1, '2019-12-09 08:27:38', 'ODdxK', 0, '0000-00-00 00:00:00', NULL),
(68, 'Galla', '82138531751', 37, 1, '2019-12-10 00:55:25', '1NSWm', 0, '0000-00-00 00:00:00', NULL),
(71, 'Cokro Aminoto', '08112606529', 13, 1, '2019-12-10 01:08:43', 'ELzf2', 0, '0000-00-00 00:00:00', NULL),
(72, 'dr. TRI KUNCORO, M.M.R', '08170411273', 37, 1, '2019-12-10 01:13:35', 'jWRhF', 1, '2019-12-11 07:18:19', NULL),
(73, 'Johari SH', '085842222850', 7, 1, '2019-12-10 01:14:36', 'Ss4FR', 1, '2019-12-11 08:42:48', NULL),
(74, 'Drs. Catur Budi Fajar S.MM', '081578589422', 30, 1, '2019-12-10 01:38:43', 'DpclO', 0, '0000-00-00 00:00:00', NULL),
(75, 'Yunita Dyah Suminar, SKM, M.Sc, M.Si.', '08122757141', 37, 1, '2019-12-10 01:42:11', 'umaOW', 1, '2019-12-11 07:22:12', NULL),
(76, 'Ir. Wartono', '081332855755', 22, 1, '2019-12-10 01:45:38', 't9qmf', 0, '0000-00-00 00:00:00', NULL),
(77, 'Ir. Wartono', '081332855755', 22, 1, '2019-12-10 01:45:40', 'vVNQB', 0, '0000-00-00 00:00:00', NULL),
(78, 'Yos Rosyidi, S.I.P., M.si', '08122664343', 31, 1, '2019-12-10 01:46:51', 'E3Jld', 0, '0000-00-00 00:00:00', NULL),
(79, 'Nurul Indrawati, SH, MH', '085727905075', 31, 1, '2019-12-10 01:48:53', 'I5NSk', 0, '0000-00-00 00:00:00', NULL),
(80, 'Teguh Adrianto', '082322997660', 31, 1, '2019-12-10 01:52:44', 'jz2Mc', 0, '0000-00-00 00:00:00', NULL),
(81, 'GallaCoba', '000000000000', 1, 1, '2019-12-10 01:55:45', 'HI23Y', 0, '0000-00-00 00:00:00', NULL),
(82, 'Tamu001-DPRD/Pemerintah Kabupaten Kendal', '000000000', 1, 1, '2019-12-10 01:56:58', 'zBtDV', 0, '0000-00-00 00:00:00', NULL),
(83, 'Galla Coba', '082138531753', 1, 1, '2019-12-10 02:00:20', 'HEY9L', 0, '0000-00-00 00:00:00', NULL),
(84, 'Tamu001-DPRD/Pemerintah Kabupaten Kendal', '000000000', 1, 1, '2019-12-10 02:06:56', '5Ffij', 0, '0000-00-00 00:00:00', NULL),
(85, 'Dina Arsita Widiari', '000000000', 1, 1, '2019-12-10 02:07:10', 'KEDnJ', 1, '2019-12-11 07:33:25', 'Bagian Organisasi Setda'),
(86, 'Tamu003-DPRD/Pemerintah Kabupaten Kendal', '000000000', 1, 1, '2019-12-10 02:07:25', 'EOpi5', 1, '2019-12-10 05:17:02', NULL),
(87, 'Tamu001-DPRD/Pemerintah Kabupaten Kendal', '000000000', 2, 1, '2019-12-10 02:08:14', 'j1kgK', 0, '0000-00-00 00:00:00', NULL),
(88, 'Nila Mada Sofia, S.STP, MM', '0000000000', 26, 1, '2019-12-10 02:09:15', 'x8Re0', 1, '2019-12-11 03:18:05', 'Bagian Organisasi'),
(89, 'Tamu002-DPRD/Pemerintah Kabupaten Kendal', '0000000000', 26, 1, '2019-12-10 02:10:04', 'fNjU2', 1, '2019-12-10 05:13:55', NULL),
(90, 'Tamu003-DPRD/Pemerintah Kabupaten Kendal', '0000000000', 26, 1, '2019-12-10 02:10:32', '6baJB', 1, '2019-12-10 05:16:54', NULL),
(91, 'Tamu001-DPRD/PemerintahKabTemanggung', '0000000000', 27, 1, '2019-12-10 02:10:56', 'OvI1K', 1, '2019-12-10 05:14:00', NULL),
(92, 'Khadir', '000000000', 2, 1, '2019-12-10 02:15:33', 'fQmyx', 1, '2019-12-11 07:46:23', 'Kepala Seksi PI'),
(93, 'Tamu003-DPRDKabBanjarnegara', '000000000', 2, 1, '2019-12-10 02:18:21', 'q4lJL', 1, '2019-12-11 08:20:31', NULL),
(94, 'Imam Mukhlis', '000000000', 3, 1, '2019-12-10 02:20:36', 'Gscie', 1, '2019-12-11 07:31:35', 'Dinas Arpusda'),
(95, 'Tamu002-DPRDKabBanyumas', '000000000', 3, 1, '2019-12-10 02:21:08', 'gf6ac', 0, '0000-00-00 00:00:00', NULL),
(96, 'Tamu003-DPRDKabBanyumas', '000000000', 3, 1, '2019-12-10 02:21:37', 'mKFsY', 0, '0000-00-00 00:00:00', NULL),
(97, 'Suci', '000000000', 4, 1, '2019-12-10 02:21:58', 'WYXpM', 1, '2019-12-11 07:32:06', 'Kabag Orpeg'),
(98, 'Tamu002-DPRDKabBatang', '000000000', 4, 1, '2019-12-10 02:22:23', 'TLl0a', 0, '0000-00-00 00:00:00', NULL),
(99, 'Tamu003-DPRDKabBatang', '000000000', 4, 1, '2019-12-10 02:22:35', 'Czc2i', 0, '0000-00-00 00:00:00', NULL),
(100, 'Tamu002-DPRDKabTemanggung', '0000000000', 27, 1, '2019-12-10 02:25:19', 'v0xJH', 0, '0000-00-00 00:00:00', NULL),
(101, 'Tamu003-DPRDKabTemanggung', '0000000000', 27, 1, '2019-12-10 02:25:48', 'hkp3F', 0, '0000-00-00 00:00:00', NULL),
(102, 'Tamu001-DPRDKabBlora', '000000000', 5, 1, '2019-12-10 02:25:50', 'yua3p', 1, '2019-12-11 07:00:40', NULL),
(103, 'Tamu002-DPRDKabBlora', '000000000', 5, 1, '2019-12-10 02:26:16', 'LijNB', 0, '0000-00-00 00:00:00', NULL),
(104, 'Tamu001-DPRDKabWonogiri', '0000000000', 28, 1, '2019-12-10 02:26:24', 'rcB5d', 0, '0000-00-00 00:00:00', NULL),
(105, 'Tamu003-DPRDKab', '000000000', 5, 1, '2019-12-10 02:26:31', 'bEyXp', 0, '0000-00-00 00:00:00', NULL),
(106, 'Tamu002-DPRDKabWonogiri', '0000000000', 28, 1, '2019-12-10 02:26:43', '9eSHZ', 0, '0000-00-00 00:00:00', NULL),
(107, 'Abdul Rahman', '000000000', 6, 1, '2019-12-10 02:26:56', 'fZ8oa', 0, '0000-00-00 00:00:00', 'Kepala Diskominfo Boyolali'),
(108, 'Tamu003-DPRDKabWonogiri', '00000000000', 28, 1, '2019-12-10 02:26:58', 't6lZI', 0, '0000-00-00 00:00:00', NULL),
(109, 'Tamu002-DPRDKabBoyolali', '000000000', 6, 1, '2019-12-10 02:27:15', 'fTsKM', 0, '0000-00-00 00:00:00', NULL),
(110, 'Tamu001-DPRDKabWonosobo', '0000000000', 29, 1, '2019-12-10 02:27:22', 'Z2am7', 0, NULL, NULL),
(111, 'Tamu003-DPRDKabBoyolali', '000000000', 6, 1, '2019-12-10 02:27:36', 'kY9QR', 0, '0000-00-00 00:00:00', NULL),
(112, 'Tamu002-DPRDKabWonosobo', '0000000000', 29, 1, '2019-12-10 02:27:49', 'nk6p9', 0, '0000-00-00 00:00:00', NULL),
(113, 'Tamu001-DPRDKabBrebes', '000000000', 7, 1, '2019-12-10 02:27:57', 'ugzb8', 0, '0000-00-00 00:00:00', NULL),
(114, 'Tamu003-DPRDKabWonosobo', '00000000000', 29, 1, '2019-12-10 02:28:09', 'vd0Tf', 0, '0000-00-00 00:00:00', NULL),
(115, 'Tamu002-DPRDKabBrebes', '000000000', 7, 1, '2019-12-10 02:28:17', 'WujMY', 0, '0000-00-00 00:00:00', NULL),
(116, 'Tamu003-DPRDKabBrebes', '000000000', 7, 1, '2019-12-10 02:28:35', 'SiMba', 0, '0000-00-00 00:00:00', NULL),
(117, 'Tamu001-DPRDKotaMagelang', '0000000000', 30, 1, '2019-12-10 02:29:01', 'j0ln6', 0, '0000-00-00 00:00:00', NULL),
(118, 'Andri Leonard', '000000000', 8, 1, '2019-12-10 02:29:15', 'D0A6s', 1, '2019-12-11 07:41:40', 'Anggota DPRD'),
(119, 'Tamu002-DPRDKotaMagelang', '0000000000', 30, 1, '2019-12-10 02:29:23', 'pVolu', 1, '2019-12-11 08:20:02', NULL),
(120, 'Tamu002-DPRDKabCilacap', '000000000', 8, 1, '2019-12-10 02:29:41', 'McZp5', 0, '0000-00-00 00:00:00', NULL),
(121, 'Tamu003-DPRDKotaMagelang', '0000000000', 30, 1, '2019-12-10 02:29:47', 'cti0a', 0, '0000-00-00 00:00:00', NULL),
(122, 'Tamu003-DPRDKabCilacap', '000000000', 8, 1, '2019-12-10 02:30:00', 'zPldq', 0, '0000-00-00 00:00:00', NULL),
(123, 'Tamu001-DPRDKabDemak', '000000000', 9, 1, '2019-12-10 02:30:19', 'XHrKk', 0, '0000-00-00 00:00:00', NULL),
(124, 'M. Soelang Machfudz', '0000000000', 31, 1, '2019-12-10 02:30:28', 'naYh1', 1, '2019-12-11 07:35:05', 'Walikota'),
(125, 'Arif Karyadi', '0000000000', 31, 1, '2019-12-10 02:30:53', 'avzYk', 1, '2019-12-11 07:35:50', 'Kabag Organisasi'),
(126, 'Tamu002-DPRDKabDemak', '000000000', 9, 1, '2019-12-10 02:31:01', 'sNkVE', 0, '0000-00-00 00:00:00', NULL),
(127, 'Tamu003-DPRDKotaPekalongan', '0000000000', 31, 1, '2019-12-10 02:31:16', 'CwHvW', 0, '0000-00-00 00:00:00', NULL),
(128, 'Tamu003-DPRDKabDemak', '000000000', 9, 1, '2019-12-10 02:31:16', 'bvR3Q', 0, '0000-00-00 00:00:00', NULL),
(129, 'Muh Susilo', '000000000', 10, 1, '2019-12-10 02:31:37', 'Cp1ej', 1, '2019-12-11 07:04:27', 'Kepala Disdukcapil'),
(130, 'Tamu002-DPRDKabGrobogan', '000000000', 10, 1, '2019-12-10 02:31:55', '5fIkc', 0, '0000-00-00 00:00:00', NULL),
(131, 'Tamu001-DPRDKotaSalatiga', '0000000000', 32, 1, '2019-12-10 02:31:57', 'cDl46', 0, '0000-00-00 00:00:00', NULL),
(132, 'Tamu002-DPRDKotaSalatiga', '0000000000', 32, 1, '2019-12-10 02:32:18', 'Q9vBi', 0, '0000-00-00 00:00:00', NULL),
(133, 'Tamu003-DPRDKabGrobogan', '000000000', 10, 1, '2019-12-10 02:32:29', 'fhQaG', 0, '0000-00-00 00:00:00', NULL),
(134, 'Tamu003-DPRDKotaSalatiga', '0000000000', 32, 1, '2019-12-10 02:32:38', 'MngpF', 0, '0000-00-00 00:00:00', NULL),
(135, 'Tamu001-DPRDKotaSemarang', '0000000000', 33, 1, '2019-12-10 02:33:17', '3UvB5', 0, '0000-00-00 00:00:00', NULL),
(136, 'Tamu001-DPRDKabJepara', '000000000', 11, 1, '2019-12-10 02:33:30', 'ZWyfL', 0, '0000-00-00 00:00:00', NULL),
(137, 'Tamu002-DPRDKotaSemarang', '0000000000', 33, 1, '2019-12-10 02:33:40', 'GA3Wj', 0, '0000-00-00 00:00:00', NULL),
(138, 'Tamu002-DPRDKabJepara', '000000000', 11, 1, '2019-12-10 02:33:49', 'J0EbQ', 1, '2019-12-11 07:04:46', NULL),
(139, 'Tamu003-DPRDKotaSemarang', '0000000000', 33, 1, '2019-12-10 02:33:58', 'Se8Ji', 0, '0000-00-00 00:00:00', NULL),
(140, 'Tamu003-DPRDKabJepara', '000000000', 11, 1, '2019-12-10 02:34:16', '3f1MO', 0, '0000-00-00 00:00:00', NULL),
(141, 'Tamu001-DPRDKotaSurakarta', '0000000000', 34, 1, '2019-12-10 02:34:31', 'CjwlY', 0, '0000-00-00 00:00:00', NULL),
(142, 'Tamu002-DPRDKotaSurakarta', '0000000000', 34, 1, '2019-12-10 02:34:47', 'TVn8W', 0, '0000-00-00 00:00:00', NULL),
(143, 'Tamu003-DPRDKotaSurakarta', '0000000000', 34, 1, '2019-12-10 02:35:05', 'bD10k', 0, '0000-00-00 00:00:00', NULL),
(144, 'Tamu001-DPRDKotaTegal', '0000000000', 35, 1, '2019-12-10 02:35:52', 'Wpr0a', 0, '0000-00-00 00:00:00', NULL),
(145, 'Tamu002-DPRDKotaTegal', '0000000000', 35, 1, '2019-12-10 02:36:11', 'SlvQa', 0, NULL, NULL),
(146, 'Dwi Ampera', '000000000', 12, 1, '2019-12-10 02:36:15', 'D6Oxu', 1, '2019-12-11 07:33:07', 'Kabag Organisasi'),
(147, 'Tamu003-DPRDKotaTegal', '00000000000', 35, 1, '2019-12-10 02:36:31', 'JtAhr', 0, '0000-00-00 00:00:00', NULL),
(148, 'Tamu002-DPRDKabKaranganyar', '000000000', 12, 1, '2019-12-10 02:36:32', 'e9tsi', 0, '0000-00-00 00:00:00', NULL),
(149, 'Tamu003-DPRDKabKaranganyar', '000000000', 12, 1, '2019-12-10 02:36:52', 'aDCOu', 0, '0000-00-00 00:00:00', NULL),
(150, 'Ari Satria', '0000000000', 37, 1, '2019-12-10 02:37:19', '05QLj', 1, '2019-12-11 08:34:58', 'Staf Umum'),
(151, 'Tamu002-DPRDProvinsiJateng', '0000000000', 37, 1, '2019-12-10 02:37:36', 'z7NZV', 0, '0000-00-00 00:00:00', NULL),
(152, 'Tamu003-DPRDProvinsiJateng', '0000000000', 37, 1, '2019-12-10 02:37:52', 'VDATj', 0, '0000-00-00 00:00:00', NULL),
(153, 'Tamu001-DPRDKabSukoharjo', '0000000000', 25, 1, '2019-12-10 02:39:26', 'Yni1H', 0, '0000-00-00 00:00:00', NULL),
(154, 'Tamu002-DPRDKabSukoharjo', '0000000000', 25, 1, '2019-12-10 02:39:45', 'nKRec', 0, '0000-00-00 00:00:00', NULL),
(155, 'Tamu003-DPRDKabSukoharjo', '0000000000', 25, 1, '2019-12-10 02:40:01', '6T3AF', 0, '0000-00-00 00:00:00', NULL),
(156, 'Tamu001-DPRDKabSragen', '0000000000', 24, 1, '2019-12-10 02:40:22', 'FiuDf', 1, '2019-12-11 07:20:57', NULL),
(157, 'Tamu002-DPRDKabSragen', '0000000000', 24, 1, '2019-12-10 02:40:39', '0sbIP', 0, '0000-00-00 00:00:00', NULL),
(158, 'Tamu003-DPRDKabSragen', '0000000000', 24, 1, '2019-12-10 02:41:09', '2RXK7', 0, '0000-00-00 00:00:00', NULL),
(159, 'Tamu001-DPRDKabKebumen', '000000000', 13, 1, '2019-12-10 02:41:18', 'BMhot', 0, '0000-00-00 00:00:00', NULL),
(160, 'Tri Martono', '0000000000', 23, 1, '2019-12-10 02:41:38', 'BXY7W', 1, '2019-12-11 07:31:19', 'Kabag Organisasi'),
(161, 'Tamu002-DPRDKabKebumen', '000000000', 13, 1, '2019-12-10 02:41:41', 'dpYJe', 0, '0000-00-00 00:00:00', NULL),
(162, 'Tamu002-DPRDKabSemarang', '0000000000', 23, 1, '2019-12-10 02:41:52', 's5EXN', 0, '0000-00-00 00:00:00', NULL),
(163, 'Tamu003-DPRDKabKebumen', '000000000', 13, 1, '2019-12-10 02:41:59', 'ACsU8', 0, '0000-00-00 00:00:00', NULL),
(164, 'Tamu003-DPRDKabSemarang', '0000000000', 23, 1, '2019-12-10 02:42:09', 'Ea8n0', 0, '0000-00-00 00:00:00', NULL),
(165, 'Yuli Budi Susilowati', '000000000', 14, 1, '2019-12-10 02:42:21', 'V20QB', 1, '2019-12-11 07:26:00', 'Bagian Pemerintah Klaten'),
(166, 'Afan', '0000000000', 22, 1, '2019-12-10 02:42:36', 'wUAyF', 0, '0000-00-00 00:00:00', 'Kabag Organisasi'),
(167, 'Tamu002-DPRDKabKlaten', '000000000', 14, 1, '2019-12-10 02:42:37', 'ICb5s', 0, '0000-00-00 00:00:00', NULL),
(168, 'Tamu003-DPRDKabKlaten', '000000000', 14, 1, '2019-12-10 02:42:54', 'x5pYR', 0, '0000-00-00 00:00:00', NULL),
(169, 'Wartono', '0000000000', 22, 1, '2019-12-10 02:42:55', 'Fe42b', 1, '2019-12-11 08:37:52', 'Kadis Kominfo Rembanga'),
(170, 'Tamu001-DPRDKabKudus', '000000000', 15, 1, '2019-12-10 02:43:12', 'g87a5', 1, '2019-12-11 07:14:35', NULL),
(171, 'Tamu003-DPRDKabRembang', '0000000000', 22, 1, '2019-12-10 02:43:13', '7fK0w', 0, '0000-00-00 00:00:00', NULL),
(172, 'Tamu002-DPRDKabKudus', '000000000', 15, 1, '2019-12-10 02:43:27', '9jUtT', 0, '0000-00-00 00:00:00', NULL),
(173, 'Tamu003-DPRDKabKudus', '000000000', 15, 1, '2019-12-10 02:43:48', 'xT1cR', 0, '0000-00-00 00:00:00', NULL),
(174, 'Dion Agasi Setyabudi', '0000000000', 21, 1, '2019-12-10 02:43:52', 'yQIEa', 1, '2019-12-11 07:44:34', 'Ketua DPRD Purworejo'),
(175, 'Tamu002-DPRDKabPurworejo', '0000000000', 21, 1, '2019-12-10 02:44:07', 'lLFtA', 0, '0000-00-00 00:00:00', NULL),
(176, 'HN Soleh Nurkholis, SIP', '000000000', 16, 1, '2019-12-10 02:44:13', 'MinXO', 1, '2019-12-11 07:24:12', 'Wakil Ketua DPR'),
(177, 'Tamu002-DPRDKabMagelang', '000000000', 16, 1, '2019-12-10 02:44:29', 'LMKrI', 1, '2019-12-11 08:20:12', NULL),
(178, 'Tamu003-DPRDKabPurworejo', '00000000000', 21, 1, '2019-12-10 02:44:39', 'pCmHs', 0, '0000-00-00 00:00:00', NULL),
(179, 'Tamu003-DPRDKabMagelang', '000000000', 16, 1, '2019-12-10 02:45:03', 'XbYJL', 0, '0000-00-00 00:00:00', NULL),
(180, 'Tamu001-DPRDKabPurbalingga', '0000000000', 20, 1, '2019-12-10 02:45:10', 'x06t4', 0, '0000-00-00 00:00:00', NULL),
(181, 'Tamu002-DPRDKabPurbalingga', '0000000000', 20, 1, '2019-12-10 02:45:30', 'ArNow', 0, '0000-00-00 00:00:00', NULL),
(182, 'Tamu003-DPRDKabPurbalingga', '0000000000', 20, 1, '2019-12-10 02:45:48', 'JFrX8', 0, '0000-00-00 00:00:00', NULL),
(183, 'Tamu001-DPRDKabPati', '000000000', 17, 1, '2019-12-10 02:45:50', 'i1DsT', 0, '0000-00-00 00:00:00', NULL),
(184, 'Tamu002-DPRDKabPati', '000000000', 17, 1, '2019-12-10 02:46:03', 'GHDPF', 0, '0000-00-00 00:00:00', NULL),
(185, 'Tamu001-DPRDKabPemalang', '0000000000', 19, 1, '2019-12-10 02:46:14', 'uV7mq', 1, '2019-12-11 07:22:00', NULL),
(186, 'Tamu003-DPRDKabPati', '000000000', 17, 1, '2019-12-10 02:46:19', '3ktBC', 0, '0000-00-00 00:00:00', NULL),
(187, 'Tamu002-DPRDKabPemalang', '0000000000', 19, 1, '2019-12-10 02:46:35', 'dPtix', 1, '2019-12-11 07:22:23', NULL),
(188, 'Tamu001-DPRDKabPekalongan', '000000000', 18, 1, '2019-12-10 02:46:45', 'iuVtA', 0, '0000-00-00 00:00:00', NULL),
(189, 'Tamu003-DPRDKabPemalang', '00000000000', 19, 1, '2019-12-10 02:46:59', 'xJT4W', 0, '0000-00-00 00:00:00', NULL),
(190, 'Tamu002-DPRDKabPekalongan', '000000000', 18, 1, '2019-12-10 02:47:04', 'OtjHw', 1, '2019-12-11 08:20:07', NULL),
(191, 'Tamu003-DPRDKabPekalongan', '000000000', 18, 1, '2019-12-10 02:47:18', 'tioIH', 0, '0000-00-00 00:00:00', NULL),
(192, 'Johari, SH', '085842222850', 59, 1, '2019-12-10 02:50:18', 'aKzTD', 1, '2019-12-11 07:34:05', NULL),
(193, 'Heru Nur Iswantoro S.Sos MM', '082225390463', 28, 1, '2019-12-10 02:53:26', '7Ha6D', 1, '2019-12-11 07:00:14', NULL),
(194, 'Narjo, SH, MH', '081542022222', 7, 1, '2019-12-10 03:47:03', 'gSFHL', 1, '2019-12-11 07:33:59', NULL),
(195, 'Drs. Khaerul Abidin, MM', '081911454325', 7, 1, '2019-12-10 03:55:13', 'XlEdk', 1, '2019-12-11 07:38:21', NULL),
(196, 'Drs.J Abdul Naser, MM', '081229705447', 56, 1, '2019-12-10 04:12:19', '3iMhS', 1, '2019-12-11 08:21:12', 'Kepala Diskominfo Kab Batang'),
(198, 'Endang Susilowati ', '081325343438', 9, 1, '2019-12-10 04:26:06', 'nxPTl', 1, '2019-12-11 08:01:13', 'Kasubbag Otda dan Kerja Sama '),
(199, 'H.DEDY YON SUPRIYONO,SE.MM', '085290994084', 35, 1, '2019-12-10 04:33:11', 'RcimX', 0, '0000-00-00 00:00:00', 'Walikota'),
(200, 'H.DEDY YON SUPRIYONO,SE.MM', '085290994084', 35, 1, '2019-12-10 04:33:44', 'b5wnA', 0, '0000-00-00 00:00:00', 'Walikota'),
(201, 'Drs.Diding Setiadi S', '081803954357', 59, 1, '2019-12-10 04:46:34', 'FTedK', 0, '0000-00-00 00:00:00', 'Kepala Dinas Budpar Kab. Brebes'),
(202, 'Maryono', '081215133355', 12, 1, '2019-12-10 04:48:02', 'IhVqU', 1, '2019-12-11 07:22:22', 'Kasubbag bina pemerintahan'),
(203, 'Drs. HAROE SRI SADONO, M.Pd', '081326828880', 59, 1, '2019-12-10 04:50:08', 'dPg4p', 1, '2019-12-11 08:28:24', 'Kasubag Program dan Keuangan Dinbudpar Brebes'),
(204, 'Drs. DIDING SETIADI, S', '081803954357', 59, 1, '2019-12-10 04:52:54', 'V5NfF', 1, '2019-12-11 08:28:16', 'Kepala Dinbudpar Brebes'),
(205, 'Agung Budiman, S.Sos, MM', '085869656850', 7, 1, '2019-12-10 04:59:13', 'xMSBb', 0, '0000-00-00 00:00:00', 'Kabag Hubungan antar Lembaga dan Kerjasama'),
(206, 'Lusiana Indira Isni, S.Sos, M.Ikom', '08156522007', 59, 1, '2019-12-10 05:01:01', 'kvSUQ', 1, '2019-12-11 07:33:52', 'Kabid Komunikasi dan kehumasan '),
(207, 'Bayu Arfi', '085640624062', 59, 1, '2019-12-10 05:04:53', 'hADEx', 1, '2019-12-11 07:34:12', 'Staf'),
(208, 'Triyamto Sutrisno, S.STP', '081392420088', 30, 1, '2019-12-10 05:05:10', 'iT3yX', 1, '2019-12-11 07:25:51', 'Kepala Bagian Tata Pemerintahan Kota Magelang'),
(209, 'Yuli Hastuti.SH.', '081325532999', 21, 1, '2019-12-10 05:08:13', 'K1tAg', 0, '0000-00-00 00:00:00', 'Wakil Bupati Purworejo'),
(210, 'Drs Catur Budi Fajar S, MM', '081578589422', 30, 1, '2019-12-10 05:09:19', 'Ypsf7', 1, '2019-12-11 07:32:48', 'Kepala Dinas Komunikasi, Informatika dan Statistik Kota Magelang'),
(211, 'Sri setyowati.SH.MM', '081227886666', 21, 1, '2019-12-10 05:13:07', 'ayjUp', 0, '0000-00-00 00:00:00', 'Kepala Bagian Pemerintahan setda Purworejo'),
(212, 'DJOKO SETYONO, S.Sos', '085640630510', 3, 1, '2019-12-10 05:13:43', 'gs61J', 1, '2019-12-11 07:53:04', 'Kepala Bagian Tata Pemerintahan'),
(213, 'MIRANTI, S.STP', '085290500220', 17, 1, '2019-12-10 05:14:52', 'Ue9Vc', 1, '2019-12-11 07:23:54', 'Kasubbag Kerjasama dan Otda Setda Kab.Pati'),
(214, 'Adi Fitra', '085799635393', 38, 1, '2019-12-10 05:15:11', 'vq2xH', 1, '2019-12-11 07:34:12', 'Direktur Utama'),
(215, 'Eling bangun wahyudi', '081915376266', 12, 1, '2019-12-10 05:18:11', 'EF7u2', 1, '2019-12-11 07:22:09', 'Bagian pemerintahan kab karanganyar'),
(216, 'Dion Agasi Setia Budi Sikom.MSi', '082133899229', 21, 1, '2019-12-10 05:23:48', 'v1ifE', 0, '0000-00-00 00:00:00', 'Ketua DPRD Kab.Purworejo'),
(217, 'Dion Agasi Setia Budi Sikom.MSi', '082133899229', 21, 1, '2019-12-10 05:24:11', 'aqFlO', 0, '0000-00-00 00:00:00', 'Ketua DPRD Kab.Purworejo'),
(218, 'ARIS Eko Purnomo', '081280005549', 15, 1, '2019-12-10 05:27:04', '2hmD9', 0, '0000-00-00 00:00:00', 'Pelaksana pada Bagian Tata Pemerintahan'),
(219, 'ENI SUHARYATI', '085747751623', 17, 1, '2019-12-10 05:29:01', 'L2UcK', 1, '2019-12-11 07:27:38', 'Kasubbag Ketatalaksanaan Setda Kab.Pati'),
(220, 'Drs. A.A. Triko Irianto, M.Si', '081280005549', 15, 1, '2019-12-10 05:29:07', 'T4DZq', 1, '2019-12-11 07:19:52', 'Kepala Bagian Tata Pemerintahan'),
(221, 'ANIS ROSIDI, S.SOS., M.SI', '08156536119', 70, 1, '2019-12-10 05:29:28', 'IQAUa', 1, '2019-12-11 08:21:50', 'Kepala Dinas'),
(222, 'Drs. MARKUS WAHYU PRIYONO', '085786931970', 35, 1, '2019-12-10 05:31:54', 'hO1tV', 0, '0000-00-00 00:00:00', 'Kepala Dinas Komunikasi dan Informatika Kota Tegal'),
(223, 'Ir. ARIEF FRIYOGA, CES', '081363557958', 37, 1, '2019-12-10 05:32:33', 'dSETR', 1, '2019-12-11 07:19:04', 'Plt Kepala Dinas'),
(224, 'M. ISMAIL FAHMI, S.IP, M.Si.', '08156661585', 35, 1, '2019-12-10 05:34:24', 'Iz3gN', 0, '0000-00-00 00:00:00', 'KEPALA BAGIAN ORGANISASI'),
(225, 'Dra. Rini Kartika Hadi Ahmadi', '081280005549', 15, 1, '2019-12-10 05:37:01', 'urzIW', 0, '0000-00-00 00:00:00', 'Kepala Bagian Organisasi'),
(226, 'Endah Hana Rosanti', '081326691218', 21, 1, '2019-12-10 05:37:05', 'XqUuA', 0, '0000-00-00 00:00:00', 'Kasubag otda '),
(227, 'Taufik Bagus Setyoko', '085647105111', 21, 1, '2019-12-10 05:38:48', 'IEjFq', 0, '0000-00-00 00:00:00', 'Kasubag kerjasama'),
(228, 'ILHAM PRASETYO, S.Sos, M.Si.', '08156661585', 35, 1, '2019-12-10 05:40:17', 'TFYZl', 0, '0000-00-00 00:00:00', 'KEPALA BAGIAN PEMERINTAHAN DAN KERJASAMA DAERAH'),
(229, 'INDRIYANTO, SH, M.Si', '08156539228', 17, 1, '2019-12-10 05:40:47', 'KEofd', 0, '0000-00-00 00:00:00', 'Kepala Dinas Komunikasi dan Informatika Kab.Pati'),
(230, 'dr. SRI PRIMAWATI INDRASWARI, Sp.KK., MM., ', '08156661585', 35, 1, '2019-12-10 05:41:42', 'l5Xy4', 1, '2019-12-11 07:44:48', 'KEPALA DINAS KESEHATAN'),
(231, 'BASUKI, SE., M.M.', '08156661585', 35, 1, '2019-12-10 05:43:30', '2bcFL', 1, '2019-12-11 07:13:20', 'KEPALA DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL'),
(232, 'Stephanus Aan SSTP.MSi', '082138208000', 73, 1, '2019-12-10 05:43:52', 'IwYkd', 0, '0000-00-00 00:00:00', 'Plt .Dinas Komunikasi dan Informasi'),
(233, 'DEDY YON SUPRIYONO', '085290994084', 35, 1, '2019-12-10 05:45:08', '4eqac', 0, '0000-00-00 00:00:00', 'WALI KOTA TEGAL'),
(234, 'AGUS ARIFIN, AP', '08156661585', 35, 1, '2019-12-10 05:47:48', 'T2cRV', 0, '0000-00-00 00:00:00', 'KEPALA BAGIAN UMUM'),
(235, 'AGENG GIGIH LEKSONO, S.STP', '08156661585', 35, 1, '2019-12-10 05:55:32', 'BNvr3', 0, '0000-00-00 00:00:00', 'AJUDAN WALI KOTA'),
(236, 'Dessy Arifianto', '085642969300', 78, 1, '2019-12-10 05:56:32', '5URO6', 1, '2019-12-11 07:43:16', 'Kepala Dinas '),
(237, 'Drs. Aryo Widyandoko, MH', '08112654777', 34, 1, '2019-12-10 05:58:55', 'PEQpo', 0, '0000-00-00 00:00:00', 'Kepala Bagian Organisasi Setda Kota Surakarta'),
(238, 'Dra. IDAYANTI', '6281327040314', 20, 1, '2019-12-10 06:06:45', 'm90iA', 1, '2019-12-11 07:40:06', 'KEPALA BAGIAN ORGANISASI DAN TATALAKSANA'),
(239, 'M Chandra Fighi Islami', '085647743336', 78, 1, '2019-12-10 06:14:20', 'T7qdK', 1, '2019-12-11 07:35:43', 'Pranata Komputer'),
(240, 'Tyas Utami H, SH', '081329923931', 34, 1, '2019-12-10 06:22:24', 'eatFI', 0, NULL, 'Kepala Subbagian Peningkatan Kinerja&RB Bagian Organisasi'),
(241, 'Muh. Zainal Aripin, S.S', '085327519984', 34, 1, '2019-12-10 06:25:16', 'SNIHq', 0, NULL, 'Kepala Subbagian Tatalaksana Bagian Organisasi'),
(242, 'Bhayu Atamojo Putro', '081210727767', 34, 1, '2019-12-10 06:28:41', 'yuRK4', 0, NULL, 'Analis Laporan Akuntabilitas Kinerja '),
(243, 'Taufik Bagus S, S.IP.', '085647105111', 21, 1, '2019-12-10 06:30:39', '3PwgB', 0, NULL, 'Kasubbag Kerja Sama Daerah'),
(244, 'Khairiyah Octavia ', '082325033229', 34, 1, '2019-12-10 06:31:11', 'SzDR3', 0, NULL, 'Analis Pelayanan'),
(245, 'MUNAWAR', '081542263028', 26, 1, '2019-12-10 06:34:25', 'jz0Hd', 1, '2019-12-11 08:11:47', 'KEPALA BAGIAN PEMERINTAHAN'),
(246, 'Yuli Hastuti, S.H', '081325532999', 21, 1, '2019-12-10 06:37:15', 'XLITE', 1, '2019-12-11 08:27:04', 'Wakil Bupati Purworejo'),
(247, 'Yuli Hastuti, S.H', '081325532999', 21, 1, '2019-12-10 06:38:17', 'IViSs', 0, NULL, 'Wakil Bupati Purworejo'),
(248, 'Drs. DADANG DARUSMAN, MM', '082138538263', 26, 1, '2019-12-10 06:49:58', 'DzWu2', 0, NULL, 'ASISTEN ADMINISTRASI PEMERINTAHAN SEKDA KABUPATEN TEGAL'),
(249, 'Bambang Pramusinto, SH, SIP, MSi', '082227445573', 85, 1, '2019-12-10 07:31:42', 'kZ54c', 0, NULL, 'Kepala Dinas Kominfo'),
(250, 'Bambang Pramusinto, SH, SIP, MSi', '082227445573', 85, 1, '2019-12-10 07:31:47', 'ZRyiY', 0, NULL, 'Kepala Dinas Kominfo'),
(251, 'MASRURI,Drs', '082136360380', 6, 1, '2019-12-10 07:33:59', 'xC8XI', 1, '2019-12-11 07:42:14', 'Sekda kabupaten Boyolali'),
(252, 'dr. Pramesti Griana Dewi, M. Kes, M. Si', '08122953396', 8, 1, '2019-12-10 07:36:48', 'a8qh5', 0, NULL, 'Direktur RSUD Cilacap'),
(253, 'Pandi, S. Sos', '85327920517', 20, 1, '2019-12-10 07:40:58', '2Z38w', 1, '2019-12-11 07:42:49', 'KEPALA BAGIAN PEMERINTAHAN'),
(254, 'Pramesti Griana Dewi,  M.Kes.,M.Si', '628122953396', 8, 1, '2019-12-10 07:42:47', '3qfLj', 1, '2019-12-11 07:21:39', 'Direktur'),
(255, 'JOKO WAHONO, S.Sos, MM', '081225189362', 32, 1, '2019-12-10 07:44:16', 'WGJ1c', 0, NULL, 'Kepala Bagian Pemerintahan'),
(256, 'H. Ahmad Ujang Sugiono. SH', '08122774220', 13, 1, '2019-12-10 07:45:44', 'BQmb8', 0, NULL, 'Sekretaris Daerah Kab. Kebumen'),
(257, 'Stephanus Aan', '082138208000', 73, 1, '2019-12-10 07:51:39', 'VAadf', 1, '2019-12-11 07:41:55', 'Plt. Kepala Dinkominfo'),
(258, 'JOKO WAHONO, S.Sos, MM', '081225189362', 32, 1, '2019-12-10 07:53:11', 'sT1Fo', 0, NULL, 'Kepala Bagian Pemerintahan'),
(259, 'BAMBANG SUJATMIKO, SH', '081329997528', 18, 1, '2019-12-10 07:54:04', 'VeRlN', 0, NULL, 'Kepala Bagian Tata Pemerinttahan Setda Kabupaten Pekalongan'),
(260, 'KHUDHOIFAH, SH, MM', '6281328728855', 30, 1, '2019-12-10 07:55:03', 'UVF9L', 1, '2019-12-11 07:45:32', 'Kepala Bagian Organisasi Setda Kota Magelang'),
(261, 'R. Imam Wahyudi, SH, M.Si', '082133933939', 20, 1, '2019-12-10 07:55:10', 'Gu7US', 1, '2019-12-11 07:39:58', 'ASISTEN PEMERINTAHAN DAN KESRA'),
(262, 'H. Ahmad Ujang Sugiono. SH', '08122774320', 13, 1, '2019-12-10 07:56:21', 'ZS5wN', 0, NULL, 'Sekretaris Daerah Kab. Kebumen'),
(263, 'Yos Rosyidi, S.IP, M.Si', '08122664343', 83, 1, '2019-12-10 07:56:56', 'gyFLD', 1, '2019-12-11 07:21:14', 'Kapala Dinkominfo'),
(264, 'Arif wardianta', '081215405717', 6, 1, '2019-12-10 07:58:18', 'PfIQs', 1, '2019-12-11 07:51:37', 'Kepala bagian organisasi'),
(265, 'TOTOK BUDI MULYANTO, SE', '081513369423', 18, 1, '2019-12-10 07:58:34', 'q2CHo', 1, '2019-12-11 07:29:08', 'Asisten Pemerintahan dan Kesra Sekda Kabupaten Pekalongan'),
(266, 'Hendra Subiyanto, SE, MEc.Dev', '087739553599', 30, 1, '2019-12-10 08:00:32', '1ZG8g', 1, '2019-12-11 07:46:58', 'Kasubbag Reformasi Birokrasi dan Pelayanan Publik'),
(267, 'BELA RACHMAWAN, SE', '6285643021320', 30, 1, '2019-12-10 08:03:30', 'QoZPU', 1, '2019-12-11 07:46:49', 'Kasubbag Ketatalaksanaan'),
(268, 'Nihayah Widayanti', '085742053988', 32, 1, '2019-12-10 08:04:26', 'GCyek', 1, '2019-12-11 07:41:34', 'Kasubbag ketatalaksanaan dan pelayanan publik pada bagian organisasi '),
(269, 'ENGGAR KRISTIANTO, AMd', '085641751560', 30, 1, '2019-12-10 08:04:38', 'LjoIl', 0, NULL, 'Analis Pelayanan'),
(270, 'WIJI HANINDYA SOETARNO PUTRA, S.STP', '081288829951', 30, 1, '2019-12-10 08:05:35', 'PLkCg', 1, '2019-12-11 07:46:36', 'Analis Pelayanan'),
(271, 'Sigid Adibrata', '081226409897', 37, 1, '2019-12-10 08:25:08', 'ynpqe', 1, '2019-12-11 07:37:24', 'Sekretaris Disperindag Jateng'),
(272, 'H. Ahmad Ujang Sugiono. SH', '08122774220', 13, 1, '2019-12-10 08:27:09', 'Scnax', 0, NULL, 'Sekretaris Daerah Kab. Kebumen'),
(273, 'Suwilwan Rachmat', '08129040742', 49, 1, '2019-12-10 08:37:08', 'TLjWx', 1, '2019-12-11 07:12:39', 'Deputi Direktur Wilayah'),
(274, 'Dhian Setyo Handayani, S. STP', '082183291803', 24, 1, '2019-12-10 08:42:30', '97YZy', 1, '2019-12-11 08:03:11', 'Kasubag Kerjasama '),
(275, 'Aditiarsih destriani', '08129040742', 49, 1, '2019-12-10 08:43:17', 'B6RSQ', 1, '2019-12-11 07:12:31', 'Asisten deputi wilayah bidang wasrik dan MR'),
(276, 'Muchamad Iqbal Najib', '081339658911', 51, 1, '2019-12-10 08:46:08', '4QLwI', 0, NULL, 'Ketua Umum Koperasi Mahasiswa Walisongo'),
(277, 'Muchamad Iqbal Najib', '081339658911', 51, 1, '2019-12-10 08:46:11', 'R07oq', 0, NULL, 'Ketua Umum Koperasi Mahasiswa Walisongo'),
(278, 'Dr. Hidayah Basbeth', '08164882476', 4, 1, '2019-12-10 09:01:11', '2sndN', 0, NULL, 'Kepala Dinas Kesehatan Kab Batang'),
(279, 'Dr. Hidayah Basbeth', '08164882476', 4, 1, '2019-12-10 09:03:02', '2F7Nd', 0, NULL, 'Kepala Dinas Kesehatan Kab Batang'),
(280, 'M. Romadhon JR', '087745585172', 27, 1, '2019-12-10 09:07:11', 'FleSd', 1, '2019-12-11 07:36:23', 'Kepala Bagian Pemerintahan'),
(281, 'Dr. Ars. Samani Intakoris, ST, MT', '081280005549', 15, 1, '2019-12-10 09:10:51', 'R0jEV', 1, '2019-12-11 07:17:15', 'Sekretaris Daerah '),
(282, 'Daliun Sailan, S.H., M.H.', '081314219666', 88, 1, '2019-12-10 09:13:18', 'rl26P', 0, NULL, 'Hakim Tinggi Pengadilan Tinggi Jawa Tengah'),
(283, 'Sulistyo Satriawan', '081280005549', 15, 1, '2019-12-10 09:14:25', 'gvxi0', 1, '2019-12-11 07:17:19', 'Ajudan Sekretaris Daerah'),
(284, 'TARYULI', '085229377790', 35, 1, '2019-12-10 09:17:55', '3SO8P', 1, '2019-12-11 07:36:50', 'BIDAN MAHIR'),
(285, 'MIFTACHUDIN, SKM', '085229377790', 35, 1, '2019-12-10 09:22:20', 'n6Xlz', 1, '2019-12-11 07:37:02', 'PENYUSUN RKA DINAS KESEHATAN'),
(286, 'MOCHAMMAD RIZA FAHLEFIE, A.Md', '085229377790', 87, 1, '2019-12-10 09:24:08', 'SpxmT', 1, '2019-12-11 07:37:10', 'PENGOLAH DATA DINAS KESEHATAN'),
(287, 'RIWANTO, SKM.', '085229377790', 35, 1, '2019-12-10 09:25:55', 'zMdVC', 1, '2019-12-11 07:37:27', 'PENYULUH KESEHATAN DINAS KESEHATAN'),
(288, 'Titus Puguh Nugroho', '081325579926', 37, 1, '2019-12-10 10:09:40', 'bKF7J', 0, NULL, 'Kasubbag UMPEG'),
(290, 'Ganjar Pranowo, S.H, M.IP', '081566998888', 37, 1, '2019-12-10 10:15:47', 'WsFzh', 0, NULL, 'Gubernur Jawa Tengah'),
(291, 'Drs. Sinoeng Nugroho Rachmadi MM', '081391647618', 37, 1, '2019-12-10 10:16:03', 'r4lKi', 1, '2019-12-11 07:19:35', 'Kepala Dinas '),
(292, 'Heru Setiadhi', '00000000000', 37, 1, '2019-12-10 10:20:34', 'R1gPp', 0, NULL, 'Pj. Sekretaris Daerah'),
(293, 'Kepala Kejaksaan Tinggi Jawa Tengah', '00000000000', 88, 1, '2019-12-10 10:26:18', 'VJlhI', 0, NULL, 'Kepala Kejaksaan Tinggi Jawa Tengah'),
(294, 'Kepala Kepolisian Daerah Jawa Tengah', '00000000000', 45, 1, '2019-12-10 10:27:32', 'x1lUi', 0, NULL, 'Kepala Kepolisian Daerah Jawa Tengah'),
(295, 'Pangdam IV/Diponegoro', '00000000000', 46, 1, '2019-12-10 10:34:07', 'r9qFP', 0, NULL, 'Pangdam IV/Diponegoro'),
(296, 'Taj Yasin Maimoen', '00000000000', 37, 1, '2019-12-10 10:46:53', '428qz', 0, NULL, 'Wakil Gubernur Jawa Tengah'),
(297, 'Retno Utari,SSTP,MM', '082225234762', 28, 1, '2019-12-10 10:47:20', 'RkdzD', 0, NULL, 'Kepala Bagian Tapem Kabupaten Wonogiri'),
(298, 'Retno Utari, SSTP, MM', '082225234762', 28, 1, '2019-12-10 10:51:40', '042ap', 0, NULL, 'Kepala Bagian Tapem Kab Wonogiri'),
(299, 'Dr. Samsudi Raharjo, MM, MT.', '085740799543', 51, 1, '2019-12-10 11:12:57', 'DYtaX', 1, '2019-12-11 07:58:53', 'Wakil Rektor 3'),
(300, 'Farichah Nurhajati', '082134760740', 34, 1, '2019-12-10 11:20:54', 'KYagi', 1, '2019-12-11 07:26:30', 'Kasubbag kerjasama dalam negeri setda kota surakarta'),
(301, 'Nanang Dwi Artanto', '085642226074', 34, 1, '2019-12-10 11:24:50', 'h0UZe', 1, '2019-12-11 07:26:37', 'Analis kerjasama dalam negeri setda kota surakarta'),
(302, 'Luhur Rahpinuji, SIP.', '081548829491', 65, 1, '2019-12-10 11:52:18', '7MIAe', 0, NULL, 'Kabid Pengelolaan Data Elektronik'),
(303, 'Luhur Rahpinuji, SIP.', '081548829491', 65, 1, '2019-12-10 11:55:54', 'HMkyZ', 1, '2019-12-11 08:34:42', 'Kabid Pengelolaan Data Elektronik'),
(304, 'Manika Pratiwi', '083104811356', 51, 1, '2019-12-10 12:46:50', '7TOFs', 0, NULL, 'Mahasiswa'),
(305, 'Manika Pratiwi', '083104811356', 51, 1, '2019-12-10 12:48:02', 'bkJYj', 1, '2019-12-11 08:18:22', 'Mahasiswa'),
(306, 'Ery Rahayu, S.Sos', '081326068896', 67, 1, '2019-12-10 12:49:29', '8RvpO', 1, '2019-12-11 07:38:04', 'Kasi Informasi dan Dokumentasi'),
(307, 'Dewi Larasati', '08564047881', 51, 1, '2019-12-10 12:55:40', 'miPwg', 1, '2019-12-11 08:20:34', 'Mahasiswa'),
(308, 'Shofiatul Maunah', '085713174683', 51, 1, '2019-12-10 13:02:24', 'jULNq', 0, NULL, 'Mahasiswa'),
(309, 'Bambang Haryadi, SH, MM', '081218737853', 28, 1, '2019-12-10 13:02:58', 'C4oDm', 0, NULL, 'ADM Pem'),
(310, 'Fika Nikmatul Khomsah', '081649069018', 51, 1, '2019-12-10 13:04:01', 'xXDqg', 1, '2019-12-11 08:37:17', 'Mahasiswi'),
(311, 'Shofiatul Maunah', '085713174683', 51, 1, '2019-12-10 13:04:39', 'j3zCp', 0, NULL, 'Mahasiswa'),
(312, 'Ir. Wahyu Budi Saptono, M.Si', '08112913777', 3, 1, '2019-12-10 13:04:57', 'GI6iP', 1, '2019-12-11 07:46:20', 'Sekretaris Daerah Kab Banyumas'),
(313, 'Bambang haryadi, SH, MM', '081218737853', 28, 1, '2019-12-10 13:08:44', 'EPa61', 0, NULL, 'Assisten Perekonomian dan adm. Pemb.'),
(314, 'Shofiatul Maunah', '085713174168', 51, 1, '2019-12-10 13:08:50', 'GJTQB', 1, '2019-12-11 08:18:31', 'Mahasiswa'),
(315, 'Lulu Il Maknun', '083806818491', 51, 1, '2019-12-10 13:09:06', 'hyvQg', 1, '2019-12-11 08:18:44', 'Mahasiswa'),
(316, 'M Asyrif Zahrul Husna', '089670190313', 51, 1, '2019-12-10 13:09:19', 'GMI2H', 1, '2019-12-11 08:19:43', 'Mahasiswa'),
(317, 'Krisvani Ardhi Setiawan', '081228476485', 57, 1, '2019-12-10 13:12:10', 'iA1E9', 1, '2019-12-11 07:20:17', 'Kepala Seksi Persandian'),
(318, 'Titik Pujiastuti, SH, M.Pd', '08562643126', 3, 1, '2019-12-10 13:23:18', 'L2R1z', 1, '2019-12-11 07:53:20', 'Kepala Bagian Organisasi '),
(319, 'Eri Rosalia', '083842716058', 51, 1, '2019-12-10 13:30:29', 'waZgo', 0, NULL, 'Mahasiswa '),
(320, 'Eri Rosalia', '083842716058', 51, 1, '2019-12-10 13:34:59', '0JKAY', 1, '2019-12-11 08:18:49', 'Mahasiswa '),
(321, 'Endah Ayu Pratiwi', '089507221330', 51, 1, '2019-12-10 13:37:12', 'A7fYd', 0, NULL, 'Mahasiswa'),
(322, 'Endah Ayu Pratiwi', '089507221330', 51, 1, '2019-12-10 13:37:23', 'NXvcr', 1, '2019-12-11 08:18:31', 'Mahasiswa'),
(323, 'Ir Dyah Lukisari, MSi', '08112704615', 37, 1, '2019-12-10 14:00:43', 'nAEHK', 1, '2019-12-11 07:15:21', 'Kepala Biro Adm. Bangda Setda Prov Jateng'),
(324, 'GOFAR ISMAIL', '082133844679', 88, 1, '2019-12-10 15:03:34', 'T6SjW', 1, '2019-12-11 07:36:41', 'KASUKI KPP PRATAMA SEMARANG SELATAN'),
(325, 'Andri Kurniawan, S. STP', '081212183445', 13, 1, '2019-12-10 15:14:29', 'ceBOT', 1, '2019-12-11 07:21:05', 'Kasubbag Pemerintahan Bagian Pemerintahan '),
(326, 'Muhammad Rustam Haji', '0895328806977', 88, 1, '2019-12-10 16:55:39', 'na0ul', 1, '2019-12-11 07:55:19', 'Mahasiswa'),
(327, 'Nurohim', '082325036812', 88, 1, '2019-12-10 17:18:09', 'It1Ad', 0, NULL, 'Ketua Dewan Racana Universitas Muhammadiyah Semarang'),
(328, 'Nurohim', '082325036812', 88, 1, '2019-12-10 17:18:14', 'gHm0q', 1, '2019-12-11 07:54:35', 'Ketua Dewan Racana Universitas Muhammadiyah Semarang'),
(329, 'Nurohim', '082325036812', 88, 1, '2019-12-10 17:18:16', 'fjCT9', 0, NULL, 'Ketua Dewan Racana Universitas Muhammadiyah Semarang'),
(330, 'Krisvani Ardhi Setiawan', '081228476485', 57, 1, '2019-12-10 17:40:30', 'JzwnG', 0, NULL, 'Kepala Seksi Persandian'),
(331, 'Indriyanto SH, M.Si', '08156539228', 69, 1, '2019-12-10 22:40:13', 'SqbCf', 1, '2019-12-11 07:23:29', 'Kadiskominfo'),
(332, 'Sunarto Hadi, s.ip, mm', '085290132621', 31, 1, '2019-12-10 23:06:40', 'Er9BT', 0, NULL, 'Plt. Kabag. Tapem kota pekl.'),
(333, 'Eko cshyo', '08122854879', 11, 1, '2019-12-10 23:24:51', 'cFN15', 0, NULL, 'Kepala Puskesmas'),
(334, 'Eko Cahyo', '08122854879', 11, 1, '2019-12-10 23:25:56', 'A6T5z', 0, NULL, 'Kepala Puskesmas'),
(335, 'Haryanto , SH,MM, M.Si', '6281586294734', 17, 1, '2019-12-10 23:32:12', 'NXquW', 1, '2019-12-11 07:30:23', 'BUPATI PATI'),
(336, 'FX. Hadi Rudyatmo', '081226560006', 34, 1, '2019-12-10 23:33:00', 'WRyZ8', 0, NULL, 'Walikota Surakarta'),
(337, 'ANAM', '6281586294734', 17, 1, '2019-12-10 23:33:49', 'G6mKI', 1, '2019-12-11 07:30:34', 'Pelaksana pada TU PIM Kab.Pati'),
(338, 'Siti Zahro, SKM MPH', '085229762584', 2, 1, '2019-12-10 23:37:25', 'OIj0F', 1, '2019-12-11 06:37:57', 'Penyuluh Kesehatan'),
(339, 'Hermawan Sulis', '081226822727', 33, 1, '2019-12-10 23:43:25', 'pZqgX', 1, '2019-12-11 07:28:09', 'Anggota DPRD'),
(340, 'Muhammad Rizky Fatkhurrohman', '089515929764', 51, 1, '2019-12-10 23:46:21', 'ahUVS', 0, NULL, 'Ketua KSR PMI unit UIN Walisongo'),
(341, 'test', '000000000', 2, 1, '2019-12-10 23:49:17', 'K4wYr', 0, NULL, 'test1'),
(342, 'H. Ahmad Ujang Sugiono. SH', '08122774220', 13, 1, '2019-12-10 23:51:35', 'UVxmK', 1, '2019-12-11 07:20:18', 'Sekretaris Daerah Kab. Kebumen'),
(343, 'U ong Suparno, S.Sos M.Si', '082136072000', 8, 1, '2019-12-10 23:54:16', 'YImQd', 0, NULL, 'Asisten Administrasi '),
(344, 'Refiana Dewi Eka Prastyawati', '082135825723', 51, 1, '2019-12-10 23:56:58', 'IFyaz', 1, '2019-12-11 07:54:04', 'Mahasiswa'),
(345, 'U ong Suparno', '082136072000', 8, 1, '2019-12-10 23:57:31', '9mM7u', 1, '2019-12-11 06:59:21', 'Ass Adm'),
(346, 'U ong Suparno, S.Sos M.Si', '082136072000', 8, 1, '2019-12-10 23:57:57', 'qPvpJ', 0, NULL, 'Asisten Administrasi '),
(347, 'Sugiyanto', '081391853421', 19, 1, '2019-12-11 00:02:26', 'hlz3R', 0, NULL, 'Ka BKD Kab Pmlng'),
(348, 'naniek hendar akhadianti', '085742977090', 26, 1, '2019-12-11 00:04:11', '2Y4Dd', 0, NULL, 'kasubbag ketatalaksanaan'),
(349, 'Wiku Handoyo SH MH', '085865416644', 10, 1, '2019-12-11 00:04:28', 'YLhJ1', 1, '2019-12-11 07:08:01', 'Kepala Diskominfo Kab.Grobogan'),
(350, 'wahyu wim Hardjanto', '081333201997', 45, 1, '2019-12-11 00:05:07', '2tVSn', 1, '2019-12-11 07:05:13', 'Irbid 1 Itwasda Polda Jateng'),
(351, 'M.Hamzah', '085225878808', 17, 1, '2019-12-11 00:05:46', '6aXLI', 1, '2019-12-11 07:27:54', 'Pelaksana Bagian Organisasi Kab.Pati'),
(352, 'Kolonel Infantri Legowo WR Jatmiko', '082221362013', 46, 1, '2019-12-11 00:05:49', 'VC10A', 1, '2019-12-11 07:05:59', 'Irdam IV Diponegoro'),
(353, 'Nurrohman, S.Ag, S.Pd, MM.', '085225697916', 88, 1, '2019-12-11 00:07:13', 'Drptc', 1, '2019-12-11 07:11:32', 'KABAG Umum'),
(354, 'Wiryawan Wisnu Budhi', '085726809332', 1, 1, '2019-12-11 00:07:20', 'sybCt', 0, NULL, 'Kasubbag Kerja Sama'),
(355, 'Dr Hariadi', '08112594567', 37, 1, '2019-12-11 00:08:58', 'czuD3', 1, '2019-12-11 07:09:07', 'Direktur RSUD Tugurejo'),
(356, 'Achmad Fauzi', '082140077899', 8, 1, '2019-12-11 00:10:30', 'TCHZ3', 1, '2019-12-11 07:11:37', 'Sekretaris Bappeda'),
(357, 'Abdul Mufid', '0895800402466', 62, 1, '2019-12-11 00:11:13', 'DpZ1A', 1, '2019-12-11 07:11:20', 'Staff'),
(358, 'Totok AS', '081904924007', 52, 1, '2019-12-11 00:11:37', 'DvU4F', 1, '2019-12-11 07:11:45', 'Dirut PD. Citra Mandiri'),
(359, 'Rahadi Widayanto', '0811276038', 52, 1, '2019-12-11 00:14:05', 'a0qG3', 1, '2019-12-11 07:14:16', 'Direktur Operasional dan Digital Banking Bank Jateng'),
(360, 'Suharyo', '081901788834', 88, 1, '2019-12-11 00:14:30', 'ptP7q', 1, '2019-12-11 07:14:39', 'Account Officer PT.Taspen Semarang'),
(361, 'A. Uwes Qoroni', '081548155199', 26, 1, '2019-12-11 00:16:34', 'FbrJ0', 0, NULL, 'sekretaris dinas perhubungan'),
(362, 'Dr. Sutrisno, SKM,. MH, Kes', '082137455800', 88, 1, '2019-12-11 00:16:55', 'QNy1J', 1, '2019-12-11 07:17:06', 'Wakil DIrektur Umum dan Keuangan'),
(363, 'abdul honi', '081548155199', 26, 1, '2019-12-11 00:16:59', 'CpNb5', 0, NULL, 'kepala dinas perhubungan'),
(364, 'Ir. H. Jonahar, M. Ec., Dev.', '0811537998', 88, 1, '2019-12-11 00:17:24', 'IvbjH', 1, '2019-12-11 07:17:30', 'Kepala Kantor Wilayah BPN Jawa Tengah'),
(365, 'M. WIjaya', '085747708815', 60, 1, '2019-12-11 00:18:03', 'LbZVs', 1, '2019-12-11 07:18:07', 'Kadis Kominfo Cilacap'),
(366, 'H. Ahmad Ujang Sugiono. SH', '08122774220', 13, 1, '2019-12-11 00:19:43', 'SXf3x', 0, NULL, 'Sekretaris Daerah Kab. Kebumen'),
(367, 'Suparno, S.T, M.M.', '081226336722', 88, 1, '2019-12-11 00:19:57', '1HCWv', 1, '2019-12-11 07:20:04', 'Kepala Kanwil DJP Jawa Tengah I'),
(368, 'Erlina Rumanti', '08122755758', 88, 1, '2019-12-11 00:20:00', 'ofRzC', 1, '2019-12-11 07:20:05', 'PLT DIrektur'),
(369, 'Drs Budi Sugito Msi', '085640090555', 23, 1, '2019-12-11 00:20:07', '5thmS', 1, '2019-12-11 07:20:15', 'Kepala Bagian Tata Pemerintahan Setda Kabupaten Semarang'),
(370, 'Basirun', '085311118711', 50, 1, '2019-12-11 00:20:53', '4UfTJ', 1, '2019-12-11 07:21:01', 'Kepala Perum BULOG Divre Jawa Tengah'),
(371, 'Yogo ', '085647851605', 13, 1, '2019-12-11 00:21:16', 'ANKqF', 1, '2019-12-11 07:21:55', 'Kasubag Kepegawaian dan Kinerja'),
(372, 'Abdul Ghoni', '081548155199', 26, 1, '2019-12-11 00:21:34', 'WGZIN', 0, NULL, 'kepala dinas perhubungan'),
(373, 'Dr H Junaedi SH MM', '0811251124', 19, 1, '2019-12-11 00:21:41', 'Ing0U', 1, '2019-12-11 07:21:46', 'Bupati Pemalang'),
(374, 'dikki rulli perkasa', '087831146793', 88, 1, '2019-12-11 00:23:07', 'hBGjv', 1, '2019-12-11 07:23:10', 'Kabag Tata Usaha'),
(375, 'Bimo Santoso', '082134233181', 88, 1, '2019-12-11 00:23:20', 'jmNCK', 1, '2019-12-11 07:24:53', 'Sekretaris'),
(376, 'Aryati Prabandari', '085226500862', 29, 1, '2019-12-11 00:23:39', 'QRvoj', 1, '2019-12-11 07:44:37', 'Kabag Organisasi'),
(377, 'muhammad chairil', '0811203025', 47, 1, '2019-12-11 00:24:07', 'UQTaM', 1, '2019-12-11 07:24:31', 'VP Regional Government Relation'),
(378, 'Rahmadi Nugroho', '081211771963', 52, 1, '2019-12-11 00:24:31', 'G8Y7J', 1, '2019-12-11 07:24:37', 'Direktur Utama PT KIWI (Persero)'),
(379, 'Dr. Suharto Wijanarko, Spu', '08122587461', 88, 1, '2019-12-11 00:24:35', 'igECo', 1, '2019-12-11 07:24:41', 'PLT DIrektur RSUD Dr Moewardi Solo'),
(380, 'Sunarto Hadi, SIP. MM', '085290132621', 31, 1, '2019-12-11 00:25:20', 'n4GYH', 0, NULL, 'Plt. Kepala Bagian Tata Pemerintahan'),
(381, 'Nurul Indrawati', '085727905075', 83, 1, '2019-12-11 00:25:59', 'ctnZe', 1, '2019-12-11 07:26:11', 'Kabid Pengelolaan Informasi Komunikasi Publik Kominfo Kota Pekalongan'),
(382, 'Fajar Adhy Nugroho', '08128765236', 88, 1, '2019-12-11 00:26:21', 'T2t0z', 1, '2019-12-11 07:26:28', 'Kepala Bagian Tata Usaha'),
(383, 'Eko widi nugroho', '081328054780', 29, 1, '2019-12-11 00:27:26', 'yGkeg', 1, '2019-12-11 07:44:38', 'Kasubag pemerintahan umum dan otda'),
(384, 'Yos Rosidi SIP MSI', '08122664343', 83, 1, '2019-12-11 00:27:35', 'ucL1a', 1, '2019-12-11 07:27:42', 'Kepala Dinas Kominfo Kota Pekalongan'),
(385, 'Drs. Yosca Herman Soedrajat, MM', '08122685999', 88, 1, '2019-12-11 00:28:00', 'Q1zGm', 1, '2019-12-11 07:28:06', 'Kepala BPPKAD SUrakarta'),
(386, 'Teguh Aryanto', '082322997660', 83, 1, '2019-12-11 00:28:16', 'EHelb', 1, '2019-12-11 07:28:20', 'Staff Kominfo Kota Pekalongan'),
(387, 'Joko Sutopo', '082243633530', 28, 1, '2019-12-11 00:29:29', 'c9udF', 1, '2019-12-11 07:29:33', 'Bupati Wonogiri'),
(388, 'Hapipi', '085228496532', 81, 1, '2019-12-11 00:29:36', 'VxGAm', 1, '2019-12-11 07:44:48', 'Kabid informasi komunikasi publik'),
(389, 'Sarwaka', '08122649920', 24, 1, '2019-12-11 00:29:55', 'q7nQz', 1, '2019-12-11 07:35:35', 'Ass II'),
(390, 'Imam Mukhlis', '081542787345', 88, 1, '2019-12-11 00:29:56', 'JbOp8', 0, NULL, 'Kabbid Arsip Dinas ARPUSDA Kab Banyumas'),
(391, 'Heru Nur Iswantoro', '082225390463', 80, 1, '2019-12-11 00:30:28', 'GE4Wb', 1, '2019-12-11 07:30:32', 'Kepala Dinas Kominfo Wonogiri'),
(392, 'Tifani indra Kusumaningrum', '085643498969', 51, 1, '2019-12-11 00:31:16', 'KLjBe', 1, '2019-12-11 07:39:06', 'Mahasiswa (Bem) '),
(393, 'Retno Utari', '082225234762', 28, 1, '2019-12-11 00:31:19', 'b2ykv', 1, '2019-12-11 07:31:24', 'Kebag Tapem Wonogiri'),
(394, 'Ganeswara', '085292151390', 29, 1, '2019-12-11 00:31:42', 'xMayT', 1, '2019-12-11 07:44:56', 'Pelaksana pada Sekretariat dewan'),
(395, 'Endah Cahya Rini', '081326447466', 9, 1, '2019-12-11 00:31:46', 'M2RWQ', 1, '2019-12-11 07:35:24', 'Kadis Kominfo'),
(396, 'SUMARNO, SE, MM', '081326211616', 37, 1, '2019-12-11 00:31:46', 'iI9cz', 1, '2019-12-11 07:53:48', 'KEPALA BADAN PENGELOLA KEUANGAN DAN ASET DAERAH'),
(397, 'Yusli', '085227965286', 28, 1, '2019-12-11 00:32:15', 'xkDCm', 1, '2019-12-11 07:32:21', 'Kabag Organisasi'),
(398, 'Yacobus Agus Wahyudiono', '08126290234', 88, 1, '2019-12-11 00:33:22', 'bTSMZ', 1, '2019-12-11 07:33:27', 'Kepala Bidang Kepatuhan Internal'),
(399, 'H Prabowo Setiawan MT Phd', '08122849303', 51, 1, '2019-12-11 00:33:24', '3RSUi', 1, '2019-12-11 07:33:30', 'Rektor Unissula'),
(400, 'Hendri Agung Saksena ', '085268316365', 51, 1, '2019-12-11 00:33:26', 'aLPwx', 1, '2019-12-11 07:39:46', 'Mahasiswa '),
(401, 'Wahyu Widhowati', '08564854224', 51, 1, '2019-12-11 00:33:42', 'ce1Pr', 0, NULL, 'Presiden BEM'),
(402, 'Hadi Susanto', '085895961423', 14, 1, '2019-12-11 00:33:44', 'f517Q', 1, '2019-12-11 07:33:53', 'Kasubid Data dan Informasi BKPPD Kab Klaten');
INSERT INTO `absen_qr` (`id`, `nama`, `no_wa`, `id_instansi`, `id_event`, `created_at`, `key`, `sts`, `updated_at`, `jabatan`) VALUES
(403, 'MUFTIAN ADI PRATOMO', '085290777737', 51, 1, '2019-12-11 00:33:46', 'gpMWC', 1, '2019-12-11 07:45:07', 'Mahasiswa'),
(404, 'Adil sundawa', '085600927946', 51, 1, '2019-12-11 00:33:57', 'trmNC', 1, '2019-12-11 07:40:14', 'Mahasiswa'),
(405, 'Fadli Anggoro Yekti', '081542609875', 51, 1, '2019-12-11 00:33:57', 'thJ02', 1, '2019-12-11 07:43:35', 'Mahasiswa'),
(406, 'Ferdian Restu Kelana', '085729663403', 51, 1, '2019-12-11 00:34:08', 'X0Tv4', 1, '2019-12-11 07:44:42', 'Mahasiswa'),
(407, 'M. Ika Safitri ', '082313175827', 51, 1, '2019-12-11 00:34:14', 'lDigz', 1, '2019-12-11 07:39:30', 'Mahasiswa '),
(408, 'Dion agasi setiabudi', '082133899229', 21, 1, '2019-12-11 00:34:15', 'BPKYu', 0, NULL, 'Ketua dprd Kabupaten Purworejo'),
(409, 'YULYAS TRI MUNAWAROH', '085799260859', 51, 1, '2019-12-11 00:34:18', 'u5nqe', 0, NULL, 'MAHASISWA'),
(410, 'Fabianus Franky Yulianto', '085225638323', 88, 1, '2019-12-11 00:34:22', 'r7xwY', 1, '2019-12-11 07:35:20', 'Pimred Majalah PROSEKUTOR'),
(411, 'Lya Munawaroh ', '089647925410', 51, 1, '2019-12-11 00:34:23', 'axwvm', 1, '2019-12-11 07:39:22', 'Mahasiswa '),
(412, 'Ayu Dwi Handayani', '085743687034', 51, 1, '2019-12-11 00:34:30', 'pWoOB', 1, '2019-12-11 07:39:45', 'Mahasiswa'),
(413, 'Ania putri widyanti ', '081568287368', 51, 1, '2019-12-11 00:34:58', 'JYjkB', 1, '2019-12-11 07:39:14', 'Mahasiswa '),
(414, 'Zuniati', '085290687018', 51, 1, '2019-12-11 00:35:05', 'OAVL0', 1, '2019-12-11 07:38:56', 'Dosen'),
(415, 'Febriana lukita sari', '085726744378', 51, 1, '2019-12-11 00:35:17', 'pWR2u', 1, '2019-12-11 07:39:40', 'Mahasiswa'),
(416, 'Bima Haria Wibisana', '08123580955', 42, 1, '2019-12-11 00:35:18', 'KcI8b', 1, '2019-12-11 07:35:22', 'Kepala BKN Pusat'),
(417, 'Sri Sugiyanti', '081393223362', 66, 1, '2019-12-11 00:35:28', 'Kb7OD', 1, '2019-12-11 07:35:35', 'Nutrisionis Petugas Gisi Puskesmas Juwiring Kab Klaten'),
(418, 'Andi Bangun Setiono', '085290200431', 51, 1, '2019-12-11 00:35:37', 'PyBlK', 1, '2019-12-11 07:44:56', 'Mahasiswa'),
(419, 'YULYAS TRI MUNAWAROH', '085799260859', 51, 1, '2019-12-11 00:35:40', 'XMaGs', 0, NULL, 'MAHASISWA'),
(420, 'Fahri huzein', '089501891655', 51, 1, '2019-12-11 00:35:45', 'RWmBr', 1, '2019-12-11 07:38:36', 'Mahasiswa UNNES'),
(421, 'Candra Stefanus ', '085641310123', 51, 1, '2019-12-11 00:36:07', 'cLemr', 1, '2019-12-11 07:39:52', 'Mahasiswa '),
(422, 'YULYAS TRI MUNAWAROH', '085799260859', 51, 1, '2019-12-11 00:36:09', 'VNp3S', 0, NULL, 'MAHASISWA'),
(423, 'Stephanus Firmanto', '08122728669', 42, 1, '2019-12-11 00:36:28', 'ZT63X', 1, '2019-12-11 07:36:36', 'Kepala Seksi Pemanfaatan Teknologi Informasi'),
(424, 'Wahyu Widhowati', '08564854224', 51, 1, '2019-12-11 00:36:30', 'XEbVP', 0, NULL, 'Presiden BEM'),
(425, 'Drs. Edy Iswanto', '082135698348', 37, 1, '2019-12-11 00:37:04', 'S3umB', 0, NULL, 'Kepala Bagian Umum Sekretariat DPRD Prov Jateng'),
(426, 'Drs. Edy Iswanto', '082135698348', 37, 1, '2019-12-11 00:37:04', '8kvpw', 1, '2019-12-11 07:37:10', 'Kepala Bagian Umum Sekretariat DPRD Prov Jateng'),
(427, 'Yulyas Tri Munawaroh', '085799260859', 51, 1, '2019-12-11 00:37:27', 'uUOCl', 0, NULL, 'MAHASISWA'),
(428, 'Yusiasih Utami', '081391211311', 72, 1, '2019-12-11 00:37:30', 'Lq7iS', 1, '2019-12-11 07:40:24', 'Kasubbag Ketatalaksanaan'),
(429, 'Ir. SR. Eko Yunianto, Sp.1', '089624418197', 37, 1, '2019-12-11 00:37:43', 'v0uob', 1, '2019-12-11 07:37:50', 'Kepala Dinas PU SDA TARU Prov. Jateng'),
(430, 'Sugiyanto', '081391853421', 19, 1, '2019-12-11 00:37:44', 'swJxH', 1, '2019-12-11 07:37:47', 'Kepala BKD Kab Pemalang'),
(431, 'Wahyu Widhowati', '085648542248', 51, 1, '2019-12-11 00:37:58', 'RuHZi', 0, NULL, 'Presiden BEM'),
(432, 'Sutomo S.Pd', '085747192750', 3, 1, '2019-12-11 00:38:12', 'jczRU', 1, '2019-12-11 07:38:18', 'Kasubbag Perencanaan Disdik Kab Banyumas'),
(433, 'Tantri Ari Cahyaningtias', '08156524139', 71, 1, '2019-12-11 00:38:42', 'E9uag', 1, '2019-12-11 07:38:45', 'Kepala Diskominfo Pemalang'),
(434, 'Ninik Mardiastuti', '08156624433', 37, 1, '2019-12-11 00:39:00', 'Neb8f', 1, '2019-12-11 07:39:14', 'Sekertaris DPMPTSP Prov. Jateng'),
(435, 'Yulyas Tri Munawaroh', '085799260859', 51, 1, '2019-12-11 00:39:03', 'UO9LS', 1, '2019-12-11 07:40:01', 'Mahasiswa'),
(436, 'Wahyu Widhowati', '085648542248', 51, 1, '2019-12-11 00:39:10', '1ZNYJ', 1, '2019-12-11 07:40:07', 'Presiden BEM'),
(437, 'Daliun Sailan, SH, MH', '081314219666', 88, 1, '2019-12-11 00:39:36', 'gZJv4', 1, '2019-12-11 07:39:42', 'Hakim Tinggi'),
(438, 'Lalu M Syafriadi', '081333541680', 88, 1, '2019-12-11 00:39:36', 'bMhGo', 1, '2019-12-11 07:42:19', 'Kepala Dinas'),
(439, 'Dra Widianti Titi Pratiwi', '08122783652', 2, 1, '2019-12-11 00:39:41', 'ANx0c', 1, '2019-12-11 07:39:44', 'Kabag Organisasi Banjarnegara'),
(440, 'Imam Maskur', '085742156383', 37, 1, '2019-12-11 00:40:12', 'vsEmG', 1, '2019-12-11 07:40:17', 'Kepala Biro Kesra Sekda Prov. Jateng'),
(441, 'Nandhi Nur A', '085799799819', 37, 1, '2019-12-11 00:40:21', 'irvaz', 0, NULL, 'Tim IT Disperindag Jateng'),
(442, 'Dr. Prasetyo Aribowo, SH, M.Soc.Sc.', '08112923777', 37, 1, '2019-12-11 00:40:30', 'hLQJr', 1, '2019-12-11 07:40:35', 'KEPALA BAPPEDA PROVINSI JAWA TENGAH'),
(443, 'Syamsudin', '081328716167', 2, 1, '2019-12-11 00:40:46', 'FVxIE', 1, '2019-12-11 07:40:49', 'Wakil Bupati Banjarnegara'),
(444, 'Sonakha Yuda Laksono', '08112991078', 88, 1, '2019-12-11 00:40:51', 'FYALr', 0, NULL, 'Komisioner KPID'),
(445, 'Isdianto', '081215181266', 37, 1, '2019-12-11 00:40:51', 'XAJ7o', 1, '2019-12-11 07:40:57', 'Komisioner kpid jateng'),
(446, 'Dodik Srianto', '081326429639', 37, 1, '2019-12-11 00:41:14', 'MCHo9', 1, '2019-12-11 07:41:17', 'Sekertaris Dinas Koperasi dan UKM Prov. Jateng'),
(447, 'Nandhi Nur A', '085799799819', 37, 1, '2019-12-11 00:41:31', 'PSLVe', 1, '2019-12-11 07:44:12', 'Tim IT Disperindag Jateng'),
(448, 'Dwi Buntoro', '081327641212', 2, 1, '2019-12-11 00:42:00', 'j4i5k', 1, '2019-12-11 07:42:03', 'Kabag Pemerintahan dan Otda Banjarnegara '),
(449, 'Setiawan indra k', '0811279779', 37, 1, '2019-12-11 00:42:00', 'hHZb9', 1, '2019-12-11 07:42:15', 'KPID PROV '),
(450, 'Asep Cuwantoro', '0811891926', 88, 1, '2019-12-11 00:42:06', '2CR1D', 0, NULL, 'Wakil Ketua KPID Provinsi Jawa Tengah'),
(451, 'Ir. Tuban Wiyoso, M.Si', '08163162887', 88, 1, '2019-12-11 00:42:25', 'DH6Fy', 1, '2019-12-11 07:42:31', 'Kepala Koordinator Stasiun BMKG Jawa Tengah'),
(452, 'Dadang Somantri', '08112511965', 37, 1, '2019-12-11 00:43:04', '8iAhq', 1, '2019-12-11 07:43:09', 'Kepala Biro ISDA'),
(453, 'Edi Pranoto', '081901555123', 88, 1, '2019-12-11 00:43:11', '8LBRK', 0, NULL, 'Komisioner KPID Jateng'),
(454, 'Budi Prasetyo', '081329585828', 34, 1, '2019-12-11 00:43:20', 'YGPCk', 0, NULL, 'Ka DPRD'),
(455, 'Ani Raharjo', '082241717800', 23, 1, '2019-12-11 00:43:26', 'ZJg0Y', 1, '2019-12-11 07:43:30', 'Direktur RSUD Ambarawa'),
(456, 'Muh Nasiruddin', '0818246038', 32, 1, '2019-12-11 00:43:36', 'E1RgV', 1, '2019-12-11 07:44:39', 'Kepala dinas komunikasi dan informatika'),
(457, 'Setiawan indra k', '0811279779', 88, 1, '2019-12-11 00:43:59', 'OZHrW', 1, '2019-12-11 07:44:19', 'Ketua Serikat Media siber indonesia'),
(458, 'dr. Bambang ', '08122903646', 17, 1, '2019-12-11 00:44:13', 'NXiwL', 1, '2019-12-11 07:44:28', 'Kepala Puskesmas Cluwak Kab Pati'),
(459, 'Made Sukatra', '081227000972', 52, 1, '2019-12-11 00:44:19', 'QW0NZ', 1, '2019-12-11 07:44:24', 'Kepala Cabang Askrida'),
(460, 'Sukarno', '08112777145', 37, 1, '2019-12-11 00:44:21', 'Sqt4s', 0, NULL, 'Ka.TU Biro Pemotdaks'),
(461, 'MUHAMAD MASROFI, S.Sos., M.Si.', '081325438899', 37, 1, '2019-12-11 00:44:29', 'Zxkq6', 0, NULL, 'Kepala Biro Pemerintahan, Otonomi Daerah dan Kerjasama'),
(462, 'Sukarno', '08112777145', 37, 1, '2019-12-11 00:45:21', 'AaNks', 0, NULL, 'Ka.TU Biro Pemotdaks'),
(463, 'Donny Prabowo', '085225282034', 9, 1, '2019-12-11 00:45:26', '1vudw', 1, '2019-12-11 07:45:29', 'Kasubbag KKA Organisasi Demak'),
(464, 'Slamet setyobudi', '081575000632', 32, 1, '2019-12-11 00:45:49', 'fNtWo', 1, '2019-12-11 07:46:31', 'Kepala dinas perpustakaan dan kearsipan'),
(465, 'Dr agus setiohafi m.kes', '081326470079', 22, 1, '2019-12-11 00:46:02', 'BcOQv', 1, '2019-12-11 07:46:15', 'Direktur rsud soetrasno'),
(466, 'Erwina eka ', '087711207070', 88, 1, '2019-12-11 00:46:54', 'Y5odg', 1, '2019-12-11 07:47:00', 'Kesekretariatan'),
(467, 'Handayani', '081282881537', 39, 1, '2019-12-11 00:46:56', 'LSrQj', 1, '2019-12-11 07:47:03', 'Kabid P2Humas Kanwil DJP Jawa Tengah II'),
(468, 'Retno sudewi', '081328374935', 37, 1, '2019-12-11 00:47:22', 'YO9ZB', 1, '2019-12-11 07:47:31', 'Dp3ap2kb'),
(469, 'Ajeng Ratna Sari', '087711207070', 88, 1, '2019-12-11 00:47:30', 'QAwXc', 1, '2019-12-11 07:47:36', 'Kesekretariatan'),
(470, 'Yoyok JJL', '087711207070', 88, 1, '2019-12-11 00:47:58', 'DEa5d', 1, '2019-12-11 07:48:03', 'Staff JJL'),
(471, 'Rahmad Widodo', '081212207083', 45, 1, '2019-12-11 00:48:07', 'HwUqj', 1, '2019-12-11 07:48:11', 'Kepala Biro Operasi Polda Jawa Tengah'),
(472, 'Subro', '081268473340', 20, 1, '2019-12-11 00:48:15', 'fMWgq', 1, '2019-12-11 07:48:46', 'Staf Sunah OTDAKERJASAMA'),
(473, 'Sri indah lestari', '087831699305', 37, 1, '2019-12-11 00:48:15', 'cXPJ5', 1, '2019-12-11 07:48:55', 'Reporter'),
(474, 'Nur Hastuti Handayani', '081575584066', 37, 1, '2019-12-11 00:48:15', 'An16p', 1, '2019-12-11 07:48:20', 'Staff Subbag Umpeg DInas Kesahatan Prov Jawa tengah'),
(475, 'MOhamad Arief Irwanto', '08122998454', 37, 1, '2019-12-11 00:48:36', 'qN429', 1, '2019-12-11 07:48:41', 'Kepala bpsdmd'),
(476, 'Dwi Agung Riyadi', '085729088529', 51, 1, '2019-12-11 00:49:03', 'JdPiQ', 1, '2019-12-11 07:49:06', 'Ketua Resimen Mahasiswa UIN Walisongo'),
(477, 'Ir Yuni Astuti MA', '082220122136', 37, 1, '2019-12-11 00:49:08', 'anGx9', 1, '2019-12-11 07:49:15', 'Kabag APBJ'),
(478, 'Sunarto', '081325117038', 75, 1, '2019-12-11 00:49:31', 'DiuGa', 0, NULL, 'Kadis kominfo '),
(479, 'Dr. Ir. AR HANUNG TRIYONO,  M.Si', '08122650563', 37, 1, '2019-12-11 00:49:43', 'Vud8A', 0, NULL, 'Keoala Dinas PU Bina Marga dan Cipta Karya Jateng'),
(480, 'Muhammad Syarif Hasyim', '085950854066', 51, 1, '2019-12-11 00:49:49', 'Pi9VL', 1, '2019-12-11 07:49:52', 'Ketua Racana UIN Walisongo'),
(481, 'Ahmad Rofai', '08122851220', 37, 1, '2019-12-11 00:49:54', '7Q9nH', 1, '2019-12-11 07:50:00', 'Kaban Kesbangpol'),
(482, 'Drs. Rukman Hidayat AP', '08156932002', 18, 1, '2019-12-11 00:49:55', 'scLbq', 1, '2019-12-11 07:50:06', 'Kepala Bagian Oraganisasi dan Kepegawaian'),
(483, 'Ridwan', '085364058114', 51, 1, '2019-12-11 00:50:33', 'XsMnB', 1, '2019-12-11 07:50:37', 'Ketua SKM Amanat UIN Walisongo'),
(484, 'Lucky setiawan', '082242280807', 88, 1, '2019-12-11 00:50:38', 'oAYUC', 1, '2019-12-11 07:52:08', 'Wartawan'),
(485, 'Eko purnomo', '081327332902', 29, 1, '2019-12-11 00:50:57', 'b0iYN', 1, '2019-12-11 07:54:01', 'Bupati wonosobo'),
(486, 'Sarwa Pramana', '08122923656', 37, 1, '2019-12-11 00:51:05', 'NrkUL', 1, '2019-12-11 07:51:11', 'Asistem Pemerintahan'),
(487, 'Imam maskur', '085742156383', 37, 1, '2019-12-11 00:51:11', '3JcnL', 0, NULL, 'Kepala biro kesra setda prov jateng'),
(488, 'Kurniani W', '0816692392', 18, 1, '2019-12-11 00:51:17', 'DHABY', 1, '2019-12-11 07:51:24', 'Analis Organisasi dan Tata Laksana bagian Orpeg'),
(489, 'Eko Prasetyo', '081328383830', 14, 1, '2019-12-11 00:51:26', 'CUb8G', 1, '2019-12-11 08:06:53', 'Ka Komisi I DPRD'),
(490, 'Lathaiful Mahasin', '08562748140', 51, 1, '2019-12-11 00:51:43', 'z3XIl', 1, '2019-12-11 07:51:46', 'Ketua Walisongo Sport Club UIN Walisongo'),
(491, 'MA Gunung Iskandar', '088215237540', 88, 1, '2019-12-11 00:51:44', 'jwA34', 1, '2019-12-11 07:51:52', 'Pembantu Direktur III'),
(492, 'Farokhi', '081326498577', 37, 1, '2019-12-11 00:52:09', 'T0ciM', 1, '2019-12-11 07:52:15', 'Kepala Instalasi Sistem Informasi Rumah Sakit dan Informasi RSUP Dr Kariadi'),
(493, 'Sucipto, S.IP', '085726096566', 18, 1, '2019-12-11 00:52:23', 'IxNJf', 1, '2019-12-11 07:52:29', 'Kasubbag Ketatalaksanaan bagian Orpeg'),
(494, 'Agus suranta', '081229370288', 37, 1, '2019-12-11 00:52:53', 'c2kpM', 1, '2019-12-11 07:52:59', 'Dispermades dukcapil'),
(495, 'Petrus Muhardi', '087734020347', 16, 1, '2019-12-11 00:52:59', 'hDCae', 1, '2019-12-11 07:53:14', 'Kasi SDM Pertanian Dinas Pertanian dan Pangan Kabupaten Magelang'),
(496, 'Ir Sugeng Riyanto M. Sc', '08122917691', 37, 1, '2019-12-11 00:53:02', 'wvILW', 1, '2019-12-11 07:53:09', 'Kadis Permades Dukcapil'),
(497, 'Bayu Satrio, SE', '085640386888', 18, 1, '2019-12-11 00:53:11', 'faisE', 1, '2019-12-11 07:53:18', 'Analis Jabatan bagian Orpeg'),
(498, 'Hery Hendro Purnomo', '081225182901', 37, 1, '2019-12-11 00:53:28', 'cXwTC', 1, '2019-12-11 07:54:17', 'staf biro hukum'),
(499, 'Sosiawan', '0811289844', 37, 1, '2019-12-11 00:54:40', 'NIdHz', 1, '2019-12-11 07:58:44', 'Komisioner KIP'),
(500, 'Drs Agus Tri Cahyono', '08122505920', 37, 1, '2019-12-11 00:54:50', 'JZGur', 1, '2019-12-11 07:54:59', 'Sekretaris'),
(501, 'Ashari Prasetyo', '082334764712', 37, 1, '2019-12-11 00:55:44', 'DR68G', 1, '2019-12-11 07:55:50', 'Staff Bidang Pemasaran Pariwisata DISPORAPAR Pov Jateng'),
(502, 'Eko Adji Arianto', '08122685245', 25, 1, '2019-12-11 00:56:50', 'x5Cbw', 1, '2019-12-11 08:01:05', 'Ass III'),
(503, 'Zulkarnaen burhanil khakim', '0895632565752', 51, 1, '2019-12-11 00:57:32', 'JDBY1', 1, '2019-12-11 07:57:44', 'Mahasiswa '),
(504, 'Ali Fikri', '085724633321', 51, 1, '2019-12-11 00:57:35', '1RqJi', 1, '2019-12-11 07:57:45', 'Mahasiswa'),
(505, 'Sunarto', '081325117038', 75, 1, '2019-12-11 00:58:10', '2zjlF', 1, '2019-12-11 08:19:35', 'Kadis'),
(506, 'Joko Purwanto', '08121538757', 25, 1, '2019-12-11 00:59:13', 'Gc0vn', 1, '2019-12-11 08:05:20', 'Kabag Organisasi'),
(507, 'Ir. SUGIYONO, MT', '08122885111', 1, 1, '2019-12-11 01:00:06', 'euLsF', 1, '2019-12-11 08:01:41', 'Kadis Dinas PUPR'),
(508, 'Miftahudin', '081228411229', 6, 1, '2019-12-11 01:01:17', 'Lw0s6', 1, '2019-12-11 08:01:49', ''),
(509, 'Dini Inayati', '081901737201', 37, 1, '2019-12-11 01:02:14', '5vnlr', 1, '2019-12-11 08:02:24', 'Komisioner KPID Prov Jateng'),
(510, 'Adi Siswanto', '08122920306', 24, 1, '2019-12-11 01:03:41', 'n7uqO', 1, '2019-12-11 08:03:46', 'Kabbag Organisasi SETDA Kab Sragen'),
(511, 'Fadli Kurniawan', '085786260793', 19, 1, '2019-12-11 01:04:23', 'GzihO', 1, '2019-12-11 08:05:27', 'Kabag Organisasi'),
(512, 'Tri martono', '081548710540', 23, 1, '2019-12-11 01:04:53', 'pvb4Y', 1, '2019-12-11 08:17:05', 'Kabag organisasi Setda Kab Semarang'),
(513, 'Ravasya Ilham Hari S', '0811289920', 51, 1, '2019-12-11 01:05:21', 'qFatV', 0, NULL, 'Mahasiswa UNIMUS'),
(514, 'Amin Mustofa', '081328076450', 66, 1, '2019-12-11 01:05:34', 'Tx8y3', 1, '2019-12-11 08:07:03', 'Kadis Kominfo'),
(515, 'Ummi Nur Latifah', '082226938126', 51, 1, '2019-12-11 01:07:13', 'H7LFt', 0, NULL, 'Mahasiswa UNImuU'),
(516, 'Arma Riantono', '089638687303', 37, 1, '2019-12-11 01:07:16', 'IzrM8', 0, NULL, 'Kepala Dinas PHL'),
(517, 'Dinar Maulana', '0895391369712', 51, 1, '2019-12-11 01:08:40', 'qvmQg', 0, NULL, 'Mahasiswa'),
(518, 'Dinar Maulana', '0895391369712', 51, 1, '2019-12-11 01:11:38', '7yaiG', 0, NULL, 'Mahasiswa'),
(519, 'Agung Hendratno', '085728741111', 86, 1, '2019-12-11 01:11:40', 'tGJOH', 1, '2019-12-11 08:11:45', 'Sekretaris Diskominfo Kota Surakarta'),
(520, 'Hendro Pramono S.sos', '081329008656', 34, 1, '2019-12-11 01:12:51', '3oauJ', 1, '2019-12-11 08:12:55', 'KEpala Bagian Pemerintahan Kota Surakarta'),
(521, 'Suwarno', '085768423899', 10, 1, '2019-12-11 01:13:12', 'ujUbp', 1, '2019-12-11 08:13:16', 'Kabag organisasi kab grobogan'),
(522, 'Muhammad Husni Mushonifin', '081390422656', 88, 1, '2019-12-11 01:13:57', 'I05kE', 1, '2019-12-11 08:33:51', 'Jurnalis Sigijateng.id'),
(523, 'Suyamto', '08122621218', 77, 1, '2019-12-11 01:15:59', 'PxhQ6', 0, NULL, 'Dinas Kominfo'),
(524, 'Drs Gunawan Wibisono,MM', '08122814445', 23, 1, '2019-12-11 01:16:40', 'jyGs7', 1, '2019-12-11 08:16:43', 'Sekda Kab Semarang'),
(525, 'Anhar Achmad', '081252525252', 88, 1, '2019-12-11 01:17:23', '2eYdF', 1, '2019-12-11 08:17:26', 'Kepala Stasiun RRI Semarang'),
(526, 'Purwantoro', '081314578723', 55, 1, '2019-12-11 01:17:53', '0mYJo', 1, '2019-12-11 08:18:01', 'Kepala Bidang  IKP'),
(527, 'aghisna bidikrikal hasan', '082335083252', 51, 1, '2019-12-11 01:20:42', 'rXkta', 1, '2019-12-11 08:21:01', 'Ketua Senat UIN Walisongo'),
(528, 'Irawan widyanto', '081314578723', 55, 1, '2019-12-11 01:21:41', 'zg3G5', 1, '2019-12-11 08:32:48', 'Analis Persandian'),
(529, 'Sujoko', '081325627644', 88, 1, '2019-12-11 01:28:37', 'JmYRZ', 0, NULL, 'Wartawan prosekutor'),
(530, 'Sigit arga adi nugroho', '085870399969', 55, 1, '2019-12-11 01:29:22', 'XVZE8', 1, '2019-12-11 08:32:54', 'Staff budang ikp'),
(531, 'Santosa', '081252035576', 37, 1, '2019-12-11 01:34:26', 'Zsp1z', 1, '2019-12-11 08:34:31', 'Kasubbag Umum dan kepegawaian DInas kelautan dan perikanan prov jateng'),
(532, 'Arif Setiyono', '085641133767', 53, 1, '2019-12-11 01:36:13', '4ZQER', 1, '2019-12-11 08:36:16', 'Pelaksanan '),
(533, 'Laelatul Qodariyah ', '085641016997', 51, 1, '2019-12-11 01:37:14', 'Y3stP', 1, '2019-12-11 08:39:41', 'Mahasiswa '),
(534, 'Septiana Fitri Astuti', '082325448336', 53, 1, '2019-12-11 01:37:20', 'sUfr1', 1, '2019-12-11 08:37:23', 'Kasi Pemberdayaan Aplikasi dan Konten'),
(535, 'FITRIA NUR ARIFAH', '089688911951', 88, 1, '2019-12-11 01:39:35', 'L6uPa', 1, '2019-12-11 08:39:45', 'Mentri Kesma BEM KM UDINUS'),
(536, 'Salsabila Nur syifa', '0895382830411', 88, 1, '2019-12-11 01:40:18', 'G9qRt', 1, '2019-12-11 08:40:24', 'Bemkm udinus'),
(537, 'Yardan Wisnu Srikusumo', '085878092752', 88, 1, '2019-12-11 01:40:36', 'l0wOd', 1, '2019-12-11 08:40:47', 'BEM KM UDINUS (KEMENTERIAN SOSIAL MASYARAKAT)'),
(538, 'Alifah amalia putri', '081215858121', 33, 1, '2019-12-11 01:41:20', 'FYrxv', 1, '2019-12-11 08:41:29', 'Bemkm udinus'),
(539, 'Raziras Rahmadillah', '082210020918', 43, 1, '2019-12-11 01:44:57', 'uqGsS', 1, '2019-12-11 08:45:06', 'Kepala Bagian Program dan Umum PUSDATIN Kemendagri'),
(540, 'Drs. Mokamat M.Si', '081325625235', 10, 1, '2019-12-11 01:48:53', 'RYek4', 1, '2019-12-11 08:48:59', 'Kepala Bagian Tata Pemerintahan SETDA Kab Grobogan'),
(541, 'Muhammad Ulul Albab', '082329188673', 51, 1, '2019-12-11 01:52:29', 'KgLBi', 0, NULL, 'Mahasiswa'),
(542, 'Anaz Satria Aji', '085727460862', 37, 1, '2019-12-11 01:56:06', 'JwUs4', 1, '2019-12-11 08:58:16', 'Programmer Android'),
(543, 'Hendri santosa', '085225002088', 37, 1, '2019-12-11 01:57:34', 'Am7tI', 1, '2019-12-11 08:58:33', 'Inspektur'),
(544, 'Cahya Nurani Indah', '08562639091', 37, 1, '2019-12-11 01:58:13', 'Rpkow', 1, '2019-12-11 09:05:23', 'Diskominfo jateng'),
(545, 'Khomang Sukmana', '082135559611', 37, 1, '2019-12-11 02:03:27', 'IHrAN', 1, '2019-12-11 09:03:42', 'Staf Pengolah Data, DLHK Jateng'),
(546, 'Sujoko', '081325627644', 88, 1, '2019-12-11 02:53:01', 'wnGhJ', 0, NULL, 'Wartawan prosekutor'),
(547, 'Djoko Setyono, SSos', '085640630510', 3, 1, '2019-12-12 01:01:12', 'AEQmn', 0, NULL, 'Kepala Bagian Tata Pemerintahan'),
(548, 'Sumartini', '0817450780', 88, 1, '2020-02-11 08:07:27', 'ALXS8', 0, NULL, 'KEPALA UNIT PENGELOLAAN PENDAPATAN DAERAH KABUPATEN DEMAK'),
(549, 'Ir. FENDIAWAN TISKIANTORO, M.Si', '08213209908', 37, 1, '2020-02-26 01:10:18', 'KqHeR', 0, NULL, 'KEPALA DINAS KELAUTAN DAN PERIKANAN PROVINSI JAWA TENGAH');

-- --------------------------------------------------------

--
-- Table structure for table `absen_qr_20191210`
--

CREATE TABLE `absen_qr_20191210` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_wa` varchar(20) DEFAULT NULL,
  `id_instansi` int(11) DEFAULT 0,
  `id_event` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `key` varchar(128) DEFAULT NULL,
  `sts` tinyint(1) DEFAULT 0 COMMENT '0=belum hadir, 1=sudah hadir',
  `updated_at` datetime DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_qr_20191210`
--

INSERT INTO `absen_qr_20191210` (`id`, `nama`, `no_wa`, `id_instansi`, `id_event`, `created_at`, `key`, `sts`, `updated_at`, `jabatan`) VALUES
(1, 'Ketua DPRD Kab Kendal', '000000000', 1, 1, '2019-12-09 07:48:36', 'yT5hA', 0, NULL, NULL),
(2, 'Bupati Batang', '0000000000', 4, 1, '2019-12-09 07:48:39', 'R0qeG', 0, NULL, NULL),
(3, 'Ketua DPRD Kabupaten Banjarnegara', '000000000', 2, 1, '2019-12-09 07:49:41', 'YEIsA', 0, NULL, NULL),
(4, 'Ketua DPRD Kabupaten Banyumas', '000000000', 3, 1, '2019-12-09 07:50:04', 'FJuAZ', 0, NULL, NULL),
(5, 'Ketua DPRD Kabupaten Batang', '000000000', 4, 1, '2019-12-09 07:50:19', '6nkLi', 0, NULL, NULL),
(6, 'Ketua DPRD Kabupaten Blora', '000000000', 5, 1, '2019-12-09 07:50:41', 'NsK3B', 0, NULL, NULL),
(7, 'Ketua DPRD Kabupaten Boyolali', '000000000', 6, 1, '2019-12-09 07:51:17', 'J5gyQ', 0, NULL, NULL),
(8, 'Ketua DPRD Kabupaten Brebes', '000000000', 7, 1, '2019-12-09 07:52:23', 'RY2QT', 0, NULL, NULL),
(9, 'Ketua DPRD Kabupaten Cilacap', '000000000', 8, 1, '2019-12-09 07:52:52', 'XjSgm', 0, NULL, NULL),
(10, 'Ketua DPRD Kabupaten Demak', '000000000', 9, 1, '2019-12-09 07:53:34', 'vQOlA', 0, NULL, NULL),
(11, 'Ketua DPRD Kabupaten Grobogan', '000000000', 10, 1, '2019-12-09 07:53:54', 'Kzbdx', 0, NULL, NULL),
(12, 'Ketua DPRD Kabupaten Jepara', '000000000', 11, 1, '2019-12-09 07:54:27', 'e6tCm', 0, NULL, NULL),
(13, 'Ketua DRPD Kabupaten Karanganyar', '000000000', 12, 1, '2019-12-09 07:54:55', 'nf3cF', 0, NULL, NULL),
(14, 'Bupati Banjarnegara', '0000000000', 2, 1, '2019-12-09 07:55:00', 'WNfz6', 0, NULL, NULL),
(15, 'Ketua DPRD Kabupaten Kebumen', '000000000', 13, 1, '2019-12-09 07:55:24', 'RPm30', 0, NULL, NULL),
(16, 'Ketua DPRD Kabupaten Klaten', '000000000', 14, 1, '2019-12-09 07:55:44', 'SEJUL', 0, NULL, NULL),
(17, 'Ketua DPRD Kabupaten Kudus', '000000000', 15, 1, '2019-12-09 07:56:03', 'RV1n4', 0, NULL, NULL),
(18, 'Ketua DPRD Kabupaten Kudus', '000000000', 15, 1, '2019-12-09 07:56:22', 'D2LSQ', 0, NULL, NULL),
(19, 'Bupati Banyumas', '0000000000', 3, 1, '2019-12-09 07:56:32', '5RgO8', 0, NULL, NULL),
(20, 'Ketua DPRD Kabupaten Magelang', '000000000', 16, 1, '2019-12-09 07:56:39', '3KTwW', 0, NULL, NULL),
(21, 'Ketua DPRD Kabupaten Pati', '000000000', 17, 1, '2019-12-09 07:56:54', 'YsXUO', 0, NULL, NULL),
(22, 'Bupati Blora', '0000000000', 5, 1, '2019-12-09 07:57:13', '2CugF', 0, NULL, NULL),
(23, 'Ketua DPRD Kabupaten Pekalongan', '000000000', 18, 1, '2019-12-09 07:57:13', 'GiK3y', 0, NULL, NULL),
(24, 'Ketua DPRD Kabupaten Pemalang', '000000000', 19, 1, '2019-12-09 07:57:42', 'iv7YR', 0, NULL, NULL),
(25, 'Ketua DPRD Kabupaten Purbalingga', '000000000', 20, 1, '2019-12-09 07:58:03', '7mLAQ', 0, NULL, NULL),
(26, 'Bupati Boyolali', '0000000000', 6, 1, '2019-12-09 07:58:04', 'X2qUi', 0, NULL, NULL),
(27, 'Ketua DPRD Kabupaten Purworejo', '000000000', 21, 1, '2019-12-09 07:58:23', 'zNEqo', 0, NULL, NULL),
(28, 'Bupati Brebes', '0000000000', 7, 1, '2019-12-09 07:58:35', 'vRcfM', 0, NULL, NULL),
(29, 'Ketua DPRD Kabupaten Rembang', '000000000', 22, 1, '2019-12-09 07:58:42', 'ZxAgH', 0, NULL, NULL),
(30, 'Ketua DPRD Kabupaten Semarang', '000000000', 23, 1, '2019-12-09 07:59:00', 'GgLUi', 0, NULL, NULL),
(31, 'Bupati Cilacap', '0000000000', 8, 1, '2019-12-09 07:59:07', '7SlOZ', 0, NULL, NULL),
(32, 'Ketua DPRD Kabupaten Sragen', '000000000', 24, 1, '2019-12-09 07:59:19', 'rwiUq', 0, NULL, NULL),
(33, 'Bupati Demak', '0000000000', 9, 1, '2019-12-09 07:59:35', 'MxNpb', 0, NULL, NULL),
(34, 'Ketua DPRD Kabupaten Sukoharjo', '000000000', 25, 1, '2019-12-09 07:59:36', 'uThqv', 0, NULL, NULL),
(35, 'Ketua DPRD Kabupaten Tegal', '000000000', 26, 1, '2019-12-09 07:59:56', 'xNOCT', 0, NULL, NULL),
(36, 'Ketua DPRD Kabupaten Temanggung', '000000000', 27, 1, '2019-12-09 08:00:12', 'PcyOL', 0, NULL, NULL),
(37, 'Bupati Grobogan', '0000000000', 10, 1, '2019-12-09 08:00:26', 'fBst3', 0, NULL, NULL),
(38, 'Ketua DPRD Kabupaten Wonogiri', '000000000', 28, 1, '2019-12-09 08:00:32', 'kaVB7', 0, NULL, NULL),
(39, 'Ketua DPRD Kabupaten Wonosobo', '000000000', 29, 1, '2019-12-09 08:00:48', '6FvkI', 0, NULL, NULL),
(40, 'Bupati Jepara', '0000000000', 11, 1, '2019-12-09 08:00:58', 'gIStV', 0, NULL, NULL),
(41, 'Ketua DPRD Kota Magelang', '000000000', 30, 1, '2019-12-09 08:01:11', 'Oty5z', 0, NULL, NULL),
(42, 'Ketua DPRD Kota Pekalongan', '000000000', 31, 1, '2019-12-09 08:01:33', 'AmdYG', 0, NULL, NULL),
(43, 'Bupati Karanganyar', '0000000000', 12, 1, '2019-12-09 08:01:35', 'Wx7IU', 0, NULL, NULL),
(44, 'Ketua DPRD Kota Salatiga', '000000000', 32, 1, '2019-12-09 08:01:57', 'nzuUb', 0, NULL, NULL),
(45, 'Ketua DPRD Kota Semarang', '000000000', 33, 1, '2019-12-09 08:02:18', 'R2tTI', 0, NULL, NULL),
(46, 'Bupati Kebumen', '0000000000', 13, 1, '2019-12-09 08:02:18', '9vZBg', 0, NULL, NULL),
(47, 'Ketua DPRD Kota Surakarta', '000000000', 34, 1, '2019-12-09 08:02:39', '3Epoz', 0, NULL, NULL),
(48, 'Bupati Kendal', '0000000000', 1, 1, '2019-12-09 08:02:49', 'yU9zF', 0, NULL, NULL),
(49, 'Ketua DPRD Kota Tegal', '000000000', 35, 1, '2019-12-09 08:03:00', '7sLZo', 0, NULL, NULL),
(50, 'Ketua DPRD Provinsi Jawa Tengah', '000000000', 37, 1, '2019-12-09 08:03:27', '8ILrZ', 0, NULL, NULL),
(51, 'Bupati Klaten', '0000000000', 14, 1, '2019-12-09 08:04:21', 'QBmOh', 0, NULL, NULL),
(52, 'Bupati Kudus', '0000000000', 15, 1, '2019-12-09 08:05:09', '81OFk', 0, NULL, NULL),
(53, 'Bupati Magelang', '0000000000', 16, 1, '2019-12-09 08:07:39', 'ACJnp', 0, NULL, NULL),
(54, 'Bupati Pati', '0000000000', 17, 1, '2019-12-09 08:09:24', 'RCyVr', 0, NULL, NULL),
(55, 'Bupati Pekalongan', '0000000000', 18, 1, '2019-12-09 08:23:17', 'c5VQM', 0, NULL, NULL),
(56, 'Bupati Pemalang', '0000000000', 19, 1, '2019-12-09 08:23:52', '8jGV0', 0, NULL, NULL),
(57, 'Bupati Purbalingga', '0000000000', 20, 1, '2019-12-09 08:24:22', 'MbEB3', 0, NULL, NULL),
(58, 'Bupati Purworejo', '0000000000', 21, 1, '2019-12-09 08:24:46', 'z1JDv', 0, NULL, NULL),
(59, 'Bupati Rembang', '0000000000', 22, 1, '2019-12-09 08:25:06', 'XAQSD', 0, NULL, NULL),
(60, 'Bupati Semarang', '0000000000', 23, 1, '2019-12-09 08:25:29', 'Rmh4F', 0, NULL, NULL),
(61, 'Bupati Sragen', '0000000000', 24, 1, '2019-12-09 08:25:45', 'GuDKh', 0, NULL, NULL),
(62, 'Bupati Sukoharjo', '0000000000', 25, 1, '2019-12-09 08:26:11', 'VLvcg', 0, NULL, NULL),
(63, 'Bupati Tegal', '0000000000', 26, 1, '2019-12-09 08:26:30', 'x8CXr', 0, NULL, NULL),
(64, 'Bupati Temanggung', '0000000000', 27, 1, '2019-12-09 08:26:45', '9Ef70', 0, NULL, NULL),
(65, 'Bupati Wonogiri', '0000000000', 28, 1, '2019-12-09 08:27:18', 'Dq9mu', 0, NULL, NULL),
(66, 'Bupati Wonosobo', '0000000000', 29, 1, '2019-12-09 08:27:38', 'ODdxK', 0, NULL, NULL),
(68, 'Galla', '82138531751', 37, 1, '2019-12-10 00:55:25', '1NSWm', 1, '2019-12-10 08:00:25', NULL),
(71, 'Cokro Aminoto', '08112606529', 13, 1, '2019-12-10 01:08:43', 'ELzf2', 0, NULL, NULL),
(72, 'dr. TRI KUNCORO, M.M.R', '08170411273', 37, 1, '2019-12-10 01:13:35', 'jWRhF', 0, NULL, NULL),
(73, 'Johari SH', '085842222850', 7, 1, '2019-12-10 01:14:36', 'Ss4FR', 0, NULL, NULL),
(74, 'Drs. Catur Budi Fajar S.MM', '081578589422', 30, 1, '2019-12-10 01:38:43', 'DpclO', 0, NULL, NULL),
(75, 'Yunita Dyah Suminar, SKM, M.Sc, M.Si.', '08122757141', 37, 1, '2019-12-10 01:42:11', 'umaOW', 0, NULL, NULL),
(76, 'Ir. Wartono', '081332855755', 22, 1, '2019-12-10 01:45:38', 't9qmf', 0, NULL, NULL),
(77, 'Ir. Wartono', '081332855755', 22, 1, '2019-12-10 01:45:40', 'vVNQB', 0, NULL, NULL),
(78, 'Yos Rosyidi, S.I.P., M.si', '08122664343', 31, 1, '2019-12-10 01:46:51', 'E3Jld', 0, NULL, NULL),
(79, 'Nurul Indrawati, SH, MH', '085727905075', 31, 1, '2019-12-10 01:48:53', 'I5NSk', 0, NULL, NULL),
(80, 'Teguh Adrianto', '082322997660', 31, 1, '2019-12-10 01:52:44', 'jz2Mc', 0, NULL, NULL),
(81, 'GallaCoba', '000000000000', 1, 1, '2019-12-10 01:55:45', 'HI23Y', 0, NULL, NULL),
(82, 'Tamu001-DPRD/Pemerintah Kabupaten Kendal', '000000000', 1, 1, '2019-12-10 01:56:58', 'zBtDV', 0, NULL, NULL),
(83, 'Galla Coba', '082138531753', 1, 1, '2019-12-10 02:00:20', 'HEY9L', 1, '2019-12-10 09:03:49', NULL),
(84, 'Tamu001-DPRD/Pemerintah Kabupaten Kendal', '000000000', 1, 1, '2019-12-10 02:06:56', '5Ffij', 1, '2019-12-10 10:44:23', NULL),
(85, 'Tamu002-DPRD/Pemerintah Kabupaten Kendal', '000000000', 1, 1, '2019-12-10 02:07:10', 'KEDnJ', 0, NULL, NULL),
(86, 'Tamu003-DPRD/Pemerintah Kabupaten Kendal', '000000000', 1, 1, '2019-12-10 02:07:25', 'EOpi5', 0, NULL, NULL),
(87, 'Tamu001-DPRD/Pemerintah Kabupaten Kendal', '000000000', 2, 1, '2019-12-10 02:08:14', 'j1kgK', 0, NULL, NULL),
(88, 'Tamu001-DPRD/Pemerintah Kabupaten Kendal', '0000000000', 26, 1, '2019-12-10 02:09:15', 'x8Re0', 0, NULL, NULL),
(89, 'Tamu002-DPRD/Pemerintah Kabupaten Kendal', '0000000000', 26, 1, '2019-12-10 02:10:04', 'fNjU2', 0, NULL, NULL),
(90, 'Tamu003-DPRD/Pemerintah Kabupaten Kendal', '0000000000', 26, 1, '2019-12-10 02:10:32', '6baJB', 0, NULL, NULL),
(91, 'Tamu001-DPRD/PemerintahKabTemanggung', '0000000000', 27, 1, '2019-12-10 02:10:56', 'OvI1K', 1, '2019-12-10 10:42:56', NULL),
(92, 'Tamu002-DPRDKabBanjarnegara', '000000000', 2, 1, '2019-12-10 02:15:33', 'fQmyx', 0, NULL, NULL),
(93, 'Tamu003-DPRDKabBanjarnegara', '000000000', 2, 1, '2019-12-10 02:18:21', 'q4lJL', 0, NULL, NULL),
(94, 'Tamu001-DPRDKabBanyumas', '000000000', 3, 1, '2019-12-10 02:20:36', 'Gscie', 1, '2019-12-10 11:19:35', NULL),
(95, 'Tamu002-DPRDKabBanyumas', '000000000', 3, 1, '2019-12-10 02:21:08', 'gf6ac', 0, NULL, NULL),
(96, 'Tamu003-DPRDKabBanyumas', '000000000', 3, 1, '2019-12-10 02:21:37', 'mKFsY', 0, NULL, NULL),
(97, 'Tamu001-DPRDKabBatang', '000000000', 4, 1, '2019-12-10 02:21:58', 'WYXpM', 0, NULL, NULL),
(98, 'Tamu002-DPRDKabBatang', '000000000', 4, 1, '2019-12-10 02:22:23', 'TLl0a', 0, NULL, NULL),
(99, 'Tamu003-DPRDKabBatang', '000000000', 4, 1, '2019-12-10 02:22:35', 'Czc2i', 0, NULL, NULL),
(100, 'Tamu002-DPRDKabTemanggung', '0000000000', 27, 1, '2019-12-10 02:25:19', 'v0xJH', 0, NULL, NULL),
(101, 'Tamu003-DPRDKabTemanggung', '0000000000', 27, 1, '2019-12-10 02:25:48', 'hkp3F', 0, NULL, NULL),
(102, 'Tamu001-DPRDKabBlora', '000000000', 5, 1, '2019-12-10 02:25:50', 'yua3p', 0, NULL, NULL),
(103, 'Tamu002-DPRDKabBlora', '000000000', 5, 1, '2019-12-10 02:26:16', 'LijNB', 0, NULL, NULL),
(104, 'Tamu001-DPRDKabWonogiri', '0000000000', 28, 1, '2019-12-10 02:26:24', 'rcB5d', 0, NULL, NULL),
(105, 'Tamu003-DPRDKab', '000000000', 5, 1, '2019-12-10 02:26:31', 'bEyXp', 0, NULL, NULL),
(106, 'Tamu002-DPRDKabWonogiri', '0000000000', 28, 1, '2019-12-10 02:26:43', '9eSHZ', 0, NULL, NULL),
(107, 'Tamu001-DPRDKabBoyolali', '000000000', 6, 1, '2019-12-10 02:26:56', 'fZ8oa', 0, NULL, NULL),
(108, 'Tamu003-DPRDKabWonogiri', '00000000000', 28, 1, '2019-12-10 02:26:58', 't6lZI', 0, NULL, NULL),
(109, 'Tamu002-DPRDKabBoyolali', '000000000', 6, 1, '2019-12-10 02:27:15', 'fTsKM', 0, NULL, NULL),
(110, 'Tamu001-DPRDKabWonosobo', '0000000000', 29, 1, '2019-12-10 02:27:22', 'Z2am7', 1, '2019-12-10 11:15:32', NULL),
(111, 'Tamu003-DPRDKabBoyolali', '000000000', 6, 1, '2019-12-10 02:27:36', 'kY9QR', 0, NULL, NULL),
(112, 'Tamu002-DPRDKabWonosobo', '0000000000', 29, 1, '2019-12-10 02:27:49', 'nk6p9', 0, NULL, NULL),
(113, 'Tamu001-DPRDKabBrebes', '000000000', 7, 1, '2019-12-10 02:27:57', 'ugzb8', 0, NULL, NULL),
(114, 'Tamu003-DPRDKabWonosobo', '00000000000', 29, 1, '2019-12-10 02:28:09', 'vd0Tf', 0, NULL, NULL),
(115, 'Tamu002-DPRDKabBrebes', '000000000', 7, 1, '2019-12-10 02:28:17', 'WujMY', 0, NULL, NULL),
(116, 'Tamu003-DPRDKabBrebes', '000000000', 7, 1, '2019-12-10 02:28:35', 'SiMba', 0, NULL, NULL),
(117, 'Tamu001-DPRDKotaMagelang', '0000000000', 30, 1, '2019-12-10 02:29:01', 'j0ln6', 0, NULL, NULL),
(118, 'Tamu001-DPRDKabCilacap', '000000000', 8, 1, '2019-12-10 02:29:15', 'D0A6s', 0, NULL, NULL),
(119, 'Tamu002-DPRDKotaMagelang', '0000000000', 30, 1, '2019-12-10 02:29:23', 'pVolu', 0, NULL, NULL),
(120, 'Tamu002-DPRDKabCilacap', '000000000', 8, 1, '2019-12-10 02:29:41', 'McZp5', 0, NULL, NULL),
(121, 'Tamu003-DPRDKotaMagelang', '0000000000', 30, 1, '2019-12-10 02:29:47', 'cti0a', 0, NULL, NULL),
(122, 'Tamu003-DPRDKabCilacap', '000000000', 8, 1, '2019-12-10 02:30:00', 'zPldq', 0, NULL, NULL),
(123, 'Tamu001-DPRDKabDemak', '000000000', 9, 1, '2019-12-10 02:30:19', 'XHrKk', 0, NULL, NULL),
(124, 'Tamu001-DPRDKotaPekalongan', '0000000000', 31, 1, '2019-12-10 02:30:28', 'naYh1', 0, NULL, NULL),
(125, 'Tamu002-DPRDKotaPekalongan', '0000000000', 31, 1, '2019-12-10 02:30:53', 'avzYk', 0, NULL, NULL),
(126, 'Tamu002-DPRDKabDemak', '000000000', 9, 1, '2019-12-10 02:31:01', 'sNkVE', 0, NULL, NULL),
(127, 'Tamu003-DPRDKotaPekalongan', '0000000000', 31, 1, '2019-12-10 02:31:16', 'CwHvW', 0, NULL, NULL),
(128, 'Tamu003-DPRDKabDemak', '000000000', 9, 1, '2019-12-10 02:31:16', 'bvR3Q', 0, NULL, NULL),
(129, 'Tamu001-DPRDKabGrobogan', '000000000', 10, 1, '2019-12-10 02:31:37', 'Cp1ej', 1, '2019-12-10 11:02:16', NULL),
(130, 'Tamu002-DPRDKabGrobogan', '000000000', 10, 1, '2019-12-10 02:31:55', '5fIkc', 0, NULL, NULL),
(131, 'Tamu001-DPRDKotaSalatiga', '0000000000', 32, 1, '2019-12-10 02:31:57', 'cDl46', 0, NULL, NULL),
(132, 'Tamu002-DPRDKotaSalatiga', '0000000000', 32, 1, '2019-12-10 02:32:18', 'Q9vBi', 0, NULL, NULL),
(133, 'Tamu003-DPRDKabGrobogan', '000000000', 10, 1, '2019-12-10 02:32:29', 'fhQaG', 0, NULL, NULL),
(134, 'Tamu003-DPRDKotaSalatiga', '0000000000', 32, 1, '2019-12-10 02:32:38', 'MngpF', 0, NULL, NULL),
(135, 'Tamu001-DPRDKotaSemarang', '0000000000', 33, 1, '2019-12-10 02:33:17', '3UvB5', 0, NULL, NULL),
(136, 'Tamu001-DPRDKabJepara', '000000000', 11, 1, '2019-12-10 02:33:30', 'ZWyfL', 0, NULL, NULL),
(137, 'Tamu002-DPRDKotaSemarang', '0000000000', 33, 1, '2019-12-10 02:33:40', 'GA3Wj', 0, NULL, NULL),
(138, 'Tamu002-DPRDKabJepara', '000000000', 11, 1, '2019-12-10 02:33:49', 'J0EbQ', 0, NULL, NULL),
(139, 'Tamu003-DPRDKotaSemarang', '0000000000', 33, 1, '2019-12-10 02:33:58', 'Se8Ji', 0, NULL, NULL),
(140, 'Tamu003-DPRDKabJepara', '000000000', 11, 1, '2019-12-10 02:34:16', '3f1MO', 0, NULL, NULL),
(141, 'Tamu001-DPRDKotaSurakarta', '0000000000', 34, 1, '2019-12-10 02:34:31', 'CjwlY', 0, NULL, NULL),
(142, 'Tamu002-DPRDKotaSurakarta', '0000000000', 34, 1, '2019-12-10 02:34:47', 'TVn8W', 0, NULL, NULL),
(143, 'Tamu003-DPRDKotaSurakarta', '0000000000', 34, 1, '2019-12-10 02:35:05', 'bD10k', 0, NULL, NULL),
(144, 'Tamu001-DPRDKotaTegal', '0000000000', 35, 1, '2019-12-10 02:35:52', 'Wpr0a', 0, NULL, NULL),
(145, 'Tamu002-DPRDKotaTegal', '0000000000', 35, 1, '2019-12-10 02:36:11', 'SlvQa', 0, NULL, NULL),
(146, 'Tamu001-DPRDKabKaranganyar', '000000000', 12, 1, '2019-12-10 02:36:15', 'D6Oxu', 1, '2019-12-10 11:02:53', NULL),
(147, 'Tamu003-DPRDKotaTegal', '00000000000', 35, 1, '2019-12-10 02:36:31', 'JtAhr', 0, NULL, NULL),
(148, 'Tamu002-DPRDKabKaranganyar', '000000000', 12, 1, '2019-12-10 02:36:32', 'e9tsi', 0, NULL, NULL),
(149, 'Tamu003-DPRDKabKaranganyar', '000000000', 12, 1, '2019-12-10 02:36:52', 'aDCOu', 0, NULL, NULL),
(150, 'Tamu001-DPRDProvinsiJateng', '0000000000', 37, 1, '2019-12-10 02:37:19', '05QLj', 0, NULL, NULL),
(151, 'Tamu002-DPRDProvinsiJateng', '0000000000', 37, 1, '2019-12-10 02:37:36', 'z7NZV', 0, NULL, NULL),
(152, 'Tamu003-DPRDProvinsiJateng', '0000000000', 37, 1, '2019-12-10 02:37:52', 'VDATj', 0, NULL, NULL),
(153, 'Tamu001-DPRDKabSukoharjo', '0000000000', 25, 1, '2019-12-10 02:39:26', 'Yni1H', 0, NULL, NULL),
(154, 'Tamu002-DPRDKabSukoharjo', '0000000000', 25, 1, '2019-12-10 02:39:45', 'nKRec', 0, NULL, NULL),
(155, 'Tamu003-DPRDKabSukoharjo', '0000000000', 25, 1, '2019-12-10 02:40:01', '6T3AF', 0, NULL, NULL),
(156, 'Tamu001-DPRDKabSragen', '0000000000', 24, 1, '2019-12-10 02:40:22', 'FiuDf', 0, NULL, NULL),
(157, 'Tamu002-DPRDKabSragen', '0000000000', 24, 1, '2019-12-10 02:40:39', '0sbIP', 0, NULL, NULL),
(158, 'Tamu003-DPRDKabSragen', '0000000000', 24, 1, '2019-12-10 02:41:09', '2RXK7', 0, NULL, NULL),
(159, 'Tamu001-DPRDKabKebumen', '000000000', 13, 1, '2019-12-10 02:41:18', 'BMhot', 0, NULL, NULL),
(160, 'Tamu001-DPRDKabSemarang', '0000000000', 23, 1, '2019-12-10 02:41:38', 'BXY7W', 0, NULL, NULL),
(161, 'Tamu002-DPRDKabKebumen', '000000000', 13, 1, '2019-12-10 02:41:41', 'dpYJe', 0, NULL, NULL),
(162, 'Tamu002-DPRDKabSemarang', '0000000000', 23, 1, '2019-12-10 02:41:52', 's5EXN', 0, NULL, NULL),
(163, 'Tamu003-DPRDKabKebumen', '000000000', 13, 1, '2019-12-10 02:41:59', 'ACsU8', 0, NULL, NULL),
(164, 'Tamu003-DPRDKabSemarang', '0000000000', 23, 1, '2019-12-10 02:42:09', 'Ea8n0', 0, NULL, NULL),
(165, 'Tamu001-DPRDKabKlaten', '000000000', 14, 1, '2019-12-10 02:42:21', 'V20QB', 0, NULL, NULL),
(166, 'Tamu001-DPRDKabRembang', '0000000000', 22, 1, '2019-12-10 02:42:36', 'wUAyF', 0, NULL, NULL),
(167, 'Tamu002-DPRDKabKlaten', '000000000', 14, 1, '2019-12-10 02:42:37', 'ICb5s', 0, NULL, NULL),
(168, 'Tamu003-DPRDKabKlaten', '000000000', 14, 1, '2019-12-10 02:42:54', 'x5pYR', 0, NULL, NULL),
(169, 'Tamu002-DPRDKabRembang', '0000000000', 22, 1, '2019-12-10 02:42:55', 'Fe42b', 0, NULL, NULL),
(170, 'Tamu001-DPRDKabKudus', '000000000', 15, 1, '2019-12-10 02:43:12', 'g87a5', 0, NULL, NULL),
(171, 'Tamu003-DPRDKabRembang', '0000000000', 22, 1, '2019-12-10 02:43:13', '7fK0w', 0, NULL, NULL),
(172, 'Tamu002-DPRDKabKudus', '000000000', 15, 1, '2019-12-10 02:43:27', '9jUtT', 0, NULL, NULL),
(173, 'Tamu003-DPRDKabKudus', '000000000', 15, 1, '2019-12-10 02:43:48', 'xT1cR', 0, NULL, NULL),
(174, 'Tamu001-DPRDKabPurworejo', '0000000000', 21, 1, '2019-12-10 02:43:52', 'yQIEa', 0, NULL, NULL),
(175, 'Tamu002-DPRDKabPurworejo', '0000000000', 21, 1, '2019-12-10 02:44:07', 'lLFtA', 0, NULL, NULL),
(176, 'Tamu001-DPRDKabMagelang', '000000000', 16, 1, '2019-12-10 02:44:13', 'MinXO', 0, NULL, NULL),
(177, 'Tamu002-DPRDKabMagelang', '000000000', 16, 1, '2019-12-10 02:44:29', 'LMKrI', 0, NULL, NULL),
(178, 'Tamu003-DPRDKabPurworejo', '00000000000', 21, 1, '2019-12-10 02:44:39', 'pCmHs', 0, NULL, NULL),
(179, 'Tamu003-DPRDKabMagelang', '000000000', 16, 1, '2019-12-10 02:45:03', 'XbYJL', 0, NULL, NULL),
(180, 'Tamu001-DPRDKabPurbalingga', '0000000000', 20, 1, '2019-12-10 02:45:10', 'x06t4', 0, NULL, NULL),
(181, 'Tamu002-DPRDKabPurbalingga', '0000000000', 20, 1, '2019-12-10 02:45:30', 'ArNow', 0, NULL, NULL),
(182, 'Tamu003-DPRDKabPurbalingga', '0000000000', 20, 1, '2019-12-10 02:45:48', 'JFrX8', 0, NULL, NULL),
(183, 'Tamu001-DPRDKabPati', '000000000', 17, 1, '2019-12-10 02:45:50', 'i1DsT', 0, NULL, NULL),
(184, 'Tamu002-DPRDKabPati', '000000000', 17, 1, '2019-12-10 02:46:03', 'GHDPF', 0, NULL, NULL),
(185, 'Tamu001-DPRDKabPemalang', '0000000000', 19, 1, '2019-12-10 02:46:14', 'uV7mq', 0, NULL, NULL),
(186, 'Tamu003-DPRDKabPati', '000000000', 17, 1, '2019-12-10 02:46:19', '3ktBC', 0, NULL, NULL),
(187, 'Tamu002-DPRDKabPemalang', '0000000000', 19, 1, '2019-12-10 02:46:35', 'dPtix', 0, NULL, NULL),
(188, 'Tamu001-DPRDKabPekalongan', '000000000', 18, 1, '2019-12-10 02:46:45', 'iuVtA', 0, NULL, NULL),
(189, 'Tamu003-DPRDKabPemalang', '00000000000', 19, 1, '2019-12-10 02:46:59', 'xJT4W', 0, NULL, NULL),
(190, 'Tamu002-DPRDKabPekalongan', '000000000', 18, 1, '2019-12-10 02:47:04', 'OtjHw', 0, NULL, NULL),
(191, 'Tamu003-DPRDKabPekalongan', '000000000', 18, 1, '2019-12-10 02:47:18', 'tioIH', 0, NULL, NULL),
(192, 'Johari, SH', '085842222850', 59, 1, '2019-12-10 02:50:18', 'aKzTD', 0, NULL, NULL),
(193, 'Heru Nur Iswantoro S.Sos MM', '082225390463', 28, 1, '2019-12-10 02:53:26', '7Ha6D', 0, NULL, NULL),
(194, 'Narjo, SH, MH', '081542022222', 7, 1, '2019-12-10 03:47:03', 'gSFHL', 0, NULL, NULL),
(195, 'Drs. Khaerul Abidin, MM', '081911454325', 7, 1, '2019-12-10 03:55:13', 'XlEdk', 0, NULL, NULL),
(196, 'Drs.J Abdul Naser, MM', '081229705447', 56, 1, '2019-12-10 04:12:19', '3iMhS', 0, NULL, 'Kepala Diskominfo Kab Batang'),
(198, 'Endang Susilowati ', '081325343438', 9, 1, '2019-12-10 04:26:06', 'nxPTl', 0, NULL, 'Kasubbag Otda dan Kerja Sama '),
(199, 'H.DEDY YON SUPRIYONO,SE.MM', '085290994084', 35, 1, '2019-12-10 04:33:11', 'RcimX', 0, NULL, 'Walikota'),
(200, 'H.DEDY YON SUPRIYONO,SE.MM', '085290994084', 35, 1, '2019-12-10 04:33:44', 'b5wnA', 0, NULL, 'Walikota'),
(201, 'Drs.Diding Setiadi S', '081803954357', 59, 1, '2019-12-10 04:46:34', 'FTedK', 0, NULL, 'Kepala Dinas Budpar Kab. Brebes'),
(202, 'Maryono', '081215133355', 12, 1, '2019-12-10 04:48:02', 'IhVqU', 0, NULL, 'Kasubbag bina pemerintahan'),
(203, 'Drs. HAROE SRI SADONO, M.Pd', '081326828880', 59, 1, '2019-12-10 04:50:08', 'dPg4p', 0, NULL, 'Kasubag Program dan Keuangan Dinbudpar Brebes'),
(204, 'Drs. DIDING SETIADI, S', '081803954357', 59, 1, '2019-12-10 04:52:54', 'V5NfF', 0, NULL, 'Kepala Dinbudpar Brebes'),
(205, 'Agung Budiman, S.Sos, MM', '085869656850', 7, 1, '2019-12-10 04:59:13', 'xMSBb', 0, NULL, 'Kabag Hubungan antar Lembaga dan Kerjasama'),
(206, 'Lusiana Indira Isni, S.Sos, M.Ikom', '08156522007', 59, 1, '2019-12-10 05:01:01', 'kvSUQ', 0, NULL, 'Kabid Komunikasi dan kehumasan '),
(207, 'Bayu Arfi', '085640624062', 59, 1, '2019-12-10 05:04:53', 'hADEx', 0, NULL, 'Staf'),
(208, 'Triyamto Sutrisno, S.STP', '081392420088', 30, 1, '2019-12-10 05:05:10', 'iT3yX', 0, NULL, 'Kepala Bagian Tata Pemerintahan Kota Magelang'),
(209, 'Yuli Hastuti.SH.', '081325532999', 21, 1, '2019-12-10 05:08:13', 'K1tAg', 0, NULL, 'Wakil Bupati Purworejo'),
(210, 'Drs Catur Budi Fajar S, MM', '081578589422', 30, 1, '2019-12-10 05:09:19', 'Ypsf7', 0, NULL, 'Kepala Dinas Komunikasi, Informatika dan Statistik Kota Magelang'),
(211, 'Sri setyowati.SH.MM', '081227886666', 21, 1, '2019-12-10 05:13:07', 'ayjUp', 0, NULL, 'Kepala Bagian Pemerintahan setda Purworejo'),
(212, 'DJOKO SETYONO, S.Sos', '085640630510', 3, 1, '2019-12-10 05:13:43', 'gs61J', 0, NULL, 'Kepala Bagian Tata Pemerintahan'),
(213, 'MIRANTI, S.STP', '085290500220', 17, 1, '2019-12-10 05:14:52', 'Ue9Vc', 0, NULL, 'Kasubbag Kerjasama dan Otda Setda Kab.Pati'),
(214, 'Adi Fitra', '085799635393', 38, 1, '2019-12-10 05:15:11', 'vq2xH', 0, NULL, 'Direktur Utama'),
(215, 'Eling bangun wahyudi', '081915376266', 12, 1, '2019-12-10 05:18:11', 'EF7u2', 0, NULL, 'Bagian pemerintahan kab karanganyar'),
(216, 'Dion Agasi Setia Budi Sikom.MSi', '082133899229', 21, 1, '2019-12-10 05:23:48', 'v1ifE', 0, NULL, 'Ketua DPRD Kab.Purworejo'),
(217, 'Dion Agasi Setia Budi Sikom.MSi', '082133899229', 21, 1, '2019-12-10 05:24:11', 'aqFlO', 0, NULL, 'Ketua DPRD Kab.Purworejo'),
(218, 'ARIS Eko Purnomo', '081280005549', 15, 1, '2019-12-10 05:27:04', '2hmD9', 0, NULL, 'Pelaksana pada Bagian Tata Pemerintahan'),
(219, 'ENI SUHARYATI', '085747751623', 17, 1, '2019-12-10 05:29:01', 'L2UcK', 0, NULL, 'Kasubbag Ketatalaksanaan Setda Kab.Pati'),
(220, 'Drs. A.A. Triko Irianto, M.Si', '081280005549', 15, 1, '2019-12-10 05:29:07', 'T4DZq', 0, NULL, 'Kepala Bagian Tata Pemerintahan'),
(221, 'ANIS ROSIDI, S.SOS., M.SI', '08156536119', 70, 1, '2019-12-10 05:29:28', 'IQAUa', 0, NULL, 'Kepala Dinas'),
(222, 'Drs. MARKUS WAHYU PRIYONO', '085786931970', 35, 1, '2019-12-10 05:31:54', 'hO1tV', 0, NULL, 'Kepala Dinas Komunikasi dan Informatika Kota Tegal'),
(223, 'Ir. ARIEF FRIYOGA, CES', '081363557958', 37, 1, '2019-12-10 05:32:33', 'dSETR', 0, NULL, 'Plt Kepala Dinas'),
(224, 'M. ISMAIL FAHMI, S.IP, M.Si.', '08156661585', 35, 1, '2019-12-10 05:34:24', 'Iz3gN', 0, NULL, 'KEPALA BAGIAN ORGANISASI'),
(225, 'Dra. Rini Kartika Hadi Ahmadi', '081280005549', 15, 1, '2019-12-10 05:37:01', 'urzIW', 0, NULL, 'Kepala Bagian Organisasi'),
(226, 'Endah Hana Rosanti', '081326691218', 21, 1, '2019-12-10 05:37:05', 'XqUuA', 0, NULL, 'Kasubag otda '),
(227, 'Taufik Bagus Setyoko', '085647105111', 21, 1, '2019-12-10 05:38:48', 'IEjFq', 0, NULL, 'Kasubag kerjasama'),
(228, 'ILHAM PRASETYO, S.Sos, M.Si.', '08156661585', 35, 1, '2019-12-10 05:40:17', 'TFYZl', 0, NULL, 'KEPALA BAGIAN PEMERINTAHAN DAN KERJASAMA DAERAH'),
(229, 'INDRIYANTO, SH, M.Si', '08156539228', 17, 1, '2019-12-10 05:40:47', 'KEofd', 0, NULL, 'Kepala Dinas Komunikasi dan Informatika Kab.Pati'),
(230, 'dr. SRI PRIMAWATI INDRASWARI, Sp.KK., MM., ', '08156661585', 35, 1, '2019-12-10 05:41:42', 'l5Xy4', 0, NULL, 'KEPALA DINAS KESEHATAN'),
(231, 'BASUKI, SE., M.M.', '08156661585', 35, 1, '2019-12-10 05:43:30', '2bcFL', 0, NULL, 'KEPALA DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL'),
(232, 'Stephanus Aan SSTP.MSi', '082138208000', 73, 1, '2019-12-10 05:43:52', 'IwYkd', 0, NULL, 'Plt .Dinas Komunikasi dan Informasi'),
(233, 'DEDY YON SUPRIYONO', '085290994084', 35, 1, '2019-12-10 05:45:08', '4eqac', 0, NULL, 'WALI KOTA TEGAL'),
(234, 'AGUS ARIFIN, AP', '08156661585', 35, 1, '2019-12-10 05:47:48', 'T2cRV', 0, NULL, 'KEPALA BAGIAN UMUM'),
(235, 'AGENG GIGIH LEKSONO, S.STP', '08156661585', 35, 1, '2019-12-10 05:55:32', 'BNvr3', 0, NULL, 'AJUDAN WALI KOTA');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nip` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nip`, `nama`, `password`, `role_id`) VALUES
('123', 'wil', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id_domain` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `skpd` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `nama_domain` varchar(255) DEFAULT NULL,
  `filename` varchar(128) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `file_domain` varchar(256) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `domain`
--
DELIMITER $$
CREATE TRIGGER `insert_log_domain` AFTER INSERT ON `domain` FOR EACH ROW BEGIN
	INSERT INTO domain_log(id_domain, log_masuk, log_terima, log_tolak, status) 		VALUES(NEW.id_domain, CURRENT_TIMESTAMP(), NULL, NULL, 0);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `domain_log`
--

CREATE TABLE `domain_log` (
  `id_domain` int(11) NOT NULL,
  `log_masuk` datetime NOT NULL,
  `log_terima` datetime DEFAULT NULL,
  `log_tolak` datetime DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '0 = pending, 1= terima, 2= tolak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `domain_status`
--

CREATE TABLE `domain_status` (
  `id` int(11) NOT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domain_status`
--

INSERT INTO `domain_status` (`id`, `status`) VALUES
(0, 'pending'),
(1, 'diterima'),
(2, 'ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `pass` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `nama`, `slug`, `waktu`, `created_at`, `created_by`, `pass`) VALUES
(1, 'Launching Tanda Tangan Elektronik', 'launching-tte', '2019-12-11 07:00:00', '2019-12-07 13:55:14', 1, 'tte123x');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tingkat` tinyint(2) DEFAULT NULL COMMENT '1=pusat, 2=provinsi, 3=daerah, 4=swasta, 5=lain-lain'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `nama`, `tingkat`) VALUES
(1, 'DPRD/Pemerintah Kabupaten Kendal', NULL),
(2, 'DPRD/Pemerintah Kabupaten Banjarnegara', NULL),
(3, 'DPRD/Pemerintah Kabupaten Banyumas', NULL),
(4, 'DPRD/Pemerintah Kabupaten Batang', NULL),
(5, 'DPRD/Pemerintah Kabupaten Blora', NULL),
(6, 'DPRD/Pemerintah Kabupaten Boyolali', NULL),
(7, 'DPRD/Pemerintah Kabupaten Brebes', NULL),
(8, 'DPRD/Pemerintah Kabupaten Cilacap', NULL),
(9, 'DPRD/Pemerintah Kabupaten Demak', NULL),
(10, 'DPRD/Pemerintah Kabupaten Grobogan', NULL),
(11, 'DPRD/Pemerintah Kabupaten Jepara', NULL),
(12, 'DPRD/Pemerintah Kabupaten Karanganyar', NULL),
(13, 'DPRD/Pemerintah Kabupaten Kebumen', NULL),
(14, 'DPRD/Pemerintah Kabupaten Klaten', NULL),
(15, 'DPRD/Pemerintah Kabupaten Kudus', NULL),
(16, 'DPRD/Pemerintah Kabupaten Magelang', NULL),
(17, 'DPRD/Pemerintah Kabupaten Pati', NULL),
(18, 'DPRD/Pemerintah Kabupaten Pekalongan', NULL),
(19, 'DPRD/Pemerintah Kabupaten Pemalang', NULL),
(20, 'DPRD/Pemerintah Kabupaten Purbalingga', NULL),
(21, 'DPRD/Pemerintah Kabupaten Purworejo', NULL),
(22, 'DPRD/Pemerintah Kabupaten Rembang', NULL),
(23, 'DPRD/Pemerintah Kabupaten Semarang', NULL),
(24, 'DPRD/Pemerintah Kabupaten Sragen', NULL),
(25, 'DPRD/Pemerintah Kabupaten Sukoharjo', NULL),
(26, 'DPRD/Pemerintah Kabupaten Tegal', NULL),
(27, 'DPRD/Pemerintah Kabupaten Temanggung', NULL),
(28, 'DPRD/Pemerintah Kabupaten Wonogiri', NULL),
(29, 'DPRD/Pemerintah Kabupaten Wonosobo', NULL),
(30, 'DPRD/Pemerintah Kota Magelang', NULL),
(31, 'DPRD/Pemerintah Kota Pekalongan', NULL),
(32, 'DPRD/Pemerintah Kota Salatiga', NULL),
(33, 'DPRD/Pemerintah Kota Semarang', NULL),
(34, 'DPRD/Pemerintah Kota Surakarta', NULL),
(35, 'DPRD/Pemerintah Kota Tegal', NULL),
(37, 'DPRD/Pemerintah Provinsi Jawa Tengah', NULL),
(38, 'BUMD Provinsi Jawa Tengah', NULL),
(39, 'Pemerintah Pusat', NULL),
(40, 'Badan Siber dan Sandi Negara (BSSN)', NULL),
(41, 'Balai Sertifikasi Elektronik', NULL),
(42, 'Badan Kepegawaian Negara (BKN)', NULL),
(43, 'Kementerian Dalam Negeri RI (Kemendagri)', NULL),
(44, 'Kementerian Pendayaan Aparatur Negara dan Reformasi Birokrasi (Kemenpan RB)', NULL),
(45, 'Kepolisian Daerah Jawa Tengah', NULL),
(46, 'Komando Daerah Militer IV/Diponegoro', NULL),
(47, 'Gojek', NULL),
(48, 'PT. TASPEN', NULL),
(49, 'BPJS Ketenagakerjaan', NULL),
(50, 'BULOG', NULL),
(51, 'Universitas', NULL),
(52, 'BUMD Provinsi  Jawa Tengah', NULL),
(53, 'Dinas Kominfo Kabupaten Kendal', NULL),
(54, 'Dinas Kominfo Kabupaten Banjarnegara', NULL),
(55, 'Dinas Kominfo Kabupaten Banyumas', NULL),
(56, 'Dinas Kominfo Kabupaten Batang', NULL),
(57, 'Dinas Kominfo Kabupaten Blora', NULL),
(58, 'Dinas Kominfo Kabupaten Boyolali', NULL),
(59, 'Dinas Kominfo Kabupaten Brebes', NULL),
(60, 'Dinas Kominfo Kabupaten Cilacap', NULL),
(61, 'Dinas Kominfo Kabupaten Demak', NULL),
(62, 'Dinas Kominfo Kabupaten Grobogan', NULL),
(63, 'Dinas Kominfo Kabupaten Jepara', NULL),
(64, 'Dinas Kominfo Kabupaten Karanganyar', NULL),
(65, 'Dinas Kominfo Kabupaten Kebumen', NULL),
(66, 'Dinas Kominfo Kabupaten Klaten', NULL),
(67, 'Dinas Kominfo Kabupaten Kudus', NULL),
(68, 'Dinas Kominfo Kabupaten Magelang', NULL),
(69, 'Dinas Kominfo Kabupaten Pati', NULL),
(70, 'Dinas Kominfo Kabupaten Pekalongan', NULL),
(71, 'Dinas Kominfo Kabupaten Pemalang', NULL),
(72, 'Dinas Kominfo Kabupaten Purbalingga', NULL),
(73, 'Dinas Kominfo Kabupaten Purworejo', NULL),
(74, 'Dinas Kominfo Kabupaten Rembang', NULL),
(75, 'Dinas Kominfo Kabupaten Semarang', NULL),
(76, 'Dinas Kominfo Kabupaten Sragen', NULL),
(77, 'Dinas Kominfo Kabupaten Sukoharjo', NULL),
(78, 'Dinas Kominfo Kabupaten Tegal', NULL),
(79, 'Dinas Kominfo Kabupaten Temanggung', NULL),
(80, 'Dinas Kominfo Kabupaten Wonogiri', NULL),
(81, 'Dinas Kominfo Kabupaten Wonosobo', NULL),
(82, 'Dinas Kominfo Kota Magelang', NULL),
(83, 'Dinas Kominfo Kota Pekalongan', NULL),
(84, 'Dinas Kominfo Kota Salatiga', NULL),
(85, 'Dinas Kominfo Kota Semarang', NULL),
(86, 'Dinas Kominfo Kota Surakarta', NULL),
(87, 'Dinas Kominfo Kota Tegal', NULL),
(88, 'Instansi Vertikal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instansi_20191210`
--

CREATE TABLE `instansi_20191210` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tingkat` tinyint(2) DEFAULT NULL COMMENT '1=pusat, 2=provinsi, 3=daerah, 4=swasta, 5=lain-lain'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansi_20191210`
--

INSERT INTO `instansi_20191210` (`id`, `nama`, `tingkat`) VALUES
(1, 'DPRD/Pemerintah Kabupaten Kendal', NULL),
(2, 'DPRD/Pemerintah Kabupaten Banjarnegara', NULL),
(3, 'DPRD/Pemerintah Kabupaten Banyumas', NULL),
(4, 'DPRD/Pemerintah Kabupaten Batang', NULL),
(5, 'DPRD/Pemerintah Kabupaten Blora', NULL),
(6, 'DPRD/Pemerintah Kabupaten Boyolali', NULL),
(7, 'DPRD/Pemerintah Kabupaten Brebes', NULL),
(8, 'DPRD/Pemerintah Kabupaten Cilacap', NULL),
(9, 'DPRD/Pemerintah Kabupaten Demak', NULL),
(10, 'DPRD/Pemerintah Kabupaten Grobogan', NULL),
(11, 'DPRD/Pemerintah Kabupaten Jepara', NULL),
(12, 'DPRD/Pemerintah Kabupaten Karanganyar', NULL),
(13, 'DPRD/Pemerintah Kabupaten Kebumen', NULL),
(14, 'DPRD/Pemerintah Kabupaten Klaten', NULL),
(15, 'DPRD/Pemerintah Kabupaten Kudus', NULL),
(16, 'DPRD/Pemerintah Kabupaten Magelang', NULL),
(17, 'DPRD/Pemerintah Kabupaten Pati', NULL),
(18, 'DPRD/Pemerintah Kabupaten Pekalongan', NULL),
(19, 'DPRD/Pemerintah Kabupaten Pemalang', NULL),
(20, 'DPRD/Pemerintah Kabupaten Purbalingga', NULL),
(21, 'DPRD/Pemerintah Kabupaten Purworejo', NULL),
(22, 'DPRD/Pemerintah Kabupaten Rembang', NULL),
(23, 'DPRD/Pemerintah Kabupaten Semarang', NULL),
(24, 'DPRD/Pemerintah Kabupaten Sragen', NULL),
(25, 'DPRD/Pemerintah Kabupaten Sukoharjo', NULL),
(26, 'DPRD/Pemerintah Kabupaten Tegal', NULL),
(27, 'DPRD/Pemerintah Kabupaten Temanggung', NULL),
(28, 'DPRD/Pemerintah Kabupaten Wonogiri', NULL),
(29, 'DPRD/Pemerintah Kabupaten Wonosobo', NULL),
(30, 'DPRD/Pemerintah Kota Magelang', NULL),
(31, 'DPRD/Pemerintah Kota Pekalongan', NULL),
(32, 'DPRD/Pemerintah Kota Salatiga', NULL),
(33, 'DPRD/Pemerintah Kota Semarang', NULL),
(34, 'DPRD/Pemerintah Kota Surakarta', NULL),
(35, 'DPRD/Pemerintah Kota Tegal', NULL),
(37, 'DPRD/Pemerintah Provinsi Jawa Tengah', NULL),
(38, 'BUMD Provinsi Jawa Tengah', NULL),
(39, 'Pemerintah Pusat', NULL),
(40, 'Badan Siber dan Sandi Negara (BSSN)', NULL),
(41, 'Balai Sertifikasi Elektronik', NULL),
(42, 'Badan Kepegawaian Negara (BKN)', NULL),
(43, 'Kementerian Dalam Negeri RI (Kemendagri)', NULL),
(44, 'Kementerian Pendayaan Aparatur Negara dan Reformasi Birokrasi (Kemenpan RB)', NULL),
(45, 'Kepolisian Daerah Jawa Tengah', NULL),
(46, 'Komando Daerah Militer IV/Diponegoro', NULL),
(47, 'Gojek', NULL),
(48, 'PT. TASPEN', NULL),
(49, 'BPJS Ketenagakerjaan', NULL),
(50, 'BULOG', NULL),
(51, 'Universitas', NULL),
(52, 'BUMD Provinsi  Jawa Tengah', NULL),
(53, 'Dinas Kominfo Kabupaten Kendal', NULL),
(54, 'Dinas Kominfo Kabupaten Banjarnegara', NULL),
(55, 'Dinas Kominfo Kabupaten Banyumas', NULL),
(56, 'Dinas Kominfo Kabupaten Batang', NULL),
(57, 'Dinas Kominfo Kabupaten Blora', NULL),
(58, 'Dinas Kominfo Kabupaten Boyolali', NULL),
(59, 'Dinas Kominfo Kabupaten Brebes', NULL),
(60, 'Dinas Kominfo Kabupaten Cilacap', NULL),
(61, 'Dinas Kominfo Kabupaten Demak', NULL),
(62, 'Dinas Kominfo Kabupaten Grobogan', NULL),
(63, 'Dinas Kominfo Kabupaten Jepara', NULL),
(64, 'Dinas Kominfo Kabupaten Karanganyar', NULL),
(65, 'Dinas Kominfo Kabupaten Kebumen', NULL),
(66, 'Dinas Kominfo Kabupaten Klaten', NULL),
(67, 'Dinas Kominfo Kabupaten Kudus', NULL),
(68, 'Dinas Kominfo Kabupaten Magelang', NULL),
(69, 'Dinas Kominfo Kabupaten Pati', NULL),
(70, 'Dinas Kominfo Kabupaten Pekalongan', NULL),
(71, 'Dinas Kominfo Kabupaten Pemalang', NULL),
(72, 'Dinas Kominfo Kabupaten Purbalingga', NULL),
(73, 'Dinas Kominfo Kabupaten Purworejo', NULL),
(74, 'Dinas Kominfo Kabupaten Rembang', NULL),
(75, 'Dinas Kominfo Kabupaten Semarang', NULL),
(76, 'Dinas Kominfo Kabupaten Sragen', NULL),
(77, 'Dinas Kominfo Kabupaten Sukoharjo', NULL),
(78, 'Dinas Kominfo Kabupaten Tegal', NULL),
(79, 'Dinas Kominfo Kabupaten Temanggung', NULL),
(80, 'Dinas Kominfo Kabupaten Wonogiri', NULL),
(81, 'Dinas Kominfo Kabupaten Wonosobo', NULL),
(82, 'Dinas Kominfo Kota Magelang', NULL),
(83, 'Dinas Kominfo Kota Pekalongan', NULL),
(84, 'Dinas Kominfo Kota Salatiga', NULL),
(85, 'Dinas Kominfo Kota Semarang', NULL),
(86, 'Dinas Kominfo Kota Surakarta', NULL),
(87, 'Dinas Kominfo Kota Tegal', NULL),
(88, 'Instansi Vertikal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instansi_backup`
--

CREATE TABLE `instansi_backup` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tingkat` tinyint(2) DEFAULT NULL COMMENT '1=pusat, 2=provinsi, 3=daerah, 4=swasta, 5=lain-lain'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansi_backup`
--

INSERT INTO `instansi_backup` (`id`, `nama`, `tingkat`) VALUES
(1, 'Badan Siber dan Sandi Negara (BSSN)', NULL),
(2, 'Balai Sertifikasi Elektronik', NULL),
(3, 'Gojek', NULL),
(4, 'Musyawarah Pimpinan Daerah (Muspida) Jawa Tengah', NULL),
(5, 'Dewan Perwakilan Rakyat Daerah (DPRD) Provinsi Jawa Tengah', NULL),
(6, 'Badan Kepegawaian Negara (BKN)', NULL),
(7, 'Komisi Penyiaran Indonesia Daerah', NULL),
(8, 'Komisi Informasi Publik', NULL),
(9, '\r\nPT TASPEN (Persero)', NULL),
(10, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Kendal', NULL),
(11, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Banjarnegara', NULL),
(12, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Banyumas', NULL),
(13, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Batang', NULL),
(14, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Blora', NULL),
(15, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Boyolali', NULL),
(16, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Brebes', NULL),
(17, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Cilacap', NULL),
(18, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Demak', NULL),
(19, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Grobogan', NULL),
(20, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Jepara', NULL),
(21, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Karanganyar', NULL),
(22, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Kebumen', NULL),
(23, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Klaten', NULL),
(24, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Kudus', NULL),
(25, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Magelang', NULL),
(26, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Pati', NULL),
(27, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Pekalongan', NULL),
(28, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Pemalang', NULL),
(29, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Purbalingga', NULL),
(30, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Purworejo', NULL),
(31, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Rembang', NULL),
(32, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Semarang', NULL),
(33, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Sragen', NULL),
(34, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Sukoharjo', NULL),
(35, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Tegal', NULL),
(36, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Temanggung', NULL),
(37, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Wonogiri', NULL),
(38, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Wonosobo', NULL),
(39, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kota Magelang', NULL),
(40, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kota Pekalongan', NULL),
(41, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kota Salatiga', NULL),
(42, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kota Semarang', NULL),
(43, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kota Surakarta', NULL),
(44, 'Dewan Perwakilan Rakyat Daerah (DPRD) Kota Tegal', NULL),
(45, 'Bupati Kendal', NULL),
(46, 'Bupati Banjarnegara', NULL),
(47, 'Bupati Banyumas', NULL),
(48, 'Bupati Batang', NULL),
(49, 'Bupati Blora', NULL),
(50, 'Bupati Boyolali', NULL),
(51, 'Bupati Brebes', NULL),
(52, 'Bupati Cilacap', NULL),
(53, 'Bupati Demak', NULL),
(54, 'Bupati Grobogan', NULL),
(55, 'Bupati Jepara', NULL),
(56, 'Bupati Karanganyar', NULL),
(57, 'Bupati Kebumen', NULL),
(58, 'Bupati Klaten', NULL),
(59, 'Bupati Kudus', NULL),
(60, 'Bupati Magelang', NULL),
(61, 'Bupati Pati', NULL),
(62, 'Bupati Pekalongan', NULL),
(63, 'Bupati Pemalang', NULL),
(64, 'Bupati Purbalingga', NULL),
(65, 'Bupati Purworejo', NULL),
(66, 'Bupati Rembang', NULL),
(67, 'Bupati Semarang', NULL),
(68, 'Bupati Sragen', NULL),
(69, 'Bupati Sukoharjo', NULL),
(70, 'Bupati Tegal', NULL),
(71, 'Bupati Temanggung', NULL),
(72, 'Bupati Wonogiri', NULL),
(73, 'Bupati Wonosobo', NULL),
(74, 'Walikota Magelang', NULL),
(75, 'Walikota Pekalongan', NULL),
(76, 'Walikota Salatiga', NULL),
(77, 'Walikota Semarang', NULL),
(78, 'Walikota Surakarta', NULL),
(79, 'Walikota Tegal', NULL),
(80, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Kendal', NULL),
(81, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Banjarnegara', NULL),
(82, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Banyumas', NULL),
(83, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Batang', NULL),
(84, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Blora', NULL),
(85, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Boyolali', NULL),
(86, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Brebes', NULL),
(87, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Cilacap', NULL),
(88, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Demak', NULL),
(89, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Grobogan', NULL),
(90, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Jepara', NULL),
(91, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Karanganyar', NULL),
(92, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Kebumen', NULL),
(93, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Klaten', NULL),
(94, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Kudus', NULL),
(95, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Magelang', NULL),
(96, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Pati', NULL),
(97, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Pekalongan', NULL),
(98, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Pemalang', NULL),
(99, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Purbalingga', NULL),
(100, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Purworejo', NULL),
(101, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Rembang', NULL),
(102, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Semarang', NULL),
(103, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Sragen', NULL),
(104, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Sukoharjo', NULL),
(105, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Tegal', NULL),
(106, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Temanggung', NULL),
(107, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Wonogiri', NULL),
(108, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Wonosobo', NULL),
(109, 'Kepala Dinas Komunikasi dan Informatika Kota Magelang', NULL),
(110, 'Kepala Dinas Komunikasi dan Informatika Kota Pekalongan', NULL),
(111, 'Kepala Dinas Komunikasi dan Informatika Kota Salatiga', NULL),
(112, 'Kepala Dinas Komunikasi dan Informatika Kota Semarang', NULL),
(113, 'Kepala Dinas Komunikasi dan Informatika Kota Surakarta', NULL),
(114, 'Kepala Dinas Komunikasi dan Informatika Kota Tegal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelamin`
--

CREATE TABLE `kelamin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelamin`
--

INSERT INTO `kelamin` (`id`, `nama`) VALUES
(1, 'Laki laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`) VALUES
(1, 'Malang'),
(3, 'Blitar'),
(4, 'Tulungagung'),
(17, 'Jakarta'),
(21, 'Surabaya'),
(22, 'Paris');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `id_kota` int(11) DEFAULT NULL,
  `id_kelamin` int(1) DEFAULT NULL,
  `id_posisi` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `telp`, `id_kota`, `id_kelamin`, `id_posisi`, `status`) VALUES
('10', 'Antony Febriansyah Hartono', '082199568540', 1, 1, 1, 1),
('11', 'Hafizh Asrofil Al Banna', '087859615271', 1, 1, 1, 1),
('12', 'Faiq Fajrullah', '085736333728', 1, 1, 2, 1),
('3', 'Mustofa Halim', '081330493322', 1, 1, 3, 1),
('4', 'Dody Ahmad Kusuma Jaya', '083854520015', 1, 1, 2, 1),
('5', 'Mokhammad Choirul Ikhsan', '085749535400', 3, 1, 2, 1),
('7', 'Achmad Chadil Auwfar', '08984119934', 2, 1, 1, 1),
('8', 'Rizal Ferdian', '087777284179', 1, 1, 3, 1),
('9', 'Redika Angga Pratama', '083834657395', 1, 1, 3, 1),
('1', 'Tolkha Hasan', '081233072122', 1, 1, 4, 1),
('2', 'Wawan Dwi Prasetyo', '085745966707', 4, 1, 4, 1),
('91bc62ce2eb88ccd134a24f01e323073', 'Galla', '123123', 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE `posisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posisi`
--

INSERT INTO `posisi` (`id`, `nama`) VALUES
(1, 'IT'),
(2, 'HRD'),
(3, 'Keuangan'),
(4, 'Produk'),
(5, 'Web Developer');

-- --------------------------------------------------------

--
-- Table structure for table `rekomtek_app`
--

CREATE TABLE `rekomtek_app` (
  `id_rekomtek` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `skpd` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usulan` text DEFAULT NULL,
  `biaya` double DEFAULT NULL,
  `pengembangan` text DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `lingkup` text DEFAULT NULL,
  `filename` varchar(150) DEFAULT NULL,
  `file_rekomtek_app` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `rekomtek_app`
--
DELIMITER $$
CREATE TRIGGER `insert_log_rekomtek_app` AFTER INSERT ON `rekomtek_app` FOR EACH ROW BEGIN
	INSERT INTO rekomtek_app_log(id_rekomtek, log_masuk, log_terima, log_tolak, 	status) VALUES(NEW.id_rekomtek, CURRENT_TIMESTAMP(), NULL, NULL, 0);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rekomtek_app_log`
--

CREATE TABLE `rekomtek_app_log` (
  `id_rekomtek` int(11) NOT NULL,
  `log_masuk` datetime NOT NULL,
  `log_terima` datetime DEFAULT NULL,
  `log_tolak` datetime DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '0 = pending, 1= terima, 2= tolak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rekomtek_app_status`
--

CREATE TABLE `rekomtek_app_status` (
  `id` int(11) NOT NULL,
  `id_rekomtek` int(11) DEFAULT NULL,
  `stat` int(2) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role` varchar(5) NOT NULL,
  `parent` varchar(2) DEFAULT NULL,
  `rolename` varchar(150) NOT NULL,
  `desc` varchar(250) NOT NULL,
  `aktif` varchar(1) DEFAULT 'y',
  `katsms` varchar(150) DEFAULT NULL,
  `jabatan` varchar(250) DEFAULT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role`, `parent`, `rolename`, `desc`, `aktif`, `katsms`, `jabatan`, `token`) VALUES
('10', '', 'ADMINISTRATOR', 'ADMINISTRATOR', 'y', NULL, NULL, ''),
('10.01', '10', 'SUPER ADMIN', 'SUPER ADMIN', 'y', NULL, NULL, ''),
('10.10', '10', 'VERIFIKATOR', 'VERIFIKATOR', 'y', NULL, NULL, ''),
('11', '', 'INFRASTRUKTUR', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('11.01', '11', 'DPU BINMAR CIPKA', 'INFO KONDISI RUAS JALAN', 'y', 'INFRASTUKTUR', NULL, ''),
('11.02', '11', 'DINAS PERHUBUNGAN', 'INFO SARANA PRASARANA JALAN RAYA', 'y', 'INFRASTUKTUR', NULL, ''),
('11.03', '11', 'DISPERAKIM', 'INFO PERUMAHAN RAKYAT DAN KAWASAN PERMUKIMAN ', 'y', 'INFRASTUKTUR', NULL, ''),
('11.04', '11', 'PUSDATARU', 'INFO PEKERJAAN UMUM SUMBER DAYA AIR DAN TATA RUANG', 'y', 'INFRASTUKTUR', NULL, ''),
('11.05', '11', 'BIRO INFRASTRUKTUR DAN SDA', 'INFO INFRASTRUKTUR DAN SDA', 'y', 'INFRASTUKTUR', NULL, ''),
('11.06', '11', 'PDAB Tirta Utama', 'Info PDAM/Air bersih', 'y', 'INFRASTUKTUR', NULL, ''),
('11.07', '11', 'Kanwil BPN Provinsi Jawa Tengah', 'Info Pertanahan', 'y', 'INFRASTUKTUR', NULL, ''),
('12', '', 'KESEHATAN', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('12.01', '12', 'DINAS KESEHATAN', 'INFO KESEHATAN', 'y', 'KESEHATAN', NULL, '12345'),
('12.02', '12', 'RSUD MOEWARDI SURAKARTA', 'INFO  RUMAH SAKIT', 'y', 'KESEHATAN', NULL, ''),
('12.03', '12', 'RSUD MARGONO SOEKARJO BANYUMAS', 'INFO  RUMAH SAKIT', 'y', 'KESEHATAN', NULL, ''),
('12.04', '12', 'RSUD TUGUREJO SEMARANG', 'INFO  RUMAH SAKIT', 'y', 'KESEHATAN', NULL, ''),
('12.05', '12', 'RSUD KELET JEPARA', 'INFO  RUMAH SAKIT', 'y', 'KESEHATAN', NULL, ''),
('12.06', '12', 'RSJD DR. RM SOEDJARWADI KLATEN', 'INFO  RUMAH SAKIT', 'y', 'KESEHATAN', NULL, ''),
('12.07', '12', 'RSJD SURAKARTA', 'INFO  RUMAH SAKIT', 'y', 'KESEHATAN', NULL, ''),
('12.08', '12', 'RSJD AMINO GONDOKUSUMO', 'INFO  RUMAH SAKIT', 'y', 'KESEHATAN', NULL, ''),
('12.09', '12', 'BPJS Kesehatan', 'Info BPJS Kesehatan', 'y', 'KESEHATAN', NULL, ''),
('12.10', '12', 'RSUP Dr.Kariadi', 'Info RSUP Dr.Kariadi', 'y', 'KESEHATAN', NULL, ''),
('13', '', 'ENERGI', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('13.01', '13', 'DINAS ESDM', 'INFO PERTAMBANGAN DAN ENERGI ', 'y', 'ENERGI', NULL, ''),
('13.02', '13', 'PLN Distribusi JatengDIY', 'Info Listrik', 'n', 'ENERGI', NULL, ''),
('13.03', '13', 'Pertamina UMPS IV Jateng dan DIY', 'info BBM', 'n', 'ENERGI', NULL, ''),
('14', '', 'PENDIDIKAN', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('14.01', '14', 'DISDIKBUD', 'INFO PENDIDIKAN DAN KEBUDAYAAN', 'y', 'PENDIDIKAN', NULL, ''),
('14.02', '14', 'BADAN PENGEMBANGAN SUMBER DAYA MANUSIA DAERAH', 'INFO KEGIATAN PELATIHAN ', 'y', 'PENDIDIKAN', NULL, ''),
('15', '', 'KEPEGAWAIAN', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('15.01', '15', 'BADAN KEPEGAWAIAN DAERAH ', 'INFO KEPEGAWAIAN', 'y', 'KEPEGAWAIAN', NULL, ''),
('15.02', '15', 'BIRO ORPEG', 'INFO KEPEGAWAIAN', 'y', 'KEPEGAWAIAN', NULL, ''),
('16', '', 'PERTANIAN', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('16.01', '16', 'DINAS PERTANIAN DAN PERKEBUNAN', 'INFO PERTANIAN', 'y', 'PERTANIAN', NULL, ''),
('16.02', '16', 'DINAS PETERNAKAN DAN KESEHATAN HEWAN', 'INFO PETERNAKAN', 'y', 'PERTANIAN', NULL, ''),
('16.03', '16', 'DINAS PERKEBUNAN', 'INFO PERKEBUNAN', 'n', 'PERTANIAN', NULL, ''),
('16.04', '16', 'DINAS  KEHUTANAN', 'INFO KEHUTANAN', 'n', 'PERTANIAN', NULL, ''),
('16.05', '16', 'DINAS PERIKANAN DAN KELAUTAN', 'INFO PERIKANAN DAN KELAUTAN', 'y', 'PERTANIAN', NULL, ''),
('16.06', '16', 'BAKORLUH', 'INFO PENYULUHAN PERTANIAN, PERIKANAN DAN KEHUTANAN', 'n', 'PERTANIAN', NULL, ''),
('16.07', '16', 'Bulog Regional Jateng', 'Info Bahan Pangan', 'y', 'PERTANIAN\r\n', NULL, ''),
('17', '', 'PEMBANGUNAN DAERAH', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('17.01', '17', 'BIRO BANGDA', 'INFO PEMBANGUNAN PROVINSI', 'y', 'PEMBANGUNAN DAERAH', NULL, ''),
('17.02', '17', 'BAPPEDA', 'INFO PEMBANGUNAN PROVINSI', 'y', 'PEMBANGUNAN DAERAH', NULL, ''),
('17.03', '17', 'DPMPTSP', 'INFO PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU', 'y', 'PEMBANGUNAN DAERAH', NULL, ''),
('18', '', 'PERMADES DAN KEPENDUDUKAN', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('18.01', '18', 'DISPERMADES DUKCAPIL', 'INFO PEMBERDAYAAN MASYARAKAT, DESA, KEPENDUDUKAN DAN PENCATATAN SIPIL', 'y', 'PERMADES DAN KEPENDUDUKAN', NULL, ''),
('19', '', 'KEUANGAN DAN ASET ', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('19.01', '19', 'BPPD', 'INFO PENDAPATAN ASLI DAERAH', 'y', 'KEUANGAN DAN ASET ', NULL, ''),
('19.02', '19', 'BPKAD', 'INFO PENGELOLA KEUANGAN DAN ASET DAERAH', 'y', 'KEUANGAN DAN ASET ', NULL, ''),
('19.03', '19', 'Kanwil Ditjen Pajak Jawa Tengah', 'Info Perpajakan', 'n', 'KEUANGAN DAN ASET ', NULL, ''),
('20', '', 'BENCANA ', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('20.01', '20', 'BADAN PENANGGULANGAN BENCANA DAERAH (BPBD)', 'INFO BENCANA', 'y', 'BENCANA\r\n', NULL, ''),
('21', '', 'EKONOMI DAN INDUSTRI', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('21.01', '21', 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'INFO INDUSTRIDAN DAGANG', 'y', 'EKONOMI DAN INDUSTRI', NULL, ''),
('21.02', '21', 'BIRO PEREKONOMIAN', 'INFO PEREKONOMIAN', 'y', 'EKONOMI DAN INDUSTRI', NULL, ''),
('21.04', '21', 'DINAS KOPERASI DAN UMKM', 'INFO KOPERASI', 'y', 'EKONOMI DAN INDUSTRI', NULL, ''),
('21.05', '21', 'BANK JATENG', 'PT BPD JAWA TENGAH', 'n', 'EKONOMI DAN INDUSTRI', NULL, ''),
('22', '', 'SOSIAL MASYARAKAT', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('22.01', '22', 'DINAS SOSIAL', 'INFO SOSIAL DAN MASYARAKAT', 'y', 'SOSIAL MASYARAKAT', NULL, ''),
('22.02', '22', 'DISNAKERTRANS', 'INFO DATA TENAGA KERJA DAN TRANSMIGRASI', 'y', 'SOSIAL MASYARAKAT', NULL, ''),
('22.03', '22', 'BADAN KESBANGPOL', 'INFO ORGANISASI MASYARAKAT', 'y', 'SOSIAL MASYARAKAT', NULL, ''),
('22.04', '22', 'BIRO KESEJAHTERAAN RAKYAT ', 'INFO DANA BANTUAN SOSIAL', 'y', 'SOSIAL MASYARAKAT', NULL, ''),
('22.05', '22', 'BIRO BINA MENTAL', 'INFO KEAGAMAAN ', 'n', 'SOSIAL MASYARAKAT', NULL, ''),
('22.06', '22', 'BPJS Ketenagakerjaaan Regional IV Jateng dan DIY', 'Info BPJS Tk', 'y', 'SOSIAL MASYARAKAT', NULL, ''),
('23', '', 'LINGKUNGAN', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('23.01', '23', 'DINAS LINGKUNGAN HIDUP DAN KEHUTANAN', 'INFO LINGKUNGAN HIDUP DAN KEHUTANAN', 'y', 'LINGKUNGAN', NULL, ''),
('24', '', 'PARIWISATA DAN BUDAYA ', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('24.02', '24', 'DINAS KEPEMUDAAN, OLAHRAGA DAN PARIWISATA', 'INFO KEPEMUDAAN, OLAHRAGA DAN PARIWISATA', 'y', 'PARIWISATA DAN BUDAYA ', NULL, ''),
('25', '', 'SEKTOR LAIN-LAIN', 'SEKTOR - RUMPUN', 'n', NULL, NULL, ''),
('25.01', '25', 'INSPEKTORAT', 'INFO PENGAWASAN SKPD PROVINSI', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.02', '25', 'DINAS KETAHANAN PANGAN', 'INFO PANGAN', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.03', '25', 'DPPPA DALDUK KB', 'INFO PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK, PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.04', '25', 'DINAS KEARSIPAN DAN PERPUSTAKAAN', 'INFO KEARSIPAN DAERAH ', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.05', '25', 'BADAN PENELITIAN DAN PENGEMBANGAN', 'INFO PENELITIAN DAN PENGEMBANGAN', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.06', '25', 'SATPOL PP', 'INFO KEAMANAN PEMERINTAHAN', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.08', '25', 'BAKORWIL I', 'INFO DAERAH', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.09', '25', 'BAKORWIL II', 'INFO DAERAH ', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.10', '25', 'BAKORWIL III', 'INFO DAERAH', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.11', '25', 'BADAN PENGHUBUNG', 'INFO DAERAH', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.12', '25', 'KOMISI PEMILIHAN UMUM (KPU) PROVINSI ', 'INFO PEMILIHAN UMUM', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.13', '25', 'KOMISI PENYIARAN INDONESIA DAERAH (KPID)', 'INFO PENYIARAN ', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.14', '25', 'SEKRETARIAT DPRD PROV.  JATENG', 'INFO ANGGOTA LEGISLATIF', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.15', '25', 'BIRO HUKUM', 'INFO PRODUK HUKUM', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.16', '25', 'BIRO UMUM', 'INFO SEKRETARIAT DAERAH', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.17', '25', 'BIRO HUMAS', 'INFO SEKRETARIAT DAERAH  ', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.18', '25', 'BIRO PEMERINTAHAN, OTONOMI DAERAH DAN KERJASAMA ', 'INFO PEMERINTAHAN, OTONOMI DAERAH DAN KERJASAMA ', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.19', '25', 'BIRO OTONOMI DAERAH DAN KERJASAMA', 'INFO OTONOMI DAERAH DAN KERJA SAMA', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.20', '25', 'DISKOMINFO', 'INFO KOMUNIKASI DAN INFORMATIKA', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.22', '25', 'Kanwil Kemenag Provinsi Jawa Tengah', 'info Kemenag', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.23', '25', 'BMKG Provinsi Jawa Tengah', 'info BMKG', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.24', '25', 'Bawaslu Provinsi Jawa Tengah', 'Info Bawaslu', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.25', '25', 'Kanwil KemenkumHAM Provinsi Jawa Tengah', 'Info Hukum dan HAM', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('25.26', '25', 'BPS Prov Jateng', 'Info Statistik', 'y', 'SEKTOR LAIN-LAIN', NULL, ''),
('26', '', 'Forkominda', 'Forum Komunikasi Pimpinan Daerah', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('26.01', '26', 'Pimpinan DPRD 1 Jawa Tengah', 'Pimpinan DPRD 1 Jawa Tengah', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('26.02', '26', 'Kejaksaaan Tinggi Jawa Tengah', 'Kejaksaaan Tinggi Jawa Tengah', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('26.03', '26', 'Kepolisian Daerah Jawa Tengah', 'Kepolisian Daerah Jawa Tengah', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('26.04', '26', 'Pengadilan Tinggi Jawa Tengah', 'Pengadilan Tinggi Jawa Tengah', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('26.05', '26', 'Komando Daerah Militer IV', 'Komando Daerah Militer IV', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('26.06', '26', 'DPRD 1 Jawa Tengah', 'DPRD 1 Jawa Tengah', 'n', 'SEKTOR LAIN-LAIN', NULL, ''),
('27', '', 'Kabupaten Kota', 'Role Group Kabupaten / Kota Jawa Tengah', 'n', NULL, NULL, ''),
('27.01', '27', 'Kabupaten Kendal', 'Kabupaten Kendal', 'y', 'Kabupaten Kendal', NULL, ''),
('27.02', '27', 'Kabupaten Banjarnegara', 'Kabupaten Banjarnegara', 'y', 'Kabupaten Banjarnegara', NULL, ''),
('27.03', '27', 'Kabupaten Banyumas', 'Kabupaten Banyumas', 'y', 'Kabupaten Banyumas', NULL, ''),
('27.04', '27', 'Kabupaten Batang', 'Kabupaten Batang', 'y', 'Kabupaten Batang', NULL, ''),
('27.05', '27', 'Kabupaten Blora', 'Kabupaten Blora', 'y', 'Kabupaten Blora', NULL, ''),
('27.06', '27', 'Kabupaten Boyolali', 'Kabupaten Boyolali', 'y', 'Kabupaten Boyolali', NULL, ''),
('27.07', '27', 'Kabupaten Brebes', 'Kabupaten Brebes', 'y', 'Kabupaten Brebes', NULL, ''),
('27.08', '27', 'Kabupaten Cilacap', 'Kabupaten Cilacap', 'y', 'Kabupaten Cilacap', NULL, ''),
('27.09', '27', 'Kabupaten Demak', 'Kabupaten Demak', 'y', 'Kabupaten Demak', NULL, ''),
('27.10', '27', 'Kabupaten Grobogan', 'Kabupaten Grobogan', 'y', 'Kabupaten Grobogan', NULL, ''),
('27.11', '27', 'Kabupaten Jepara', 'Kabupaten Jepara', 'y', 'Kabupaten Jepara', NULL, ''),
('27.12', '27', 'Kabupaten Karanganyar', 'Kabupaten Karanganyar', 'y', 'Kabupaten Karanganyar', NULL, ''),
('27.13', '27', 'Kabupaten Kebumen', 'Kabupaten Kebumen', 'y', 'Kabupaten Kebumen', NULL, ''),
('27.14', '27', 'Kabupaten Klaten', 'Kabupaten Klaten', 'y', 'Kabupaten Klaten', NULL, ''),
('27.15', '27', 'Kabupaten Kudus', 'Kabupaten Kudus', 'y', 'Kabupaten Kudus', NULL, ''),
('27.16', '27', 'Kabupaten Magelang', 'Kabupaten Magelang', 'y', 'Kabupaten Magelang', NULL, ''),
('27.17', '27', 'Kabupaten Pati', 'Kabupaten Pati', 'y', 'Kabupaten Pati', NULL, ''),
('27.18', '27', 'Kabupaten Pekalongan', 'Kabupaten Pekalongan', 'y', 'Kabupaten Pekalongan', NULL, ''),
('27.19', '27', 'Kabupaten Pemalang', 'Kabupaten Pemalang', 'y', 'Kabupaten Pemalang', NULL, ''),
('27.20', '27', 'Kabupaten Purbalingga', 'Kabupaten Purbalingga', 'y', 'Kabupaten Purbalingga', NULL, ''),
('27.21', '27', 'Kabupaten Purworejo', 'Kabupaten Purworejo', 'y', 'Kabupaten Purworejo', NULL, ''),
('27.22', '27', 'Kabupaten Rembang', 'Kabupaten Rembang', 'y', 'Kabupaten Rembang', NULL, ''),
('27.23', '27', 'Kabupaten Semarang', 'Kabupaten Semarang', 'y', 'Kabupaten Semarang', NULL, ''),
('27.24', '27', 'Kabupaten Sragen', 'Kabupaten Sragen', 'y', 'Kabupaten Sragen', NULL, ''),
('27.25', '27', 'Kabupaten Sukoharjo', 'Kabupaten Sukoharjo', 'y', 'Kabupaten Sukoharjo', NULL, ''),
('27.26', '27', 'Kabupaten Tegal', 'Kabupaten Tegal', 'y', 'Kabupaten Tegal', NULL, ''),
('27.27', '27', 'Kabupaten Temanggung', 'Kabupaten Temanggung', 'y', 'Kabupaten Temanggung', NULL, ''),
('27.28', '27', 'Kabupaten Wonogiri', 'Kabupaten Wonogiri', 'y', 'Kabupaten Wonogiri', NULL, ''),
('27.29', '27', 'Kabupaten Wonosobo', 'Kabupaten Wonosobo', 'y', 'Kabupaten Wonosobo', NULL, ''),
('27.30', '27', 'Kota Magelang', 'Kota Magelang', 'y', 'Kota Magelang', NULL, ''),
('27.31', '27', 'Kota Pekalongan', 'Kota Pekalongan', 'y', 'Kota Pekalongan', NULL, ''),
('27.32', '27', 'Kota Salatiga', 'Kota Salatiga', 'y', 'Kota Salatiga', NULL, ''),
('27.33', '27', 'Kota Semarang', 'Kota Semarang', 'y', 'Kota Semarang', NULL, ''),
('27.34', '27', 'Kota Surakarta', 'Kota Surakarta', 'y', 'Kota Surakarta', NULL, ''),
('27.35', '27', 'Kota Tegal', 'Kota Tegal', 'y', 'Kota Tegal', NULL, ''),
('29', '', 'SABERPUNGLI', 'Tim Saber Pungli oleh Inspektorat dan POLDA Jateng', 'n', '', NULL, ''),
('29.01', '29', 'TIM SABER PUNGLI', 'Tim Saber Pungli Inspektorat dan POLDA Jateng', 'n', 'SABERPUNGLI', NULL, ''),
('30', '', 'LAPOR SP4N', 'Aduan dinaikan ke level Nasional/K/L', 'n', NULL, NULL, ''),
('30.01', '30', 'Lapor SP4N', 'Aduan dinaikan ke Kementrian/Lembaga', 'n', 'LAPOR SP4N', NULL, ''),
('9', '', 'DASHBOARD', 'ADMIN PELAPORAN', 'n', NULL, NULL, ''),
('9.01', '9', 'STRUKTURAL', 'DASHBOARD PELAPORAN', 'n', NULL, NULL, ''),
('9.02', '9', 'ADMIN SMSLAPORGUB', 'ADMIN SMSLAPORGUB', 'n', NULL, NULL, ''),
('9.03', '9', 'ADMIN SP4N', 'ADMIN LAPOR SP4N ', 'n', NULL, NULL, ''),
('9.04', '9', 'ADMIN TWITTER KEMALA', 'ADMIN TWITTER KEMALA', 'n', NULL, NULL, ''),
('9.05', '9', 'ADMIN HOTLINE GANJAR', 'ADMIN HOTLINE GANJAR', 'n', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `skpd`
--

CREATE TABLE `skpd` (
  `id_skpd` int(11) NOT NULL,
  `kode_skpd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_skpd` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `aktif` char(1) CHARACTER SET latin1 DEFAULT 'y' COMMENT 'y or n',
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skpd`
--

INSERT INTO `skpd` (`id_skpd`, `kode_skpd`, `nama_skpd`, `aktif`, `token`) VALUES
(1, '1.01.01', 'Dinas Pendidikan dan Kebudayaan', 'y', '1'),
(2, '1.02.01', 'Dinas Kesehatan', 'y', '2'),
(3, '1.02.02', 'RSUD Dr. Moewardi', 'y', '3'),
(4, '1.02.03', 'RSUD Prof. Dr. Margono Soekarjo', 'y', '4'),
(5, '1.02.04', 'RSUD Tugurejo Semarang', 'y', '5'),
(6, '1.02.05', 'RSUD Kelet Donorejo', 'y', '6'),
(7, '1.02.06', 'RSJD Dr. Amino Gondohutomo', 'y', '7'),
(8, '1.02.07', 'RSJD Surakarta', 'y', '8'),
(9, '1.02.08', 'RSJD Dr. RM Soedjarwadi', 'y', '9'),
(10, '1.03.01', 'Dinas Pekerjaan Umum Bina Marga dan Cipta Karya', 'y', '10'),
(11, '1.03.02', 'Dinas Pekerjaan Umum Sumber Daya Air dan Penataan Ruang', 'y', '11'),
(12, '1.04.01', 'Dinas Perumahan Rakyat dan Kawasan Permukiman', 'y', '12'),
(13, '1.05.01', 'Satuan Polisi Pamong Praja', 'y', '13'),
(14, '1.05.02', 'Badan Kesatuan Bangsa dan Politik', 'y', '14'),
(15, '1.06.01', 'Dinas Sosial', 'y', '15'),
(16, '1.06.02', 'Sekretariat Badan Penanggulangan Bencana', 'y', '16'),
(17, '2.01.01', 'Dinas Tenaga Kerja dan Transmigrasi', 'y', '17'),
(18, '2.02.01', 'Dinas Pemberdayaan Perempuan', 'y', '18'),
(19, '2.03.01', 'Dinas Lingkungan Hidup dan Kehutanan', 'y', '19'),
(20, '2.04.01', 'Dinas Ketahanan Pangan', 'y', '20'),
(21, '2.05.01', 'Dinas Pemberdayaan Masyarakat', 'y', '21'),
(22, '2.06.01', 'Dinas Perhubungan', 'y', '22'),
(23, '2.07.01', 'Dinas Komunikasi dan Informatika', 'y', '23'),
(24, '2.08.01', 'Dinas Koperasi', 'y', '24'),
(25, '2.09.01', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'y', '25'),
(26, '2.10.01', 'Dinas Kepemudaan', 'y', '26'),
(27, '2.11.01', 'Dinas Kearsipan dan Perpustakaan', 'y', '27'),
(28, '3.01.01', 'Dinas Kelautan dan Perikanan', 'y', '28'),
(29, '3.02.01', 'Dinas Pertanian dan Perkebunan', 'y', '29'),
(30, '3.02.02', 'Dinas Peternakan dan Kesehatan Hewan', 'y', '30'),
(31, '3.03.01', 'Dinas Energi dan Sumber Daya Mineral', 'y', '31'),
(32, '3.04.01', 'Dinas Perindustrian dan Perdagangan', 'y', '32'),
(33, '4.01.03.01', 'Biro Infrastruktur dan SDA', 'y', '33'),
(34, '4.01.03.02', 'Biro Hukum', 'y', '34'),
(35, '4.01.03.03', 'Biro Administrasi Pembangunan Daerah', 'y', '35'),
(36, '4.01.03.04', 'Biro Perekonomian Daerah', 'y', '36'),
(37, '4.01.03.05', 'Biro Kesejahteraan Rakyat', 'y', '37'),
(38, '4.01.03.06', 'Biro Organisasi', 'y', '38'),
(39, '4.01.03.07', 'Biro Umum', 'y', '39'),
(40, '4.01.03.08', 'Biro Pemerintahan', 'y', '40'),
(41, '4.01.04', 'Sekretariat DPRD', 'y', '41'),
(42, '4.02.01', 'Inspektorat', 'y', '42'),
(43, '4.03.01', 'Badan Perencanaan Pembangunan', 'y', '43'),
(44, '4.04.01', 'Badan Pengelola Pendapatan Daerah', 'y', '44'),
(45, '4.04.02', 'Badan Pengelola Keuangan dan Aset Daerah', 'y', '45'),
(46, '4.05.01', 'Badan Kepegawaian Daerah', 'y', '46'),
(47, '4.06.01', 'Badan Pengembangan Sumber Daya Manusia Daerah', 'y', '47'),
(48, '4.07.01', 'Badan Penghubung', 'y', '48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfigurasi`
--

CREATE TABLE `tbl_konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `nama_website` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `metatext` varchar(255) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_konfigurasi`
--

INSERT INTO `tbl_konfigurasi` (`id_konfigurasi`, `nama_website`, `logo`, `favicon`, `email`, `no_telp`, `alamat`, `facebook`, `instagram`, `keywords`, `metatext`, `about`) VALUES
(1, 'Domain Rekomtek', 'logoprovjateng.ico', 'logoprovjateng.ico', 'admin@susantokun.com', '081906515912', 'KOMPLEK BTN Munjul No.12A 02/06, Sukaresmi, Cianjur, Jawa Barat, Indonesia (43253)', 'https://facebook.com/susantokundotcom', 'https://instagram.com/susantokun', 'info-susantokun, demo-susantokun, susantokun', 'Situs Edukasi, Tips dan Tutorial', 'Susantokun adalah situs edukasi seperti pelajaran dan ilmu pengetahuan, serta membahas tentang tips, tutorial, teknologi, tugas-tugas hingga berita terkini.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_reset_key` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `id_role`, `username`, `password`, `password_reset_key`, `first_name`, `last_name`, `email`, `phone`, `photo`, `activated`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '$2y$05$OA.OoeNHoEkbGGKazYqPU.UOaI5jmgro8x2pRSV56ClTWlDf0EEn2', '', 'ADMIN', 'Otniel', 'admin@mail.com', '081906515912', '1526456245974.png', 1, '2020-03-14 22:34:49', '2020-03-14 21:58:17', NULL),
(2, 2, 'member', '$2y$05$8GdJw3BVbmhN6x2t0MNise7O0xqLMCNAN1cmP6fkhy0DZl4SxB5iO', '', 'MEMBER', 'Otniel', 'member@mail.com', '081906515912', '1583991814826.png', 1, '2020-03-14 22:32:04', '2020-03-14 22:00:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen_qr`
--
ALTER TABLE `absen_qr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absen_qr_20191210`
--
ALTER TABLE `absen_qr_20191210`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id_domain`);

--
-- Indexes for table `domain_log`
--
ALTER TABLE `domain_log`
  ADD PRIMARY KEY (`id_domain`);

--
-- Indexes for table `domain_status`
--
ALTER TABLE `domain_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instansi_20191210`
--
ALTER TABLE `instansi_20191210`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instansi_backup`
--
ALTER TABLE `instansi_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelamin`
--
ALTER TABLE `kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekomtek_app`
--
ALTER TABLE `rekomtek_app`
  ADD PRIMARY KEY (`id_rekomtek`);

--
-- Indexes for table `rekomtek_app_log`
--
ALTER TABLE `rekomtek_app_log`
  ADD PRIMARY KEY (`id_rekomtek`);

--
-- Indexes for table `rekomtek_app_status`
--
ALTER TABLE `rekomtek_app_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role`);

--
-- Indexes for table `skpd`
--
ALTER TABLE `skpd`
  ADD PRIMARY KEY (`id_skpd`,`kode_skpd`),
  ADD UNIQUE KEY `UNIQUE` (`kode_skpd`);

--
-- Indexes for table `tbl_konfigurasi`
--
ALTER TABLE `tbl_konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_qr`
--
ALTER TABLE `absen_qr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT for table `absen_qr_20191210`
--
ALTER TABLE `absen_qr_20191210`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id_domain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `domain_status`
--
ALTER TABLE `domain_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `instansi_20191210`
--
ALTER TABLE `instansi_20191210`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `instansi_backup`
--
ALTER TABLE `instansi_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posisi`
--
ALTER TABLE `posisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rekomtek_app`
--
ALTER TABLE `rekomtek_app`
  MODIFY `id_rekomtek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rekomtek_app_status`
--
ALTER TABLE `rekomtek_app_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skpd`
--
ALTER TABLE `skpd`
  MODIFY `id_skpd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_konfigurasi`
--
ALTER TABLE `tbl_konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
