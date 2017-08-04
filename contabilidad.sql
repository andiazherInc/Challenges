-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2017 a las 06:45:33
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contabilidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `andiazher_login`
--

CREATE TABLE `andiazher_login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `backgroundcolor` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `backgroundcolorimage` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `andiazher_login`
--

INSERT INTO `andiazher_login` (`id`, `usuario`, `pass`, `role`, `token`, `backgroundcolor`, `backgroundcolorimage`) VALUES
(1, 'admin', 'nada', 1, '61df3fd5de2ab4c8a2d1601cbf2297d6', '#2F2D2D', 'font3.jpg'),
(5, 'services', 'nada', 2, '61df3fd5de2ab4c8a2d1601cbf2297d6', 'white', 'font2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_menu`
--

CREATE TABLE `config_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `navbarrole` int(11) NOT NULL,
  `ispageorurl` int(1) NOT NULL,
  `page` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `config_menu`
--

INSERT INTO `config_menu` (`id`, `name`, `title`, `role`, `navbarrole`, `ispageorurl`, `page`) VALUES
(1, 'Dashboard', 'Dashboard: Resumen general de cuentas', 1, 6, 1, 'contend/cuentas/index.jsp'),
(2, 'Editar cuentas', 'Edición de cuentas', 1, 6, 1, 'contend/cuentas/edit.jsp'),
(3, 'Ir a davivienda', '', 1, 6, 0, 'https://www.davivienda.com/wps/portal/personas/nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_navbar`
--

CREATE TABLE `config_navbar` (
  `id` int(11) NOT NULL,
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `isdropdown` int(1) NOT NULL,
  `isurlormethod` int(1) NOT NULL,
  `urlormethod` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `config_navbar`
--

INSERT INTO `config_navbar` (`id`, `name`, `isdropdown`, `isurlormethod`, `urlormethod`, `icon`) VALUES
(1, 'CUENTAS', 0, 0, 'loadMenus()', ''),
(2, 'PAGOS', 1, 0, '', ''),
(3, 'BANCOS', 0, 1, '#Hello?q=Nada', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_navbarsteps`
--

CREATE TABLE `config_navbarsteps` (
  `id` int(11) NOT NULL,
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `isurlormethod` int(1) NOT NULL,
  `urlormethod` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `config_navbarsteps`
--

INSERT INTO `config_navbarsteps` (`id`, `name`, `isurlormethod`, `urlormethod`) VALUES
(0, 'NO CHILDREN', 0, ''),
(1, 'Facturas', 1, 'http://www.claro.com.co/personas/?showMiClaro=true'),
(2, 'Hacer Pagos', 0, 'pagarServicesEspeciales(null)'),
(4, 'Otros', 0, 'NADA()');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_role`
--

CREATE TABLE `config_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `defaultnav` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `config_role`
--

INSERT INTO `config_role` (`id`, `name`, `icon`, `level`, `defaultnav`) VALUES
(1, 'admin', '', 1, 6),
(2, 'services', '', 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_rolenavbars`
--

CREATE TABLE `config_rolenavbars` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `navbar` int(11) NOT NULL,
  `navbarsteps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `config_rolenavbars`
--

INSERT INTO `config_rolenavbars` (`id`, `role`, `navbar`, `navbarsteps`) VALUES
(6, 1, 1, 0),
(7, 1, 2, 1),
(8, 1, 3, 0),
(9, 1, 2, 2),
(10, 1, 2, 4),
(11, 1, 2, 0),
(12, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_usuarios`
--

CREATE TABLE `config_usuarios` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `config_usuarios`
--

INSERT INTO `config_usuarios` (`id`, `user`, `name`, `lastname`) VALUES
(1, 1, 'Andres', 'Diaz Hernandez'),
(2, 5, 'Juan Andres', 'Diaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_accounts`
--

CREATE TABLE `data_accounts` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_accounts`
--

INSERT INTO `data_accounts` (`id`, `number`, `name`, `owner`) VALUES
(1, 1001, 'CHASH', 'ANDRES DIAZ'),
(2, 1002, 'BANK DAVIVIENDA', 'ANDRES DIAZ'),
(3, 2001, 'TOTAL LOANS CHASH ACCOUNTS', 'ANDRES DIAZ'),
(4, 3001, 'TOTAL CREDITS ACCOUNTS', 'ANDRES DIAZ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `andiazher_login`
--
ALTER TABLE `andiazher_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `FK_ROLEUSER` (`role`);

--
-- Indices de la tabla `config_menu`
--
ALTER TABLE `config_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AS` (`role`),
  ADD KEY `AS2` (`navbarrole`);

--
-- Indices de la tabla `config_navbar`
--
ALTER TABLE `config_navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config_navbarsteps`
--
ALTER TABLE `config_navbarsteps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config_role`
--
ALTER TABLE `config_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `defaultnavbars` (`defaultnav`);

--
-- Indices de la tabla `config_rolenavbars`
--
ALTER TABLE `config_rolenavbars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role` (`role`),
  ADD KEY `fk_navbars` (`navbar`),
  ADD KEY `fk_navbarsteps` (`navbarsteps`);

--
-- Indices de la tabla `config_usuarios`
--
ALTER TABLE `config_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indices de la tabla `data_accounts`
--
ALTER TABLE `data_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `andiazher_login`
--
ALTER TABLE `andiazher_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `config_menu`
--
ALTER TABLE `config_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `config_navbar`
--
ALTER TABLE `config_navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `config_navbarsteps`
--
ALTER TABLE `config_navbarsteps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `config_role`
--
ALTER TABLE `config_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `config_rolenavbars`
--
ALTER TABLE `config_rolenavbars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `config_usuarios`
--
ALTER TABLE `config_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `data_accounts`
--
ALTER TABLE `data_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `andiazher_login`
--
ALTER TABLE `andiazher_login`
  ADD CONSTRAINT `FK_ROLEUSER` FOREIGN KEY (`role`) REFERENCES `config_role` (`ID`);

--
-- Filtros para la tabla `config_menu`
--
ALTER TABLE `config_menu`
  ADD CONSTRAINT `AS` FOREIGN KEY (`role`) REFERENCES `config_role` (`id`),
  ADD CONSTRAINT `AS2` FOREIGN KEY (`navbarrole`) REFERENCES `config_rolenavbars` (`id`);

--
-- Filtros para la tabla `config_role`
--
ALTER TABLE `config_role`
  ADD CONSTRAINT `defaultnavbars` FOREIGN KEY (`defaultnav`) REFERENCES `config_rolenavbars` (`id`);

--
-- Filtros para la tabla `config_rolenavbars`
--
ALTER TABLE `config_rolenavbars`
  ADD CONSTRAINT `fk_navbars` FOREIGN KEY (`navbar`) REFERENCES `config_navbar` (`ID`),
  ADD CONSTRAINT `fk_navbarsteps` FOREIGN KEY (`navbarsteps`) REFERENCES `config_navbarsteps` (`ID`),
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role`) REFERENCES `config_role` (`ID`);

--
-- Filtros para la tabla `config_usuarios`
--
ALTER TABLE `config_usuarios`
  ADD CONSTRAINT `config_usuarios_ibfk_1` FOREIGN KEY (`user`) REFERENCES `andiazher_login` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
