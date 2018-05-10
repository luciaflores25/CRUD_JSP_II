-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2018 a las 14:48:42
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservahoteles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clienteID` int(11) NOT NULL,
  `nombreCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidosCliente` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `telefonoCliente` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `sexoCliente` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `DniCliente` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `EmailCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ciudadCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `paisCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cpCliente` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clienteID`, `nombreCliente`, `apellidosCliente`, `telefonoCliente`, `sexoCliente`, `DniCliente`, `EmailCliente`, `ciudadCliente`, `paisCliente`, `cpCliente`) VALUES
(1, 'Lucía', 'Flores Padilla', '654215875', 'Mujer', '77250987K', 'lucia@gmail.com', 'Málaga', 'España', '29590'),
(2, 'Paqui', 'Padilla Rebollo', '632541258', 'Mujer', '37354512R', 'paqui@hotmail.es', 'Málaga', 'España', '29590'),
(3, 'María', 'Flores Padilla', '666584525', 'Mujer', '77415285P', 'maria@gmail.com', 'Lugo', 'Colombia', '29590'),
(4, 'Francisco Manuel', 'Flores Palacios', '668521425', 'Hombre', '36357878T', 'fran@gmail.com', 'Jaén', 'Costa Rica', '29584'),
(5, 'Ángeles', 'Bueno Aguilar', '622525351', 'Mujer', '75485965E', 'angy@gmail.com', 'Guadalajara', 'Canadá', '70258'),
(6, 'Carmen', 'Ruíz González', '622565658', 'Mujer', '78548752L', 'carmen@gmail.com', 'Tenerife', 'Bahamas', '78956'),
(7, 'Ana', 'Lago Rodríguez', '758492565', 'Mujer', '74881589R', 'analago@gmail.com', 'Ciudad Real', 'España', '29654'),
(8, 'Claudia', 'Montiel Pardo', '622525377', 'Mujer', '77235588C', 'claudia@gmail.com', 'Valladolid', 'Venezuela', '29587');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `hotelID` int(11) NOT NULL,
  `nombreHotel` varchar(100) NOT NULL,
  `ciudadHotel` varchar(100) NOT NULL,
  `paisHotel` varchar(100) NOT NULL,
  `numeroEstrellas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`hotelID`, `nombreHotel`, `ciudadHotel`, `paisHotel`, `numeroEstrellas`) VALUES
(2, 'Barceló', 'Cádiz', 'España', 4),
(3, 'Disney Land Paris', 'Paris', 'Francia', 5),
(4, 'Gran Marseille', 'Paris', 'Francia', 5),
(5, 'Rich', 'Madrid', 'España', 5),
(6, 'Meliá', 'Málaga', 'España', 4),
(7, 'Bravo Murillo', 'Madrid', 'España', 2),
(8, 'NH', 'Sevilla', 'España', 3),
(9, 'Granada Palace', 'Granada', 'España', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `reservaID` int(11) NOT NULL,
  `clienteID` int(11) NOT NULL,
  `hotelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`reservaID`, `clienteID`, `hotelID`) VALUES
(12, 1, 2),
(13, 2, 3),
(14, 3, 4),
(15, 4, 5),
(16, 5, 6),
(17, 6, 7),
(18, 7, 8),
(19, 8, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clienteID`),
  ADD UNIQUE KEY `DniCliente` (`DniCliente`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotelID`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`reservaID`),
  ADD KEY `reserva_ibfk_1` (`clienteID`),
  ADD KEY `reserva_ibfk_2` (`hotelID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `clienteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `reservaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
