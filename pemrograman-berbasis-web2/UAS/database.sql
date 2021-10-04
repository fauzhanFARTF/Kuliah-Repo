-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 13, 2021 at 07:38 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dbpeminjaman_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbdtransaksi`
--

CREATE TABLE `tbdtransaksi` (
  `idtransaksi` varchar(12) NOT NULL,
  `kodebuku` varchar(8) NOT NULL,
  `namapeminjam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbdtransaksi`
--

INSERT INTO `tbdtransaksi` (`idtransaksi`, `kodebuku`, `namapeminjam`) VALUES
('202107130001', 'B0001 ', 'Rian'),
('202107130002', 'B0003 ', 'Lita'),
('202107130003', 'B0005 ', 'Prapti');

-- --------------------------------------------------------

--
-- Table structure for table `tbmbuku`
--

CREATE TABLE `tbmbuku` (
  `kodebuku` varchar(8) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `aksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbmbuku`
--

INSERT INTO `tbmbuku` (`kodebuku`, `judul`, `penulis`, `status`, `aksi`) VALUES
('B0001', 'Mudah Belajar PHP', 'Mr. X', 'Dipinjam', 'Pinjam'),
('B0002', 'Web Design', 'Tim Berners Lee', 'Ada', 'Pinjam'),
('B0003', 'Apple for Everyone', 'Steve Jobs', 'Dipinjam', 'Pinjam'),
('B0004', 'The Relativity', 'Einstein', 'Ada', 'Pinjam'),
('B0005', 'HTML and CSS for Beginner', 'Fauzan Nurrachman', 'Dipinjam', 'Pinjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbdtransaksi`
--
ALTER TABLE `tbdtransaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indexes for table `tbmbuku`
--
ALTER TABLE `tbmbuku`
  ADD PRIMARY KEY (`kodebuku`);
