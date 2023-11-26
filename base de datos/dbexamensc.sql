-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2023 a las 21:03:30
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
-- Base de datos: `dbexamensc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `caracteristicas` varchar(200) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `precioalquiler` decimal(6,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id`, `nombre`, `direccion`, `caracteristicas`, `estado`, `precioalquiler`, `created_at`, `update_at`) VALUES
(1, 'Habitacion Individual', 'Elias Aguirre 1198', 'habitaciones para no fumadores, salón compartido, WiFi gratuita en todas las instalaciones ', '1', 380.00, '2023-11-23 00:53:47', '2023-11-26 19:32:11'),
(7, 'habitaciones dobles', 'Los gorriones 345', 'habitaciones para no fumadores, salón compartido, WiFi gratuita en todas las instalaciones ', '0', 350.00, '2023-11-23 16:46:01', '2023-11-26 19:32:19'),
(8, 'Habitacion duplex', 'Calle Tacna 360', 'Amplio para dos personas', '0', 420.00, '2023-11-23 16:47:32', '2023-11-26 19:32:27'),
(9, 'Habitación triple', 'Calle Alfonso Ugarte 123', 'Ambueblado', '1', 350.00, '2023-11-26 18:29:43', '2023-11-26 18:29:43'),
(12, 'Habitacion Quad', 'Calle Tacna 360', 'Asignada a cuatro personas', '1', 350.00, '2023-11-26 19:03:52', '2023-11-26 19:04:10'),
(18, 'Habitacion Queen', 'Urbanizacion Pedralbes 287 ', 'Calefacción individual (si no hay calefacción central), Luces, Cama con sábana, Dos sillas y escritorio.', '1', 400.00, '2023-11-26 19:56:22', '2023-11-26 19:56:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
