-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 09:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radia`
--

-- --------------------------------------------------------

--
-- Table structure for table `mensa`
--

CREATE TABLE `mensa` (
  `id_mens` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `tele` decimal(14,0) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mens` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `mensa`
--

INSERT INTO `mensa` (`id_mens`, `nombre`, `apellido`, `tele`, `email`, `mens`) VALUES
(1, 'tiziano', 'galvan', 1146573849, 'tizianogalvan@gmail.com', 'muy buena la pagina');

-- --------------------------------------------------------

--
-- Table structure for table `mod_produ`
--

CREATE TABLE `mod_produ` (
  `id_mpr` int(11) NOT NULL,
  `model` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `mod_produ`
--

INSERT INTO `mod_produ` (`id_mpr`, `model`) VALUES
(1, 'Marcedes Benz'),
(2, 'ford'),
(3, 'volkswagen'),
(4, 'renault'),
(5, 'chevrolet'),
(6, 'fiat'),
(7, 'jeep'),
(8, 'honda'),
(9, 'alfa romeo'),
(10, 'audi'),
(11, 'bmw'),
(12, 'maserati');

-- --------------------------------------------------------

--
-- Table structure for table `produ`
--

CREATE TABLE `produ` (
  `id_produ` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `tipo` int(11) NOT NULL,
  `modelo` int(11) NOT NULL,
  `precio` decimal(30,0) NOT NULL,
  `imagen` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `produ`
--

INSERT INTO `produ` (`id_produ`, `nombre`, `descripcion`, `tipo`, `modelo`, `precio`, `imagen`) VALUES
(6, 'radiador de ford', 'Radiador Ford Focus 2009/2015 ', 1, 2, 263722, 'radiador-fort.png'),
(7, 'radiador de renault', 'Radiador De Agua Renault Logan', 1, 4, 207454, 'radiador-renault.png'),
(8, 'radiador de fiat', 'Radiador Fiat Idea F2 2010 A 2', 1, 6, 213180, 'radiador-fiat-idea.png'),
(9, 'radiador de chevrolet', 'Radiador Motor Para Chevrolet ', 1, 5, 231467, 'radiador-chevrolet.png');

-- --------------------------------------------------------

--
-- Table structure for table `tip`
--

CREATE TABLE `tip` (
  `id_tip` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `tip`
--

INSERT INTO `tip` (`id_tip`, `tipo`) VALUES
(1, 'motor'),
(2, 'exterior');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `nombre`, `apellido`, `fecha`, `email`, `usuario`, `contra`) VALUES
(1, 'tiziano', 'galvan', '2006-11-29', 'tizianogalvan@gmail.com', 'tizigal', '1234'),
(2, 'tiziano', 'velazquez', '2017-02-08', 'velazque@gmail.com', 'vela', '5678'),
(3, 'damian', ' sosa', '1995-07-11', 'sose@gmail.com', 'sose', '1234'),
(4, 'ivan', 'rotela', '2006-07-11', 'rotela@gmail.com', 'rotelaa', '6789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensa`
--
ALTER TABLE `mensa`
  ADD PRIMARY KEY (`id_mens`);

--
-- Indexes for table `mod_produ`
--
ALTER TABLE `mod_produ`
  ADD PRIMARY KEY (`id_mpr`),
  ADD KEY `id_mpr` (`id_mpr`);

--
-- Indexes for table `produ`
--
ALTER TABLE `produ`
  ADD PRIMARY KEY (`id_produ`),
  ADD KEY `id_mpr` (`modelo`),
  ADD KEY `id_tip` (`tipo`);

--
-- Indexes for table `tip`
--
ALTER TABLE `tip`
  ADD PRIMARY KEY (`id_tip`),
  ADD KEY `id_tip` (`id_tip`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mensa`
--
ALTER TABLE `mensa`
  MODIFY `id_mens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_produ`
--
ALTER TABLE `mod_produ`
  MODIFY `id_mpr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produ`
--
ALTER TABLE `produ`
  MODIFY `id_produ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tip`
--
ALTER TABLE `tip`
  MODIFY `id_tip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produ`
--
ALTER TABLE `produ`
  ADD CONSTRAINT `id_mpr` FOREIGN KEY (`modelo`) REFERENCES `mod_produ` (`id_mpr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_tip` FOREIGN KEY (`tipo`) REFERENCES `tip` (`id_tip`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
