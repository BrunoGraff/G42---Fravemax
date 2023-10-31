-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2023 a las 19:33:11
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fravemax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `dni`, `apellido`, `nombre`, `domicilio`, `telefono`) VALUES
(1, 12778998, 'lopez', 'carlos', 'paredes 133', '1151448756'),
(2, 30554485, 'martinez', 'francisco', 'terrada 250', '2923669988'),
(3, 29552321, 'sanchez', 'miriam', 'casanova 330', '2915548231'),
(4, 11111111, 'fernandez', 'sergio', 'sarmiento 748', '2914558547'),
(5, 39584566, 'iriarte', 'alberto', 'av alem 1132', '2932887541'),
(6, 16958745, 'blanco', 'laura', 'caronti 965', '1145785563'),
(7, 22222222, 'iglesias', 'gladis', 'vieytes 2640', '2234158876'),
(8, 33584752, 'prada', 'sebastian', 'alsina 2130', '1156554123'),
(9, 33333333, 'gonzalez', 'matias', 'maipu 334', '2234569854'),
(10, 8336541, 'lang', 'claudio', '12 de octubre 784', '2914563698'),
(11, 11542774, 'blasco', 'florencia', 'rodriguez 1223', '1158441232'),
(12, 44444444, 'rolhaiser', 'matias', 'chacabuco 362', '2971542132'),
(13, 16558450, 'perez', 'laura', 'zapiola 232', '1156884452'),
(14, 17558463, 'garrido', 'alfredo', 'mitre 3680', '1165964478'),
(15, 55555555, 'ruvira', 'marcos', 'alvarado 1683', '1185487896'),
(16, 66666666, 'fuertes', 'ignacio', 'zelarrayan 1255', '2923698854'),
(17, 77777777, 'flores', 'carmen', 'estomba 642', '1169854785'),
(18, 26958774, 'ruppel', 'juan carlos', 'guemes 2360', '1158447562'),
(19, 42663154, 'caceres', 'romina', 'castelli 4120', '1187455632'),
(20, 39684514, 'schwab', 'sandra', 'beruti 3205', '2926645587'),
(21, 88888888, 'ostiz', 'pablo', 'almafuerte 962', '114585968'),
(22, 36524874, 'Alvarez', 'Ruben', 'Remedios de Escalada 336', '2915489635'),
(23, 11458632, 'gomez ', 'cristian', 'santa fe 451', '2914586312'),
(24, 99999999, 'bragado', 'rocio', 'belgrano 2850', '2915487456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `idDetalleVenta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `idVenta` int(11) NOT NULL,
  `precioVenta` double NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`idDetalleVenta`, `cantidad`, `idVenta`, `precioVenta`, `idProducto`) VALUES
