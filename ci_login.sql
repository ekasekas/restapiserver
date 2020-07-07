-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 10:26 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `plant_id` varchar(255) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lower_range` int(11) NOT NULL,
  `upper_range` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `posisi_kolom` int(11) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `site_id`, `plant_id`, `tag_name`, `description`, `lower_range`, `upper_range`, `unit`, `posisi_kolom`, `date_created`, `date_modified`) VALUES
(1, '1', '1', 'octa', '-', 0, 0, '12', 0, '2020-07-06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_ebt`
--

CREATE TABLE `master_ebt` (
  `id` int(11) NOT NULL,
  `nama_site_plant` varchar(255) NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `commisioning` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `kapasitas` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama_operator` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `lat_long` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `date_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_ebt`
--

INSERT INTO `master_ebt` (`id`, `nama_site_plant`, `site_id`, `commisioning`, `alamat`, `time_zone`, `kapasitas`, `foto`, `nama_operator`, `telepon`, `email`, `kota`, `lat_long`, `status`, `date_created`, `date_modified`) VALUES
(1, 'SC 333', '1', '0000-00-00', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '0000-00-00', '0000-00-00'),
(2, 'ST ll', '1', '0000-00-00', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `nama_wilayah_kerja` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `nama_wilayah_kerja`, `alamat`, `telepon`, `email`, `kota`, `status`, `date_created`, `date_modified`) VALUES
(1, 'bandung', 'jalan ciredeum no 5', '0812445667889', 'saaih@yahoo.com', 'bandung', 'active', '0000-00-00', '0000-00-00'),
(2, '-', '-', '-', '-', '-', '-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_logbook`
--

CREATE TABLE `system_logbook` (
  `id` int(11) NOT NULL,
  `type_alarm` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `equipment` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sr` varchar(255) NOT NULL,
  `wo` varchar(255) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_logbook`
--

INSERT INTO `system_logbook` (`id`, `type_alarm`, `time`, `equipment`, `description`, `sr`, `wo`, `date_created`, `date_modified`) VALUES
(1, '-', '00:00:00', '-', '-', '-', '-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `role_view` varchar(255) NOT NULL,
  `role_edit` varchar(255) NOT NULL,
  `aktif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `kategori`, `role_view`, `role_edit`, `aktif`) VALUES
(1, 'ekas', 'ekas', 'admin_ebt', 'ebt_bojonegoro#ebt_jakarta#ebt_surabaya', 'ebt_bojonegoro#ebt_jakarta#ebt_surabaya', 'yes'),
(2, 'octa', 'octa', 'admin_it', 'it_sidoarjo', 'it_sidoarjo', 'yes'),
(3, 'lala', 'lala', 'view_user', 'ebt_bojonegoro#ebt_jakarta#ebt_surabaya', '-', 'yes'),
(4, 'riri', 'riri', 'admin_utama', '-', '-', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_ebt`
--
ALTER TABLE `master_ebt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_logbook`
--
ALTER TABLE `system_logbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
