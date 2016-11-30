-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2016 a las 23:43:04
-- Versión del servidor: 5.6.17-log
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `crm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nom_empleado` varchar(250) NOT NULL,
  `dpto_empleado` varchar(250) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nom_empleado`, `dpto_empleado`) VALUES
(1, 'Alfonso Orozco', 'Sistemas\r'),
(2, 'Adrian Jauregui', 'Sistemas\r'),
(3, 'Antonio Trevi', 'Trafico\r'),
(4, 'Camilo Perez', 'Sistemas\r'),
(5, 'Carlos de Leon', 'Finanzas\r'),
(6, 'Cindy Tejeda', 'Recursos Humanos\r'),
(7, 'Claudia Perez', 'Trafico\r'),
(8, 'Ezequiel Almaguer', 'Finanzas\r'),
(9, 'Fabian Moreno', 'Finanzas\r'),
(10, 'Felipe Figueroa', 'Finanzas\r'),
(11, 'Gabriel Gonzalez', 'Otro\r'),
(12, 'Gloria Rios', 'Finanzas\r'),
(13, 'Guillermo Tellez', 'Sistemas\r'),
(14, 'Heberto Lara', 'Finanzas\r'),
(15, 'Janeth Gonzalez', 'Finanzas\r'),
(16, 'Janneth Nieto', 'Finanzas\r'),
(17, 'Javier Chavez', 'Otro\r'),
(18, 'Jorge Cantu', 'Otro\r'),
(19, 'Jorge Valdes', 'Recursos Humanos\r'),
(20, 'Josue Flores', 'Sistemas\r'),
(21, 'Juan Ibarra', 'Sistemas\r'),
(22, 'Juan Patlan', 'Otro\r'),
(23, 'Lizeth Ipi', 'Recursos Humanos\r'),
(24, 'Luz Aviles', 'Marketing\r'),
(25, 'Magda Cantu', 'Finanzas\r'),
(26, 'Marco Gonzalez', 'Sistemas\r'),
(27, 'Mario Elizondo', 'Otro\r'),
(28, 'Martha Nerio', 'Otro\r'),
(29, 'Nancy Lucio', 'Recursos Humanos\r'),
(30, 'Nancy Sanchez', 'Recursos Humanos\r'),
(31, 'Omar Zapata', 'Recursos Humanos\r'),
(32, 'Roberto Martinez', 'Trafico\r'),
(33, 'Socorro Carolina', 'Otro\r'),
(34, 'Victor Rodriguez', 'Sistemas\r'),
(35, 'Ruben Villegas', 'Recursos Humanos\r'),
(36, 'Pablo Aguilar', 'Sistemas\r'),
(37, 'Adrian Macias', 'Finanzas\r'),
(38, 'David Lopez', 'Finanzas\r'),
(39, 'Silvia Ruiz', 'Finanzas\r'),
(40, 'Luis Segovia', 'Sistemas\r'),
(41, 'Claudia Sanchez', 'Finanzas'),
(42, 'Roberto Sanchez', 'Trafico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folios`
--

CREATE TABLE IF NOT EXISTS `folios` (
  `id_folio` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `asignado` varchar(250) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `prioridad` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  PRIMARY KEY (`id_folio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `folios`
--

INSERT INTO `folios` (`id_folio`, `usuario`, `descripcion`, `asignado`, `categoria`, `prioridad`, `status`) VALUES
(1, 'Luis Segovia', 'se le descompuso su cpu', 'David', 'Sistemas', 'Media', 'Abierto'),
(2, 'Javier garcia', 'No Tengo Internet', 'Adrian', 'Sistemas', 'Alta', 'Abierto'),
(3, 'MXLUSEG', 'falla monitor', 'Gloria', 'Sistemas', 'Alta', 'Abierto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL,
  `nom_user` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `departamento` varchar(250) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `user`, `nom_user`, `password`, `departamento`) VALUES
(1, 'MXLUSEG', 'Luis Segovia', 'Fime1503', 'Sistemas'),
(2, 'MXJOFLO', 'Josue Flores', 'tnb123', 'Sistemas'),
(3, 'MXJUIBA', 'Juan Ibarra', 'tb456', 'Sistemas'),
(12, 'MXJOCAS', 'javier  castro', 'javier456', 'Sistemas');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
