-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2023 a las 20:50:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_ventas`
--

CREATE TABLE `sistema_ventas` (
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de la venta realizada',
  `ID` int(100) NOT NULL COMMENT 'Identificador/folio de venta',
  `Nombre` varchar(100) NOT NULL COMMENT 'Nombre del cliente',
  `Colonia` varchar(100) NOT NULL COMMENT 'Colonia del domicilio',
  `Referencias` varchar(100) NOT NULL COMMENT 'Descripcion breve de las indicaciones para dar con el domicilio',
  `Material` varchar(100) NOT NULL COMMENT 'Tipo de material que se va a comprar (Grava, Arena, Tierra)',
  `Volumen` decimal(8,0) NOT NULL COMMENT 'La cantidad que el cliente requiere',
  `Total` decimal(10,0) NOT NULL COMMENT 'Total de la venta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sistema_ventas`
--

INSERT INTO `sistema_ventas` (`Fecha`, `ID`, `Nombre`, `Colonia`, `Referencias`, `Material`, `Volumen`, `Total`) VALUES
('2023-02-20 19:48:25', 30, 'José Fernando', 'Mesa colorada', 'a la derecha y luego a la izquierda', 'grava', '7', '5460');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sistema_ventas`
--
ALTER TABLE `sistema_ventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sistema_ventas`
--
ALTER TABLE `sistema_ventas`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT COMMENT 'Identificador/folio de venta', AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