(1, 2, 1, 154800, 1),
(2, 1, 2, 86000, 1),
(3, 1, 3, 598000, 3),
(9, 1, 4, 538200, 3),
(10, 1, 5, 178200, 4),
(11, 1, 5, 18900, 12),
(12, 1, 7, 34200, 37),
(13, 1, 7, 99000, 36),
(14, 1, 9, 162000, 9),
(15, 1, 9, 99000, 14),
(16, 2, 12, 64000, 40),
(17, 1, 12, 86000, 21),
(18, 1, 12, 18000, 20),
(19, 1, 11, 117000, 25),
(20, 1, 11, 58500, 30),
(21, 1, 14, 67500, 27),
(22, 1, 15, 360000, 33),
(23, 1, 15, 620000, 31),
(24, 1, 16, 295000, 7),
(25, 1, 17, 370000, 28),
(26, 1, 18, 94500, 11),
(27, 1, 18, 88200, 17),
(28, 1, 19, 538200, 3),
(29, 1, 10, 110000, 14),
(30, 1, 10, 75000, 15),
(31, 1, 13, 31500, 18),
(32, 1, 13, 77400, 21),
(33, 1, 8, 16200, 20),
(34, 1, 8, 77400, 21),
(35, 1, 8, 13500, 22),
(36, 1, 6, 620000, 31),
(37, 1, 20, 84600, 24),
(38, 1, 20, 58500, 30),
(39, 1, 21, 85500, 16),
(40, 1, 21, 31500, 18),
(41, 1, 23, 184500, 10),
(42, 1, 23, 85500, 16),
(43, 1, 22, 58500, 30),
(44, 1, 24, 160200, 8),
(45, 1, 26, 88200, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(60) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precioActual` double NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `descripcion`, `precioActual`, `stock`, `estado`) VALUES
(1, 'televisor 42\'', 'samsung', 86000, 7, 1),
(2, 'televisor 55\'', 'samsung oled', 365000, 5, 1),
(3, 'televisor 65\'', 'samsung oled', 598000, 4, 1),
(4, 'heladera 277 lts', 'drean c/freezer', 198000, 9, 1),
(5, 'heladera 396 lts', 'drean c/freezer', 325000, 10, 1),
(6, 'freezer 250 lts', 'gafa', 220000, 6, 1),
(7, 'freezer 325 lts', 'gafa', 295000, 11, 1),
(8, 'cocina multigas', 'florencia 56cm', 178000, 15, 1),
(9, 'cocina gas natural', 'escorial 51 cm', 180000, 7, 1),
(10, 'cocina electrica', 'peabody 53 cm', 205000, 11, 1),
(11, 'anafe a gas', 'florencia negro', 105000, 11, 1),
(12, 'anafe electrico', 'liliana ', 21000, 24, 1),
(13, 'campana spar', 'stilo', 152000, 10, 1),
(14, 'campana extractor', 'liliana ', 110000, 10, 1),
(15, 'cafetera de filtro', 'philips hd7767/00', 75000, 15, 1),
(16, 'cafetera nepresso', 'essenza mini', 95000, 6, 1),
(17, 'cafetera dolce', 'dolce gusto piccolo', 98000, 7, 1),
(18, 'tostadora', 'atma ', 35000, 14, 1),
(19, 'mixer', 'peabody', 36000, 17, 1),
(20, 'licuadora', 'liliana ', 18000, 16, 1),
(21, 'procesadora', 'philips 8 en 1', 86000, 10, 1),
(22, 'pava electrica', 'atma 1.7 tls', 15000, 19, 1),
(23, 'juguera', 'philips hr1855', 90000, 8, 1),
(24, 'microondas 20 tls', 'atma mr1720n', 94000, 9, 1),
(25, 'microondas 28 tls', 'atma md1828gn', 130000, 11, 1),
(26, 'sandwichera', 'peabody pe-sw6141', 28000, 18, 1),
(27, 'lavarropa semi', 'patrick 5 kg', 75000, 11, 1),
(28, 'lavarropa auto frontal', 'drean 8kg inverter', 370000, 15, 1),
(29, 'lavarropa auto superior', 'drean 6kg gold 10.6', 450000, 10, 1),
(30, 'secarropas', 'centrifugo codini', 65000, 9, 1),
(31, 'lavavajilla ', 'whirlpool 14c', 620000, 6, 1),
(32, 'aire acond 3000f', 'likon 3450w', 480000, 22, 1),
(33, 'aire acond 2300f', 'bgh spli', 360000, 15, 1),
(34, 'aire acond portatil', 'philco 3000f', 420000, 10, 1),
(35, 'calefactor 4700k', 'eskabe tiro balanceado', 180000, 16, 1),
(36, 'calefactor 3000k', 'eskabe sin salida', 110000, 17, 1),
(37, 'caloventor', 'liliana electrico', 38000, 15, 1),
(38, 'aspiradora ', 'gamma 1000w', 50000, 20, 1),
(39, 'plancha', 'atma a vapor', 20000, 18, 1),
(40, 'telefono inalambrico', 'philips d1311b', 32000, 18, 1),
(41, 'telefono fijo', 'noblex', 8000, 20, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `fechaVenta` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `idCliente`, `fechaVenta`, `estado`) VALUES
(1, 7, '2023-10-23', 1),
(2, 9, '2023-10-23', 1),
(3, 8, '2023-10-24', 1),
(4, 9, '2023-10-28', 1),
(5, 10, '2023-10-16', 1),
(6, 1, '2023-10-17', 1),
(7, 13, '2023-10-17', 1),
(8, 7, '2023-10-18', 1),
(9, 18, '2023-10-18', 1),
(10, 3, '2023-10-18', 1),
(11, 9, '2023-10-19', 1),
(12, 8, '2023-10-19', 1),
(13, 22, '2023-10-20', 1),
(14, 5, '2023-10-20', 1),
(15, 20, '2023-10-20', 1),
(16, 19, '2023-10-20', 1),
(17, 15, '2023-10-25', 1),
(18, 17, '2023-10-25', 1),
(19, 21, '2023-10-25', 1),
(20, 4, '2023-10-28', 1),
(21, 17, '2023-10-28', 1),
(22, 19, '2023-10-30', 1),
(23, 2, '2023-10-30', 1),
(24, 2, '2023-10-30', 1),
(25, 17, '2023-10-30', 0),
(26, 15, '2023-10-30', 1),
(27, 15, '2023-10-30', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`idDetalleVenta`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `detalleventa_ibfk_2` (`idVenta`),
  ADD KEY `idDetalleVenta` (`idDetalleVenta`),
  ADD KEY `idDetalleVenta_2` (`idDetalleVenta`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `venta_ibfk_1` (`idCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `idDetalleVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
