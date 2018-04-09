-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2018 a las 00:58:46
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectojs_quejas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `madrid`
--

CREATE TABLE `madrid` (
  `codigo` int(45) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `madrid`
--

INSERT INTO `madrid` (`codigo`, `nombre`, `foto`) VALUES
(1, 'Moncloa', 'moncloa.gif'),
(2, 'Salamanca', 'salamanca.gif'),
(3, 'Centro', 'centro.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas`
--

CREATE TABLE `quejas` (
  `id` int(11) NOT NULL,
  `queja` varchar(250) NOT NULL,
  `genero` varchar(250) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `id_queja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `quejas`
--

INSERT INTO `quejas` (`id`, `queja`, `genero`, `x`, `y`, `descripcion`, `id_queja`) VALUES
(1, 'SOCIAL', '0', 0, 179, '150', 1),
(1, 'SOCIAL', 'Hombre', 0, 221, '116', 2),
(1, 'SOCIAL', 'Hombre', 284, 158, 'kjbfkjvdbfjkbvfjkdbbv', 3),
(4, 'SOCIAL', 'Hombre', 420, 275, 'eeeeeeeeeeeeeeeeee', 4),
(1, 'SOCIAL', 'Hombre', 230, 178, 'Hola', 5),
(1, 'SOCIAL', 'Hombre', 230, 178, 'Hola', 6),
(1, 'CONFLICTIVA', 'Hombre', 179, 259, 'Hola', 7),
(1, 'CONFLICTIVA', 'Hombre', 179, 259, 'Hola', 8),
(4, 'SOCIAL', '', 235, 299, '', 9),
(4, 'SOCIAL', 'Mujer', 235, 299, 'Hola\r\n', 10),
(1, 'SOCIAL', '', 264, 343, '', 11),
(1, 'SOCIAL', '', 264, 343, '', 12),
(1, 'SOCIAL', 'Hombre', 240, 297, 'Ã±lk', 13),
(1, 'SOCIAL', 'Hombre', 240, 297, 'Ã±lk', 14),
(1, 'SOCIAL', 'Hombre', 495, 291, 'hu', 15),
(1, 'SOCIAL', 'Hombre', 206, 298, 'Ã±kl`Â´p', 16),
(1, 'SOCIAL', 'Hombre', 261, 324, 'rethy', 17),
(1, 'SOCIAL', 'Hombre', 283, 90, 'knl.j', 18),
(1, 'SOCIAL', 'Hombre', 277, 366, 'Hola\r\n', 19),
(0, '', '', 0, 0, '', 20),
(0, '', '', 0, 0, '', 21),
(0, '', '', 0, 0, '', 22),
(0, '', '', 0, 0, '', 23),
(1, 'SOCIAL', 'Hombre', 129, 186, 'Goa', 24),
(1, 'SOCIAL', 'Hombre', 129, 186, 'Goa', 25),
(1, 'SOCIAL', 'Hombre', 155, 200, 'Hola', 26),
(1, 'SOCIAL', 'Hombre', 293, 351, 'dghsdf', 27),
(1, 'SOCIAL', 'Hombre', 293, 351, 'dghsdf', 28),
(1, 'SOCIAL', 'Hombre', 293, 351, 'dghsdf', 29),
(1, 'SOCIAL', 'Hombre', 293, 351, 'dghsdf', 30),
(1, 'SOCIAL', 'Hombre', 173, 271, 'Hoola', 31),
(1, 'SOCIAL', 'Hombre', 176, 282, 'Hola\r\n', 32),
(0, '', '', 298, 355, '', 33);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `madrid`
--
ALTER TABLE `madrid`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `quejas`
--
ALTER TABLE `quejas`
  ADD PRIMARY KEY (`id_queja`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `madrid`
--
ALTER TABLE `madrid`
  MODIFY `codigo` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `quejas`
--
ALTER TABLE `quejas`
  MODIFY `id_queja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
