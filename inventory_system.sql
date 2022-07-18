-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220606.e7487227e5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 01:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `google_oauth`
--

CREATE TABLE `google_oauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `google_oauth`
--

INSERT INTO `google_oauth` (`id`, `provider`, `provider_value`) VALUES
(1, 'google', '{\"access_token\":\"ya29.a0ARrdaM_G0bNvuLCwTh5Ar2DM7Hs74cerEdge6YUq_t5j56eG21vaCQo3_E2m8tRwMDvQIGbnl-avcR_kKbKzWvmqtpKAdhD9cCR7-aOWavs-L6OW0wFgMB4VsSRpOZLlifNtzmeJxFLI5GJ-y9-oLD9qQ1tehg\",\"token_type\":\"Bearer\",\"expires_in\":3599,\"expires_at\":1656415694}');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL,
  `sheetId` varchar(100) NOT NULL,
  `respo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `date`, `sheetId`, `respo`) VALUES
(14, 'Hair oil', '1038', '2022-06-15 16:36:33', '1222222hytdjytjty', 'taoufik'),
(15, 'Epify hair removal', '899', '2022-06-15 16:37:03', '1BUxtP5uTZnbtAnacq_G8NMH1We2ofe9xw6Knrw3zJLs', 'hamza'),
(16, 'Nanohair serum', '600', '2022-06-15 16:37:29', '', ''),
(17, 'Volcanic MUD', '600', '2022-06-15 16:38:00', '', ''),
(18, 'Fibo cream', '170', '2022-06-15 16:38:31', '', ''),
(19, 'Dolil hair', '900', '2022-06-15 16:38:53', '', ''),
(20, 'Hair oil', '200', '2022-06-17 15:03:11', '1222222hytdjytjty', 'taoufik'),
(21, 'Hair oil', '900', '2022-06-23 17:39:45', '1BUxtP5uTZnbtAnacq_G8NMH1We2ofe9xw6Knrw3zJLs', 'Hamza.Ridouane');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `date`) VALUES
(9, 18, 130, '2022-06-15'),
(10, 14, 1, '2022-06-17'),
(11, 14, 130, '2022-06-17'),
(12, 14, 130, '2022-06-21'),
(13, 15, 900, '2022-06-21'),
(14, 15, 1, '2022-06-24'),
(15, 15, 1, '2022-06-24'),
(16, 14, 1, '2022-06-24'),
(17, 14, 300, '2022-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(6, 'Hamza.Ridouane', 'Hamza.ridouane', '011c945f30ce2cbafc452f39840f025693339c42', 1, 'no_image.jpg', 1, '2022-07-04 14:36:19'),
(7, 'taoufik naji', 'NAJI.TAOUFIK', 'fea7f657f56a2a448da7d4b535ee5e279caf3d9a', 3, 'no_image.jpg', 1, '2022-06-29 14:22:12'),
(8, 'KHAOULA RIDOUANE', 'KHAOULA.RIDOUANE', 'f56d6351aa71cff0debea014d13525e42036187a', 1, 'no_image.jpg', 1, NULL),
(9, 'MOHAMMED MAALI', 'MOHAMMED.MAALI', '92f2fd99879b0c2466ab8648afb63c49032379c1', 1, 'no_image.jpg', 1, NULL),
(10, 'HIND TANSOUFT', 'HIND.TANSOUFT', 'ab874467a7d1ff5fc71a4ade87dc0e098b458aae', 1, 'no_image.jpg', 1, NULL),
(11, 'MANSOURI ZAKARIAA', 'MANSOURI.ZAKARIAA', '4c1b52409cf6be3896cf163fa17b32e4da293f2e', 1, 'no_image.jpg', 1, NULL),
(12, 'SUISS YOUSSEF', 'SUISS.YOUSSEF', '501ab5444eae9ad32b562570b36ff628ec3790ce', 1, 'no_image.jpg', 1, NULL),
(13, 'NAFIA RIDOUANE', 'NAFIA.RIDOUANE', '0ddb5877c896f43e8734e10b001e7f1eb92889cd', 1, 'no_image.jpg', 1, NULL),
(14, 'ABDELOUAHED AITLGARGUI', 'ABDELOUAHED.AITLGARGUI', '4170ac2a2782a1516fe9e13d7322ae482c1bd594', 1, 'no_image.jpg', 1, NULL),
(15, 'test', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'no_image.jpg', 1, NULL),
(16, 'test', 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 3, 'no_image.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `google_oauth`
--
ALTER TABLE `google_oauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `google_oauth`
--
ALTER TABLE `google_oauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



