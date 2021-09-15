-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 12:19 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pedido`
--

-- --------------------------------------------------------

--
-- Table structure for table `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `ID_PEDI_DETAPEDI` int(11) NOT NULL,
  `CODI_PROD_DETAPEDI` int(11) NOT NULL,
  `CANT_DETAPEDI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `ID_PEDI` int(11) NOT NULL,
  `FECH_PEDI` date NOT NULL,
  `ID_USUA_PEDI` int(20) NOT NULL,
  `DIRE_PEDI` varchar(120) NOT NULL,
  `ESTA_PEDI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `CODI_PROD` int(11) NOT NULL,
  `NOMB_PROD` varchar(120) NOT NULL,
  `IMAG_PROD` varchar(256) DEFAULT NULL,
  `COST_PROD` float NOT NULL,
  `PREC_PROD` float NOT NULL,
  `CANT_PROD` int(11) NOT NULL,
  `ESTA_PROD` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUA` int(20) NOT NULL,
  `NOMB_USUA` varchar(120) NOT NULL,
  `APEL_USUA` int(120) NOT NULL,
  `TELE_USUA` varchar(15) NOT NULL,
  `CORR_USUA` varchar(50) NOT NULL,
  `USER_USUA` varchar(15) NOT NULL,
  `PASS_USUA` varchar(20) NOT NULL,
  `TIPO_USUA` int(1) NOT NULL,
  `ESTA_USUA` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD KEY `ID_PEDI_DETAPEDI` (`ID_PEDI_DETAPEDI`),
  ADD KEY `CODI_PROD_DETAPEDI` (`CODI_PROD_DETAPEDI`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_PEDI`),
  ADD KEY `ID_USUA_PEDI` (`ID_USUA_PEDI`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CODI_PROD`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_PEDI` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `CODI_PROD` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`ID_PEDI_DETAPEDI`) REFERENCES `pedido` (`ID_PEDI`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`CODI_PROD_DETAPEDI`) REFERENCES `producto` (`CODI_PROD`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_USUA_PEDI`) REFERENCES `usuario` (`ID_USUA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
