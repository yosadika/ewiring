-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 04:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewiring_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `bay`
--

CREATE TABLE `bay` (
  `id_bay` int(10) NOT NULL,
  `nama_bay` varchar(50) NOT NULL,
  `id_gardu` int(11) NOT NULL,
  `nama_gardu` varchar(255) DEFAULT NULL,
  `kode_gardu` varchar(10) DEFAULT NULL,
  `id_tragi` int(11) DEFAULT NULL,
  `nama_tragi` varchar(255) DEFAULT NULL,
  `kode_tragi` varchar(255) DEFAULT NULL,
  `id_upt` int(11) NOT NULL,
  `nama_upt` varchar(255) DEFAULT NULL,
  `kode_upt` varchar(30) DEFAULT NULL,
  `kategori_bay` enum('PENGHANTAR','TRAFO','KOPEL','KAPASITOR','DIAMETER','BUSBAR','ACDC') DEFAULT NULL,
  `bay_pdf_requirement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay`
--

INSERT INTO `bay` (`id_bay`, `nama_bay`, `id_gardu`, `nama_gardu`, `kode_gardu`, `id_tragi`, `nama_tragi`, `kode_tragi`, `id_upt`, `nama_upt`, `kode_upt`, `kategori_bay`, `bay_pdf_requirement`) VALUES
(1, 'Bay Trafo Daya 1', 1, 'Denai', 'MDNAI', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(2, 'Bay Trafo Daya 2', 1, 'Denai', 'MDNAI', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(3, 'BAY PHT 150 KV DENAI - SEI ROTAN', 1, 'Denai', 'MDNAI', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(4, 'BAY PHT 150 KV DENAI - TAMORA', 1, 'Denai', 'MDNAI', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(5, 'DISTRIBUSI AC/DC', 2, 'Kuala Namu', 'KNAMU', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(7, 'BAY TRAFO DAYA 1 & 2', 2, 'Kuala Namu', 'KNAMU', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(8, 'BAY PHT 150 KV KUALANAMU - TAMORA 1 & 2', 2, 'Kuala Namu', 'KNAMU', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(9, 'BAY TRAFO DAYA 1', 3, 'Perbaungan', 'PBUNG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(10, 'BAY TRAFO DAYA 2', 3, 'Perbaungan', 'PBUNG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(11, 'BAY TRAFO DAYA 3', 3, 'Perbaungan', 'PBUNG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(12, 'BAY PHT 150 KV PERBAUNGAN - TEBING TINGGI', 3, 'Perbaungan', 'PBUNG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(13, 'BAY PHT 150 KV PERBUNGAN - SEI ROTAN', 3, 'Perbaungan', 'PBUNG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(14, 'BAY TRAFO DAYA 1', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(15, 'BAY TRAFO DAYA 2', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(16, 'BAY TRAFO DAYA 3', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(17, 'BAY PHT 150 KV SEI ROTAN - KIM 1', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(18, 'BAY PHT 150 KV SEI ROTAN - KIM 2', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(19, 'BAY PHT 150 KV SEI ROTAN - BELAWAN 1', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(20, 'BAY PHT 150 KV SEI ROTAN - BELAWAN 2', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(21, 'BAY PHT 150 KV SEI ROTAN - PAYA PASIR 1', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(22, 'BAY PHT 150 KV SEI ROTAN - PAYA PASIR 2', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(23, 'BAY PHT 150 KV SEI ROTAN - PERBAUNGAN', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(24, 'BAY PHT 150 KV SEI ROTAN - TEBING TINGGI', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(25, 'BAY KOPEL BUS 150 KV', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(26, 'BAY PHT 150 KV SEI ROTAN - TITI KUNING 1', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(27, 'BAY PHT 150 KV SEI ROTAN - TITI KUNING 2', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(28, 'BAY PHT 150 KV SEI ROTAN - DENAI', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(29, 'BAY PHT 150 KV SEI ROTAN - TAMORA', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(30, 'BAY TRAFO DAYA 1', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(31, 'BAY TRAFO DAYA 2', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(32, 'BAY PHT 150 KV TAMORA - SEI ROTAN', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(33, 'BAY PHT 150 KV TAMORA - DENAI', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(34, 'BAY PHT 150 KV TAMORA - KUALA NAMU 1', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(35, 'BAY PHT 150 KV TAMORA - KUALA NAMU 2', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(36, 'BAY PHT 150 KV TAMORA - GALANG 1', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(37, 'BAY PHT 150 KV TAMORA - GALANG 2', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(38, 'BAY KOPEL BUS 150 KV', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(39, 'BAY TRAFO DAYA 1', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(40, 'BAY TRAFO DAYA 2', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(41, 'BAY TRAFO DAYA 3', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(42, 'BAY PHT 150 KV BINJAI - PAYA GELI 1', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(43, 'BAY PHT 150 KV BINJAI - PAYA GELI 2', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(44, 'BAY PHT 150 KV BINJAI - P. BRANDAN 1', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(45, 'BAY PHT 150 KV BINJAI - P. BRANDAN 2', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(46, 'BAY KOPEL BUS 150 KV', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(47, 'BAY PHT 150 KV BINJAI - BELAWAN 1', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(48, 'BAY PHT 150 KV BINJAI - BELAWAN 2', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(49, 'BAY TRAFO DAYA 1', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(50, 'BAY TRAFO DAYA 2', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(51, 'BAY PHT 150 KV NAMORAMBE - TITI KUNING 2', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(52, 'BAY PHT 150 KV NAMORAMBE - TITI KUNING 1', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(53, 'BAY TRAFO DAYA 1', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(54, 'BAY TRAFO DAYA 2', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(55, 'BAY KOPEL BUS 150 KV', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(56, 'BAY PHT 150 KV P. BRANDAN - BINJAI 1', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(57, 'BAY PHT 150 KV P. BRANDAN - BINJAI 2', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(58, 'BAY PHT 150 KV P. BRANDAN - LANGSA 1', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(59, 'BAY PHT 150 KV P. BRANDAN - LANGSA 2', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(60, 'BAY TRAFO DAYA 1', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(61, 'BAY TRAFO DAYA 2', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(62, 'BAY TRAFO DAYA 3', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(63, 'BAY PHT 150 KV PAYA GELI - GLUGUR 1', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(64, 'BAY PHT 150 KV PAYA GELI - GLUGUR 2', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(65, 'BAY PHT 150 KV PAYA GELI - PAYA PASIR 1', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(66, 'BAY PHT 150 KV PAYA GELI - PAYA PASIR 2', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(67, 'BAY PHT 150 KV PAYA GELI - BINJAI 1', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(68, 'BAY PHT 150 KV PAYA GELI - BINJAI 2', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(69, 'BAY PHT 150 KV PAYA GELI - NAMORAMBE 1', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(70, 'BAY PHT 150 KV PAYA GELI - NAMURAMBE 2', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(71, 'BAY TRAFO DAYA 1', 10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(72, 'BAY TRAFO DAYA 2', 10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(73, 'BAY KOPEL BUS 150 KV', 10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(74, 'BAY PHT 150 KV LISTRIK - TITI KUNING 1', 10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(75, 'BAY PHT 150 KV LISTRIK - TITI KUNING 2', 10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(76, 'BAY TRAFO DAYA 1', 11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(77, 'BAY TRAFO DAYA 2', 11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(78, 'BAY TRAFO DAYA 3', 11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(79, 'BAY PHT 150 KV GLUGUR - PAYA GELI 1', 11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(80, 'BAY PHT 150 KV GLUGUR - PAYA GELI 2', 11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(81, 'BAY KOPEL BUS 150 KV', 11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(82, 'BAY TRAFO DAYA 2', 12, 'Mabar', 'MABAR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(83, 'BAY TRAFO DAYA 3', 12, 'Mabar', 'MABAR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(84, 'BAY PHT 150 KV MABAR - PAYA PASIR 1', 12, 'Mabar', 'MABAR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(85, 'BAY PHT 150 KV MABAR - PAYA PASIR 2', 12, 'Mabar', 'MABAR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(86, 'BAY KOPEL BUS 150 KV', 12, 'Mabar', 'MABAR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(87, 'BAY TRAFO DAYA 1', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(88, 'BAY TRAFO DAYA 2', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(89, 'BAY TRAFO DAYA 3', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(90, 'BAY PHT 150 KV TITI KUNING - BERASTAGI 1', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(91, 'BAY PHT 150 KV TITI KUNING - BERASTAGI 2', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(92, 'BAY PHT 150 KV TITI KUNING - SEI ROTAN 1', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(93, 'BAY PHT 150 KV TITI KUNING - SEI ROTAN 2', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(94, 'BAY KOPEL BUS 150 KV', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(95, 'BAY PHT 150 KV TITI KUNING - NAMORAMBE 1', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(96, 'BAY PHT 150 KV TITI KUNING - NAMORAMBE 2', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(97, 'BAY PHT 150 KV TITI KUNING - LISTRIK 1', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(98, 'BAY PHT 150 KV TITI KUNING - LISTRIK 2', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(104, 'BAY TRAFO DAYA 1', 15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(105, 'BAY TRAFO DAYA 2', 15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(108, 'BAY TRAFO DAYA 1', 16, 'Labuhan', 'LBHAN', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(109, 'BAY TRAFO DAYA 2', 16, 'Labuhan', 'LBHAN', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(126, 'BAY KOPEL BUS 150 KV', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(127, 'BAY DIAMETER 0', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(136, 'BAY TRAFO DAYA 1', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(137, 'BAY TRAFO DAYA 2', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(138, 'BAY PEMBANGKIT PLTD 1', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(139, 'BAY PEMBANGKIT PLTD 2', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(140, 'BAY PEMBANGKIT PLTD 3', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(141, 'BAY PEMBANGKIT ALSTHOM 4', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(142, 'BAY PEMBANGKIT PLTD 6', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(143, 'BAY PEMBANGKIT PLTG NTC 7', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(144, 'BAY PHT 150 KV PAYA PASIR - MABAR 1', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(145, 'BAY PHT 150 KV PAYA PASIR - MABAR 2', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(146, 'BAY PHT 150 KV PAYA PASIR - PAYA GELI 1', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(147, 'BAY PHT 150 KV PAYA PASIR - PAYA GELI 2', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(148, 'BAY PHT 150 KV PAYA PASIR - BELAWAN 1', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(149, 'BAY PHT 150 KV PAYA PASIR - BELAWAN 2', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(150, 'BAY PHT 150 KV PAYA PASIR - SEI ROTAN 1', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(151, 'BAY PHT 150 KV PAYA PASIR - SEI ROTAN 2', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(152, 'BAY KOPEL BUS 150 KV', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(153, 'BAY PHT 150 KV LABUHAN - BELAWAN', 16, 'Labuhan', 'LBHAN', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(154, 'BAY PHT 150 KV LABUHAN - LAMHOTMA', 16, 'Labuhan', 'LBHAN', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(155, 'BAY TRAFO DAYA 3', 15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(156, 'BAY PHT 150 KV KIM - SEI ROTAN 1', 15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(157, 'BAY PHT 150 KV KIM - SEI ROTAN 2', 15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(158, 'BAY DIAMETER 1', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(159, 'BAY DIAMETER 2', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(160, 'BAY DIAMETER 3', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(161, 'BAY DIAMETER 4', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(162, 'BAY DIAMETER 5', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(163, 'BAY DIAMETER 6', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(164, 'BAY DIAMETER 7', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(165, 'BAY DIAMETER 8', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(166, 'BAY DIAMETER 9', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(167, 'BAY DIAMETER 10', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(168, 'BAY DIAMETER 11', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(169, 'BAY DIAMETER 12', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(170, 'BAY PEMBANGKIT PLTD AKE', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(171, 'BAY PEMBANGKIT PLTG LOT 3', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 0),
(172, 'BAY TRAFO DAYA 1', 17, 'Lamhotma', 'LHTMA', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(173, 'BAY TRAFO DAYA 2', 17, 'Lamhotma', 'LHTMA', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(174, 'BAY PHT 150 KV LAMHOTMA - BELAWAN', 17, 'Lamhotma', 'LHTMA', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(175, 'BAY PHT 150 KV LAMHOTMA - LABUHAN', 17, 'Lamhotma', 'LHTMA', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(177, 'BAY KAPASITOR BANK', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'KAPASITOR', 5),
(178, 'BAY DIAMETER 1', 23, 'Pangkalan Susu', 'PSUSU', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(179, 'BAY DIAMETER 2', 23, 'Pangkalan Susu', 'PSUSU', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(180, 'BAY TRAFO DAYA 4', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(182, 'BAY DIAMETER 4', 23, 'Pangkalan Susu', 'PSUSU', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(183, 'BAY DIAMETER 5', 23, 'Pangkalan Susu', 'PSUSU', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(184, 'BAY DIAMETER 6', 23, 'Pangkalan Susu', 'PSUSU', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(185, 'BAY TRAFO DAYA 3', 10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(186, 'DISTRIBUSI AC/DC', 16, 'Labuhan', 'LBHAN', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(187, 'BAY KOPEL BUS 150 KV', 15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(188, 'BAY 275 KV DIAMETER 1', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(189, 'Bay 275 KV DIAMETER 2', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(190, 'Bay 275 KV DIAMETER 3', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(191, 'BAY 275 KV DIAMETER 4', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(192, 'DISTRIBUSI AC/DC', 1, 'Denai', 'MDNAI', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(193, 'DISTRIBUSI AC/DC', 3, 'Perbaungan', 'PBUNG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(194, 'DISTRIBUSI AC/DC', 4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(195, 'DISTRIBUSI AC/DC', 5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(196, 'DISTRIBUSI AC/DC', 6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(197, 'DISTRIBUSI AC/DC', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(198, 'DISTRIBUSI AC/DC', 8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(199, 'DISTRIBUSI AC/DC', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(200, 'DISTRIBUSI AC/DC', 10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(201, 'DISTRIBUSI AC/DC', 11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(202, 'DISTRIBUSI AC/DC', 12, 'Mabar', 'MABAR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(203, 'DISTRIBUSI AC/DC', 13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(204, 'DISTRIBUSI AC/DC', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(205, 'DISTRIBUSI AC/DC', 15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(206, 'DISTRIBUSI AC/DC', 16, 'Labuhan', 'LBHAN', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(207, 'DISTRIBUSI AC/DC', 17, 'Lamhotma', 'LHTMA', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(208, 'DISTRIBUSI AC/DC', 18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(209, 'DISTRIBUSI AC/DC', 23, 'Pangkalan Susu', 'PSUSU', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'ACDC', 1),
(210, 'BAY PHT 150 KV NAMORAMBE - PAYA GELI 1', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(211, 'BAY PHT 150 KV NAMORAMBE - PAYA GELI 2', 7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(212, 'BAY TRAFO DAYA 4', 9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(213, 'BAY DIAMETER -1', 14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', 'DIAMETER', 5),
(214, 'BAY PHT 150 KV TELUK DALAM - GUNUNGSITOLI 1', 25, 'Teluk Dalam', 'TLDLM', 5, 'Nias', 'NIAS', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(215, 'BAY PHT 150 KV TELUK DALAM - GUNUNGSITOLI 2', 25, 'Teluk Dalam', 'TLDLM', 5, 'Nias', 'NIAS', 2, 'Medan', 'UPTMDN', 'PENGHANTAR', 5),
(216, 'BAY TRAFO DAYA 1', 25, 'Teluk Dalam', 'TLDLM', 5, 'Nias', 'NIAS', 2, 'Medan', 'UPTMDN', 'TRAFO', 6),
(217, 'BAY KOPEL BUS 70 KV', 25, 'Teluk Dalam', 'TLDLM', 5, 'Nias', 'NIAS', 2, 'Medan', 'UPTMDN', 'KOPEL', 4),
(219, 'BAY TEST - TEST 1', 35, 'TEST', 'TESTT', 12, 'Kisaran', 'KSRAN', 3, 'Pematang Siantar', 'UPTPST', 'KOPEL', 4);

-- --------------------------------------------------------

--
-- Table structure for table `daftarisi`
--

CREATE TABLE `daftarisi` (
  `id_daftarisi` int(11) NOT NULL,
  `id_pdf` varchar(50) NOT NULL,
  `judul_daftarisi` varchar(50) NOT NULL,
  `nomor_halaman_a` int(11) NOT NULL,
  `nomor_halaman_b` int(11) NOT NULL,
  `link_daftarisi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftarisi`
--

INSERT INTO `daftarisi` (`id_daftarisi`, `id_pdf`, `judul_daftarisi`, `nomor_halaman_a`, `nomor_halaman_b`, `link_daftarisi`) VALUES
(13, '27', 'TERMINAL DIAGRAM', 1, 13, 'http://localhost/ewiring/admin/assets/file/27/TERMINAL_DIAGRAM_1-13.pdf'),
(14, '27', 'LIST OF EQUIPMENT', 14, 23, 'http://localhost/ewiring/admin/assets/file/27/LIST_OF_EQUIPMENT_14-23.pdf'),
(15, '27', 'CIRCUIT DIAGRAM', 24, 32, 'http://localhost/ewiring/admin/assets/file/27/CIRCUIT_DIAGRAM_24-32.pdf'),
(16, '27', 'LEGEND', 33, 35, 'http://localhost/ewiring/admin/assets/file/27/LEGEND_33-35.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_user` int(11) NOT NULL,
  `nip` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_user`, `nip`, `username`, `password`, `nama`, `email`, `level`) VALUES
(1, '111A', 'admin', '1', 'Admin eWiring', 'admin@ewiring.book', 3),
(2, '9616067PBY', 'yos.adika96', '1', 'Yos Adika', 'yos.adika96@pln.co.id', 1),
(5, '123AB', 'ewiring', 'italianroast', 'Admin eWiring', 'admin@ewiring.book', 3);

-- --------------------------------------------------------

--
-- Table structure for table `foto_upt`
--

CREATE TABLE `foto_upt` (
  `id_foto` int(11) NOT NULL,
  `id_upt` int(11) NOT NULL,
  `nama_upt` varchar(50) NOT NULL,
  `link_foto` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto_upt`
--

INSERT INTO `foto_upt` (`id_foto`, `id_upt`, `nama_upt`, `link_foto`, `keterangan`) VALUES
(1, 1, 'UPT BANDA ACEH', 'http://localhost/ewiring/android_login/foto_upt/aceh.png', ''),
(2, 2, 'UPT MEDAN', 'http://localhost/ewiring/android_login/foto_upt/medan.png', ''),
(3, 3, 'UPT PEMATANG SIANTAR', 'http://localhost/ewiring/android_login/foto_upt/siantar.png', ''),
(4, 4, 'UPT PEKANBARU', 'http://localhost/ewiring/android_login/foto_upt/pekanbaru.png', ''),
(5, 5, 'UPT PADANG', 'http://localhost/ewiring/android_login/foto_upt/padang.png', ''),
(6, 6, 'UPT JAMBI', 'http://localhost/ewiring/android_login/foto_upt/jambi.png', ''),
(7, 7, 'UPT BENGKULU', 'http://localhost/ewiring/android_login/foto_upt/bengkulu.png', ''),
(8, 8, 'UPT PALEMBANG', 'http://localhost/ewiring/android_login/foto_upt/palembang.png', ''),
(9, 9, 'UPT TANGJUNG KARANG', 'http://localhost/ewiring/android_login/foto_upt/tanjungkarang.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `gardu`
--

CREATE TABLE `gardu` (
  `id_gardu` int(20) NOT NULL,
  `nama_gardu` varchar(20) DEFAULT NULL,
  `kode_gardu` varchar(10) DEFAULT NULL,
  `id_tragi` int(11) NOT NULL,
  `nama_tragi` varchar(255) DEFAULT NULL,
  `kode_tragi` varchar(10) DEFAULT NULL,
  `id_upt` int(11) NOT NULL,
  `nama_upt` varchar(255) DEFAULT NULL,
  `kode_upt` varchar(310) NOT NULL DEFAULT '''UPTMDN''',
  `level_tegangan` enum('275 KV','150 KV','70 KV') NOT NULL,
  `level_tegangan_yang_ada` set('500 KV','275 KV','150 KV','70 KV','20 KV','220 VAC','110 VDC','48 VDC') DEFAULT NULL,
  `kategori_peralatan_yang_ada` set('DIAMETER','PENGHANTAR','IBT','TRAFO','KOPEL','KAPASITOR','BUSBAR','REAKTOR','ACDC','ALAT PEREKAM') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gardu`
--

INSERT INTO `gardu` (`id_gardu`, `nama_gardu`, `kode_gardu`, `id_tragi`, `nama_tragi`, `kode_tragi`, `id_upt`, `nama_upt`, `kode_upt`, `level_tegangan`, `level_tegangan_yang_ada`, `kategori_peralatan_yang_ada`) VALUES
(1, 'Denai', 'MDNAI', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,BUSBAR,ACDC,ALAT PEREKAM'),
(2, 'Kuala Namu', 'KNAMU', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,IBT,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(3, 'Perbaungan', 'PBUNG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(4, 'Sei Rotan', 'SROTN', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(5, 'Tamora', 'TMORA', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(6, 'Binjai', 'BNJAI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(7, 'Namorambe', 'NRMBE', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(8, 'P.Brandan', 'PBDAN', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(9, 'Paya Geli', 'PGELI', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,KAPASITOR,BUSBAR,ACDC,ALAT PEREKAM'),
(10, 'GIS Listrik', 'LSTRK', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(11, 'Glugur', 'GLGUR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(12, 'Mabar', 'MABAR', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(13, 'Titi Kuning', 'TTKNG', 3, 'Glugur', 'GLGUR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,KAPASITOR,BUSBAR,ACDC,ALAT PEREKAM'),
(14, 'Belawan', 'BLWCC', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,220 VAC,110 VDC,48 VDC', 'DIAMETER,BUSBAR,ACDC,ALAT PEREKAM'),
(15, 'KIM', 'GIKIM', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(16, 'Labuhan', 'LBHAN', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(17, 'Lamhotma', 'LHTMA', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(18, 'Paya Pasir', 'PPASR', 4, 'Paya Pasir', 'PPASR', 2, 'Medan', 'UPTMDN', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(22, 'Pematang Siantar', 'PSTAR', 6, 'Kisaran', 'KSRAN', 3, 'Pematang Siantar', 'UPTPST', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(23, 'Pangkalan Susu', 'PSUSU', 2, 'Binjai', 'BNJAI', 2, 'Medan', 'UPTMDN', '275 KV', '275 KV,220 VAC,110 VDC,48 VDC', 'DIAMETER,BUSBAR,ACDC,ALAT PEREKAM'),
(24, 'Galang', 'GLANG', 1, 'Sei Rotan', 'SROTN', 2, 'Medan', 'UPTMDN', '275 KV', '275 KV,150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'DIAMETER,PENGHANTAR,IBT,TRAFO,KOPEL,BUSBAR,REAKTOR,ACDC,ALAT PEREKAM'),
(25, 'Teluk Dalam', 'TLDLM', 5, 'Nias', 'NIAS', 2, 'Medan', 'UPTMDN', '150 KV', '70 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(26, 'Gunung Sitoli', 'GNSTL', 5, 'Nias', 'NIAS', 2, 'Medan', 'UPTMDN', '150 KV', '70 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM'),
(35, 'TEST', 'TESTT', 12, 'Kisaran', 'KSRAN', 3, 'Pematang Siantar', 'UPTPST', '150 KV', '150 KV,20 KV,220 VAC,110 VDC,48 VDC', 'PENGHANTAR,TRAFO,KOPEL,BUSBAR,ACDC,ALAT PEREKAM');

-- --------------------------------------------------------

--
-- Table structure for table `merk_peralatan`
--

CREATE TABLE `merk_peralatan` (
  `id_merk` int(11) NOT NULL,
  `nama_merk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merk_peralatan`
--

INSERT INTO `merk_peralatan` (`id_merk`, `nama_merk`) VALUES
(1, 'Alstom'),
(2, 'Areva'),
(3, 'Siemens'),
(4, 'GE'),
(5, 'GAE'),
(6, 'ABB'),
(7, 'NR Electric');

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE `pdf` (
  `id_pdf` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `id_user` varchar(30) NOT NULL,
  `id_user_update` varchar(30) NOT NULL DEFAULT '0',
  `nama_upt` varchar(255) DEFAULT NULL,
  `id_upt` int(11) DEFAULT NULL,
  `nama_tragi` varchar(255) DEFAULT NULL,
  `id_tragi` int(11) DEFAULT NULL,
  `nama_gardu` varchar(255) DEFAULT NULL,
  `id_gardu` int(11) DEFAULT NULL,
  `nama_bay` varchar(255) DEFAULT NULL,
  `id_bay` varchar(255) DEFAULT NULL,
  `judul_pdf` varchar(100) NOT NULL,
  `kategori_bay` enum('PENGHANTAR','TRAFO','KOPEL','KAPASITOR','DIAMETER','BUSBAR','ACDC','ALAT PEREKAM') DEFAULT NULL,
  `level_tegangan` enum('500 KV','275 KV','150 KV','70 KV','20 KV','220 VAC','110 VDC','48 VDC') NOT NULL,
  `kategori_peralatan` enum('SISTEM DC','BAY','ALAT PEREKAM') NOT NULL,
  `kategori_wiring` enum('AS BUILT','INTERNAL PERALATAN','PANEL KOMUNIKASI') NOT NULL,
  `sub_kategori_wiring` enum('INTERNAL PMT','INTERNAL PMS BUS','INTERNAL PMS LINE','INTERNAL PMS GROUND','RELAY','KWH','INTERNAL TRAFO','KUBIKEL','PANEL KONTROL DAN PROTEKSI','PANEL KWH','KABEL SCHEDULE') NOT NULL,
  `link_pdf` text NOT NULL,
  `keterangan` text DEFAULT NULL,
  `user_upload` varchar(255) DEFAULT NULL,
  `user_update` varchar(255) DEFAULT '-',
  `update_terakhir` datetime NOT NULL DEFAULT current_timestamp(),
  `bay_pdf_requirement` int(11) NOT NULL DEFAULT 0,
  `merk_peralatan` varchar(255) DEFAULT NULL,
  `kode_drawing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id_pdf`, `status`, `id_user`, `id_user_update`, `nama_upt`, `id_upt`, `nama_tragi`, `id_tragi`, `nama_gardu`, `id_gardu`, `nama_bay`, `id_bay`, `judul_pdf`, `kategori_bay`, `level_tegangan`, `kategori_peralatan`, `kategori_wiring`, `sub_kategori_wiring`, `link_pdf`, `keterangan`, `user_upload`, `user_update`, `update_terakhir`, `bay_pdf_requirement`, `merk_peralatan`, `kode_drawing`) VALUES
(16, '1', '1', '9616067PBY', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY TRAFO DAYA 2', '2', 'Wiring Kubikel BBVT dan ES', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/61/AREVA_BBVT_dan_ES.pdf', 'Wiring BBVT dan ES kubikel Areva', 'admin', 'YOS ADIKA NOVANDRA MARBUN', '2017-05-07 23:43:36', 6, NULL, NULL),
(17, '1', '1', '0', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY TRAFO DAYA 2', '2', 'Wiring Kubikel Incoming', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/61/AREVA_Inc_20_kV.pdf', 'Wiring kubikel Incoming Areva', 'admin', '-', '2017-05-07 23:45:02', 6, NULL, NULL),
(18, '1', '1', '0', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY TRAFO DAYA 2', '2', 'Wiring Kubikel Outgoing', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/61/AREVA_Outgoing_20_kV.pdf', 'Wiring kubikel Outgoing Areva', 'admin', '-', '2017-05-07 23:46:59', 6, NULL, NULL),
(19, '1', '1', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - P. BRANDAN 2', '45', 'Wiring Kontrol dan Relay Panel', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/45/BNJ-BRANDAN_2_Arya_Sada_150_kV_Line_Bay.pdf', 'Wiring kontrol dan relay panel merk arya sada', 'admin', '-', '2017-05-07 23:50:15', 5, NULL, NULL),
(20, '1', '1', '0', 'Medan', 2, 'Binjai', 2, 'P.Brandan', 8, 'BAY PHT 150 KV P. BRANDAN - BINJAI 2', '57', 'Wiring Kontrol dan Relay Panel', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/57/BRANDAN_-_BINJAI_2_ARYA_SADA_PENGHANTAR.pdf', 'Wiring kontrol dan relay panel merk arya sada', 'admin', '-', '2017-05-07 23:51:19', 5, NULL, NULL),
(21, '1', '1', '0', 'Medan', 2, 'Glugur', 3, 'Titi Kuning', 13, 'BAY PHT 150 KV TITI KUNING - SEI ROTAN 1', '92', 'Wiring Kontrol dan Relay Panel', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/92/ENERGOINVEST_TK-SR1.pdf', 'Wiring kontrol dan relay panel merk energoinvest', 'admin', '-', '2017-09-08 00:03:21', 5, NULL, NULL),
(22, '1', '1', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY PHT 150 KV GLUGUR - PAYA GELI 1', '79', 'Wiring Kontrol dan Relay Panel', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/79/GL-PG_1_GOLDSTAR.pdf', 'Wiring kontrol dan relay panel merk goldstar', 'admin', '-', '2017-09-08 00:12:28', 5, NULL, NULL),
(23, '1', '1', '0', 'Medan', 2, 'Sei Rotan', 1, 'Sei Rotan', 4, 'BAY TRAFO DAYA 1', '1', 'Wiring Kubikel Incoming dan Outgoing', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/14/INC_dan_Outgoing_Siemens_Sei_Rotan.pdf', 'Wiring kubikel incoming dan outgoing siemens', 'admin', '-', '2017-09-08 00:32:54', 6, NULL, NULL),
(24, '1', '1', '0', 'Medan', 2, 'Sei Rotan', 1, 'Sei Rotan', 4, 'BAY PHT 150 KV SEI ROTAN - TITI KUNING 2', '27', 'Wiring Internal PMT', 'PENGHANTAR', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/27/PMT_SPRECHER_ENERGIE.pdf', 'Wiring internal PMT sprecher', 'admin', '-', '2017-09-08 01:18:20', 5, NULL, NULL),
(25, '1', '1', '0', 'Medan', 2, 'Sei Rotan', 1, 'Denai', 1, 'Bay Trafo Daya 1', '1', 'Wiring Remote Control 20kV dan Kubikel Outgoing', 'TRAFO', '20 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/1/Schneider_Remote_Control_20_kV_dan_Outgoing_GI_Denai.pdf', 'Wiring Remote Control 20kV dan Kubikel Outgoing merk scheineder', 'admin', '-', '2017-09-08 11:01:41', 6, NULL, NULL),
(26, '1', '1', '0', 'Medan', 2, 'Sei Rotan', 1, 'Denai', 1, 'Bay Trafo Daya 2', '2', 'Wiring Internal PMT', 'TRAFO', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/2/PMT_AREVA_TD_DENAI.pdf', 'Wiring internal PMT areva', 'admin', '-', '2017-09-08 11:24:00', 6, NULL, NULL),
(27, '1', '1', '0', 'Medan', 2, 'Sei Rotan', 1, 'Denai', 1, 'BAY PHT 150 KV DENAI - SEI ROTAN', '3', 'Wiring Internal PMT', 'PENGHANTAR', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/3/PMT_AREVA_TD_DENAI.pdf', 'Wiring internal PMT areva', 'admin', '-', '2017-09-08 11:26:22', 5, NULL, NULL),
(28, '1', '1', '0', 'Medan', 2, 'Paya Pasir', 4, 'Lamhotma', 17, 'BAY PHT 150 KV LAMHOTMA - BELAWAN', '174', 'Wiring Kontrol dan Relay Panel', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/121/SIEMENS_LAMHOTMA_TO_BELAWAN.pdf', 'Wiring kontrol dan relay panel merk siemens', 'admin', '-', '2017-09-08 11:35:38', 5, NULL, NULL),
(39, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'BAY TRAFO DAYA 1 & 2', '7', 'Wiring Panel Kontrol, Relay & Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/5/Bay+Trafo.pdf', 'Wiring Panel Kontrol, Relay & Switchyard', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:41:05', 6, NULL, NULL),
(40, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'BAY TRAFO DAYA 1 & 2', '7', 'Wiring Internal PMT', 'TRAFO', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/5/INTERNAL+CB++3POLE++TRAFO.pdf', 'merk areva, TD1 & TD2 : sama', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:42:24', 6, NULL, NULL),
(41, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'BAY TRAFO DAYA 1 & 2', '7', 'Wiring Panel Kontrol 20 kV', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/5/PANEL+KONTROL+20KV.pdf', 'TD1 & TD2 : sama', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:43:25', 6, NULL, NULL),
(42, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'BAY TRAFO DAYA 1 & 2', '7', 'Wiring Panel Regulation Transformer', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/5/TRANSFORMER+REGULATION+PANEL.pdf', 'Wiring Panel Regulation Transformer', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:44:30', 6, NULL, NULL),
(43, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'BAY PHT 150 KV KUALANAMU - TAMORA 1 & 2', '8', 'Wiring Panel Kontrol, Relay & Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/7/LINE+BAY.pdf', 'line bay Knamu-Tmora 1 & 2 dalam 1 buku', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:48:36', 5, NULL, NULL),
(44, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'DISTRIBUSI AC/DC', '5', 'ACDB', 'ACDC', '220 VAC', 'SISTEM DC', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/5/AC+380+V+ACDB.pdf', 'distribusi AC GI Knamu', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:53:13', 1, NULL, NULL),
(45, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'DISTRIBUSI AC/DC', '5', 'DCDB 110V', 'ACDC', '110 VDC', 'SISTEM DC', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/5/DC+110+VOLT+DCDB.pdf', 'distribusi DC 110V GI Knamu', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:54:05', 1, NULL, NULL),
(46, '1', '9616067PBY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Kuala Namu', 2, 'DISTRIBUSI AC/DC', '5', 'DCDB 48V', 'ACDC', '48 VDC', 'SISTEM DC', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/5/DC+48+VOLT+DCDB.pdf', 'Distribusi DC 48V GI Knamu', 'YOS ADIKA NOVANDRA MARBUN', '-', '2018-02-05 06:54:49', 1, NULL, NULL),
(47, '1', '8908098PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY PHT 150 KV LABUHAN - BELAWAN', '153', 'Wiring Diagram PHT LBHAN-BLWTU (AC DC Panel)', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/153/Wiring+Diagram+PHT+LBHAN+BLWTU+%28AD+DC+Panel%29.pdf', 'ABB (PT ABDIBANGUN BUANA)', 'HERMAN SARITUA SIMANJUNTAK', '-', '2018-02-06 09:52:03', 5, NULL, NULL),
(48, '1', '8908098PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY PHT 150 KV LABUHAN - LAMHOTMA', '154', 'Wiring Diagram PHT LBHAN-LHTMA (AC DC Panel)', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/154/Wiring+Diagram+PHT+LBHAN+LHTMA+%28AD+DC+Panel%29.pdf', 'ABB (PT ABDIBANGUN BUANA)', 'HERMAN SARITUA SIMANJUNTAK', '-', '2018-02-06 09:54:55', 5, NULL, NULL),
(50, '1', '8204033A2', '0', 'Medan', 2, 'Binjai', 2, 'P.Brandan', 8, 'BAY PHT 150 KV P. BRANDAN - BINJAI 1', '56', 'SWD Mashailling Kiosk For Line Bay Binjai 1', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/56/GW1500190.PG019-PG020++MARSHALLING+KIOSK+FOR+LINE+BAY_BINJAI.pdf', 'MK Binjai1 Merk NR', 'RENO PRATAMA', '-', '2018-02-07 07:19:53', 5, NULL, NULL),
(51, '1', '8908098PBS', '0', 'Medan', 2, 'Binjai', 2, 'Pangkalan Susu', 23, 'BAY DIAMETER 1', '158', 'Modifikasi Wiring', 'DIAMETER', '275 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/178/Modifikasi+Dia+1.pdf', 'Diameter 1', 'HERMAN SARITUA SIMANJUNTAK', '-', '2018-02-07 07:21:23', 5, NULL, NULL),
(52, '1', '8204033A2', '0', 'Medan', 2, 'Binjai', 2, 'P.Brandan', 8, 'BAY PHT 150 KV P. BRANDAN - BINJAI 2', '57', 'SWD Marsailling Kiosk For Line Bay Binjai 2', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/57/GW1500190.PG019-PG020++MARSHALLING+KIOSK+FOR+LINE+BAY_BINJAI.pdf', 'MK Binjai2 Merk NR', 'RENO PRATAMA', '-', '2018-02-07 07:23:19', 5, NULL, NULL),
(53, '1', '8908098PBS', '0', 'Medan', 2, 'Binjai', 2, 'Pangkalan Susu', 23, 'BAY DIAMETER 2', '159', 'Modifikasi Wiring', 'DIAMETER', '275 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/179/Modifikasi+Dia+2.pdf', 'Diameter 2', 'HERMAN SARITUA SIMANJUNTAK', '-', '2018-02-07 07:45:38', 5, NULL, NULL),
(54, '1', '8908098PBS', '0', 'Medan', 2, 'Binjai', 2, 'Pangkalan Susu', 23, 'BAY DIAMETER 4', '161', 'Modifikasi Wiring', 'DIAMETER', '275 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/182/Modifikasi+Dia+4.pdf', 'Diameter 4', 'HERMAN SARITUA SIMANJUNTAK', '-', '2018-02-07 07:51:41', 5, NULL, NULL),
(73, '1', '7292072a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Perbaungan', 3, 'BAY TRAFO DAYA 2', '2', 'Wiring Diagram dan Koneksi', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/10/BAY+TRAFO+DAYA+2+30+MVA.pdf', 'Wiring Diagram dan Koneksi TD2 30 MVA merk Areva', 'SAHAT H. MARPAUNG', '-', '2018-02-17 13:14:16', 6, NULL, NULL),
(74, '1', '7292072a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Perbaungan', 3, 'BAY TRAFO DAYA 3', '11', 'Wiring Control + Reg. Protection & MK', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/11/BAY+TRAFO+DAYA+3+60+MVA.pdf', 'Wiring Kontrol, Proteksi, dan MK TD3 GI Perbaungan 60 MVA merk Schneider', 'SAHAT H. MARPAUNG', '-', '2018-02-17 13:18:44', 6, NULL, NULL),
(75, '1', '7292072a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Perbaungan', 3, 'BAY PHT 150 KV PERBAUNGAN - TEBING TINGGI', '12', 'Wiring Control + Protection & MK', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/12/BAY+PBUNG-TBING.pdf', 'Wiring Control + Protection & MK merk Energoinvest', 'SAHAT H. MARPAUNG', '-', '2018-02-17 13:41:25', 5, NULL, NULL),
(76, '1', '7292072a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Perbaungan', 3, 'BAY PHT 150 KV PERBUNGAN - SEI ROTAN', '13', 'Wiring Control + Protection & MK', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/13/BAY+PBUNG-SROTN.pdf', 'Wiring Control + Protection & MK merk Pauwels', 'SAHAT H. MARPAUNG', '-', '2018-02-17 14:12:02', 5, NULL, NULL),
(77, '1', '7292072a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Perbaungan', 3, 'BAY TRAFO DAYA 2', '2', 'Wiring Kubikel 20 KV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/10/KUBIKEL+20+KV+TD2+30+MVA.pdf', 'Wiring Kubikel 20 KV TD2 Perbaungan merk Areva', 'SAHAT H. MARPAUNG', '-', '2018-02-17 14:14:13', 6, NULL, NULL),
(78, '1', '7292072a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Perbaungan', 3, 'BAY TRAFO DAYA 3', '11', 'Wiring Kubikel 20 KV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/11/KUBIKEL+20+KV+TD3+60+MVA.pdf', 'Wiring Kubikel 20 KV TD3 merk Schneider', 'SAHAT H. MARPAUNG', '-', '2018-02-17 14:34:14', 6, NULL, NULL),
(79, '1', '6488030a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Denai', 1, 'Bay Trafo Daya 1', '1', 'Wiring Internal PMT 150 KV', 'TRAFO', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/1/internal+PMT+Areva+Alsthom+TD1+denai.pdf', 'Wiring Internal PMT 150 KV merk Areva', 'ARLI SINURAT', '-', '2018-02-17 15:02:12', 6, NULL, NULL),
(80, '1', '6488030a', '0', 'Medan', 2, 'Sei Rotan', 1, 'Denai', 1, 'Bay Trafo Daya 2', '2', 'Wiring Kubikel 20 KV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/2/WIRING+KUBIKEL+20+KV+SCHNEIDER+%28DN+%29.pdf', 'Wiring Kubikel 20 KV merk Schneider', 'ARLI SINURAT', '-', '2018-02-17 15:16:58', 6, NULL, NULL),
(81, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Lamhotma', 17, 'BAY PHT 150 KV LAMHOTMA - BELAWAN', '174', 'Wiring Panel Kontrol, Relay, dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/174/SIEMENS+LAMHOTMA+TO+BELAWAN.pdf', 'Panel Siemens', 'IRVAN LEWI', '-', '2018-02-20 07:15:07', 5, NULL, NULL),
(82, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY PHT 150 KV PAYA GELI - BINJAI 2', '68', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/68/WIRING+ABB+PAYA+GELI+-+Binjai.pdf', 'Panel ABB', 'IRVAN LEWI', '-', '2018-02-20 07:24:45', 5, NULL, NULL),
(83, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Titi Kuning', 13, 'BAY TRAFO DAYA 3', '11', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/89/TD+3+Titi+Kuning+Pauwels.pdf', 'Panel Pauwels', 'IRVAN LEWI', '-', '2018-02-20 07:33:38', 6, NULL, NULL),
(84, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Titi Kuning', 13, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/88/TD+2+Titi+Kuning+ASEA+1.pdf', 'Panel Asea (Part 1)', 'IRVAN LEWI', '-', '2018-02-20 07:40:58', 6, NULL, NULL),
(85, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Titi Kuning', 13, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/88/TD+2+Titi+Kuning+ASEA+2.pdf', 'Panel Asea (Part 2)', 'IRVAN LEWI', '-', '2018-02-20 07:46:02', 6, NULL, NULL),
(86, '1', '9215921ZY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY TRAFO DAYA 1', '1', 'Wiring Incoming dan Outgoing', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/30/TD+1+MODALEK+TAMORA.pdf', 'Panel Modalek', 'IRVAN LEWI', '-', '2018-02-20 07:51:53', 6, NULL, NULL),
(87, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/109/TD++2+Labuhan+150+KV+SCHNEIDER.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-20 08:32:25', 6, NULL, NULL),
(88, '1', '9215921ZY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Denai', 1, 'BAY PHT 150 KV DENAI - TAMORA', '4', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/4/Panel+ABB+Denai-Tamora.pdf', 'Panel ABB', 'IRVAN LEWI', '-', '2018-02-20 08:38:17', 5, NULL, NULL),
(90, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'KIM', 15, 'BAY TRAFO DAYA 3', '11', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/155/TD+3+KIM.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-20 08:51:56', 6, NULL, NULL),
(91, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'KIM', 15, 'BAY TRAFO DAYA 3', '11', 'Wiring Incoming dan Outgoing', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/155/INCOMING+%26+OUTGOING+TD+3+KIM.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-20 08:56:55', 6, NULL, NULL),
(92, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'KIM', 15, 'BAY KOPEL BUS 150 KV', '25', 'Wiring Panel Kontrol, Relay dan Switchyard', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/187/KOPEL+BUS+KIM.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-20 09:01:21', 4, NULL, NULL),
(93, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'P.Brandan', 8, 'BAY PHT 150 KV P. BRANDAN - LANGSA 1', '58', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/58/langsa+1.pdf', 'Panel Energoinvest', 'IRVAN LEWI', '-', '2018-02-20 09:05:02', 5, NULL, NULL),
(94, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'P.Brandan', 8, 'BAY PHT 150 KV P. BRANDAN - LANGSA 2', '59', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/59/langsa+2.pdf', 'Panel Arya Sada', 'IRVAN LEWI', '-', '2018-02-20 09:08:20', 5, NULL, NULL),
(97, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'P.Brandan', 8, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/54/TD+2+P.+BRNDN.pdf', 'Panel Pauwels', 'IRVAN LEWI', '-', '2018-02-20 09:23:15', 6, NULL, NULL),
(98, '1', '9215921ZY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY PHT 150 KV TAMORA - SEI ROTAN', '32', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/32/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+Tamora+-+Sei+Rotan+%28Goldstar%29.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 09:26:50', 5, NULL, NULL),
(99, '1', '9215921ZY', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY TRAFO DAYA 1', '1', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/30/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+TD+1+Tamora+%28Goldstar%29.pdf', 'Panel Godstar', 'IRVAN LEWI', '-', '2018-02-20 09:29:15', 6, NULL, NULL),
(100, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - MABAR 1', '144', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/144/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+Paya+Pasir+-+Mabar+1+%28Goldstar%29.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 09:33:42', 5, NULL, NULL),
(101, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - MABAR 2', '145', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/145/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+Paya+Pasir+-+Mabar+2+%28Goldstar%29.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 09:42:15', 5, NULL, NULL),
(102, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - PAYA GELI 2', '147', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/147/P.+PSIR+-+P.+GELI.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 09:45:41', 5, NULL, NULL),
(103, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - SEI ROTAN 2', '151', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/151/P.+PSIR+-+SRTAN+2.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 09:52:42', 5, NULL, NULL),
(104, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY PHT 150 KV PAYA GELI - GLUGUR 1', '63', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/63/P.GELI+-+GLGUR+1.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 09:55:33', 5, NULL, NULL),
(105, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY PHT 150 KV PAYA GELI - GLUGUR 2', '64', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/64/P.GELI+-+GLGUR+2.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 09:58:41', 5, NULL, NULL),
(106, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY PHT 150 KV PAYA GELI - NAMURAMBE 2', '70', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/70/P.+GELI+-+NMBRE+2.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 10:02:52', 5, NULL, NULL),
(107, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'Paya Geli', 9, 'BAY PHT 150 KV PAYA GELI - PAYA PASIR 2', '66', 'Wiring Panel Kontrol, Relay dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/66/P.+GELI+-+P.+PSIR+2.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-02-20 10:05:26', 5, NULL, NULL),
(108, '1', '8708101pbs', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY PHT 150 KV LABUHAN - BELAWAN', '153', 'Wiring diagram PHT Belawan', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/153/Wiring+Diagram+PHT+LBHAN+BLWTU.pdf', 'ABB', 'RUDY IRWANTO', '-', '2018-02-20 11:16:33', 5, NULL, NULL),
(109, '1', '8708101pbs', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY PHT 150 KV LABUHAN - LAMHOTMA', '154', 'Wiring Diagram PHT Lamhotma', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/154/Wiring+Diagram+PHT+LBHAN+LHTMA.pdf', 'ABB', 'RUDY IRWANTO', '-', '2018-02-20 11:17:35', 5, NULL, NULL),
(110, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY TRAFO DAYA 1', '1', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/108/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+TD+1+Labuhan+%28Schneider%29.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-20 11:31:44', 6, NULL, NULL),
(111, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY TRAFO DAYA 2', '2', 'Wiring BBVT dan DS', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'PANEL KONTROL DAN PROTEKSI', 'android_login/109/Wiring+Bus+Riser+%2B+DS+TD+2+Labuhan+%28Schneider%29.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-20 11:33:11', 6, NULL, NULL),
(112, '1', '9215921ZY', '0', 'Medan', 2, 'Paya Pasir', 4, 'Labuhan', 16, 'BAY TRAFO DAYA 2', '2', 'Wiring BBVT', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/109/Wiring+BBVT+TD+2+Labuhan+%28Schneider%29.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-20 11:34:10', 6, NULL, NULL),
(113, '1', '8204033A2', '0', 'Medan', 2, 'Binjai', 2, 'P.Brandan', 8, 'BAY KOPEL BUS 150 KV', '25', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/55/SWD+K.BUS.pdf', 'Panel Arya Sada', 'RENO PRATAMA', '-', '2018-02-21 04:18:34', 4, NULL, NULL),
(116, '1', '7192064A', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY PHT 150 KV TAMORA - DENAI', '33', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/33/Interconnection+wiring+diagram+GI+TAMORA+bay+%28TM-SR%29%28TM-DN%29%28TD1%29.pdf', 'Panel Goldstar', 'SUHENDRA EKA WIHADI', '-', '2018-02-24 11:03:13', 5, NULL, NULL),
(117, '1', '7192064A', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY PHT 150 KV TAMORA - KUALA NAMU 1', '34', 'Wiring PMT', 'PENGHANTAR', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/34/Mekanik+PMT+PHT+TM-KN+%26+TM-GALANG.pdf', 'PMT Merk Areva (TM-GL 1 dan 2)', 'SUHENDRA EKA WIHADI', '-', '2018-02-24 11:10:24', 5, NULL, NULL),
(118, '1', '7192064A', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY PHT 150 KV TAMORA - KUALA NAMU 2', '35', 'Wiring PMT', 'PENGHANTAR', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/35/Mekanik+PMT+PHT+TM-KN+%26+TM-GALANG.pdf', 'PMT Merk Areva (TM-GL 1 dan 2)', 'SUHENDRA EKA WIHADI', '-', '2018-02-24 11:11:20', 5, NULL, NULL),
(120, '1', '7192064A', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY PHT 150 KV TAMORA - GALANG 1', '36', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/36/Interconnection+wiring+diagram+GI+TAMORA+Bay+line%28TM-GALANG%29.pdf', 'Kontraktor PT. Pandaman Putra Utama', 'SUHENDRA EKA WIHADI', '-', '2018-02-24 13:58:52', 5, NULL, NULL),
(121, '1', '7192064A', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY PHT 150 KV TAMORA - GALANG 2', '37', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/37/Interconnection+wiring+diagram+GI+TAMORA+Bay+line%28TM-GALANG%29.pdf', 'Kontraktor PT. Pandaman Putra Utama', 'SUHENDRA EKA WIHADI', '-', '2018-02-24 13:59:45', 5, NULL, NULL),
(122, '1', '7192064A', '0', 'Medan', 2, 'Sei Rotan', 1, 'Tamora', 5, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol,Proteksi, PMT serta Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/31/Approval+drawing+TRAFO+DAYA+2+GI+TAMORA.pdf', 'Panel Schneider', 'SUHENDRA EKA WIHADI', '-', '2018-02-24 17:34:44', 6, NULL, NULL),
(123, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Titi Kuning', 13, 'BAY TRAFO DAYA 4', '180', 'Wiring Panel Kontrol, Proteksi, dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/180/wairing+150kv+Trafo+4+titikuning.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-26 12:54:29', 6, NULL, NULL),
(127, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY KOPEL BUS 150 KV', '25', 'Wiring Kontrol Panel, Proteksi dan Switchyard', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/73/wiring+bus+kopel+150+kv.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 05:30:03', 4, NULL, NULL),
(128, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY PHT 150 KV LISTRIK - TITI KUNING 1', '74', 'Wiring LCC', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/74/wiring+LCC+UGC+-+1.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 05:39:05', 5, NULL, NULL),
(129, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 1', '1', 'Wiring LCC', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/71/wiring+LCC+trafo+daya+-+1.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 05:41:24', 6, NULL, NULL),
(130, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 2', '2', 'Wiring LCC', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/72/wiring+LCC+trafo+daya+-+2.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 05:45:35', 6, NULL, NULL),
(131, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 1', '1', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/71/wiring+td+1+150+kv.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:13:16', 6, NULL, NULL),
(132, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 1', '1', 'Wiring Incoming', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/71/wiring+td+1+inc+20+kv.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:14:38', 6, NULL, NULL),
(133, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 1', '1', 'Wiring Outgoing', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/71/wiring+td+1+out+going+20+kv.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:15:19', 6, NULL, NULL),
(134, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/72/wiring+td+2+150+kv.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:16:26', 6, NULL, NULL),
(135, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 2', '2', 'Wiring Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/72/wiring+td+2+kubikel+20+kv.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:17:46', 6, NULL, NULL),
(136, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 3', '11', 'Wiring Panel Kontrol, Proteksi dan Switchyard 150 ', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/185/wiring+td+3+150+kv.pdf', 'Panel Alsthom', 'IRVAN LEWI', '-', '2018-02-27 06:19:12', 6, NULL, NULL),
(137, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY TRAFO DAYA 3', '11', 'Wiring Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/185/wiring+td+3+20+kv.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-27 06:21:10', 6, NULL, NULL),
(138, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY PHT 150 KV LISTRIK - TITI KUNING 1', '74', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/74/wiring+ugc+-+1.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:22:41', 5, NULL, NULL),
(139, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'BAY PHT 150 KV LISTRIK - TITI KUNING 2', '75', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/75/wiring+ugc+-+2.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:23:48', 5, NULL, NULL),
(140, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'GIS Listrik', 10, 'DISTRIBUSI AC/DC', '5', 'Wiring Common Service', 'ACDC', '220 VAC', 'SISTEM DC', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/200/wiring+common+service.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 06:25:25', 1, NULL, NULL),
(141, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY PHT 150 KV MABAR - PAYA PASIR 1', '84', 'Wiring Internal GIS', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/84/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', 'IRVAN LEWI', '-', '2018-02-27 09:46:29', 5, NULL, NULL),
(142, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'Pangkalan Susu', 23, 'BAY DIAMETER 2', '159', 'Skematik Diagram Diameter 2', 'DIAMETER', '275 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/179/schematic+dia+2.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 10:00:59', 5, NULL, NULL),
(143, '1', '9215921ZY', '0', 'Medan', 2, 'Binjai', 2, 'Pangkalan Susu', 23, 'BAY DIAMETER 4', '161', 'Skematik Diagram Diameter 4', 'DIAMETER', '275 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/182/Schematic+Diagram+Diameter+4.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-27 10:20:18', 5, NULL, NULL),
(145, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY TRAFO DAYA 3', '11', 'Wiring MA 4', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/83/Ewiring+MA+4.pdf', 'Panel Areva', 'IRVAN LEWI', '-', '2018-02-28 04:34:58', 6, NULL, NULL),
(146, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY TRAFO DAYA 3', '11', 'Wiring BBVT', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/83/Ewiring+BBVT.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-28 04:37:14', 6, NULL, NULL),
(147, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY TRAFO DAYA 2', '2', 'Wiring Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/82/Ewiring+outgoing+TD+2+dan+TD+3.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-28 04:43:57', 6, NULL, NULL),
(148, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY TRAFO DAYA 3', '11', 'Wiring Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/83/Ewiring+outgoing+TD+2+dan+TD+3.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-28 04:46:10', 6, NULL, NULL),
(149, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY TRAFO DAYA 3', '11', 'Wiring Aux Trafo', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/83/E-Wiring+Aux+Trafo.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-02-28 04:48:09', 6, NULL, NULL),
(150, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY PHT 150 KV MABAR - PAYA PASIR 2', '85', 'Wiring Internal GIS', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/85/E-Wiring+No.+09.pdf', 'Panel Sprecher', 'IRVAN LEWI', '-', '2018-02-28 05:21:09', 5, NULL, NULL),
(151, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY TRAFO DAYA 2', '2', 'Wiring Internal GIS', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/82/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', 'IRVAN LEWI', '-', '2018-02-28 05:25:41', 6, NULL, NULL),
(152, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY TRAFO DAYA 3', '11', 'Wiring Internal GIS', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/83/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', 'IRVAN LEWI', '-', '2018-02-28 05:31:15', 6, NULL, NULL),
(153, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Mabar', 12, 'BAY KOPEL BUS 150 KV', '25', 'Wiring Internal GIS', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/86/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', 'IRVAN LEWI', '-', '2018-02-28 05:34:55', 4, NULL, NULL),
(154, '1', '6284094A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Lamhotma', 17, 'BAY TRAFO DAYA 2', '2', 'Panel kontrol', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/173/WIRING+TRAFO+DAYA+2+HYOSUNG+30+MVA+GI+LAMHOTMA.pdf', 'wiring kontrol', 'SUDIYATMO', '-', '2018-02-28 07:08:00', 6, NULL, NULL),
(155, '1', '6284094A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Lamhotma', 17, 'BAY PHT 150 KV LAMHOTMA - LABUHAN', '175', 'Panel Labuhan', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/175/Labuhan+line+.pdf', 'Wiring kontrol', 'SUDIYATMO', '-', '2018-02-28 07:26:13', 5, NULL, NULL),
(156, '1', '6284094A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Lamhotma', 17, 'BAY PHT 150 KV LAMHOTMA - LABUHAN', '175', 'Panel Labuhan', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/175/Labuhan+line+.pdf', 'Wiring kontrol', 'SUDIYATMO', '-', '2018-02-28 07:28:29', 5, NULL, NULL),
(157, '1', '1', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 3', '11', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/78/BAB_III_(_WIRING_BAY_TD-3_)_new_doc_2018-02-28_08.28_.34_20180228091414_.pdf', 'Panel Schneider', 'admin', '-', '2018-03-02 10:44:56', 6, NULL, NULL),
(158, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY PHT 150 KV GLUGUR - PAYA GELI 1', '79', 'Wiring Panel Kontrol dan Proteksi', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/79/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-03-02 06:07:47', 5, NULL, NULL),
(159, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY PHT 150 KV GLUGUR - PAYA GELI 2', '80', 'Wiring Panel Kontrol dan Proteksi', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/80/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-03-02 06:12:19', 5, NULL, NULL),
(160, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 1', '1', 'Wiring Panel Kontrol dan Proteksi', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/76/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-03-02 06:14:54', 6, NULL, NULL),
(161, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol dan Proteksi', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/77/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-03-02 06:18:10', 6, NULL, NULL),
(162, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 3', '11', 'Wiring Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/78/WIRING+KUBIKEL+TD-3+GL+%28+SCHNEIDER+%29.pdf', 'Panel Schneider', 'IRVAN LEWI', '-', '2018-03-02 06:29:43', 6, NULL, NULL),
(163, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 1', '1', 'Wiring Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/76/WIRING+KUBIKEL+GU+%28SIEMENS%29_doc+2018-02-07.pdf', 'Panel Siemens', 'IRVAN LEWI', '-', '2018-03-02 06:33:31', 6, NULL, NULL),
(164, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 2', '2', 'Wiring Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/77/WIRING+KUBIKRL+GG+%28SIEMENS%29_Doc+2018-02-08.pdf', 'Panel Siemens', 'IRVAN LEWI', '-', '2018-03-02 06:46:58', 6, NULL, NULL),
(166, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 1', '1', 'Wiring LCC', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/76/WIRING+KONTROL+LCC+GIS+VOLUME++2+.pdf', 'Panel Sprecher', 'IRVAN LEWI', '-', '2018-03-02 08:20:30', 6, NULL, NULL),
(167, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY TRAFO DAYA 2', '2', 'Wiring LCC', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/77/WIRING+KONTROL+LCC+GIS+VOLUME+4+.pdf', 'Panel Sprecher', 'IRVAN LEWI', '-', '2018-03-02 08:27:07', 6, NULL, NULL),
(168, '1', '9215921ZY', '0', 'Medan', 2, 'Glugur', 3, 'Glugur', 11, 'BAY KOPEL BUS 150 KV', '25', 'Wiring Panel Kontrol dan Proteksi', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/81/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', 'IRVAN LEWI', '-', '2018-03-02 08:42:32', 4, NULL, NULL),
(169, '1', '6284094A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Lamhotma', 17, 'DISTRIBUSI AC/DC', '5', 'Panel AC / DC', 'ACDC', '220 VAC', 'SISTEM DC', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/207/SLN+AC+%26+DC+LAMHOTMA.pdf', 'Wiring AC /DC', 'SUDIYATMO', '-', '2018-03-06 13:19:37', 1, NULL, NULL),
(183, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 12', '169', 'DIAMETER 12 VOL 2 PMT B12 & AB12', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/169/DIAMETER+12+VOL+2+PMT+B12+%26+AB12.pdf', 'DIAMETER 12 VOL 2 PMT B12 & AB12', 'IRWAN', '-', '2018-03-26 10:15:09', 5, NULL, NULL),
(184, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 12', '169', 'DIAMETER 12 VOL 1 PMT A12', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/169/DIAMETER+12+VOL+1+PMT+A12.pdf', 'DIAMETER 12 VOL 1 PMT A12', 'IRWAN', '-', '2018-03-26 10:28:24', 5, NULL, NULL),
(185, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 4', '161', 'DIAMETER 4 VOL 1 PMT A4 DAN B4', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/161/Doc1.pdf', 'DIAMETER 4 VOL 1 PMT A4 DAN B4', 'IRWAN', '-', '2018-03-26 10:37:28', 5, NULL, NULL),
(186, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 5', '162', 'DIAMETER 5 VOL 1 PMT A5 DAN AB5 DAN B5', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/162/Doc1.pdf', 'DIAMETER 5 VOL 1 PMT A5 DAN AB5 DAN B5', 'IRWAN', '-', '2018-03-26 10:45:33', 5, NULL, NULL),
(187, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 6', '163', 'DIAMETER 6 VOL 1 PMT A6 DAN B6', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/163/Doc1.pdf', 'DIAMETER 6 VOL 1 PMT A6 DAN B6', 'IRWAN', '-', '2018-03-26 10:50:53', 5, NULL, NULL),
(188, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 7', '164', 'DIAMETER 7 VOL 1 PMT A7', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/164/utk+pdf+buku+wiring+a7.pdf', 'DIAMETER 7 VOL 1 PMT A7', 'IRWAN', '-', '2018-03-26 10:55:59', 5, NULL, NULL),
(189, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 7', '164', 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/164/diametr+AB7+DAN+B7.pdf', 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', 'IRWAN', '-', '2018-03-26 10:57:15', 5, NULL, NULL),
(190, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 7', '164', 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/164/diametr+AB7+DAN+B7.pdf', 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', 'IRWAN', '-', '2018-03-26 11:00:08', 5, NULL, NULL),
(191, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY PEMBANGKIT PLTD AKE', '170', 'DIAMETER PLTD AKE', 'BUSBAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/170/PLTD+AKE.pdf', 'DIAMETER PLTD AKE', 'IRWAN', '-', '2018-03-26 11:01:39', 0, NULL, NULL),
(195, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 0', '127', 'DIAMETER 0 VOL 1', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/127/DIAMETER+0+VOL+1.pdf', 'DIAMETER 0 VOL 1', 'IRWAN', '-', '2018-04-03 03:03:06', 5, NULL, NULL),
(196, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 0', '127', 'DIAMETER 0 VOL 2', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/127/DIAMETER+0+VOL+2.pdf', 'DIAMETER 0 VOL 2', 'IRWAN', '-', '2018-04-03 03:04:23', 5, NULL, NULL),
(197, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 1', '158', 'DIAMETER 1 VOL 1', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/158/DIAMETER+1+VOL+1.pdf', 'DIAMETER 1 VOL 1', 'IRWAN', '-', '2018-04-03 03:05:22', 5, NULL, NULL),
(198, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 1', '158', 'DIAMETER 1 VOL 2', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/158/DIAMETER+1+VOL+2.pdf', 'DIAMETER 1 VOL 2', 'IRWAN', '-', '2018-04-03 03:06:13', 5, NULL, NULL),
(199, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 1', '158', 'DIAMETER 1 VOL 3', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/158/DIAMETER+1+VOL+3.pdf', 'DIAMETER 1 VOL 3', 'IRWAN', '-', '2018-04-03 03:06:55', 5, NULL, NULL),
(200, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 9', '166', 'DIAMETER 9 VOL 1 PMT A9', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/166/DIAMETER+9+VOL+1+PMT+A9.pdf', 'DIAMETER 9 VOL 1 PMT A9', 'IRWAN', '-', '2018-04-05 09:13:35', 5, NULL, NULL),
(201, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 8', '165', 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/165/DIAMETER+8+VOL+2+PMT+AB8+%26+B8.pdf', 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'IRWAN', '-', '2018-04-05 14:36:43', 5, NULL, NULL),
(202, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 8', '165', 'DIAMETER 8 VOL 1 PMT A8', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/165/DIAMETER+8+VOL+1+PMT+A8.pdf', 'DIAMETER 8 VOL 1 PMT A8', 'IRWAN', '-', '2018-04-05 15:26:42', 5, NULL, NULL),
(203, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 8', '165', 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/165/DIAMETER+8+VOL+2+PMT+AB8+%26+B8.pdf', 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'IRWAN', '-', '2018-04-05 15:33:20', 5, NULL, NULL),
(204, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 8', '165', 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/165/DIAMETER+8+VOL+2+PMT+AB8+%26+B8.pdf', 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'IRWAN', '-', '2018-04-05 15:40:35', 5, NULL, NULL),
(205, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 8', '165', 'DIAMETER 8 VOL 1 PMT A8', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/165/DIAMETER+8+VOL+1+PMT+A8.pdf', 'DIAMETER 8 VOL 1 PMT A8', 'IRWAN', '-', '2018-04-07 18:38:59', 5, NULL, NULL),
(206, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY TRAFO DAYA 2', '2', 'Wiring Panel Kontrol, Relay dan Switchyard', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/137/New+Doc+2018-04-10', 'Panel Kontrol', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-10 08:13:13', 6, NULL, NULL),
(207, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY KOPEL BUS 150 KV', '25', 'Wiring Panel Kontrol, Relay dan Switchyard', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/152/New+Doc+2018-04-10+%281%29', 'Panel Kontrol (Cogelex)', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-10 08:14:24', 4, NULL, NULL),
(208, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY KOPEL BUS 150 KV', '25', 'Wiring PMT', 'KOPEL', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'android_login/152/New+Doc+2018-04-10+%282%29', 'Merk ABB', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-10 09:02:59', 4, NULL, NULL),
(209, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY TRAFO DAYA 1', '1', 'Wiring Diagram Kubikel 20 kV', 'TRAFO', '20 KV', 'BAY', 'INTERNAL PERALATAN', 'KUBIKEL', 'android_login/136/New+Doc+2018-04-10+%283%29', 'Merk SIEMENS', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-11 00:32:20', 6, NULL, NULL),
(210, '1', '8609531Z', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER -1', '213', 'Wiring Panel Kontrol, Relay dan Switchyard', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/158/1-BLW_150_PWR_EM_13-1+Rev0+%2820180410%29+for+Contruction-1.pdf', 'bay LMVPP Diameter -1', 'ARIEF SANDY ANGGORO', '-', '2018-04-11 09:14:10', 5, NULL, NULL),
(211, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY TRAFO DAYA 1', '1', 'Wiring dan Control Trafo', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/39/TD+1+BINJAI.pdf', 'Merk UNINDO', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 03:22:06', 6, NULL, NULL),
(212, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY TRAFO DAYA 2', '2', 'Wiring dan Control Transformer', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/40/TD+2.pdf', 'Panel UNINDO', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 04:12:54', 6, NULL, NULL),
(213, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY TRAFO DAYA 3', '11', 'Wiring dan Control Bay ', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/41/TD+3.pdf', 'Wiring Dan Control TD 3 UNINDO', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 04:21:11', 6, NULL, NULL),
(214, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY TRAFO DAYA 3', '11', 'Wiring Panel Kontrol Transformer', 'TRAFO', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/41/TD+3.pdf', 'Panel UNINDO', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 04:25:28', 6, NULL, NULL),
(215, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - PAYA GELI 1', '42', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/42/PGELI+1.pdf', 'Panel Energoinvest', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 04:48:05', 5, NULL, NULL),
(216, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - PAYA GELI 1', '42', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/42/PGELI+1.pdf', 'Panel Energoinvest', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 04:49:07', 5, NULL, NULL),
(217, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - PAYA GELI 2', '43', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/43/PGELI+2.pdf', 'Panel ABB', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 08:43:21', 5, NULL, NULL);
INSERT INTO `pdf` (`id_pdf`, `status`, `id_user`, `id_user_update`, `nama_upt`, `id_upt`, `nama_tragi`, `id_tragi`, `nama_gardu`, `id_gardu`, `nama_bay`, `id_bay`, `judul_pdf`, `kategori_bay`, `level_tegangan`, `kategori_peralatan`, `kategori_wiring`, `sub_kategori_wiring`, `link_pdf`, `keterangan`, `user_upload`, `user_update`, `update_terakhir`, `bay_pdf_requirement`, `merk_peralatan`, `kode_drawing`) VALUES
(218, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - P. BRANDAN 1', '44', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/44/PBDAN+1.pdf', 'Panel Energoinvest', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 08:47:34', 5, NULL, NULL),
(219, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - P. BRANDAN 2', '45', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/45/PBDAN+2.pdf', 'Panel Arya Sada', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 08:50:59', 5, NULL, NULL),
(220, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - BELAWAN 1', '47', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/47/BLWCC+1.pdf', 'Panel ABB', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 08:54:49', 5, NULL, NULL),
(221, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY PHT 150 KV BINJAI - BELAWAN 2', '48', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/48/BLWCC+2.pdf', 'Panel ABB', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 08:56:14', 5, NULL, NULL),
(222, '1', '8708095PBS', '0', 'Medan', 2, 'Binjai', 2, 'Binjai', 6, 'BAY KOPEL BUS 150 KV', '25', 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/46/COUPLE+BUS.pdf', 'Panel ABB', 'ERIKSON SIMANJUNTAK', '-', '2018-04-12 08:59:38', 4, NULL, NULL),
(223, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 3', '160', 'DIAMETER 3 VOL 1 PMT A3.AB3.B3', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/160/New+Doc+2018-04-07.pdf', 'DIAMETER 3 VOL 1 PMT A3.AB3.B3', 'IRWAN', '-', '2018-04-19 14:31:33', 5, NULL, NULL),
(224, '1', '6692056A', '0', 'Medan', 2, 'Paya Pasir', 4, 'Belawan', 14, 'BAY DIAMETER 2', '159', 'DIAMETER 2 VOL 1 PMT A2.AB2.B2', 'DIAMETER', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/159/New+Doc+2018-02-26.pdf', 'DIAMETER 2 VOL 1 PMT A2.AB2.B2', 'IRWAN', '-', '2018-04-19 14:34:41', 5, NULL, NULL),
(225, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - BELAWAN 1', '148', 'Wiring Diagram BLWTU 1', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/148/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-22 09:58:53', 5, NULL, NULL),
(226, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - BELAWAN 2', '149', 'Wiring Diagram BLWTU 2', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/149/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-22 10:00:05', 5, NULL, NULL),
(227, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - PAYA GELI 1', '146', 'Wiring Diagram PGELI 1', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/146/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-22 10:01:46', 5, NULL, NULL),
(228, '1', '8908087PBS', '0', 'Medan', 2, 'Paya Pasir', 4, 'Paya Pasir', 18, 'BAY PHT 150 KV PAYA PASIR - SEI ROTAN 1', '150', 'Wiring Diagram SROTN 1', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/150/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', 'FRANKLIN GIDEON HUTABARAT', '-', '2018-04-22 10:02:45', 5, NULL, NULL),
(230, '1', '8409487z', '0', 'Medan', 2, 'Glugur', 3, 'Titi Kuning', 13, 'BAY PHT 150 KV TITI KUNING - SEI ROTAN 1', '92', 'manual CB ABB LTB170', 'PENGHANTAR', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/92/Manual+ABB+LTB+170.pdf', 'manual book', 'JHON HENDRA', '-', '2018-04-26 07:28:22', 5, NULL, NULL),
(236, '1', '8609020PBS', '0', 'Medan', 2, 'Binjai', 2, 'Namorambe', 7, 'BAY KOPEL BUS 150 KV', '25', 'Bay Couple Bus', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/126/Wiring+Kopel+Bus+part+1.pdf', 'Namorambe', 'ERNEST GOHANKU MALAU', '-', '2018-12-31 02:29:31', 4, NULL, NULL),
(237, '1', '8609020PBS', '0', 'Medan', 2, 'Binjai', 2, 'Namorambe', 7, 'BAY KOPEL BUS 150 KV', '25', 'Bay Couple Bus', 'KOPEL', '150 KV', 'BAY', 'AS BUILT', 'PANEL KONTROL DAN PROTEKSI', 'android_login/126/Wiring+Kopel+Bus+part+1.pdf', 'Namorambe', 'ERNEST GOHANKU MALAU', '-', '2018-12-31 02:29:36', 4, NULL, NULL),
(263, '1', '123AB', '123AB', 'Medan', 2, 'Binjai', 2, 'Namorambe', 7, 'BAY TRAFO DAYA 1', '1', 'Internal Trafo dan OLTC', 'TRAFO', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL TRAFO', 'assets/uploads/bukuwiring/Namorambe/BAY_TRAFO_DAYA_1_INTERNAL_TRAFO_15032023.pdf', 'Buku internal Trafo dan OLTC merk ABB', 'Admin eWiring', 'Admin eWiring', '2023-03-13 14:56:30', 4, 'ABB', NULL),
(267, '1', '123AB', '123AB', 'Medan', 2, 'Binjai', 2, 'Namorambe', 7, 'BAY PHT 150 KV NAMORAMBE - PAYA GELI 1', '210', 'Internal PMS Bus', 'PENGHANTAR', '150 KV', 'BAY', 'INTERNAL PERALATAN', 'INTERNAL PMS BUS', 'assets/uploads/bukuwiring/Namorambe/BAY_PHT_150_KV_NAMORAMBE_-_PAYA_GELI_1_INTERNAL_PMS_BUS_15032023.pdf', 'Buku internal PMS Bus merk Alstom', 'Admin eWiring', 'Admin eWiring', '2023-03-13 15:22:16', 4, 'Alstom', NULL),
(274, '1', '123AB', '0', 'Pematang Siantar', 3, 'Kisaran', 12, 'TEST', 35, 'BAY TEST - TEST 1', '219', 'Test Buku Upload cek status', 'ACDC', '150 KV', 'SISTEM DC', 'INTERNAL PERALATAN', 'INTERNAL PMT', 'assets/uploads/bukuwiring/TEST/BAY_TEST_-_TEST_1_INTERNAL_PMT_27042023.pdf', 'Ini adalah buku internal PMT', 'Admin eWiring', '-', '2023-04-27 16:31:12', 4, 'Siemens', 'ABG-11_A5C');

-- --------------------------------------------------------

--
-- Table structure for table `pdf_copy`
--

CREATE TABLE `pdf_copy` (
  `id_pdf` int(11) NOT NULL,
  `id_bay` int(11) NOT NULL,
  `id_gardu` int(11) NOT NULL,
  `id_tragi` int(11) NOT NULL,
  `id_upt` int(11) NOT NULL,
  `judul_pdf` varchar(100) NOT NULL,
  `link_pdf` text NOT NULL,
  `keterangan` text NOT NULL,
  `update_terakhir` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `user_update` varchar(255) NOT NULL DEFAULT '-',
  `user_upload` varchar(255) DEFAULT NULL,
  `nama_bay` varchar(255) DEFAULT NULL,
  `nama_gardu` varchar(255) DEFAULT NULL,
  `nama_tragi` varchar(255) DEFAULT NULL,
  `nama_upt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf_copy`
--

INSERT INTO `pdf_copy` (`id_pdf`, `id_bay`, `id_gardu`, `id_tragi`, `id_upt`, `judul_pdf`, `link_pdf`, `keterangan`, `update_terakhir`, `status`, `id_user`, `user_update`, `user_upload`, `nama_bay`, `nama_gardu`, `nama_tragi`, `nama_upt`) VALUES
(16, 61, 9, 2, 2, 'Wiring Kubikel BBVT dan ES', 'http://localhost/ewiring/android_login/61/AREVA_BBVT_dan_ES.pdf', 'Wiring BBVT dan ES kubikel Areva', '2017-05-07 23:43:36', '1', '1', 'YOS ADIKA NOVANDRA MARBUN', 'admin', 'BAY TRAFO DAYA 2', 'Paya Geli', 'Binjai', 'Medan'),
(17, 61, 9, 2, 2, 'Wiring Kubikel Incoming', 'http://localhost/ewiring/android_login/61/AREVA_Inc_20_kV.pdf', 'Wiring kubikel Incoming Areva', '2017-05-07 23:45:02', '1', '1', '-', 'admin', 'BAY TRAFO DAYA 2', 'Paya Geli', 'Binjai', 'Medan'),
(18, 61, 9, 2, 2, 'Wiring Kubikel Outgoing', 'http://localhost/ewiring/android_login/61/AREVA_Outgoing_20_kV.pdf', 'Wiring kubikel Outgoing Areva', '2017-05-07 23:46:59', '1', '1', '-', 'admin', 'BAY TRAFO DAYA 2', 'Paya Geli', 'Binjai', 'Medan'),
(19, 45, 6, 2, 2, 'Wiring Kontrol dan Relay Panel', 'http://localhost/ewiring/android_login/45/BNJ-BRANDAN_2_Arya_Sada_150_kV_Line_Bay.pdf', 'Wiring kontrol dan relay panel merk arya sada', '2017-05-07 23:50:15', '1', '1', '-', 'admin', 'BAY PHT 150 KV BINJAI - P. BRANDAN 2', 'Binjai', 'Binjai', 'Medan'),
(20, 57, 8, 2, 2, 'Wiring Kontrol dan Relay Panel', 'http://localhost/ewiring/android_login/57/BRANDAN_-_BINJAI_2_ARYA_SADA_PENGHANTAR.pdf', 'Wiring kontrol dan relay panel merk arya sada', '2017-05-07 23:51:19', '1', '1', '-', 'admin', 'BAY PHT 150 KV P. BRANDAN - BINJAI 2', 'P.Brandan', 'Binjai', 'Medan'),
(21, 92, 13, 3, 2, 'Wiring Kontrol dan Relay Panel', 'http://localhost/ewiring/android_login/92/ENERGOINVEST_TK-SR1.pdf', 'Wiring kontrol dan relay panel merk energoinvest', '2017-09-08 00:03:21', '1', '1', '-', 'admin', 'BAY PHT 150 KV TITI KUNING - SEI ROTAN 1', 'Titi Kuning', 'Glugur', 'Medan'),
(22, 79, 11, 3, 2, 'Wiring Kontrol dan Relay Panel', 'http://localhost/ewiring/android_login/79/GL-PG_1_GOLDSTAR.pdf', 'Wiring kontrol dan relay panel merk goldstar', '2017-09-08 00:12:28', '1', '1', '-', 'admin', 'BAY PHT 150 KV GLUGUR - PAYA GELI 1', 'Glugur', 'Glugur', 'Medan'),
(23, 14, 4, 1, 2, 'Wiring Kubikel Incoming dan Outgoing', 'http://localhost/ewiring/android_login/14/INC_dan_Outgoing_Siemens_Sei_Rotan.pdf', 'Wiring kubikel incoming dan outgoing siemens', '2017-09-08 00:32:54', '1', '1', '-', 'admin', 'BAY TRAFO DAYA 1', 'Sei Rotan', 'Sei Rotan', 'Medan'),
(24, 27, 4, 1, 2, 'Wiring Internal PMT', 'http://localhost/ewiring/android_login/27/PMT_SPRECHER_ENERGIE.pdf', 'Wiring internal PMT sprecher', '2017-09-08 01:18:20', '1', '1', '-', 'admin', 'BAY PHT 150 KV SEI ROTAN - TITI KUNING 2', 'Sei Rotan', 'Sei Rotan', 'Medan'),
(25, 1, 1, 1, 2, 'Wiring Remote Control 20kV dan Kubikel Outgoing', 'http://localhost/ewiring/android_login/1/Schneider_Remote_Control_20_kV_dan_Outgoing_GI_Denai.pdf', 'Wiring Remote Control 20kV dan Kubikel Outgoing merk scheineder', '2017-09-08 11:01:41', '1', '1', '-', 'admin', 'Bay Trafo Daya 1', 'Denai', 'Sei Rotan', 'Medan'),
(26, 2, 1, 1, 2, 'Wiring Internal PMT', 'http://localhost/ewiring/android_login/2/PMT_AREVA_TD_DENAI.pdf', 'Wiring internal PMT areva', '2017-09-08 11:24:00', '1', '1', '-', 'admin', 'Bay Trafo Daya 2', 'Denai', 'Sei Rotan', 'Medan'),
(27, 3, 1, 1, 2, 'Wiring Internal PMT', 'http://localhost/ewiring/android_login/3/PMT_AREVA_TD_DENAI.pdf', 'Wiring internal PMT areva', '2017-09-08 11:26:22', '1', '1', '-', 'admin', 'BAY PHT 150 KV DENAI - SEI ROTAN', 'Denai', 'Sei Rotan', 'Medan'),
(28, 174, 17, 4, 2, 'Wiring Kontrol dan Relay Panel', 'http://localhost/ewiring/android_login/121/SIEMENS_LAMHOTMA_TO_BELAWAN.pdf', 'Wiring kontrol dan relay panel merk siemens', '2017-09-08 11:35:38', '1', '1', '-', 'admin', 'BAY PHT 150 KV LAMHOTMA - BELAWAN', 'Lamhotma', 'Paya Pasir', 'Medan'),
(39, 7, 2, 1, 2, 'Wiring Panel Kontrol, Relay & Switchyard', 'http://localhost/ewiring/android_login/5/Bay+Trafo.pdf', 'Wiring Panel Kontrol, Relay & Switchyard', '2018-02-05 06:41:05', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'BAY TRAFO DAYA 1 & 2', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(40, 7, 2, 1, 2, 'Wiring Internal PMT', 'http://localhost/ewiring/android_login/5/INTERNAL+CB++3POLE++TRAFO.pdf', 'merk areva, TD1 & TD2 : sama', '2018-02-05 06:42:24', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'BAY TRAFO DAYA 1 & 2', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(41, 7, 2, 1, 2, 'Wiring Panel Kontrol 20 kV', 'http://localhost/ewiring/android_login/5/PANEL+KONTROL+20KV.pdf', 'TD1 & TD2 : sama', '2018-02-05 06:43:25', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'BAY TRAFO DAYA 1 & 2', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(42, 7, 2, 1, 2, 'Wiring Panel Regulation Transformer', 'http://localhost/ewiring/android_login/5/TRANSFORMER+REGULATION+PANEL.pdf', 'Wiring Panel Regulation Transformer', '2018-02-05 06:44:30', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'BAY TRAFO DAYA 1 & 2', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(43, 8, 2, 1, 2, 'Wiring Panel Kontrol, Relay & Switchyard', 'http://localhost/ewiring/android_login/7/LINE+BAY.pdf', 'line bay Knamu-Tmora 1 & 2 dalam 1 buku', '2018-02-05 06:48:36', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'BAY PHT 150 KV KUALANAMU - TAMORA 1 & 2', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(44, 5, 2, 1, 2, 'ACDB', 'http://localhost/ewiring/android_login/5/AC+380+V+ACDB.pdf', 'distribusi AC GI Knamu', '2018-02-05 06:53:13', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'DISTRIBUSI AC/DC', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(45, 5, 2, 1, 2, 'DCDB 110V', 'http://localhost/ewiring/android_login/5/DC+110+VOLT+DCDB.pdf', 'distribusi DC 110V GI Knamu', '2018-02-05 06:54:05', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'DISTRIBUSI AC/DC', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(46, 5, 2, 1, 2, 'DCDB 48V', 'http://localhost/ewiring/android_login/5/DC+48+VOLT+DCDB.pdf', 'Distribusi DC 48V GI Knamu', '2018-02-05 06:54:49', '1', '9616067PBY', '-', 'YOS ADIKA NOVANDRA MARBUN', 'DISTRIBUSI AC/DC', 'Kuala Namu', 'Sei Rotan', 'Medan'),
(47, 153, 16, 4, 2, 'Wiring Diagram PHT LBHAN-BLWTU (AC DC Panel)', 'http://localhost/ewiring/android_login/153/Wiring+Diagram+PHT+LBHAN+BLWTU+%28AD+DC+Panel%29.pdf', 'ABB (PT ABDIBANGUN BUANA)', '2018-02-06 09:52:03', '1', '8908098PBS', '-', 'HERMAN SARITUA SIMANJUNTAK', 'BAY PHT 150 KV LABUHAN - BELAWAN', 'Labuhan', 'Paya Pasir', 'Medan'),
(48, 154, 16, 4, 2, 'Wiring Diagram PHT LBHAN-LHTMA (AC DC Panel)', 'http://localhost/ewiring/android_login/154/Wiring+Diagram+PHT+LBHAN+LHTMA+%28AD+DC+Panel%29.pdf', 'ABB (PT ABDIBANGUN BUANA)', '2018-02-06 09:54:55', '1', '8908098PBS', '-', 'HERMAN SARITUA SIMANJUNTAK', 'BAY PHT 150 KV LABUHAN - LAMHOTMA', 'Labuhan', 'Paya Pasir', 'Medan'),
(50, 56, 8, 2, 2, 'SWD Mashailling Kiosk For Line Bay Binjai 1', 'http://localhost/ewiring/android_login/56/GW1500190.PG019-PG020++MARSHALLING+KIOSK+FOR+LINE+BAY_BINJAI.pdf', 'MK Binjai1 Merk NR', '2018-02-07 07:19:53', '1', '8204033A2', '-', 'RENO PRATAMA', 'BAY PHT 150 KV P. BRANDAN - BINJAI 1', 'P.Brandan', 'Binjai', 'Medan'),
(51, 178, 23, 2, 2, 'Modifikasi Wiring', 'http://localhost/ewiring/android_login/178/Modifikasi+Dia+1.pdf', 'Diameter 1', '2018-02-07 07:21:23', '1', '8908098PBS', '-', 'HERMAN SARITUA SIMANJUNTAK', 'BAY DIAMETER 1', 'Pangkalan Susu', 'Binjai', 'Medan'),
(52, 57, 8, 2, 2, 'SWD Marsailling Kiosk For Line Bay Binjai 2', 'http://localhost/ewiring/android_login/57/GW1500190.PG019-PG020++MARSHALLING+KIOSK+FOR+LINE+BAY_BINJAI.pdf', 'MK Binjai2 Merk NR', '2018-02-07 07:23:19', '1', '8204033A2', '-', 'RENO PRATAMA', 'BAY PHT 150 KV P. BRANDAN - BINJAI 2', 'P.Brandan', 'Binjai', 'Medan'),
(53, 179, 23, 2, 2, 'Modifikasi Wiring', 'http://localhost/ewiring/android_login/179/Modifikasi+Dia+2.pdf', 'Diameter 2', '2018-02-07 07:45:38', '1', '8908098PBS', '-', 'HERMAN SARITUA SIMANJUNTAK', 'BAY DIAMETER 2', 'Pangkalan Susu', 'Binjai', 'Medan'),
(54, 182, 23, 2, 2, 'Modifikasi Wiring', 'http://localhost/ewiring/android_login/182/Modifikasi+Dia+4.pdf', 'Diameter 4', '2018-02-07 07:51:41', '1', '8908098PBS', '-', 'HERMAN SARITUA SIMANJUNTAK', 'BAY DIAMETER 4', 'Pangkalan Susu', 'Binjai', 'Medan'),
(73, 10, 3, 1, 2, 'Wiring Diagram dan Koneksi', 'http://localhost/ewiring/android_login/10/BAY+TRAFO+DAYA+2+30+MVA.pdf', 'Wiring Diagram dan Koneksi TD2 30 MVA merk Areva', '2018-02-17 13:14:16', '1', '7292072a', '-', 'SAHAT H. MARPAUNG', 'BAY TRAFO DAYA 2', 'Perbaungan', 'Sei Rotan', 'Medan'),
(74, 11, 3, 1, 2, 'Wiring Control + Reg. Protection & MK', 'http://localhost/ewiring/android_login/11/BAY+TRAFO+DAYA+3+60+MVA.pdf', 'Wiring Kontrol, Proteksi, dan MK TD3 GI Perbaungan 60 MVA merk Schneider', '2018-02-17 13:18:44', '1', '7292072a', '-', 'SAHAT H. MARPAUNG', 'BAY TRAFO DAYA 3', 'Perbaungan', 'Sei Rotan', 'Medan'),
(75, 12, 3, 1, 2, 'Wiring Control + Protection & MK', 'http://localhost/ewiring/android_login/12/BAY+PBUNG-TBING.pdf', 'Wiring Control + Protection & MK merk Energoinvest', '2018-02-17 13:41:25', '1', '7292072a', '-', 'SAHAT H. MARPAUNG', 'BAY PHT 150 KV PERBAUNGAN - TEBING TINGGI', 'Perbaungan', 'Sei Rotan', 'Medan'),
(76, 13, 3, 1, 2, 'Wiring Control + Protection & MK', 'http://localhost/ewiring/android_login/13/BAY+PBUNG-SROTN.pdf', 'Wiring Control + Protection & MK merk Pauwels', '2018-02-17 14:12:02', '1', '7292072a', '-', 'SAHAT H. MARPAUNG', 'BAY PHT 150 KV PERBUNGAN - SEI ROTAN', 'Perbaungan', 'Sei Rotan', 'Medan'),
(77, 10, 3, 1, 2, 'Wiring Kubikel 20 KV', 'http://localhost/ewiring/android_login/10/KUBIKEL+20+KV+TD2+30+MVA.pdf', 'Wiring Kubikel 20 KV TD2 Perbaungan merk Areva', '2018-02-17 14:14:13', '1', '7292072a', '-', 'SAHAT H. MARPAUNG', 'BAY TRAFO DAYA 2', 'Perbaungan', 'Sei Rotan', 'Medan'),
(78, 11, 3, 1, 2, 'Wiring Kubikel 20 KV', 'http://localhost/ewiring/android_login/11/KUBIKEL+20+KV+TD3+60+MVA.pdf', 'Wiring Kubikel 20 KV TD3 merk Schneider', '2018-02-17 14:34:14', '1', '7292072a', '-', 'SAHAT H. MARPAUNG', 'BAY TRAFO DAYA 3', 'Perbaungan', 'Sei Rotan', 'Medan'),
(79, 1, 1, 1, 2, 'Wiring Internal PMT 150 KV', 'http://localhost/ewiring/android_login/1/internal+PMT+Areva+Alsthom+TD1+denai.pdf', 'Wiring Internal PMT 150 KV merk Areva', '2018-02-17 15:02:12', '1', '6488030a', '-', 'ARLI SINURAT', 'Bay Trafo Daya 1', 'Denai', 'Sei Rotan', 'Medan'),
(80, 2, 1, 1, 2, 'Wiring Kubikel 20 KV', 'http://localhost/ewiring/android_login/2/WIRING+KUBIKEL+20+KV+SCHNEIDER+%28DN+%29.pdf', 'Wiring Kubikel 20 KV merk Schneider', '2018-02-17 15:16:58', '1', '6488030a', '-', 'ARLI SINURAT', 'Bay Trafo Daya 2', 'Denai', 'Sei Rotan', 'Medan'),
(81, 174, 17, 4, 2, 'Wiring Panel Kontrol, Relay, dan Switchyard', 'http://localhost/ewiring/android_login/174/SIEMENS+LAMHOTMA+TO+BELAWAN.pdf', 'Panel Siemens', '2018-02-20 07:15:07', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV LAMHOTMA - BELAWAN', 'Lamhotma', 'Paya Pasir', 'Medan'),
(82, 68, 9, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/68/WIRING+ABB+PAYA+GELI+-+Binjai.pdf', 'Panel ABB', '2018-02-20 07:24:45', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA GELI - BINJAI 2', 'Paya Geli', 'Binjai', 'Medan'),
(83, 89, 13, 3, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/89/TD+3+Titi+Kuning+Pauwels.pdf', 'Panel Pauwels', '2018-02-20 07:33:38', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'Titi Kuning', 'Glugur', 'Medan'),
(84, 88, 13, 3, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/88/TD+2+Titi+Kuning+ASEA+1.pdf', 'Panel Asea (Part 1)', '2018-02-20 07:40:58', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Titi Kuning', 'Glugur', 'Medan'),
(85, 88, 13, 3, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/88/TD+2+Titi+Kuning+ASEA+2.pdf', 'Panel Asea (Part 2)', '2018-02-20 07:46:02', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Titi Kuning', 'Glugur', 'Medan'),
(86, 30, 5, 1, 2, 'Wiring Incoming dan Outgoing', 'http://localhost/ewiring/android_login/30/TD+1+MODALEK+TAMORA.pdf', 'Panel Modalek', '2018-02-20 07:51:53', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'Tamora', 'Sei Rotan', 'Medan'),
(87, 109, 16, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/109/TD++2+Labuhan+150+KV+SCHNEIDER.pdf', 'Panel Schneider', '2018-02-20 08:32:25', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Labuhan', 'Paya Pasir', 'Medan'),
(88, 4, 1, 1, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/4/Panel+ABB+Denai-Tamora.pdf', 'Panel ABB', '2018-02-20 08:38:17', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV DENAI - TAMORA', 'Denai', 'Sei Rotan', 'Medan'),
(90, 155, 15, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/155/TD+3+KIM.pdf', 'Panel Areva', '2018-02-20 08:51:56', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'KIM', 'Paya Pasir', 'Medan'),
(91, 155, 15, 4, 2, 'Wiring Incoming dan Outgoing', 'http://localhost/ewiring/android_login/155/INCOMING+%26+OUTGOING+TD+3+KIM.pdf', 'Panel Areva', '2018-02-20 08:56:55', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'KIM', 'Paya Pasir', 'Medan'),
(92, 187, 15, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/187/KOPEL+BUS+KIM.pdf', 'Panel Schneider', '2018-02-20 09:01:21', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY KOPEL BUS 150 KV', 'KIM', 'Paya Pasir', 'Medan'),
(93, 58, 8, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/58/langsa+1.pdf', 'Panel Energoinvest', '2018-02-20 09:05:02', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV P. BRANDAN - LANGSA 1', 'P.Brandan', 'Binjai', 'Medan'),
(94, 59, 8, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/59/langsa+2.pdf', 'Panel Arya Sada', '2018-02-20 09:08:20', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV P. BRANDAN - LANGSA 2', 'P.Brandan', 'Binjai', 'Medan'),
(97, 54, 8, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/54/TD+2+P.+BRNDN.pdf', 'Panel Pauwels', '2018-02-20 09:23:15', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'P.Brandan', 'Binjai', 'Medan'),
(98, 32, 5, 1, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/32/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+Tamora+-+Sei+Rotan+%28Goldstar%29.pdf', 'Panel Goldstar', '2018-02-20 09:26:50', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV TAMORA - SEI ROTAN', 'Tamora', 'Sei Rotan', 'Medan'),
(99, 30, 5, 1, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/30/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+TD+1+Tamora+%28Goldstar%29.pdf', 'Panel Godstar', '2018-02-20 09:29:15', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'Tamora', 'Sei Rotan', 'Medan'),
(100, 144, 18, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/144/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+Paya+Pasir+-+Mabar+1+%28Goldstar%29.pdf', 'Panel Goldstar', '2018-02-20 09:33:42', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA PASIR - MABAR 1', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(101, 145, 18, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/145/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+Paya+Pasir+-+Mabar+2+%28Goldstar%29.pdf', 'Panel Goldstar', '2018-02-20 09:42:15', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA PASIR - MABAR 2', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(102, 147, 18, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/147/P.+PSIR+-+P.+GELI.pdf', 'Panel Goldstar', '2018-02-20 09:45:41', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA PASIR - PAYA GELI 2', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(103, 151, 18, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/151/P.+PSIR+-+SRTAN+2.pdf', 'Panel Goldstar', '2018-02-20 09:52:42', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA PASIR - SEI ROTAN 2', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(104, 63, 9, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/63/P.GELI+-+GLGUR+1.pdf', 'Panel Goldstar', '2018-02-20 09:55:33', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA GELI - GLUGUR 1', 'Paya Geli', 'Binjai', 'Medan'),
(105, 64, 9, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/64/P.GELI+-+GLGUR+2.pdf', 'Panel Goldstar', '2018-02-20 09:58:41', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA GELI - GLUGUR 2', 'Paya Geli', 'Binjai', 'Medan'),
(106, 70, 9, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/70/P.+GELI+-+NMBRE+2.pdf', 'Panel Goldstar', '2018-02-20 10:02:52', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA GELI - NAMURAMBE 2', 'Paya Geli', 'Binjai', 'Medan'),
(107, 66, 9, 2, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/66/P.+GELI+-+P.+PSIR+2.pdf', 'Panel Goldstar', '2018-02-20 10:05:26', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV PAYA GELI - PAYA PASIR 2', 'Paya Geli', 'Binjai', 'Medan'),
(108, 153, 16, 4, 2, 'Wiring diagram PHT Belawan', 'http://localhost/ewiring/android_login/153/Wiring+Diagram+PHT+LBHAN+BLWTU.pdf', 'ABB', '2018-02-20 11:16:33', '1', '8708101pbs', '-', 'RUDY IRWANTO', 'BAY PHT 150 KV LABUHAN - BELAWAN', 'Labuhan', 'Paya Pasir', 'Medan'),
(109, 154, 16, 4, 2, 'Wiring Diagram PHT Lamhotma', 'http://localhost/ewiring/android_login/154/Wiring+Diagram+PHT+LBHAN+LHTMA.pdf', 'ABB', '2018-02-20 11:17:35', '1', '8708101pbs', '-', 'RUDY IRWANTO', 'BAY PHT 150 KV LABUHAN - LAMHOTMA', 'Labuhan', 'Paya Pasir', 'Medan'),
(110, 108, 16, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/108/Wiring+Panel+Kontrol%2C+Relay+%26+Switchyard+TD+1+Labuhan+%28Schneider%29.pdf', 'Panel Schneider', '2018-02-20 11:31:44', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'Labuhan', 'Paya Pasir', 'Medan'),
(111, 109, 16, 4, 2, 'Wiring BBVT dan DS', 'http://localhost/ewiring/android_login/109/Wiring+Bus+Riser+%2B+DS+TD+2+Labuhan+%28Schneider%29.pdf', 'Panel Schneider', '2018-02-20 11:33:11', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Labuhan', 'Paya Pasir', 'Medan'),
(112, 109, 16, 4, 2, 'Wiring BBVT', 'http://localhost/ewiring/android_login/109/Wiring+BBVT+TD+2+Labuhan+%28Schneider%29.pdf', 'Panel Schneider', '2018-02-20 11:34:10', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Labuhan', 'Paya Pasir', 'Medan'),
(113, 55, 8, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/55/SWD+K.BUS.pdf', 'Panel Arya Sada', '2018-02-21 04:18:34', '1', '8204033A2', '-', 'RENO PRATAMA', 'BAY KOPEL BUS 150 KV', 'P.Brandan', 'Binjai', 'Medan'),
(116, 33, 5, 1, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/33/Interconnection+wiring+diagram+GI+TAMORA+bay+%28TM-SR%29%28TM-DN%29%28TD1%29.pdf', 'Panel Goldstar', '2018-02-24 11:03:13', '1', '7192064A', '-', 'SUHENDRA EKA WIHADI', 'BAY PHT 150 KV TAMORA - DENAI', 'Tamora', 'Sei Rotan', 'Medan'),
(117, 34, 5, 1, 2, 'Wiring PMT', 'http://localhost/ewiring/android_login/34/Mekanik+PMT+PHT+TM-KN+%26+TM-GALANG.pdf', 'PMT Merk Areva (TM-GL 1 dan 2)', '2018-02-24 11:10:24', '1', '7192064A', '-', 'SUHENDRA EKA WIHADI', 'BAY PHT 150 KV TAMORA - KUALA NAMU 1', 'Tamora', 'Sei Rotan', 'Medan'),
(118, 35, 5, 1, 2, 'Wiring PMT', 'http://localhost/ewiring/android_login/35/Mekanik+PMT+PHT+TM-KN+%26+TM-GALANG.pdf', 'PMT Merk Areva (TM-GL 1 dan 2)', '2018-02-24 11:11:20', '1', '7192064A', '-', 'SUHENDRA EKA WIHADI', 'BAY PHT 150 KV TAMORA - KUALA NAMU 2', 'Tamora', 'Sei Rotan', 'Medan'),
(120, 36, 5, 1, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/36/Interconnection+wiring+diagram+GI+TAMORA+Bay+line%28TM-GALANG%29.pdf', 'Kontraktor PT. Pandaman Putra Utama', '2018-02-24 13:58:52', '1', '7192064A', '-', 'SUHENDRA EKA WIHADI', 'BAY PHT 150 KV TAMORA - GALANG 1', 'Tamora', 'Sei Rotan', 'Medan'),
(121, 37, 5, 1, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/37/Interconnection+wiring+diagram+GI+TAMORA+Bay+line%28TM-GALANG%29.pdf', 'Kontraktor PT. Pandaman Putra Utama', '2018-02-24 13:59:45', '1', '7192064A', '-', 'SUHENDRA EKA WIHADI', 'BAY PHT 150 KV TAMORA - GALANG 2', 'Tamora', 'Sei Rotan', 'Medan'),
(122, 31, 5, 1, 2, 'Wiring Panel Kontrol,Proteksi, PMT serta Kubikel 20 kV', 'http://localhost/ewiring/android_login/31/Approval+drawing+TRAFO+DAYA+2+GI+TAMORA.pdf', 'Panel Schneider', '2018-02-24 17:34:44', '1', '7192064A', '-', 'SUHENDRA EKA WIHADI', 'BAY TRAFO DAYA 2', 'Tamora', 'Sei Rotan', 'Medan'),
(123, 180, 13, 3, 2, 'Wiring Panel Kontrol, Proteksi, dan Switchyard', 'http://localhost/ewiring/android_login/180/wairing+150kv+Trafo+4+titikuning.pdf', 'Panel Schneider', '2018-02-26 12:54:29', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 4', 'Titi Kuning', 'Glugur', 'Medan'),
(127, 73, 10, 3, 2, 'Wiring Kontrol Panel, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/73/wiring+bus+kopel+150+kv.pdf', 'Panel Areva', '2018-02-27 05:30:03', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY KOPEL BUS 150 KV', 'GIS Listrik', 'Glugur', 'Medan'),
(128, 74, 10, 3, 2, 'Wiring LCC', 'http://localhost/ewiring/android_login/74/wiring+LCC+UGC+-+1.pdf', 'Panel Areva', '2018-02-27 05:39:05', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV LISTRIK - TITI KUNING 1', 'GIS Listrik', 'Glugur', 'Medan'),
(129, 71, 10, 3, 2, 'Wiring LCC', 'http://localhost/ewiring/android_login/71/wiring+LCC+trafo+daya+-+1.pdf', 'Panel Areva', '2018-02-27 05:41:24', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'GIS Listrik', 'Glugur', 'Medan'),
(130, 72, 10, 3, 2, 'Wiring LCC', 'http://localhost/ewiring/android_login/72/wiring+LCC+trafo+daya+-+2.pdf', 'Panel Areva', '2018-02-27 05:45:35', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'GIS Listrik', 'Glugur', 'Medan'),
(131, 71, 10, 3, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/71/wiring+td+1+150+kv.pdf', 'Panel Areva', '2018-02-27 06:13:16', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'GIS Listrik', 'Glugur', 'Medan'),
(132, 71, 10, 3, 2, 'Wiring Incoming', 'http://localhost/ewiring/android_login/71/wiring+td+1+inc+20+kv.pdf', 'Panel Areva', '2018-02-27 06:14:38', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'GIS Listrik', 'Glugur', 'Medan'),
(133, 71, 10, 3, 2, 'Wiring Outgoing', 'http://localhost/ewiring/android_login/71/wiring+td+1+out+going+20+kv.pdf', 'Panel Areva', '2018-02-27 06:15:19', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'GIS Listrik', 'Glugur', 'Medan'),
(134, 72, 10, 3, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/72/wiring+td+2+150+kv.pdf', 'Panel Areva', '2018-02-27 06:16:26', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'GIS Listrik', 'Glugur', 'Medan'),
(135, 72, 10, 3, 2, 'Wiring Kubikel 20 kV', 'http://localhost/ewiring/android_login/72/wiring+td+2+kubikel+20+kv.pdf', 'Panel Areva', '2018-02-27 06:17:46', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'GIS Listrik', 'Glugur', 'Medan'),
(136, 185, 10, 3, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard 150 ', 'http://localhost/ewiring/android_login/185/wiring+td+3+150+kv.pdf', 'Panel Alsthom', '2018-02-27 06:19:12', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'GIS Listrik', 'Glugur', 'Medan'),
(137, 185, 10, 3, 2, 'Wiring Kubikel 20 kV', 'http://localhost/ewiring/android_login/185/wiring+td+3+20+kv.pdf', 'Panel Schneider', '2018-02-27 06:21:10', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'GIS Listrik', 'Glugur', 'Medan'),
(138, 74, 10, 3, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/74/wiring+ugc+-+1.pdf', 'Panel Areva', '2018-02-27 06:22:41', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV LISTRIK - TITI KUNING 1', 'GIS Listrik', 'Glugur', 'Medan'),
(139, 75, 10, 3, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/75/wiring+ugc+-+2.pdf', 'Panel Areva', '2018-02-27 06:23:48', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV LISTRIK - TITI KUNING 2', 'GIS Listrik', 'Glugur', 'Medan'),
(140, 200, 10, 3, 2, 'Wiring Common Service', 'http://localhost/ewiring/android_login/200/wiring+common+service.pdf', 'Panel Areva', '2018-02-27 06:25:25', '1', '9215921ZY', '-', 'IRVAN LEWI', 'DISTRIBUSI AC/DC', 'GIS Listrik', 'Glugur', 'Medan'),
(141, 84, 12, 3, 2, 'Wiring Internal GIS', 'http://localhost/ewiring/android_login/84/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', '2018-02-27 09:46:29', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV MABAR - PAYA PASIR 1', 'Mabar', 'Glugur', 'Medan'),
(142, 179, 23, 2, 2, 'Skematik Diagram Diameter 2', 'http://localhost/ewiring/android_login/179/schematic+dia+2.pdf', 'Panel Areva', '2018-02-27 10:00:59', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY DIAMETER 2', 'Pangkalan Susu', 'Binjai', 'Medan'),
(143, 182, 23, 2, 2, 'Skematik Diagram Diameter 4', 'http://localhost/ewiring/android_login/182/Schematic+Diagram+Diameter+4.pdf', 'Panel Areva', '2018-02-27 10:20:18', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY DIAMETER 4', 'Pangkalan Susu', 'Binjai', 'Medan'),
(145, 83, 12, 3, 2, 'Wiring MA 4', 'http://localhost/ewiring/android_login/83/Ewiring+MA+4.pdf', 'Panel Areva', '2018-02-28 04:34:58', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'Mabar', 'Glugur', 'Medan'),
(146, 83, 12, 3, 2, 'Wiring BBVT', 'http://localhost/ewiring/android_login/83/Ewiring+BBVT.pdf', 'Panel Schneider', '2018-02-28 04:37:14', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'Mabar', 'Glugur', 'Medan'),
(147, 82, 12, 3, 2, 'Wiring Kubikel 20 kV', 'http://localhost/ewiring/android_login/82/Ewiring+outgoing+TD+2+dan+TD+3.pdf', 'Panel Schneider', '2018-02-28 04:43:57', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Mabar', 'Glugur', 'Medan'),
(148, 83, 12, 3, 2, 'Wiring Kubikel 20 kV', 'http://localhost/ewiring/android_login/83/Ewiring+outgoing+TD+2+dan+TD+3.pdf', 'Panel Schneider', '2018-02-28 04:46:10', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'Mabar', 'Glugur', 'Medan'),
(149, 83, 12, 3, 2, 'Wiring Aux Trafo', 'http://localhost/ewiring/android_login/83/E-Wiring+Aux+Trafo.pdf', 'Panel Schneider', '2018-02-28 04:48:09', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'Mabar', 'Glugur', 'Medan'),
(150, 85, 12, 3, 2, 'Wiring Internal GIS', 'http://localhost/ewiring/android_login/85/E-Wiring+No.+09.pdf', 'Panel Sprecher', '2018-02-28 05:21:09', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV MABAR - PAYA PASIR 2', 'Mabar', 'Glugur', 'Medan'),
(151, 82, 12, 3, 2, 'Wiring Internal GIS', 'http://localhost/ewiring/android_login/82/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', '2018-02-28 05:25:41', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Mabar', 'Glugur', 'Medan'),
(152, 83, 12, 3, 2, 'Wiring Internal GIS', 'http://localhost/ewiring/android_login/83/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', '2018-02-28 05:31:15', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'Mabar', 'Glugur', 'Medan'),
(153, 86, 12, 3, 2, 'Wiring Internal GIS', 'http://localhost/ewiring/android_login/86/E-Wiring+No.+04+%28Sampul+Putih%29.pdf', 'Panel Sprecher', '2018-02-28 05:34:55', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY KOPEL BUS 150 KV', 'Mabar', 'Glugur', 'Medan'),
(154, 173, 17, 4, 2, 'Panel kontrol', 'http://localhost/ewiring/android_login/173/WIRING+TRAFO+DAYA+2+HYOSUNG+30+MVA+GI+LAMHOTMA.pdf', 'wiring kontrol', '2018-02-28 07:08:00', '1', '6284094A', '-', 'SUDIYATMO', 'BAY TRAFO DAYA 2', 'Lamhotma', 'Paya Pasir', 'Medan'),
(155, 175, 17, 4, 2, 'Panel Labuhan', 'http://localhost/ewiring/android_login/175/Labuhan+line+.pdf', 'Wiring kontrol', '2018-02-28 07:26:13', '1', '6284094A', '-', 'SUDIYATMO', 'BAY PHT 150 KV LAMHOTMA - LABUHAN', 'Lamhotma', 'Paya Pasir', 'Medan'),
(156, 175, 17, 4, 2, 'Panel Labuhan', 'http://localhost/ewiring/android_login/175/Labuhan+line+.pdf', 'Wiring kontrol', '2018-02-28 07:28:29', '1', '6284094A', '-', 'SUDIYATMO', 'BAY PHT 150 KV LAMHOTMA - LABUHAN', 'Lamhotma', 'Paya Pasir', 'Medan'),
(157, 78, 11, 3, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/78/BAB_III_(_WIRING_BAY_TD-3_)_new_doc_2018-02-28_08.28_.34_20180228091414_.pdf', 'Panel Schneider', '2018-03-02 10:44:56', '1', '1', '-', 'admin', 'BAY TRAFO DAYA 3', 'Glugur', 'Glugur', 'Medan'),
(158, 79, 11, 3, 2, 'Wiring Panel Kontrol dan Proteksi', 'http://localhost/ewiring/android_login/79/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', '2018-03-02 06:07:47', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV GLUGUR - PAYA GELI 1', 'Glugur', 'Glugur', 'Medan'),
(159, 80, 11, 3, 2, 'Wiring Panel Kontrol dan Proteksi', 'http://localhost/ewiring/android_login/80/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', '2018-03-02 06:12:19', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY PHT 150 KV GLUGUR - PAYA GELI 2', 'Glugur', 'Glugur', 'Medan'),
(160, 76, 11, 3, 2, 'Wiring Panel Kontrol dan Proteksi', 'http://localhost/ewiring/android_login/76/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', '2018-03-02 06:14:54', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'Glugur', 'Glugur', 'Medan'),
(161, 77, 11, 3, 2, 'Wiring Panel Kontrol dan Proteksi', 'http://localhost/ewiring/android_login/77/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', '2018-03-02 06:18:10', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Glugur', 'Glugur', 'Medan'),
(162, 78, 11, 3, 2, 'Wiring Kubikel 20 kV', 'http://localhost/ewiring/android_login/78/WIRING+KUBIKEL+TD-3+GL+%28+SCHNEIDER+%29.pdf', 'Panel Schneider', '2018-03-02 06:29:43', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 3', 'Glugur', 'Glugur', 'Medan'),
(163, 76, 11, 3, 2, 'Wiring Kubikel 20 kV', 'http://localhost/ewiring/android_login/76/WIRING+KUBIKEL+GU+%28SIEMENS%29_doc+2018-02-07.pdf', 'Panel Siemens', '2018-03-02 06:33:31', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'Glugur', 'Glugur', 'Medan'),
(164, 77, 11, 3, 2, 'Wiring Kubikel 20 kV', 'http://localhost/ewiring/android_login/77/WIRING+KUBIKRL+GG+%28SIEMENS%29_Doc+2018-02-08.pdf', 'Panel Siemens', '2018-03-02 06:46:58', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Glugur', 'Glugur', 'Medan'),
(166, 76, 11, 3, 2, 'Wiring LCC', 'http://localhost/ewiring/android_login/76/WIRING+KONTROL+LCC+GIS+VOLUME++2+.pdf', 'Panel Sprecher', '2018-03-02 08:20:30', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 1', 'Glugur', 'Glugur', 'Medan'),
(167, 77, 11, 3, 2, 'Wiring LCC', 'http://localhost/ewiring/android_login/77/WIRING+KONTROL+LCC+GIS+VOLUME+4+.pdf', 'Panel Sprecher', '2018-03-02 08:27:07', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY TRAFO DAYA 2', 'Glugur', 'Glugur', 'Medan'),
(168, 81, 11, 3, 2, 'Wiring Panel Kontrol dan Proteksi', 'http://localhost/ewiring/android_login/81/WIIRING+RELAY+PANEL+KONTROL+150KV+GI+GLUGUR.pdf', 'Panel Goldstar', '2018-03-02 08:42:32', '1', '9215921ZY', '-', 'IRVAN LEWI', 'BAY KOPEL BUS 150 KV', 'Glugur', 'Glugur', 'Medan'),
(169, 207, 17, 4, 2, 'Panel AC / DC', 'http://localhost/ewiring/android_login/207/SLN+AC+%26+DC+LAMHOTMA.pdf', 'Wiring AC /DC', '2018-03-06 13:19:37', '1', '6284094A', '-', 'SUDIYATMO', 'DISTRIBUSI AC/DC', 'Lamhotma', 'Paya Pasir', 'Medan'),
(183, 169, 14, 4, 2, 'DIAMETER 12 VOL 2 PMT B12 & AB12', 'http://localhost/ewiring/android_login/169/DIAMETER+12+VOL+2+PMT+B12+%26+AB12.pdf', 'DIAMETER 12 VOL 2 PMT B12 & AB12', '2018-03-26 10:15:09', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 12', 'Belawan', 'Paya Pasir', 'Medan'),
(184, 169, 14, 4, 2, 'DIAMETER 12 VOL 1 PMT A12', 'http://localhost/ewiring/android_login/169/DIAMETER+12+VOL+1+PMT+A12.pdf', 'DIAMETER 12 VOL 1 PMT A12', '2018-03-26 10:28:24', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 12', 'Belawan', 'Paya Pasir', 'Medan'),
(185, 161, 14, 4, 2, 'DIAMETER 4 VOL 1 PMT A4 DAN B4', 'http://localhost/ewiring/android_login/161/Doc1.pdf', 'DIAMETER 4 VOL 1 PMT A4 DAN B4', '2018-03-26 10:37:28', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 4', 'Belawan', 'Paya Pasir', 'Medan'),
(186, 162, 14, 4, 2, 'DIAMETER 5 VOL 1 PMT A5 DAN AB5 DAN B5', 'http://localhost/ewiring/android_login/162/Doc1.pdf', 'DIAMETER 5 VOL 1 PMT A5 DAN AB5 DAN B5', '2018-03-26 10:45:33', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 5', 'Belawan', 'Paya Pasir', 'Medan'),
(187, 163, 14, 4, 2, 'DIAMETER 6 VOL 1 PMT A6 DAN B6', 'http://localhost/ewiring/android_login/163/Doc1.pdf', 'DIAMETER 6 VOL 1 PMT A6 DAN B6', '2018-03-26 10:50:53', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 6', 'Belawan', 'Paya Pasir', 'Medan'),
(188, 164, 14, 4, 2, 'DIAMETER 7 VOL 1 PMT A7', 'http://localhost/ewiring/android_login/164/utk+pdf+buku+wiring+a7.pdf', 'DIAMETER 7 VOL 1 PMT A7', '2018-03-26 10:55:59', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 7', 'Belawan', 'Paya Pasir', 'Medan'),
(189, 164, 14, 4, 2, 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', 'http://localhost/ewiring/android_login/164/diametr+AB7+DAN+B7.pdf', 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', '2018-03-26 10:57:15', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 7', 'Belawan', 'Paya Pasir', 'Medan'),
(190, 164, 14, 4, 2, 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', 'http://localhost/ewiring/android_login/164/diametr+AB7+DAN+B7.pdf', 'DIAMETER 7 VOL 2 PMT AB7 DAN B7', '2018-03-26 11:00:08', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 7', 'Belawan', 'Paya Pasir', 'Medan'),
(191, 170, 14, 4, 2, 'DIAMETER PLTD AKE', 'http://localhost/ewiring/android_login/170/PLTD+AKE.pdf', 'DIAMETER PLTD AKE', '2018-03-26 11:01:39', '1', '6692056A', '-', 'IRWAN', 'BAY PEMBANGKIT PLTD AKE', 'Belawan', 'Paya Pasir', 'Medan'),
(195, 127, 14, 4, 2, 'DIAMETER 0 VOL 1', 'http://localhost/ewiring/android_login/127/DIAMETER+0+VOL+1.pdf', 'DIAMETER 0 VOL 1', '2018-04-03 03:03:06', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 0', 'Belawan', 'Paya Pasir', 'Medan'),
(196, 127, 14, 4, 2, 'DIAMETER 0 VOL 2', 'http://localhost/ewiring/android_login/127/DIAMETER+0+VOL+2.pdf', 'DIAMETER 0 VOL 2', '2018-04-03 03:04:23', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 0', 'Belawan', 'Paya Pasir', 'Medan'),
(197, 158, 14, 4, 2, 'DIAMETER 1 VOL 1', 'http://localhost/ewiring/android_login/158/DIAMETER+1+VOL+1.pdf', 'DIAMETER 1 VOL 1', '2018-04-03 03:05:22', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 1', 'Belawan', 'Paya Pasir', 'Medan'),
(198, 158, 14, 4, 2, 'DIAMETER 1 VOL 2', 'http://localhost/ewiring/android_login/158/DIAMETER+1+VOL+2.pdf', 'DIAMETER 1 VOL 2', '2018-04-03 03:06:13', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 1', 'Belawan', 'Paya Pasir', 'Medan'),
(199, 158, 14, 4, 2, 'DIAMETER 1 VOL 3', 'http://localhost/ewiring/android_login/158/DIAMETER+1+VOL+3.pdf', 'DIAMETER 1 VOL 3', '2018-04-03 03:06:55', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 1', 'Belawan', 'Paya Pasir', 'Medan'),
(200, 166, 14, 4, 2, 'DIAMETER 9 VOL 1 PMT A9', 'http://localhost/ewiring/android_login/166/DIAMETER+9+VOL+1+PMT+A9.pdf', 'DIAMETER 9 VOL 1 PMT A9', '2018-04-05 09:13:35', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 9', 'Belawan', 'Paya Pasir', 'Medan'),
(201, 165, 14, 4, 2, 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'http://localhost/ewiring/android_login/165/DIAMETER+8+VOL+2+PMT+AB8+%26+B8.pdf', 'DIAMETER 8 VOL 2 PMT AB8 & B8', '2018-04-05 14:36:43', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 8', 'Belawan', 'Paya Pasir', 'Medan'),
(202, 165, 14, 4, 2, 'DIAMETER 8 VOL 1 PMT A8', 'http://localhost/ewiring/android_login/165/DIAMETER+8+VOL+1+PMT+A8.pdf', 'DIAMETER 8 VOL 1 PMT A8', '2018-04-05 15:26:42', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 8', 'Belawan', 'Paya Pasir', 'Medan'),
(203, 165, 14, 4, 2, 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'http://localhost/ewiring/android_login/165/DIAMETER+8+VOL+2+PMT+AB8+%26+B8.pdf', 'DIAMETER 8 VOL 2 PMT AB8 & B8', '2018-04-05 15:33:20', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 8', 'Belawan', 'Paya Pasir', 'Medan'),
(204, 165, 14, 4, 2, 'DIAMETER 8 VOL 2 PMT AB8 & B8', 'http://localhost/ewiring/android_login/165/DIAMETER+8+VOL+2+PMT+AB8+%26+B8.pdf', 'DIAMETER 8 VOL 2 PMT AB8 & B8', '2018-04-05 15:40:35', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 8', 'Belawan', 'Paya Pasir', 'Medan'),
(205, 165, 14, 4, 2, 'DIAMETER 8 VOL 1 PMT A8', 'http://localhost/ewiring/android_login/165/DIAMETER+8+VOL+1+PMT+A8.pdf', 'DIAMETER 8 VOL 1 PMT A8', '2018-04-07 18:38:59', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 8', 'Belawan', 'Paya Pasir', 'Medan'),
(206, 137, 18, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/137/New+Doc+2018-04-10', 'Panel Kontrol', '2018-04-10 08:13:13', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY TRAFO DAYA 2', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(207, 152, 18, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/152/New+Doc+2018-04-10+%281%29', 'Panel Kontrol (Cogelex)', '2018-04-10 08:14:24', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY KOPEL BUS 150 KV', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(208, 152, 18, 4, 2, 'Wiring PMT', 'http://localhost/ewiring/android_login/152/New+Doc+2018-04-10+%282%29', 'Merk ABB', '2018-04-10 09:02:59', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY KOPEL BUS 150 KV', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(209, 136, 18, 4, 2, 'Wiring Diagram Kubikel 20 kV', 'http://localhost/ewiring/android_login/136/New+Doc+2018-04-10+%283%29', 'Merk SIEMENS', '2018-04-11 00:32:20', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY TRAFO DAYA 1', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(210, 213, 14, 4, 2, 'Wiring Panel Kontrol, Relay dan Switchyard', 'http://localhost/ewiring/android_login/158/1-BLW_150_PWR_EM_13-1+Rev0+%2820180410%29+for+Contruction-1.pdf', 'bay LMVPP Diameter -1', '2018-04-11 09:14:10', '1', '8609531Z', '-', 'ARIEF SANDY ANGGORO', 'BAY DIAMETER -1', 'Belawan', 'Paya Pasir', 'Medan'),
(211, 39, 6, 2, 2, 'Wiring dan Control Trafo', 'http://localhost/ewiring/android_login/39/TD+1+BINJAI.pdf', 'Merk UNINDO', '2018-04-12 03:22:06', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY TRAFO DAYA 1', 'Binjai', 'Binjai', 'Medan'),
(212, 40, 6, 2, 2, 'Wiring dan Control Transformer', 'http://localhost/ewiring/android_login/40/TD+2.pdf', 'Panel UNINDO', '2018-04-12 04:12:54', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY TRAFO DAYA 2', 'Binjai', 'Binjai', 'Medan'),
(213, 41, 6, 2, 2, 'Wiring dan Control Bay ', 'http://localhost/ewiring/android_login/41/TD+3.pdf', 'Wiring Dan Control TD 3 UNINDO', '2018-04-12 04:21:11', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY TRAFO DAYA 3', 'Binjai', 'Binjai', 'Medan'),
(214, 41, 6, 2, 2, 'Wiring Panel Kontrol Transformer', 'http://localhost/ewiring/android_login/41/TD+3.pdf', 'Panel UNINDO', '2018-04-12 04:25:28', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY TRAFO DAYA 3', 'Binjai', 'Binjai', 'Medan'),
(215, 42, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/42/PGELI+1.pdf', 'Panel Energoinvest', '2018-04-12 04:48:05', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY PHT 150 KV BINJAI - PAYA GELI 1', 'Binjai', 'Binjai', 'Medan'),
(216, 42, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/42/PGELI+1.pdf', 'Panel Energoinvest', '2018-04-12 04:49:07', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY PHT 150 KV BINJAI - PAYA GELI 1', 'Binjai', 'Binjai', 'Medan'),
(217, 43, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/43/PGELI+2.pdf', 'Panel ABB', '2018-04-12 08:43:21', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY PHT 150 KV BINJAI - PAYA GELI 2', 'Binjai', 'Binjai', 'Medan'),
(218, 44, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/44/PBDAN+1.pdf', 'Panel Energoinvest', '2018-04-12 08:47:34', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY PHT 150 KV BINJAI - P. BRANDAN 1', 'Binjai', 'Binjai', 'Medan'),
(219, 45, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/45/PBDAN+2.pdf', 'Panel Arya Sada', '2018-04-12 08:50:59', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY PHT 150 KV BINJAI - P. BRANDAN 2', 'Binjai', 'Binjai', 'Medan'),
(220, 47, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/47/BLWCC+1.pdf', 'Panel ABB', '2018-04-12 08:54:49', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY PHT 150 KV BINJAI - BELAWAN 1', 'Binjai', 'Binjai', 'Medan'),
(221, 48, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/48/BLWCC+2.pdf', 'Panel ABB', '2018-04-12 08:56:14', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY PHT 150 KV BINJAI - BELAWAN 2', 'Binjai', 'Binjai', 'Medan'),
(222, 46, 6, 2, 2, 'Wiring Panel Kontrol, Proteksi dan Switchyard', 'http://localhost/ewiring/android_login/46/COUPLE+BUS.pdf', 'Panel ABB', '2018-04-12 08:59:38', '1', '8708095PBS', '-', 'ERIKSON SIMANJUNTAK', 'BAY KOPEL BUS 150 KV', 'Binjai', 'Binjai', 'Medan'),
(223, 160, 14, 4, 2, 'DIAMETER 3 VOL 1 PMT A3.AB3.B3', 'http://localhost/ewiring/android_login/160/New+Doc+2018-04-07.pdf', 'DIAMETER 3 VOL 1 PMT A3.AB3.B3', '2018-04-19 14:31:33', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 3', 'Belawan', 'Paya Pasir', 'Medan'),
(224, 159, 14, 4, 2, 'DIAMETER 2 VOL 1 PMT A2.AB2.B2', 'http://localhost/ewiring/android_login/159/New+Doc+2018-02-26.pdf', 'DIAMETER 2 VOL 1 PMT A2.AB2.B2', '2018-04-19 14:34:41', '1', '6692056A', '-', 'IRWAN', 'BAY DIAMETER 2', 'Belawan', 'Paya Pasir', 'Medan'),
(225, 148, 18, 4, 2, 'Wiring Diagram BLWTU 1', 'http://localhost/ewiring/android_login/148/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', '2018-04-22 09:58:53', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY PHT 150 KV PAYA PASIR - BELAWAN 1', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(226, 149, 18, 4, 2, 'Wiring Diagram BLWTU 2', 'http://localhost/ewiring/android_login/149/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', '2018-04-22 10:00:05', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY PHT 150 KV PAYA PASIR - BELAWAN 2', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(227, 146, 18, 4, 2, 'Wiring Diagram PGELI 1', 'http://localhost/ewiring/android_login/146/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', '2018-04-22 10:01:46', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY PHT 150 KV PAYA PASIR - PAYA GELI 1', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(228, 150, 18, 4, 2, 'Wiring Diagram SROTN 1', 'http://localhost/ewiring/android_login/150/New+Doc+2018-04-22', 'Panel Kontrol dan Proteksi', '2018-04-22 10:02:45', '1', '8908087PBS', '-', 'FRANKLIN GIDEON HUTABARAT', 'BAY PHT 150 KV PAYA PASIR - SEI ROTAN 1', 'Paya Pasir', 'Paya Pasir', 'Medan'),
(230, 92, 13, 3, 2, 'manual CB ABB LTB170', 'http://localhost/ewiring/android_login/92/Manual+ABB+LTB+170.pdf', 'manual book', '2018-04-26 07:28:22', '1', '8409487z', '-', 'JHON HENDRA', 'BAY PHT 150 KV TITI KUNING - SEI ROTAN 1', 'Titi Kuning', 'Glugur', 'Medan'),
(236, 126, 7, 2, 2, 'Bay Couple Bus', 'http://localhost/ewiring/android_login/126/Wiring+Kopel+Bus+part+1.pdf', 'Namorambe', '2018-12-31 02:29:31', '1', '8609020PBS', '-', 'ERNEST GOHANKU MALAU', 'BAY KOPEL BUS 150 KV', 'Namorambe', 'Binjai', 'Medan'),
(237, 126, 7, 2, 2, 'Bay Couple Bus', 'http://localhost/ewiring/android_login/126/Wiring+Kopel+Bus+part+1.pdf', 'Namorambe', '2018-12-31 02:29:36', '1', '8609020PBS', '-', 'ERNEST GOHANKU MALAU', 'BAY KOPEL BUS 150 KV', 'Namorambe', 'Binjai', 'Medan'),
(240, 49, 7, 2, 2, 'Test Buku Upload', 'C:/xampp/htdocs/ewiring/android_login/49/2023-10-14_TD1_PGELI15.pdf', 'Ini test upload', '2023-01-25 11:26:20', '0', '1', '-', 'admin', 'BAY TRAFO DAYA 1', 'Namorambe', 'Binjai', 'Medan');

-- --------------------------------------------------------

--
-- Table structure for table `pdf_laporanhar`
--

CREATE TABLE `pdf_laporanhar` (
  `id_pdf` int(11) NOT NULL,
  `id_bay` int(11) NOT NULL,
  `id_gardu` int(11) NOT NULL,
  `id_tragi` int(11) NOT NULL,
  `id_upt` int(11) NOT NULL,
  `judul_pdf` varchar(50) NOT NULL,
  `link_pdf` text NOT NULL,
  `keterangan` text NOT NULL,
  `update_terakhir` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL,
  `id_user` int(11) NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf_laporanhar`
--

INSERT INTO `pdf_laporanhar` (`id_pdf`, `id_bay`, `id_gardu`, `id_tragi`, `id_upt`, `judul_pdf`, `link_pdf`, `keterangan`, `update_terakhir`, `status`, `id_user`, `kategori`) VALUES
(5, 46, 6, 2, 2, 'LAPORAN PEMELIHARAAN BAY KOPEL BUS 150KV GI BINJAI', 'http://localhost/ewiring/android_login/46/HAR_KOPEL_BUS_BINJAI.pdf', 'LAPORAN PEMELIHARAAN BAY KOPEL BUS 150KV GI BINJAI TAHUN 2017', '2019-03-17 21:12:08', '1', 1, 0),
(6, 158, 14, 4, 2, 'LAPORAN HAR BELAWAN - LABUHAN', 'http://localhost/ewiring/android_login/158/HAR_BLWAN_-_BHAN.pdf', '', '2019-03-17 23:11:02', '1', 1, 0),
(7, 47, 6, 2, 2, 'LAPORAN HAR BINJAI - BELAWAN 1', 'http://localhost/ewiring/android_login/47/HAR_BNJAI_-_BLWAN_1.pdf', '', '2019-03-17 23:20:39', '1', 1, 0),
(8, 164, 14, 4, 2, 'LAPORAN HAR - BELAWAN - SEI ROTAN 1', 'http://localhost/ewiring/android_login/164/HAR_BLWAN_-_SROTN_1.pdf', '', '2019-03-17 23:27:43', '1', 1, 0),
(9, 42, 6, 2, 2, 'LAPORAN HAR BINJAI - PAYA GELI 1', 'http://localhost/ewiring/android_login/42/HAR_BNJAI_-_PGELI_1.pdf', '', '2019-03-17 23:32:47', '1', 1, 0),
(10, 188, 6, 2, 2, 'LAPORAN HAR DIAMETER 1 BINJAI', 'http://localhost/ewiring/android_login/188/HAR_DIAMETER_1_BINJAI.pdf', '', '2019-03-17 23:34:16', '1', 1, 0),
(11, 189, 6, 2, 2, 'LAPORAN HAR DIAMETER 2 BINJAI', 'http://localhost/ewiring/android_login/189/HAR_DIAMETER_2_BINJAI.pdf', '', '2019-03-17 23:35:32', '1', 1, 0),
(12, 160, 14, 4, 2, 'LAPORAN HAR DIAMETER 3 BELAWAN', 'http://localhost/ewiring/android_login/160/HAR_DIAMETER_3_BLAWAN.pdf', '', '2019-03-17 23:38:33', '1', 1, 0),
(13, 189, 6, 2, 2, 'LAPORAN HAR IBT 2 BINJAI', 'http://localhost/ewiring/android_login/189/HAR_IBT_2_BNJAI.pdf', '', '2019-03-17 23:43:27', '1', 1, 0),
(14, 163, 14, 4, 2, 'LAPORAN HAR DIAMETER 6 BELAWAN', 'http://localhost/ewiring/android_login/163/HAR_DIAMETER_6_BLWAN.pdf', '', '2019-03-17 23:51:39', '1', 1, 0),
(15, 8, 2, 1, 2, 'LAPORAN HAR KUALANAMU - TAMORA 1', 'http://localhost/ewiring/android_login/8/HAR_KNAMU_-_TMORA_1.pdf', '', '2019-03-18 00:01:12', '1', 1, 0),
(16, 8, 2, 1, 2, 'LAPORAN HAR KUALANAMU - TAMORA 2', 'http://localhost/ewiring/android_login/8/HAR_KNAMU_-_TMORA_2.pdf', '', '2019-03-18 00:17:25', '1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(12) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `judul` text NOT NULL,
  `saran` text NOT NULL,
  `dtime` datetime NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `nip`, `judul`, `saran`, `dtime`, `status`) VALUES
(1, '22222', 'aku anak baru', 'aku anak baru tytyrtrt', '2017-08-28 23:38:58', '0'),
(2, '22222tyt', 'aaaaaa aaaaa aaaaaa ', 'jajjjsiiakiididie hiskskjwjeie isiej3i4h4bhr wjiejeieiieie euiie88e8eii3jr jeie8iejsowoiririirr jiwishja8isisieie\n\n\n\n\n\n\n\njsijntkkdurjridknf.bjdjd diidjekis\nujjejeie \n\neueujeiiee', '2017-08-28 23:40:28', '1'),
(3, '9616067PBY', 'bagus', 'appnya bagus, lanjutkan team!', '2017-09-22 15:50:18', '1'),
(4, '8908098pbs', 'saran saya', 'lumayan bagus kok', '2017-12-20 16:32:43', '1'),
(5, '9616067pby', 'saran q', 'malam 1.20', '2018-02-04 18:20:59', '1'),
(6, '8708095PBS', 'Proses Upload file', 'pada saat pilih file yg akan di upload\nnama bay yg sudah di pilih berubah sendiri ke bay yg paling atas\ntrimss', '2018-02-07 03:48:33', '1'),
(7, '8409487Z', 'masukan', 'untuk di update bay ', '2018-02-07 04:28:32', '1'),
(8, '93162666zy', 'testi dari jepta', 'appnya bagus', '2018-02-09 04:26:04', '1'),
(9, '93163806zy', 'testi dari vrisco', 'appnya bagus', '2018-02-09 04:45:23', '1'),
(10, '92161828ZY', 'Haiiii', 'ini adit, adit bilang e wiring blm maksimal banget', '2018-02-09 04:59:01', '1'),
(11, '94161977ZY', 'Aplikasi ', 'Top banget ðŸ‘ tapi tampilan kurang menarik', '2018-02-09 05:13:29', '1'),
(12, '9215921ZY', 'test', 'test 9feb', '2018-02-09 05:28:49', '1'),
(13, '9215921ZY', 'test new', '9feb', '2018-02-09 05:48:30', '1'),
(14, '91171410ZY', 'bagus', 'thanks', '2018-02-19 04:33:14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `subfile`
--

CREATE TABLE `subfile` (
  `id` int(11) NOT NULL,
  `nama_upt` varchar(30) NOT NULL,
  `nama_tragi` varchar(30) NOT NULL,
  `nama_gardu` varchar(30) NOT NULL,
  `nama_bay` varchar(30) NOT NULL,
  `judul_buku` varchar(30) NOT NULL,
  `judul_subfile` varchar(30) NOT NULL,
  `keterangan` varchar(60) NOT NULL,
  `tanggal_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `nip_user` varchar(30) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `jabatan_user` varchar(60) NOT NULL,
  `unit_user` int(11) NOT NULL,
  `last_activity_user` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tragi`
--

CREATE TABLE `tragi` (
  `id_tragi` int(11) NOT NULL,
  `id_upt` int(11) NOT NULL,
  `nama_tragi` varchar(50) NOT NULL,
  `nama_upt` varchar(255) DEFAULT NULL,
  `kode_tragi` varchar(10) DEFAULT NULL,
  `kode_upt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tragi`
--

INSERT INTO `tragi` (`id_tragi`, `id_upt`, `nama_tragi`, `nama_upt`, `kode_tragi`, `kode_upt`) VALUES
(1, 2, 'Sei Rotan', 'Medan', 'SROTN', 'UPTMDN'),
(2, 2, 'Binjai', 'Medan', 'BNJAI', 'UPTMDN'),
(3, 2, 'Glugur', 'Medan', 'GLGUR', 'UPTMDN'),
(4, 2, 'Paya Pasir', 'Medan', 'PPASR', 'UPTMDN'),
(5, 2, 'Nias', 'Medan', 'NIAS', 'UPTMDN'),
(11, 2, 'Test', 'Medan', 'TESTT', 'UPTBAC'),
(12, 3, 'Kisaran', 'Pematang Siantar', 'KSRAN', 'UPTPST');

-- --------------------------------------------------------

--
-- Table structure for table `upt`
--

CREATE TABLE `upt` (
  `id_upt` int(11) NOT NULL,
  `nama_upt` varchar(50) NOT NULL,
  `inisial_upt` varchar(30) NOT NULL,
  `link_foto_upt` text NOT NULL,
  `keterangan_upt` text NOT NULL,
  `kode_upt` varchar(30) DEFAULT NULL,
  `id_user_upload` varchar(30) NOT NULL DEFAULT '-',
  `user_upload` varchar(255) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upt`
--

INSERT INTO `upt` (`id_upt`, `nama_upt`, `inisial_upt`, `link_foto_upt`, `keterangan_upt`, `kode_upt`, `id_user_upload`, `user_upload`) VALUES
(1, 'Banda Aceh', 'UPT Banda Aceh', 'android_login/foto_upt/aceh.png', 'Banda Aceh, Aceh', 'UPTBAC', '', 'Admin eWiring'),
(2, 'Medan', 'UPT Medan', 'android_login/foto_upt/medan.png', 'Medan Sumatera Utara', 'UPTMDN', '', 'Admin eWiring'),
(3, 'Pematang Siantar', 'UPT Pematang Siantar', 'android_login/foto_upt/siantar.png', 'Siantar, Sumatera Utara', 'UPTPST', '', 'Admin eWiring'),
(4, 'Pekanbaru', 'UPT Pekanbaru', 'android_login/foto_upt/pekanbaru.png', 'Pekanbaru, Riau', 'UPTPKU', '', 'Admin eWiring'),
(5, 'Padang', 'UPT Padang', 'android_login/foto_upt/padang.png', 'Padang, Sumatera Barat', 'UPTPDG', '', 'Admin eWiring'),
(6, 'Jambi', 'UPT Jambi', 'android_login/foto_upt/jambi.png', 'Jambi, Jambi', 'UPTJMB', '', 'Admin eWiring'),
(7, 'Bengkulu', 'UPT Bengkulu', 'android_login/foto_upt/bengkulu.png', 'Bengkulu, Bengkulu', 'UPTBKL', '', 'Admin eWiring'),
(8, 'Palembang', 'UPT Palembang', 'android_login/foto_upt/palembang.png', 'Palembang, Sumatera Selatan', 'UPTPLM', '', 'Admin eWiring'),
(9, 'Tanjung Karang', 'UPT Tanjung Karang', 'android_login/foto_upt/tanjungkarang.png', 'Lampung, Bandar Lampung', 'UPTTKR', '', 'Admin eWiring');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level` enum('admin','member') NOT NULL,
  `email` varchar(50) NOT NULL,
  `nip` varchar(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `level`, `email`, `nip`, `nama`) VALUES
(1, 'ewiring', '161b7eb2e8ba4a0d6611e500ec4f6f79efa579c2', 'admin', 'ewiring@ewiring.com', '111a', 'Admin eWiring'),
(6, 'yos', '360805cc63753eaa93e8027e859a2ec0a6aa1068', 'admin', 'yos.adika96@pln.co.id', '9616067pby', 'Yos Adika');

-- --------------------------------------------------------

--
-- Table structure for table `user_pegawai`
--

CREATE TABLE `user_pegawai` (
  `id_user` varchar(30) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `jabatan_user` varchar(60) NOT NULL,
  `nope` varchar(13) NOT NULL,
  `password` varchar(25) NOT NULL DEFAULT 'p@55word'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_pegawai`
--

INSERT INTO `user_pegawai` (`id_user`, `nama_user`, `jabatan_user`, `nope`, `password`) VALUES
('-', '-', '-', '-', 'p@55word'),
('1', 'admin', 'admin', '', 'tetetet'),
('6281016A', 'YANTO', 'ENGINEER SMK3', '', 'medan'),
('6283039A', 'HERMANTO', 'ENGINEER HAR KONSTRUKSI TRANSMISI', '', 'medan'),
('6283041A', 'PANJIDINATA', 'ENGINEER ASDIG PERALATAN JARINGAN DAN GI', '', 'medan'),
('6283052A', 'SURYADININGRAT', 'ANALYST KINERJA', '', 'medan'),
('6283138A', 'INDRA ARMADI', 'ENGINEER LINGKUNGAN DAN ROW', '', 'medan'),
('6283176A', 'RAMASKEN SARAGIH', 'AE PEMELIHARAAN GI', '', 'medan'),
('6284094A', 'SUDIYATMO', 'SUPERVISOR GI LAMHOTMA', '', 'payapasir'),
('6285024A', 'M RAMLAN', 'AE SMK3', '', 'medan'),
('6285154A', 'TORANG BAKARA', 'AE PEMELIHARAAN GI', '', 'medan'),
('6383034A', 'MULRIADI', 'AE PEMELIHARAAN', '', 'payapasir'),
('6383108A', 'SUHENDRI', 'ANALYST RENCANA KERJA PERUSAHAAN', '', 'medan'),
('6383126A', 'GUNAWAN', 'ENGINEER RENEV KONSTRUKSI SIPIL', '', 'medan'),
('6383146A', 'ROBERT HUTABARAT', 'ENGINEER ASDIG PERALATAN PMO', '', 'medan'),
('6385028A', 'M RUSLI', 'AE PEMELIHARAAN', '', 'seirotan'),
('6385031A', 'LISMAYANTI', 'ASSISTANT OFFICER ADMINISTRASI', '', 'medan'),
('6388021A', 'AKBARUDDIN', 'AE PEMELIHARAAN', '', 'seirotan'),
('6388066A', 'SURIANTO', 'AE PEMELIHARAAN', '', 'binjai'),
('6390005A', 'SARIANTO', 'AE PEMELIHARAAN JARINGAN', '', 'medan'),
('6485033A', 'ADHARIANI', 'ANALYST KINERJA', '', 'medan'),
('6488030A', 'ARLI SINURAT', 'SUPERVISOR GI DENAI', '', 'seirotan'),
('6585041A', 'PRIADI WIJAYA', 'ENGINEER LINGKUNGAN DAN ROW', '', 'medan'),
('6592053A', 'NIZRUN', 'SUPERVISOR GI GIS MABAR', '', 'glugur'),
('6692054A', 'MUHAMMAD TUGIMAN', 'SUPERVISOR GI KUALA NAMU', '', 'seirotan'),
('6692055A', 'JEMINO', 'SUPERVISOR GI PAYA GELI', '', 'binjai'),
('6692056A', 'IRWAN', 'SUPERVISOR GI BELAWAN', '', 'payapasir'),
('6991026A', 'HERLON J ALEXANDER HASIBUAN', 'MANAJER TRAGI BINJAI', '', 'binjai'),
('6991031A', 'ELIKSON HUTASOIT', 'SUPERVISOR GI NAMORAMBE', '', 'binjai'),
('6992057A', 'AKHMAD FAUZI', 'SUPERVISOR GI GALANG', '', 'seirotan'),
('6992058A', 'M. ALDRIN', 'SUPERVISOR PEMELIHARAAN JARINGAN', '', 'medan'),
('7091035A', 'HERMAN SANTOSO', 'SUPERVISOR GI GIS LISTRIK', '', 'glugur'),
('7192064A', 'SUHENDRA EKA WIHADI', 'SUPERVISOR GI TANJUNG MORAWA', '', 'seirotan'),
('7291041A', 'ARDIANSYAH NASUTION', 'MANAJER TRAGI SEI ROTAN', '', 'seirotan'),
('7291042A', 'HENDRA SAPUTRA', 'SUPERVISOR GI SEI ROTAN', '', 'seirotan'),
('7292066A', 'RUDI HARTONO', 'MANAJER TRAGI PAYA PASIR', '', 'payapasir'),
('7292068A', 'MISNO', 'AE ASDIG PERALATAN JARINGAN DAN GI', '', 'medan'),
('7292069A', 'SUHERMAN', 'SUPERVISOR GI GIS GLUGUR', '', 'glugur'),
('7292070A', 'ICHWANSYAH', 'ASISTEN MANAJER PEMELIHARAAN', '', 'medan'),
('7292072A', 'SAHAT H. MARPAUNG', 'SUPERVISOR GI PERBAUNGAN', '', 'seirotan'),
('7391043A', 'SUGIHARTO', 'SUPERVISOR GI TITI KUNING', '', 'glugur'),
('7905007PBS', 'HASANUDDIN', 'MANAJER UPT MEDAN', '', 'medan'),
('8204026A2', 'MUHAMMAD HARRY SUSANTO', 'SUPERVISOR PEMELIHARAAN GI', '', 'medan'),
('8204033A2', 'RENO PRATAMA', 'SUPERVISOR GI PANGKALAN BRANDAN', '', 'binjai'),
('8206013PBS', 'MUHAMMAD HANIF', 'SUPERVISOR EVALUASI OPERASI DAN LK2', '', 'medan'),
('8304040A2', 'SUTRISNO', 'SUPERVISOR GI PANGKALAN SUSU', '', 'binjai'),
('8304041P3B', 'KRISTIANTO', 'ASISTEN MANAJER PDKB', '', 'medan'),
('8408008PBS', 'ADOLF FERNANDO SIMANJUNTAK', 'SUPERVISOR GI KIM', '', 'payapasir'),
('8408535Z', 'BUDI SANTOSO', 'ASISTEN MANAJER RENEV', '', 'medan'),
('8409487Z', 'JHON HENDRA', 'MANAJER TRAGI GLUGUR', '', 'glugur'),
('8509016PBS', 'POSMA HASIBUAN', 'JA RENCANA KERJA PERUSAHAAN', '', 'medan'),
('8609020PBS', 'ERNEST GOHANKU MALAU', 'JE PEMELIHARAAN', '', 'glugur'),
('8609531Z', 'ARIEF SANDY ANGGORO', 'SUPERVISOR PEMELIHARAAN PMO', '', 'medan'),
('8708095PBS', 'ERIKSON SIMANJUNTAK', 'SUPERVISOR GI BINJAI', '', 'binjai'),
('8708101PBS', 'RUDY IRWANTO', 'SUPERVISOR GI LABUHAN', '', 'payapasir'),
('87111068Z', 'DAHLIA SATRIANY SIDABUTAR', 'SUPERVISOR TEKNOLOGI INFORMASI', '', 'medan'),
('87111951Z', 'VERI SUTA', 'SUPERVISOR PEMELIHARAAN', '', 'binjai'),
('8808100PBS', 'PANTUN MIAN PARMONANGAN A', 'JE PEMELIHARAAN', '', 'glugur'),
('8808124PBS', 'JURI YANTO TARIGAN', 'SUPERVISOR PEMELIHARAAN', '', 'glugur'),
('8809019PBS', 'HENRONIKO', 'JA TEKNOLOGI INFORMASI', '', 'medan'),
('88111613Z', 'WINNY FRISKA ULI', 'AE OPERASI', '', 'medan'),
('8811633Z', 'ASTRI DEWI SANTY', 'AE RENEV PMO', '', 'medan'),
('8908087PBS', 'FRANKLIN GIDEON HUTABARAT', 'SUPERVISOR GI PAYA PASIR', '', 'payapasir'),
('8908097PBS', 'HENDRA YANTO SIHOMBING', 'SUPERVISOR PEMELIHARAAN', '', 'payapasir'),
('8908098PBS', 'HERMAN SARITUA SIMANJUNTAK', 'SUPERVISOR PEMELIHARAAN', '', 'seirotan'),
('8909015PBS', 'NALENDRA', 'JE PENGELOLAAN DATA BASE INSTALASI', '', 'medan'),
('8916003ZY', 'SAMUEL IVANALDO S', 'AE PEMELIHARAAN GI', '', 'medan'),
('9016071ZY', 'JEKSON SIHOMBING', 'AE SISTEM MANAJEMEN LINGKUNGAN DAN ROW', '', 'medan'),
('91171410ZY', 'RAY DEARDO SITEPU', 'AE PEMELIHARAAN GI', '', 'medan'),
('9215921ZY', 'IRVAN LEWI', 'AE PEMELIHARAAN PROTEKSI DAN METER', '', 'medan'),
('92161828ZY', 'ARIS DWI SANTOSO', 'AE PEMELIHARAAN PROTEKSI DAN METER', '', 'medan'),
('92171411ZY', 'NOVENRI AMBARITA', 'AE PEMELIHARAAN PERALATAN OTOMASI', '', 'medan'),
('93162666ZY', 'JEPTA ADI PUTRA SIHOMBING', 'JE PEMELIHARAAN JARINGAN', '', 'medan'),
('93163806ZY', 'VRISCO YONATAN', 'AE PEMELIHARAAN JARINGAN', '', 'medan'),
('94161977ZY', 'WIDYA FRISILIA S. SIMARMATA', 'JE ASDIG PERALATAN PMO', '', 'medan'),
('9417305ZY', 'ADITYA DESCARA PUTRA', 'AE PEMELIHARAAN PERALATAN OTOMASI', '', 'medan'),
('94173992ZY', 'SINGGIH PRASETYO KUSDARYANTO', 'JE RENEV JARINGAN DAN GI', '', 'medan'),
('9616063PBY', 'JOSUA FRANSEDA', 'JT PEMELIHARAAN', '', 'binjai'),
('9616067PBY', 'YOS ADIKA NOVANDRA MARBUN', 'JT PEMELIHARAAN', '', 'seirotan'),
('9716149PBY', 'IRSANTRI HARTENO TARIGAN', 'JT PEMELIHARAAN', '', 'payapasir'),
('9716155PBY', 'ADE ZULKARNAIN', 'JT PEMELIHARAAN', '', 'glugur'),
('p3bs', 'Seleksi Karya Inovasi 2019', 'Seleksi Karya Inovasi 2019', '', 'p3bs');

-- --------------------------------------------------------

--
-- Table structure for table `user_pegawai_recovery`
--

CREATE TABLE `user_pegawai_recovery` (
  `nip` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `nope` varchar(13) NOT NULL,
  `password` varchar(25) NOT NULL DEFAULT 'p@55word',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_pegawai_recovery`
--

INSERT INTO `user_pegawai_recovery` (`nip`, `nama`, `jabatan`, `nope`, `password`, `id`) VALUES
('6281016A', 'YANTO', 'ENGINEER SMK3', '', 'medan', 1),
('6283039A', 'HERMANTO', 'ENGINEER PEMELIHARAAN KONSTRUK', '', 'medan', 2),
('6283041A', 'PANJIDINATA', 'ENGINEER ASESMEN DAN DIAGNOSA ', '', 'medan', 3),
('6283052A', 'SURYADININGRAT', 'ANALYST KINERJA', '', 'medan', 4),
('6283138A', 'INDRA ARMADI', 'ENGINEER LINGKUNGAN DAN ROW', '', 'medan', 5),
('6283176A', 'RAMASKEN SARAGIH', 'AE PEMELIHARAAN GI', '', 'medan', 6),
('6284094A', 'SUDIYATMO', 'SUPERVISOR GI LAMHOTMA', '', 'payapasir', 7),
('6285024A', 'M RAMLAN', 'AE SMK3', '', 'medan', 8),
('6285154A', 'TORANG BAKARA', 'AE PEMELIHARAAN GI', '', 'medan', 9),
('6383034A', 'MULRIADI', 'AE PEMELIHARAAN', '', 'payapasir', 10),
('6383108A', 'SUHENDRI', 'ANALYST RENCANA KERJA PERUSAHA', '', 'medan', 11),
('6383126A', 'GUNAWAN', 'ENGINEER PERENCANAAN DAN EVALU', '', 'medan', 12),
('6383146A', 'ROBERT HUTABARAT', 'ENGINEER ASESMEN DAN DIAGNOSA ', '', 'medan', 13),
('6385028A', 'M RUSLI', 'AE PEMELIHARAAN', '', 'seirotan', 14),
('6385031A', 'LISMAYANTI', 'ASSISTANT OFFICER ADMINISTRASI', '', 'medan', 15),
('6388021A', 'AKBARUDDIN', 'AE PEMELIHARAAN', '', 'seirotan', 16),
('6388066A', 'SURIANTO', 'AE PEMELIHARAAN', '', 'binjai', 17),
('6390005A', 'SARIANTO', 'AE PEMELIHARAAN JARINGAN', '', 'medan', 18),
('6485033A', 'ADHARIANI', 'ANALYST KINERJA', '', 'medan', 19),
('6488030A', 'ARLI SINURAT', 'SUPERVISOR GI DENAI', '', 'seirotan', 20),
('6585041A', 'PRIADI WIJAYA', 'ENGINEER LINGKUNGAN DAN ROW', '', 'medan', 21),
('6592053A', 'NIZRUN', 'SUPERVISOR GI GIS MABAR', '', 'glugur', 22),
('6692054A', 'MUHAMMAD TUGIMAN', 'SUPERVISOR GI KUALA NAMU', '', 'seirotan', 23),
('6692055A', 'JEMINO', 'SUPERVISOR GI PAYA GELI', '', 'binjai', 24),
('6692056A', 'IRWAN', 'SUPERVISOR GI BELAWAN', '', 'payapasir', 25),
('6991026A', 'HERLON J ALEXANDER HASIBUAN', 'MANAJER TRANSMISI DAN GI BINJA', '', 'binjai', 26),
('6991031A', 'ELIKSON HUTASOIT', 'SUPERVISOR GI NAMORAMBE', '', 'binjai', 27),
('6992057A', 'AKHMAD FAUZI', 'SUPERVISOR GI GALANG', '', 'seirotan', 28),
('6992058A', 'M. ALDRIN', 'SUPERVISOR PEMELIHARAAN JARING', '', 'medan', 29),
('7091035A', 'HERMAN SANTOSO', 'SUPERVISOR GI GIS LISTRIK', '', 'glugur', 30),
('7192064A', 'SUHENDRA EKA WIHADI', 'SUPERVISOR GI TANJUNG MORAWA', '', 'seirotan', 31),
('7291041A', 'ARDIANSYAH NASUTION', 'MANAJER TRANSMISI DAN GI SEI R', '', 'seirotan', 32),
('7291042A', 'HENDRA SAPUTRA', 'SUPERVISOR GI SEI ROTAN', '', 'seirotan', 33),
('7292066A', 'RUDI HARTONO', 'MANAJER TRANSMISI DAN GI PAYA ', '', 'payapasir', 34),
('7292068A', 'MISNO', 'AE ASESMEN DAN DIAGNOSA PERALA', '', 'medan', 35),
('7292069A', 'SUHERMAN', 'SUPERVISOR GI GIS GLUGUR', '', 'glugur', 36),
('7292070A', 'ICHWANSYAH', 'ASISTEN MANAJER PEMELIHARAAN', '', 'medan', 37),
('7292072A', 'SAHAT H. MARPAUNG', 'SUPERVISOR GI PERBAUNGAN', '', 'seirotan', 38),
('7391043A', 'SUGIHARTO', 'SUPERVISOR GI TITI KUNING', '', 'glugur', 39),
('7905007PBS', 'HASANUDDIN', 'MANAJER UNIT PELAYANAN TRANSMI', '', 'medan', 40),
('8204026A2', 'MUHAMMAD HARRY SUSANTO', 'SUPERVISOR PEMELIHARAAN GI', '', 'medan', 41),
('8204033A2', 'RENO PRATAMA', 'SUPERVISOR GI PANGKALAN BRANDA', '', 'binjai', 42),
('8206013PBS', 'MUHAMMAD HANIF', 'SUPERVISOR EVALUASI OPERASI DA', '', 'medan', 43),
('8304040A2', 'SUTRISNO', 'SUPERVISOR GI PANGKALAN SUSU', '', 'binjai', 44),
('8304041P3B', 'KRISTIANTO', 'ASISTEN MANAJER PDKB', '', 'medan', 45),
('8408008PBS', 'ADOLF FERNANDO SIMANJUNTAK', 'SUPERVISOR GI KIM', '', 'payapasir', 46),
('8408535Z', 'BUDI SANTOSO', 'ASISTEN MANAJER PERENCANAAN DA', '', 'medan', 47),
('8409487Z', 'JHON HENDRA', 'MANAJER TRANSMISI DAN GI GLUGU', '', 'glugur', 48),
('8509016PBS', 'POSMA HASIBUAN', 'JUNIOR ANALYST RENCANA KERJA P', '', 'medan', 49),
('8609020PBS', 'ERNEST GOHANKU MALAU', 'JE PEMELIHARAAN', '', 'glugur', 50),
('8609531Z', 'ARIEF SANDY ANGGORO', 'SUPERVISOR PEMELIHARAAN PMO', '', 'medan', 51),
('8708095PBS', 'ERIKSON SIMANJUNTAK', 'SUPERVISOR GI BINJAI', '', 'binjai', 52),
('8708101PBS', 'RUDY IRWANTO', 'SUPERVISOR GI LABUHAN', '', 'payapasir', 53),
('87111068Z', 'DAHLIA SATRIANY SIDABUTAR', 'SUPERVISOR TEKNOLOGI INFORMASI', '', 'medan', 54),
('87111951Z', 'VERI SUTA', 'SUPERVISOR PEMELIHARAAN', '', 'binjai', 55),
('8808100PBS', 'PANTUN MIAN PARMONANGAN A', 'JE PEMELIHARAAN', '', 'glugur', 56),
('8808124PBS', 'JURI YANTO TARIGAN', 'SUPERVISOR PEMELIHARAAN', '', 'glugur', 57),
('8809019PBS', 'HENRONIKO', 'JUNIOR ANALYST TEKNOLOGI INFOR', '', 'medan', 58),
('88111613Z', 'WINNY FRISKA ULI', 'AE OPERASI', '', 'medan', 59),
('8811633Z', 'ASTRI DEWI SANTY', 'AE PERENCANAAN DAN EVALUASI PM', '', 'medan', 60),
('8908087PBS', 'FRANKLIN GIDEON HUTABARAT', 'SUPERVISOR GI PAYA PASIR', '', 'payapasir', 61),
('8908097PBS', 'HENDRA YANTO SIHOMBING', 'SUPERVISOR PEMELIHARAAN', '', 'payapasir', 62),
('8908098PBS', 'HERMAN SARITUA SIMANJUNTAK', 'SUPERVISOR PEMELIHARAAN', '', 'seirotan', 63),
('8909015PBS', 'NALENDRA', 'JE PENGELOLAAN DATA BASE INSTA', '', 'medan', 64),
('8916003ZY', 'SAMUEL IVANALDO S', 'AE PEMELIHARAAN GI', '', 'medan', 65),
('9016071ZY', 'JEKSON SIHOMBING', 'AE SISTEM MANAJEMEN LINGKUNGAN', '', 'medan', 66),
('91171410ZY', 'RAY DEARDO SITEPU', 'AE PEMELIHARAAN GI', '', 'medan', 67),
('9215921ZY', 'IRVAN LEWI', 'AE PEMELIHARAAN PROTEKSI DAN M', '', 'medan', 68),
('92161828ZY', 'ARIS DWI SANTOSO', 'AE PEMELIHARAAN PROTEKSI DAN M', '', 'medan', 69),
('92171411ZY', 'NOVENRI AMBARITA', 'AE PEMELIHARAAN PERALATAN OTOM', '', 'medan', 70),
('93162666ZY', 'JEPTA ADI PUTRA SIHOMBING', 'JE PEMELIHARAAN JARINGAN', '', 'medan', 71),
('93163806ZY', 'VRISCO YONATAN', 'AE PEMELIHARAAN JARINGAN', '', 'medan', 72),
('94161977ZY', 'WIDYA FRISILIA S. SIMARMATA', 'JE ASESMEN DAN DIAGNOSA PERALA', '', 'medan', 73),
('9417305ZY', 'ADITYA DESCARA PUTRA', 'AE PEMELIHARAAN PERALATAN OTOM', '', 'medan', 74),
('94173992ZY', 'SINGGIH PRASETYO KUSDARYANTO', 'JE PERENCANAAN DAN EVALUASI JA', '', 'medan', 75),
('9616063PBY', 'JOSUA FRANSEDA', 'JUNIOR TECHNICIAN PEMELIHARAAN', '', 'binjai', 76),
('9616067PBY', 'YOS ADIKA NOVANDRA MARBUN', 'JUNIOR TECHNICIAN PEMELIHARAAN', '', 'seirotan', 77),
('9716149PBY', 'IRSANTRI HARTENO TARIGAN', 'JUNIOR TECHNICIAN PEMELIHARAAN', '', 'payapasir', 78),
('9716155PBY', 'ADE ZULKARNAIN', 'JUNIOR TECHNICIAN PEMELIHARAAN', '', 'glugur', 79);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bay`
--
ALTER TABLE `bay`
  ADD PRIMARY KEY (`id_bay`);

--
-- Indexes for table `daftarisi`
--
ALTER TABLE `daftarisi`
  ADD PRIMARY KEY (`id_daftarisi`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `foto_upt`
--
ALTER TABLE `foto_upt`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `gardu`
--
ALTER TABLE `gardu`
  ADD PRIMARY KEY (`id_gardu`);

--
-- Indexes for table `merk_peralatan`
--
ALTER TABLE `merk_peralatan`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id_pdf`);

--
-- Indexes for table `pdf_copy`
--
ALTER TABLE `pdf_copy`
  ADD PRIMARY KEY (`id_pdf`);

--
-- Indexes for table `pdf_laporanhar`
--
ALTER TABLE `pdf_laporanhar`
  ADD PRIMARY KEY (`id_pdf`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `subfile`
--
ALTER TABLE `subfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`nip_user`);

--
-- Indexes for table `tragi`
--
ALTER TABLE `tragi`
  ADD PRIMARY KEY (`id_tragi`);

--
-- Indexes for table `upt`
--
ALTER TABLE `upt`
  ADD PRIMARY KEY (`id_upt`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_pegawai`
--
ALTER TABLE `user_pegawai`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_pegawai_recovery`
--
ALTER TABLE `user_pegawai_recovery`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bay`
--
ALTER TABLE `bay`
  MODIFY `id_bay` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `daftarisi`
--
ALTER TABLE `daftarisi`
  MODIFY `id_daftarisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foto_upt`
--
ALTER TABLE `foto_upt`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gardu`
--
ALTER TABLE `gardu`
  MODIFY `id_gardu` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `merk_peralatan`
--
ALTER TABLE `merk_peralatan`
  MODIFY `id_merk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id_pdf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `pdf_copy`
--
ALTER TABLE `pdf_copy`
  MODIFY `id_pdf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `pdf_laporanhar`
--
ALTER TABLE `pdf_laporanhar`
  MODIFY `id_pdf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subfile`
--
ALTER TABLE `subfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tragi`
--
ALTER TABLE `tragi`
  MODIFY `id_tragi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `upt`
--
ALTER TABLE `upt`
  MODIFY `id_upt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
