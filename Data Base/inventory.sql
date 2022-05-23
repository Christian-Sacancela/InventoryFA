-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2022 a las 19:27:03
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `Id` int(11) NOT NULL,
  `ci` varchar(100) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`Id`, `ci`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(3, '172740', 'CHRIS', 99999, 'Cumbaya', '', '2021-12-11 18:49:07'),
(5, '1727402404', 'Christian s', 958709401, 'San Juan', '', '2021-12-11 21:50:57'),
(7, '1704733144', 'Pedro', 12345, 'cumbaya', 'alimentacion', '2021-12-11 21:51:38'),
(9, '1721026498', 'jessica ', 2870703, 'av atahualpa', 'TATYLU', '2021-12-12 12:17:54'),
(10, '1704733144001', 'Christian', 123456, 'San juan de Cumbaya', 'educacion', '2022-01-12 17:05:58'),
(11, '1727402404001', 'Paul', 958709401, 'cualquiera', 'alimentacion', '2022-01-12 17:06:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`Id`, `nombre`, `ruc`, `telefono`, `direccion`, `razon`) VALUES
(1, 'FOAM ART', '1727402404', 958709401, 'Sangolqui, Chaupitena', 'Papelería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail`
--

CREATE TABLE `detail` (
  `Id` int(11) NOT NULL,
  `cod_pro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `Id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detail`
--

INSERT INTO `detail` (`Id`, `cod_pro`, `cantidad`, `precio`, `Id_venta`) VALUES
(1, 123, 5, '3.00', 1),
(2, 12345, 3, '5.00', 1),
(3, 123, 2, '3.00', 4),
(4, 12345, 5, '5.00', 4),
(5, 12345, 6, '5.00', 5),
(6, 123, 5, '3.00', 5),
(7, 5698, 43, '23.00', 6),
(8, 55, 4, '23.00', 6),
(9, 12345, 10, '5.00', 7),
(10, 12345, 3, '5.00', 8),
(11, 55, 1, '23.00', 8),
(12, 87954, 50, '0.00', 9),
(13, 87954, 20, '0.00', 10),
(14, 123, 4, '3.00', 10),
(15, 123, 1, '3.00', 11),
(16, 12345, 1, '5.00', 11),
(17, 87954, 10, '0.00', 12),
(18, 12345, 10, '5.00', 13),
(19, 12345, 5, '5.00', 14),
(20, 123, 5, '3.00', 14),
(21, 12345, 2, '5.00', 15),
(22, 123, 3, '3.00', 16),
(23, 12345, 5, '5.00', 17),
(24, 123, 1, '3.00', 18),
(25, 123, 1, '3.00', 19),
(26, 123, 1, '3.00', 20),
(27, 123, 1, '3.00', 21),
(28, 12345, 5, '5.00', 22),
(29, 12345, 1, '5.00', 23),
(30, 123, 1, '3.00', 24),
(31, 123, 1, '3.00', 25),
(32, 12345, 2, '5.00', 26),
(33, 123, 1, '3.00', 27),
(34, 123, 2, '3.00', 28),
(35, 87954, 1, '0.00', 28),
(36, 123, 1, '3.20', 29),
(37, 87954, 1, '0.15', 29),
(38, 12345, 20, '5.00', 30),
(39, 123, 1, '3.20', 30),
(40, 123, 5, '3.20', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`Id`, `codigo`, `nombre`, `proveedor`, `stock`, `precio`, `fecha`) VALUES
(4, '12345', 'prueba', 'Chris', 10, '5.00', '2021-12-22 20:34:49'),
(5, '5698', 'cualquiera', 'Nacho', 10, '23.00', '2021-12-22 20:36:19'),
(6, '87954', 'panes', 'Nacho', 18, '0.15', '2021-12-23 10:16:55'),
(8, '55', 'aguas', 'Chris', 15, '23.00', '2021-12-28 22:53:57'),
(9, '123', 'Caja marcadores Estilo', 'FOAMART', 1, '3.20', '2022-01-03 12:42:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `Id` int(11) NOT NULL,
  `ruc` varchar(100) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provider`
--

INSERT INTO `provider` (`Id`, `ruc`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(2, '1727402404', 'Chris', 958709401, 'cumbaya', 'qwesfd', '2021-12-13 11:34:23'),
(5, '3565', 'Nacho', 12345, 'cumbaya', 'cualquiera', '2021-12-22 14:11:04'),
(6, '65161', 'FOAMART', 651651, 'hbhb', 'ytvyv', '2021-12-23 10:19:26'),
(7, '14166', 'Cualquiera', 12345, 'san juan', 'cualquierax2', '2021-12-28 21:57:54'),
(8, '12312323', 'sdsdsdf', 12323, 'sdfdff', 'asd', '2021-12-28 22:25:38'),
(9, '123', 'qwe', 12334, 'qwerr', 'dfgg', '2021-12-28 22:26:44'),
(10, '213344', 'abcd', 4565, 'asdsdf', 'fsdfsdf', '2021-12-28 22:27:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `Id` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`Id`, `cliente`, `vendedor`, `total`, `fecha`) VALUES
(1, 'Christian s', 'FOAM ART', '40.00', '2022-01-03 13:27:34'),
(2, 'Christian s', 'FOAM ART', '30.00', '2022-01-03 13:45:19'),
(3, 'Christian s', 'FOAM ART', '18.00', '2022-01-03 13:51:58'),
(4, '', 'FOAM ART', '31.00', '2022-01-03 13:56:54'),
(5, 'Christian s', 'FOAM ART', '45.00', '2022-01-04 13:08:08'),
(6, '', 'FOAM ART', '1081.00', '2022-01-04 13:20:18'),
(7, 'Christian s', 'FOAM ART', '50.00', '2022-01-04 13:25:31'),
(8, 'Christian s', 'FOAM ART', '38.00', '2022-01-07 16:04:05'),
(9, 'Christian s', 'FOAM ART', '520.00', '2022-01-07 16:09:42'),
(10, 'Christian s', 'FOAM ART', '12.00', '2022-01-07 16:10:42'),
(11, 'Christian s', 'FOAM ART', '8.00', '2022-01-07 17:00:46'),
(12, 'Christian s', 'FOAM ART', '0.00', '2022-01-10 12:41:44'),
(13, 'Christian', 'FOAM ART', '50.00', '2022-01-12 23:19:04'),
(14, 'Christian', 'FOAM ART', '40.00', '2022-01-12 23:25:10'),
(15, 'Christian s', 'FOAM ART', '10.00', '2022-01-12 23:28:31'),
(16, 'Christian s', 'FOAM ART', '9.00', '2022-01-12 23:29:40'),
(17, 'Christian s', 'FOAM ART', '25.00', '2022-01-12 23:31:12'),
(18, 'Christian s', 'FOAM ART', '3.00', '2022-01-12 23:33:26'),
(19, 'Christian s', 'FOAM ART', '3.00', '2022-01-12 23:36:11'),
(20, 'Christian s', 'FOAM ART', '3.00', '2022-01-12 23:37:18'),
(21, 'Christian s', 'FOAM ART', '3.00', '2022-01-12 23:39:11'),
(22, 'Christian s', 'FOAM ART', '25.00', '2022-01-12 23:41:50'),
(23, 'Christian s', 'FOAM ART', '5.00', '2022-01-12 23:42:30'),
(24, 'Christian', 'FOAM ART', '3.00', '2022-01-12 23:45:14'),
(25, 'Christian s', 'FOAM ART', '3.00', '2022-01-12 23:46:42'),
(26, 'Christian s', 'FOAM ART', '10.00', '2022-01-12 23:49:37'),
(27, 'Christian s', 'FOAM ART', '3.00', '2022-01-13 12:12:50'),
(28, 'Christian s', 'FOAM ART', '7.00', '2022-01-13 12:16:00'),
(29, 'Christian s', 'FOAM ART', '3.35', '2022-01-13 12:17:36'),
(30, 'Christian s', 'Tatiana Cumbajin', '103.20', '2022-01-28 15:01:34'),
(31, 'Christian s', 'FOAM ART', '16.00', '2022-01-28 15:22:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Id`, `name`, `correo`, `pass`, `rol`) VALUES
(1, 'cpst', 'chris.8991@hotmail.com', 'admin', 'Administrador'),
(2, 'chris', 'admin', '12345', 'Asistente'),
(3, 'Christian', 'prueba@gmail.com', '12345', 'Asistente'),
(4, 'Christian Sacancela', 'ChrisPaul', '12345', 'Administrador'),
(5, 'Paul', 'cualquiera', '123', 'Asistente'),
(6, 'Nacho', 'Nacho', '123', 'Asistente'),
(7, 'Vago', 'vago', '123', 'Administrador'),
(8, 'Chris', 'Chrisp', '123', 'Asistente'),
(9, 'Tatiana Cumbajin', 'taty', '12345', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detail`
--
ALTER TABLE `detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `provider`
--
ALTER TABLE `provider`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
