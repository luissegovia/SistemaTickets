-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2016 a las 02:56:44
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
  `solucion` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_folio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `folios`
--

INSERT INTO `folios` (`id_folio`, `usuario`, `descripcion`, `asignado`, `categoria`, `prioridad`, `status`, `solucion`, `fecha`) VALUES
(1, 'Luis Segovia', 'se le descompuso su cpu', 'Soporte1', 'Sistemas', 'Media', 'Abierto', '', '2016-05-10'),
(2, 'Javier garcia', 'No Tengo Internet', 'Soporte2', 'Sistemas', 'Alta', 'Cerrado', 'se le cambio el cable ethernet', '2016-05-10'),
(3, 'MXLUSEG', 'falla monitor', 'Soporte3', 'Sistemas', 'Alta', 'Cerrado', 'se le cambio el cable VGA', '2016-05-12'),
(4, 'David', 'le falla su teclado', 'Soporte4', 'Sistemas', 'Baja', 'Abierto', '', '2016-05-12'),
(5, 'Fabian', 'su mac no quiere encender', 'Soporte2', 'Sistemas', 'Baja', 'En Proceso', 'Se verificara cable de corriente', '2016-05-13'),
(6, 'Camilo', 'se quebro su monitor', 'Soporte2', 'Sistemas', 'Alta', 'Cerrado', 'Solo se le cambio el monitor', '2016-05-14'),
(7, 'Camilo', 'falla cpu', 'Soporte2', 'Sistemas', 'Alta', 'Cerrado', 'hola', '2016-05-15'),
(8, 'Guillermo', 'No puede Impirmir', 'Soporte2', 'Impresoras', 'Media', 'Cerrado', 'Se le cambio la impresora', '2016-05-16'),
(9, 'Agua', 'se le descompuso su cpu', 'Soporte4', 'Hardware', 'Baja', 'Abierto', '', '2016-05-17'),
(10, 'Constiuyentes', 'se le descompuso su cpu', 'Soporte3', 'Software', 'Alta', 'Abierto', '', '2016-05-18'),
(11, 'Coyotes', 'no tienen red', 'Soporte3', 'Redes', 'Alta', 'Abierto', '', '2016-05-19'),
(12, 'AZT', 'se le descompuso su cpu', 'Soporte3', 'Software', 'Alta', 'Abierto', '', '2016-05-20'),
(13, 'YER', 'se le descompuso su cpu', 'Soporte1', 'Software', 'Alta', 'Abierto', '', '2016-05-21'),
(14, 'Abastos', 'se le descompuso su cpu', 'Soporte1', 'Software', 'Alta', 'Abierto', '', '2016-05-22'),
(15, 'Alborada', 'No Tengo Internet', 'Soporte4', 'Software', 'Alta', 'Abierto', '', '2016-05-23'),
(16, 'Abastos', 'falla de mosue', 'Soporte2', 'Hardware', 'Baja', 'Cerrado', 'se le cambio maouse', '2016-07-11'),
(17, 'Aeropuerto', 'le falla su teclado', 'Soporte2', 'Hardware', 'Media', 'Cerrado', 'le cambie el teclado yu revise el driver', '2016-07-12'),
(18, '21', 'asdadadasdasd', 'Soporte3', 'Hardware', 'Media', 'Abierto', '', '2016-07-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE IF NOT EXISTS `tiendas` (
  `id_tienda` int(11) NOT NULL AUTO_INCREMENT,
  `plaza` varchar(250) NOT NULL,
  `cr_plaza` varchar(250) NOT NULL,
  `tienda` varchar(250) NOT NULL,
  `cr_tienda` varchar(250) NOT NULL,
  `telefono` varchar(250) NOT NULL,
  PRIMARY KEY (`id_tienda`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id_tienda`, `plaza`, `cr_plaza`, `tienda`, `cr_tienda`, `telefono`) VALUES
(1, 'Monterrey Centro', 'MON', 'Estaci', 'EED', 'RED 80813 x 4229  '),
(2, 'Monterrey Oriente', 'MON', '21 de Enero', 'YER', 'RED 80812 x 4122  '),
(3, 'M', 'MEX', 'Sal', 'XRN', 'RED 86620 x 4355'),
(4, 'M', 'MEX', 'Progreso', 'ZPR', 'RED 80551 x 4228'),
(5, 'Puebla', 'PBI', 'V  de los ', 'KVL', 'RED 82220 x 4177  '),
(6, 'Vallarta', 'DZV', 'Parque Oce', 'PQX', 'RED 83220 x 4133'),
(7, 'Guadalajara Altos', 'GUD', 'Abastos', 'GAT', 'RED 80330 x 5137'),
(8, 'Aguascalientes', 'AGC', 'Salida a M', 'UPH', 'RED 84490 x 4238'),
(9, 'Quer', 'QRI', 'Las Quintas', 'QIU', 'RED 84420 x 4213  '),
(10, 'Poza Rica', 'POZ', 'Pav', 'VDE', 'RED 87820 x 4216  '),
(11, 'San Luis Potosi', 'SLP', 'MA. CECILIA', 'ILI', 'RED 84440 x 4121  '),
(12, 'Tuxtla', 'TGX', 'Casa Vieja', 'UHL', 'RED 89620 x 4153  '),
(13, 'Tijuana', 'TIJ', 'Silva', 'LWW', 'RED 86640 x 4608  '),
(14, 'Hermosillo', 'HER', 'Hermosillo', 'BIB', 'RED 86620 x 4355'),
(15, 'Guadalajara Altos', 'GUD', '8 de Julio GDL', 'JLY', 'RED 80330 x 5163 '),
(16, 'Monterrey Oriente', 'MON', 'Agua Roja MTY', 'AGR', 'RED 80812 x 4274  '),
(17, 'Tuxtla', 'TGX', '28 Oriente TGZ', 'WTY', 'RED 89620 x 4129  '),
(18, 'M', 'MEX', 'NEGRETE', 'APG', 'RED 80551 x 4211'),
(19, 'Aguascalientes', 'AGC', 'Escriva AGU', 'QXS', 'RED 84490 x 4232'),
(20, 'Quer', 'QRI', 'Carretas QRF', 'VTS', 'RED 84420 x 4228  '),
(21, 'Monterrey Oriente', 'MON', 'Apache MTY', 'APY', 'RED 80812 x 4271'),
(22, 'Tuxtla', 'TGX', '4ta Sur TGZ', 'XWO', 'RED 89620 x 4131  '),
(23, 'Aguascalientes', 'AGC', 'Aeropuerto AGU', 'AXF', 'RED 84490 x 4226'),
(24, 'Quer', 'QRI', 'Claustros QRF', 'UXN', 'RED 229 x 1771'),
(25, 'Poza Rica', 'POZ', '', 'XGC', 'RED 87820 x 4167  '),
(26, 'M', 'MEX', 'Francita MEX', 'OKH', 'RED 80550 x 4747'),
(27, 'Guadalajara Altos', 'GUD', 'Cl', 'CIQ', 'RED 80330 x 5118'),
(28, 'M', 'MEX', 'NI', 'VAQ', 'RED 80551 x 4209  '),
(29, 'Monterrey Oriente', 'MON', 'Azteca MTY', 'AZT', 'RED 80812 x 4275  '),
(30, 'Tuxtla', 'TGX', '8va  Oriente TGZ', 'QQP', 'RED 89620 x 4124  '),
(31, 'Aguascalientes', 'AGC', 'Cd  Industrial AGU', 'DCX', 'RED 84490 x 4232'),
(32, 'Tuxtla', 'TGX', '', 'LAQ', 'RED 89620 x 4116  '),
(33, 'Poza Rica', 'POZ', 'CCM PAZ', 'XZM', 'RED 87820 x 4168  '),
(34, 'Guadalajara Altos', 'GUD', 'Cruz del Sur GDL', 'ZUR', 'RED 80330 x 5277'),
(35, 'Quer', 'QRI', 'Galer', 'DVG', 'RED 84420 x 4173  '),
(36, 'Monterrey Oriente', 'MON', 'Circunvalaci', 'CGC', 'RED 80812 x 4245'),
(37, 'M', 'MEX', 'San Marcos MEX', 'ODG', 'RED 80550 x 4226  '),
(38, 'M', 'MEX', 'MARAKA', 'ARK', 'RED 80551 x 4190  '),
(39, 'Guadalajara Altos', 'GUD', 'Faro GDL', 'IFR', 'RED 80330 x 5157'),
(40, 'Monterrey Oriente', 'MON', 'Las Quintas MTY', 'OLQ', 'RED 80812 x 4119  '),
(41, 'M', 'MEX', 'Petrolera MEX', 'ZTV', 'RED 80551 x 4190  '),
(42, 'Poza Rica', 'POZ', 'Cedro PAZ', 'FNJ', 'RED 87820 x 4124  '),
(43, 'Tuxtla', 'TGX', 'Central Sur TGZ', 'KHT', 'RED 89620 x 4112  '),
(44, 'Aguascalientes', 'AGC', 'Jimeza AGU', 'JZE', 'RED 84490 x 4209'),
(45, 'Quer', 'QRI', 'Libramiento QRF', 'LBW', 'RED 84420 x 4371  '),
(46, 'M', 'MEX', 'Pilares', 'PIL', 'RED 80551 x 4223  '),
(47, 'Monterrey Oriente', 'MON', 'Hda. Los Lermas MTY', 'HLL', 'RED 80812 x 4116  '),
(48, 'Tuxtla', 'TGX', 'Crystal TGZ', 'KYS', 'RED 89620 x 4115  '),
(49, 'Poza Rica', 'POZ', 'Cuba PAZ', 'KKA', 'RED 87820 x 4142  '),
(50, 'Guadalajara Altos', 'GUD', 'Lazaro Cardenas GDL', 'YLC', 'RED 80330 x 5268'),
(51, 'Quer', 'QRI', 'Sur Poniente QRF', 'HIG', 'RED 84420 x 4466  '),
(52, 'Guadalajara Altos', 'GUD', 'Lopez de Legazpi GDL', 'LEZ', 'RED 80330 x 5178'),
(53, 'Poza Rica', 'POZ', 'Granada PAZ', 'YTX', 'RED 87820 x 4174  '),
(54, 'Monterrey Oriente', 'MON', 'J  Belem MTY', 'JBL', 'RED 80812 x 4249   '),
(55, 'Quer', 'QRI', 'TAQ QRF', 'JNX', 'RED 84420 x 4446  '),
(56, 'Tuxtla', 'TGX', 'Fenix TGZ', 'FXN', 'RED 89620 x 4139  '),
(57, 'M', 'MEX', 'Quinta de Cortez', 'DZG', 'RED 80551 x 4320'),
(58, 'M', 'MEX', 'Renacimiento', 'LWB', 'RED 80550 x 4287'),
(59, 'Aguascalientes', 'AGC', 'Penuelas', 'GBV', 'RED 84490 x 4181'),
(60, 'Quer', 'QRI', 'Conin', 'VXW', 'RED 84420 x 4413'),
(61, 'Tuxtla', 'TGX', 'Guizar', 'GZH', 'RED 89620 x 4110'),
(62, 'Poza Rica', 'POZ', 'KM 50', 'KLA', 'RED 87820 x 4186'),
(63, 'Monterrey Oriente', 'MON', 'De la madrid', 'LDM', 'RED 80812 x 4117'),
(64, 'Puebla', 'PBI', 'Azteca Sur', 'XBE', 'RED 82220 x 4377'),
(65, 'M', 'MEX', 'Oriente 55', 'OVK', 'RED 80551 x 4319'),
(66, 'M', 'MEX', 'Defensores MEX', 'TKC', 'RED 80550 x 4198'),
(67, 'Monterrey Oriente', 'MON', 'Mision del Valle MTY', 'MIV', 'RED 80812 x 4118'),
(68, 'Aguascalientes', 'AGC', 'Teocaltiche AGU', 'TIC', 'RED 84490 x 4175'),
(69, 'Quer', 'QRI', 'Palmas', 'FGH', 'RED 84420 x 4312'),
(70, 'Guadalajara Altos', 'GUD', 'Peninsula GDL', 'YVG', 'RED 80330 x 5271'),
(71, 'Poza Rica', 'POZ', 'Ley Paz', 'YLY', 'RED 87820 x 4171  '),
(72, 'Tuxtla', 'TGX', 'Palacio TGZ', 'DLK', 'RED 89620 x 4105'),
(73, 'Tijuana', 'TIJ', 'Tijuana TIJ', 'EKA', 'RED 86640 x 5042'),
(74, 'Puebla', 'PBI', 'La Viga PBF', 'LXH', 'RED 82220 x 4442'),
(75, 'Quer', 'QRI', 'Constiuyentes', 'TUY', 'RED 84420 x 4226'),
(76, 'Tijuana', 'TIJ', 'Bellas Artes', 'BAT', 'RED 86640 x 4114'),
(77, 'Guadalajara Altos', 'GUD', 'San Rafael', 'QYQ', 'RED 80330 x 5284'),
(78, 'Monterrey Oriente', 'MON', 'Quintana Roo', 'GDU', 'RED 80812 x 4194  '),
(79, 'Tuxtla', 'TGX', 'Zapata', 'WDW', 'RED 89620 x 4149  '),
(80, 'Aguascalientes', 'AGC', 'Vista Alegre', 'VSA', 'RED 84490 x 4146  '),
(81, 'Poza Rica', 'POZ', 'Montes de Oca', 'TEA', 'RED 87820 x 4118'),
(82, 'Puebla', 'PBI', 'Zavaleta', 'XZA', 'RED 82220 x 4288'),
(83, 'M', 'MEX', 'Napoleon', 'EDM', 'RED 80551 x 4443'),
(84, 'Monterrey Oriente', 'MON', 'Villa Espanola MTY', 'VSK', 'RED 80812 x 4179'),
(85, 'Monterrey Centro', 'MON', 'Manuel Ordonez MTY', 'ODW', 'RED 80815 x 4169'),
(86, 'Aguascalientes', 'AGC', 'San Gerardo', 'TCI', 'RED 80815 x 4169'),
(87, 'Guadalajara Altos', 'GUD', 'Topacio GDL', 'WIO', 'RED 80330 x 5255'),
(88, 'Poza Rica', 'POZ', 'Puebla PAZ', 'XEW', 'RED 87820 x 4231'),
(89, 'Tijuana', 'TIJ', 'Garita TIJ', 'ZWW', 'RED 86640 X 4361'),
(90, 'Puebla', 'PBI', 'Plaza W PBF', 'UWO', 'RED 82220 x 4318'),
(91, 'Aguascalientes', 'AGC', 'Coyotes', 'OCM', 'RED 84490 x 4248'),
(92, 'M', 'MEX', 'Metro Xola Valle', 'XWL', 'RED 80551 x 4294'),
(93, 'Poza Rica', 'POZ', 'Tihuatlan', 'TUA', 'RED 87820 x 4156'),
(94, 'Puebla', 'PBI', 'Gas Zavaleta', 'ZHY', 'RED 82220 x 4293'),
(95, 'Tijuana', 'TIJ', 'Humbolt', 'FTU', 'RED 86640 x 4575'),
(96, 'Tijuana', 'TIJ', 'Industrial ', 'INL', 'RED 86640 x 4176'),
(97, 'Puebla', 'PBI', 'Camino Real', 'ARR', 'RED 82220 x 4105'),
(98, 'M', 'MEX', 'Simon', 'CMC', 'RED 80551 x 4431'),
(99, 'Aguascalientes', 'AGC', 'Mahatma Gandhi AGU', 'XFM', 'RED 84490 x 4274'),
(100, 'Guadalajara Altos', 'GUD', 'WTC GDL', 'WTC', 'RED 80330 x 5347'),
(101, 'Poza Rica', 'POZ', 'Bermudez PAZ', 'BWD', 'RED 87820 x 4110'),
(102, 'Tijuana', 'TIJ', 'Lago TIJ', 'HHH', 'RED 86640 x 4168'),
(103, 'Puebla', 'PBI', 'Territorial', 'SSC', 'RED 82220 x 5002'),
(104, 'Guadalajara Altos', 'GUD', 'Los Pinos', 'LPK', 'RED 80330 x 5180'),
(105, 'Tijuana', 'TIJ', 'Mujica', 'JHF', 'RED 86640 x 4394'),
(106, 'Poza Rica', 'POZ', 'Cazones', 'CXZ', 'RED 87820 x 4114  '),
(107, 'Puebla', 'PIB', 'Ori', 'ZRI', 'RED 82220 x 4297  '),
(108, 'San Luis Potosi', 'SLP', 'Galaxia', 'XCD', 'RED 84440 x 4042  '),
(109, 'Puebla', 'PBI', 'Santa Clara PBF', 'PCL', 'RED 82220 x 4212'),
(110, 'San Luis Potosi', 'SLP', 'OXXO PERINORTE', 'PNE', 'RED 84440 x 4364  '),
(111, 'Tijuana', 'TIJ', 'Nueva TIJuana TIJ', 'NTJ', 'RED 86640 x 4232 '),
(112, 'Puebla', 'PBI', 'Alborada', 'COE', 'RED 82220 x 4443'),
(113, 'Aguascalientes', 'AGC', 'Panamericana AGU', 'NJQ', 'RED 84490 x 4197'),
(114, 'Vallarta', 'DZV', 'OXXO Universidad', 'UNS', 'RED 83220 x 4146'),
(115, 'Tijuana', 'TIJ', 'Torres II TIJ', 'RRE', 'RED 86640 x 4273'),
(116, 'Puebla', 'PBI', 'Mazarik PBF', 'MZK', 'RED 82220 x 4191'),
(117, 'Vallarta', 'DZV', 'Oxxo Ramblaces ', 'HKF', 'RED 83220 x 4221'),
(118, 'Hermosillo', 'HER', 'Oxxo Madero', 'INY', 'RED 86620 x 4315'),
(119, 'Hermosillo', 'HER', 'Oxxo Transversal', 'HTV', 'RED 86620 x 4143  '),
(120, 'Vallarta', 'DZV', 'Terminal Aerea III', 'HQG ', 'RED 83220 x 4220'),
(121, 'Vallarta', 'DZV', 'Fluvial', 'DGH', 'RED 83220 x 4106  '),
(122, 'Vallarta', 'DZV', 'Mayan Marina', 'IIV ', 'RED 83220 x 4111'),
(123, 'Monterrey Centro', 'MON', 'Cedros', 'CED', 'RED 80813 x 4138  '),
(124, 'Monterrey Centro', 'MON', 'Tulipanes', 'DFY', 'RED 80813 x 5004 '),
(125, 'Monterrey Centro', 'MON', 'Clinica ISSSTE', 'WBP', 'RED 80813 x 4276'),
(126, 'Monterrey Centro', 'MON', 'Alvaro Obregon II', 'QAX', 'RED 80813 x 4129 '),
(127, 'Vallarta', 'DZV', 'Botadero PVA', 'ULZ', 'RED 83220 x 4147  '),
(128, 'Vallarta', 'DZV', 'Sheraton PVA', 'XIX', 'RED 83220 x 4155  '),
(129, 'Hermosillo', 'HER', 'Mariachi HMO', 'HEM', 'RED 86620 x 4124 '),
(130, 'Hermosillo', 'HER', 'Matamoros HMO', 'MWT', 'RED 86620 x 4173  '),
(131, 'Hermosillo', 'GER', 'Guerrero HMO', 'MMU', 'RED 86620 x 4350 '),
(132, 'Mty Centro', 'MON', 'Jimenez Centro', 'JIC', 'RED 80813 x 4192'),
(133, 'Mty Centro', 'MON', 'Del Prado ', 'JVN', 'RED 80812 x 4297  '),
(134, 'Mty Oriente ', 'MON', 'La Expo Gpe MTY', 'EXW', 'RED 80812 x 4269'),
(135, 'Mty Oriente ', 'MON', 'Paseo del Valle MTY', 'PYF', 'RED 80812 x 4278  '),
(136, 'Mty Oriente ', 'MON', 'Santa Margarita MTY', 'QZY', 'RED 80812 x 4282'),
(137, 'Mty Oriente ', 'MON', 'Central de AbastosMTY', 'NTB', 'RED 80812 x 4281'),
(138, 'Mty Oriente ', 'MON', 'Herradura II MTY', 'RQY', 'RED 80812 x 4329  '),
(139, 'Mty Oriente ', 'MON', 'Bosq.de LapastoraMTY', 'BQS', 'RED 80812 x 4283  '),
(140, 'Mty Oriente ', 'MON', 'Matancillas MTY', 'WSP', 'RED 80812 x 4277'),
(141, 'Mty Oriente ', 'MON', 'La Costa MTY', 'LST', 'RED 80812 x 4284 '),
(142, 'Mty Oriente ', 'MON', 'Estacion Lerdo MTY', 'FIG', 'RED 88260 x 4102'),
(143, 'M', 'MEX', 'Egipto', 'EJP', 'RED 80550 x 4123  '),
(144, 'M', 'MEX', 'Electricistas', 'MXG', 'RED 80550 x 4798'),
(145, 'M', 'MEX', 'Plaza San Isidro', 'IZI', 'RED 80550 x 4227'),
(146, 'M', 'MEX', 'Xalpa', 'LIP', 'RED 80552 x 4400'),
(147, 'San Luis Potosi', 'SLP', 'Balcones del Valle', 'BDV', 'RED 84440 x 4105'),
(148, 'San Luis Potosi', 'SLP', 'Salvador Nava', 'NVN', 'RED 84440 x 4146'),
(149, 'San Luis Potosi', 'SLP', 'Panfilo Natera', 'AIY', 'RED 84440 x 4220'),
(150, 'San Luis Potosi', 'SLP', 'Pintores', 'NFK', 'RED 84440 x 4230'),
(151, 'San Luis Potosi', 'SLP', '5 de Mayo', 'CEA', 'RED 84440 x 4124'),
(152, 'San Luis Potosi', 'SLP', 'Los Alamos', 'QUS', 'RED 84440 x 4209'),
(153, 'San Luis Potosi', 'SLP', 'Sauce', 'ZAU', 'RED 84440 x 4195'),
(154, 'M', 'MEX', 'HEROES II', 'HXZ', 'Red 80551 X4169');

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
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `user`, `nom_user`, `password`, `departamento`, `tipo`) VALUES
(1, 'Soporte1', 'Luis Segovia', 'Fime1503', 'Sistemas', 'Soporte'),
(2, 'Soporte2', 'Javi Garcia', 'tnb123', 'Sistemas', 'Soporte'),
(3, 'Soporte3', 'Marco Gonzalez', 'tb456', 'Sistemas', 'Soporte'),
(12, 'Soporte4', 'javier  castro', 'javier456', 'Sistemas', 'Soporte'),
(13, 'Admin', 'Admin', 'Admin', 'Sistemas', 'Admin'),
(14, 'Soporte5', 'Gabriela Morales', 'filo123', 'RH', 'Soporte');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
