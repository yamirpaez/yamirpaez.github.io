-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2023 a las 22:57:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `dni` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estatus` tinyint(4) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_modifica` datetime DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `email`, `telefono`, `dni`, `estatus`, `fecha_alta`, `fecha_modifica`, `fecha_baja`) VALUES
(1, 'yamir', 'paez', 'yamireze@hotmail.es', '66666666666', '1234567', 1, '2023-04-19 01:42:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_cliente` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `id_transaccion`, `fecha`, `status`, `correo`, `id_cliente`, `total`) VALUES
(1, '2AW656100T9736202', '2023-04-14 14:01:34', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '225.00'),
(2, '81M88379KS854332V', '2023-04-14 21:37:19', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '250.00'),
(3, '7M024865FY162183H', '2023-04-14 21:38:14', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '250.00'),
(4, '2EF35611GB716382M', '2023-04-14 21:41:48', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '250.00'),
(5, '3XT87616F8891113R', '2023-04-14 21:43:22', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '250.00'),
(6, '7UK753132T648314F', '2023-04-14 21:53:39', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '250.00'),
(7, '4VT36745VN437710N', '2023-04-14 23:14:39', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '250.00'),
(8, '3G471661767780428', '2023-04-14 23:34:49', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '225.00'),
(9, '2P369589WW2541811', '2023-04-14 23:38:16', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '450.00'),
(10, '81325146AY036714J', '2023-04-14 23:46:05', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '225.00'),
(11, '62H96499FW2584511', '2023-04-14 23:48:10', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '225.00'),
(12, '14B622073N912421S', '2023-04-14 23:49:45', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '225.00'),
(13, '34051348RB2407905', '2023-04-15 00:38:26', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '950.00'),
(14, '6KB68396A64697904', '2023-04-15 00:59:49', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '900.00'),
(15, '1YA88440K82668358', '2023-04-15 01:06:22', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '225.00'),
(16, '7T824356HB802292C', '2023-04-16 23:44:04', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '575.00'),
(17, '02H28943DB713603D', '2023-04-17 00:07:13', 'COMPLETED', 'yamireze@hotmail.es', '8LQGZ2EWV4X2Q', '225.00'),
(18, '7HF84993NX5795250', '2023-04-18 21:47:29', 'COMPLETED', 'sb-5osgb25292836@personal.example.com', 'RJQVFCUTGPJCC', '450.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id`, `id_compra`, `id_producto`, `nombre`, `precio`, `cantidad`) VALUES
(1, 1, 1, 'camisa tie dye arcoiris', '225.00', 1),
(2, 2, 2, 'Sudadera Tie dye', '250.00', 1),
(3, 3, 2, 'Sudadera Tie dye', '250.00', 1),
(4, 4, 2, 'Sudadera Tie dye', '250.00', 1),
(5, 5, 2, 'Sudadera Tie dye', '250.00', 1),
(6, 6, 2, 'Sudadera Tie dye', '250.00', 1),
(7, 7, 2, 'Sudadera Tie dye', '250.00', 1),
(8, 8, 1, 'camisa tie dye arcoiris', '225.00', 1),
(9, 9, 1, 'camisa tie dye arcoiris', '225.00', 2),
(10, 10, 1, 'camisa tie dye arcoiris', '225.00', 1),
(11, 11, 1, 'camisa tie dye arcoiris', '225.00', 1),
(12, 12, 1, 'camisa tie dye arcoiris', '225.00', 1),
(13, 13, 2, 'Sudadera Tie dye', '250.00', 2),
(14, 13, 1, 'camisa tie dye arcoiris', '225.00', 2),
(15, 14, 1, 'camisa tie dye arcoiris', '225.00', 4),
(16, 15, 1, 'camisa tie dye arcoiris', '225.00', 1),
(17, 16, 1, 'camisa tie dye arcoiris', '225.00', 1),
(18, 16, 3, 'Crop top Tie dye Arcoiris', '100.00', 1),
(19, 16, 5, 'Camisa Tie dye', '250.00', 1),
(20, 17, 1, 'camisa tie dye arcoiris', '225.00', 1),
(21, 18, 1, 'camisa tie dye arcoiris', '225.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` tinyint(3) NOT NULL DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `descuento`, `id_categoria`, `activo`) VALUES
(1, 'camisa tie dye arcoiris', '<p>camisa tie dye arcoíris</p>\r\n\r\n<b>Características:</b><br>\r\nMarca: Fresh Yam <br>\r\n\r\nColección: Primavera-Verano 2023 <br>\r\n\r\nColor: Arcoíris <br>\r\nMaterial: Algodon 100% biodegradable <br>', '250.00', 10, 1, 1),
(2, 'Sudadera Tie dye', '<p>Sudadera Tie dye</p>\r\n\r\n<b>Caracteristicas:</b><br>\r\nMarca: Fresh Yam <br>\r\n\r\nColeccion: Primevera-Verano 2023 <br>\r\n\r\nColor: verde, Morado y Amarillo <br>\r\nMaterial: Algodon 100% biodegradable <br>\r\n', '250.00', 0, 1, 1),
(3, 'Crop top Tie dye Arcoiris', '<p>Crop top Tie dye Arcoiris</p>\r\n\r\n<b>Caracteristicas:</b><br>\r\nMarca: Fresh Yam <br>\r\n\r\nColeccion: Primevera-Verano 2023 <br>\r\n\r\nColor: Arcoíris <br>\r\nMaterial: Algodon 100% biodegradable<br>', '100.00', 0, 1, 1),
(4, 'Camisa Tie dye', '<p>Camisa Tie dye</p>\r\n\r\n<b>Caracteristicas:</b><br>\r\nMarca: Fresh Yam <br>\r\n\r\nColeccion: Primevera-Verano 2023 <br>\r\n\r\nColor: Arcoiris <br>\r\nMaterial: Algodon 100% biodegradable <br>', '250.00', 0, 1, 1),
(5, 'Camisa Tie dye', '<p>Camisa Tie dye</p>\r\n\r\n<b>Caracteristicas:</b><br>\r\nMarca: Fresh Yam <br>\r\n\r\nColeccion: Primevera-Verano 2023 <br>\r\n\r\nColor: rosa con azul <br>\r\nMaterial: Algodon 100% biodegradable<br>', '250.00', 0, 1, 1),
(6, 'Camisa Little Funky', '<p>Camisa Little Funky </p>\r\n\r\n<b>Caracteristicas:</b><br>\r\nMarca: Fresh Yam <br>\r\n\r\nColeccion: Primevera-Verano 2023 <br>\r\n\r\nColor: blanco y negra <br>\r\nMaterial: Algodon <br>', '250.00', 0, 1, 1),
(1111, 'aaaa', 'aaaa', '111.00', 12, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL,
  `activacion` int(40) NOT NULL DEFAULT 0,
  `token` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `token_password` varchar(40) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `password_request` int(11) NOT NULL DEFAULT 0,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `activacion`, `token`, `token_password`, `password_request`, `id_cliente`) VALUES
(1, 'yamir', '$2y$10$/Wlf/cWydw/di4QOQoh7l.8AL/LvmkOs4erFqVmxkfsmu8zjDHArS', 1, '', NULL, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
