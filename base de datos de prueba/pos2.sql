-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2021 a las 03:41:13
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(7, 'cortinas', '2021-08-30 02:54:47'),
(8, 'persianas', '2021-09-02 00:02:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Juan Villegas', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 27, '2021-01-12 14:16:06', '2021-01-12 19:16:06'),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 13, '2020-07-08 16:05:08', '2020-07-08 21:05:08'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 32, '2017-12-26 17:27:13', '2017-12-27 04:38:13'),
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 14, '2017-12-26 17:26:51', '2017-12-26 22:26:51'),
(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 16, '2020-09-16 17:46:01', '2020-09-16 22:46:01'),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 9, '2017-12-26 17:25:55', '2017-12-26 22:25:55'),
(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 12, '2017-12-26 17:25:33', '2017-12-26 22:25:33'),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2017-12-26 22:25:08'),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '2017-12-26 17:24:50', '2017-12-26 22:24:50'),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2017-12-27 00:30:12'),
(14, 'DORCAS TORRES', 9734750, 'maria@gmail.com', '5248169', 'Coronel suarez', '1970-05-18', 0, '2020-07-07 23:24:20', '2020-07-08 04:24:20'),
(15, 'eli', 74572258, 'eli@gmail.com', '(992) 194-4345', 'a', '2071-06-26', 1, '2021-01-12 13:59:48', '2021-01-12 18:59:48'),
(16, 'Gokuuuuuuuuuuuu', 159632478, 'wasp@hotmail.com', '(123) 123-1231', 'Ancon', '1998-12-12', 0, '0000-00-00 00:00:00', '2021-08-30 03:08:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(62, 7, '001', 'Cortina Blackout 140x250cm Rosado', 'vistas/img/productos/001/887.png', 8, 2, 2.8, 2, '2021-09-02 00:04:17'),
(63, 8, 'm002', 'Persiana horizontal PVC Blanco 140x165cm', 'vistas/img/productos/m002/734.png', 5, 10, 14, 1, '2021-09-02 00:03:17'),
(64, 7, 'm003', 'Cortina de tela Azul Oscuro 140x250cm', 'vistas/img/productos/m003/533.png', 12, 2, 2.8, 2, '2021-09-02 00:03:44'),
(65, 8, 'b001', 'Persiana horizontal PVC Gris 160x165cm', 'vistas/img/productos/b001/310.png', 0, 50, 70, 5, '2021-09-02 00:02:58'),
(66, 8, 'm002', 'Persiana horizontal PVC Blanco 140x165cm', 'vistas/img/productos/m002/734.png', 5, 10, 14, 7, '2021-09-02 00:03:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2021-09-01 19:57:07', '2021-09-02 00:57:07'),
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auQhldmFjGsrgUipGlmQgDAcqevQZSAAC', 'Almacenero', 'vistas/img/usuarios/julio/100.png', 1, '2018-02-06 17:09:22', '2021-09-02 00:08:22'),
(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2017-12-26 19:21:40', '2017-12-27 00:21:40'),
(61, 'Angel Revolledo', 'angelfernando', '$2a$07$asxx54ahjppf45sd87a5auo2PKbnJR95sPJT4j4c3weFypSDGf0Wi', 'Vendedor', 'vistas/img/usuarios/angelfernando/211.png', 1, '2020-06-26 16:20:25', '2020-06-26 21:20:25'),
(62, 'Camila Torres', 'camila', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', '', 1, '2020-09-16 17:12:27', '2020-09-16 22:12:27'),
(63, 'Angel', 'toto', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Almacenero', '', 1, '0000-00-00 00:00:00', '2021-09-02 00:08:09'),
(64, 'camila torres', 'camilita', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Almacenero', '', 1, '2021-01-25 00:21:54', '2021-09-02 00:07:53'),
(65, 'marco', '02', '$2a$07$asxx54ahjppf45sd87a5autK1aqIRW8upSLXe25wMe1f9rHp/35S6', 'Administrador', '', 1, '0000-00-00 00:00:00', '2021-01-26 04:19:20'),
(66, 'Camila Torres', 'asdasd', '$2a$07$asxx54ahjppf45sd87a5auGjbJUQzP/MOs.sG5jB2I2eTDS12jP8y', 'Administrador', '', 0, '0000-00-00 00:00:00', '2021-09-01 23:44:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(43, 10001, 3, 1, '[{\"id\":\"64\",\"descripcion\":\"nastiflu\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"2.8\",\"total\":\"2.8\"},{\"id\":\"63\",\"descripcion\":\"paracetamol\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"4\",\"total\":\"4\"},{\"id\":\"62\",\"descripcion\":\"panadol\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"2.8\",\"total\":\"2.8\"}]', 0.096, 9.6, 9.696, 'TD-01', '2020-09-16 20:52:25'),
(44, 10002, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"maquillaje\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"65\",\"descripcion\":\"perfume esika\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"70\",\"total\":\"70\"}]', 0.84, 84, 84.84, 'Efectivo', '2020-09-16 20:53:02'),
(45, 10003, 3, 1, '[{\"id\":\"65\",\"descripcion\":\"perfume esika\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"70\",\"total\":\"70\"}]', 0, 70, 70, 'Efectivo', '2020-09-16 20:55:04'),
(46, 10004, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"maquillaje\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"65\",\"descripcion\":\"perfume esika\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"70\",\"total\":\"70\"}]', 0, 84, 84, 'Efectivo', '2020-09-16 21:06:43'),
(47, 10005, 7, 1, '[{\"id\":\"66\",\"descripcion\":\"maquillaje\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"65\",\"descripcion\":\"perfume esika\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"70\",\"total\":\"70\"}]', 0, 84, 84, 'Efectivo', '2020-09-16 22:46:01'),
(48, 10006, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"maquillaje\",\"cantidad\":\"2\",\"stock\":\"7\",\"precio\":\"14\",\"total\":\"28\"},{\"id\":\"65\",\"descripcion\":\"perfume esika\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"70\",\"total\":\"70\"},{\"id\":\"64\",\"descripcion\":\"nastiflu\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"2.8\",\"total\":\"2.8\"}]', 1.008, 100.8, 101.808, 'Efectivo', '2021-01-12 18:21:41'),
(49, 10007, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"maquillaje\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"14\",\"total\":\"14\"}]', 0, 14, 14, '', '2021-01-12 18:22:09'),
(50, 10008, 15, 1, '[{\"id\":\"66\",\"descripcion\":\"maquillaje\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"14\",\"total\":\"14\"}]', 0, 14, 14, 'Efectivo', '2021-01-12 18:59:48'),
(51, 10009, 3, 1, '[{\"id\":\"62\",\"descripcion\":\"panadol\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"2.8\",\"total\":\"2.8\"}]', 0, 2.8, 2.8, 'Efectivo', '2021-01-12 19:16:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
