-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2019 at 09:08 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_biodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `address` varchar(256) CHARACTER SET utf8 NOT NULL,
  `hobbies` varchar(256) CHARACTER SET utf8 NOT NULL,
  `is_married` tinyint(1) NOT NULL,
  `school` text CHARACTER SET utf8 NOT NULL,
  `skills` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `address`, `hobbies`, `is_married`, `school`, `skills`) VALUES
(1, 'Rudi', 'Perumahan Bunga D7 No 7 Klaten', 'Membaca', 0, 'Universitas Negeri Semarang', 'Java Programming'),
(2, 'Dani', 'Perumahan Bukit Hijau A1 No 1 Salatiga', 'Traveling', 1, 'Universitas Indonesia', 'PHP Programming'),
(3, 'Eski', 'Perumahan Indah Permai B2 No 4 Kartasura', 'Menulis', 0, 'Universitas Negeri Yogyakarta', 'Mechanical Engineering'),
(4, 'Yuhan', 'Perumahan Harmoni F4 No 8 Surakarta', 'Fotografi', 0, 'Universitas Sebelas Maret Surakarta', 'Special Education');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
