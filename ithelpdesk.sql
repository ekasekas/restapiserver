-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 07:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ithelpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_konsultasi`
--

CREATE TABLE `t_konsultasi` (
  `id` int(11) NOT NULL,
  `sender` int(100) NOT NULL,
  `receiver` int(100) NOT NULL,
  `tgl_konsultasi` date NOT NULL,
  `message` varchar(100) NOT NULL,
  `status` enum('Menunggu','Sedang dijawab','Selesai','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_konsultasi`
--

INSERT INTO `t_konsultasi` (`id`, `sender`, `receiver`, `tgl_konsultasi`, `message`, `status`) VALUES
(1, 0, 1, '0000-00-00', 'Assalamualaikum', 'Menunggu'),
(2, 0, 1, '0000-00-00', 'Assalamualaikum', 'Menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `t_role`
--

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_role`
--

INSERT INTO `t_role` (`id`, `role`) VALUES
(1, 'dosen'),
(2, 'mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `nama`, `email`, `password`, `role_id`) VALUES
(1, 'Eka Susianawanti', 'ekas@gmail.com', '$2y$10$mvG2LaDVnsbw.q9gJ9oyQujZSe7gnCC.xBdZQTyF9efwTcPTGoB7C', 2),
(2, 'Andri Atmoko', 'atmoko@gmail.com', '$2y$10$tbZdQo.soZ4VRDTAlQlQmerwdbMQPNJQkceKzPrHkXPE6O1LZMp02', 1),
(3, 'Salnan Ratih', 'salnana@gmail.com', '$2y$10$cokthNofnO4MPHvaIru6b.vefAaopeGbt3cY88XODNFxUW8rsmiGi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_konsultasi`
--
ALTER TABLE `t_konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_role`
--
ALTER TABLE `t_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_konsultasi`
--
ALTER TABLE `t_konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_role`
--
ALTER TABLE `t_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_user`
--
ALTER TABLE `t_user`
  ADD CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
