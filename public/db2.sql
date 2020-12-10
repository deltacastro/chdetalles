-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-12-2020 a las 22:16:30
-- Versión del servidor: 5.6.48-88.0
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tobemx_services`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `idchat` int(11) NOT NULL,
  `idservice` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `tipoarchivo` text,
  `texto` text,
  `url` text,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`idchat`, `idservice`, `iduser`, `tipoarchivo`, `texto`, `url`, `fecha`) VALUES
(1, 1, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 13:32:42'),
(2, 1, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 13:32:47'),
(3, 1, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 13:32:54'),
(4, 1, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 13:33:05'),
(5, 1, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 13:34:08'),
(6, 1, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 13:34:37'),
(7, 1, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 13:34:57'),
(8, 1, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 13:35:42'),
(9, 1, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 13:36:20'),
(10, 1, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 13:46:29'),
(11, 1, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 13:58:05'),
(12, 1, 107, 'texto', 'ok enterado', '', '2020-12-03 13:58:57'),
(13, 1, 106, 'audio', '', 'tixhr566911462.mp4', '2020-12-03 14:01:25'),
(14, 1, 106, 'audio', '', 'tixhr1242664236.mp4', '2020-12-03 14:04:11'),
(15, 1, 106, 'audio', '', 'tixhr1801397781.mp4', '2020-12-03 14:25:36'),
(16, 1, 106, 'audio', '', 'tixhr2051402224.mp4', '2020-12-03 14:26:04'),
(17, 1, 107, 'audio', '', '', '2020-12-03 14:30:22'),
(18, 1, 106, 'texto', 'ok', '', '2020-12-03 14:37:35'),
(19, 1, 106, 'texto', 'gracias', '', '2020-12-03 14:37:47'),
(20, 1, 107, 'texto', 'ok', '', '2020-12-03 14:38:03'),
(21, 1, 106, 'texto', 'bien', '', '2020-12-03 14:38:12'),
(22, 1, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 14:38:28'),
(23, 1, 107, 'imagen', 'ok', 'tixhr9089128815479042608.jpg', '2020-12-03 14:47:29'),
(24, 1, 107, 'imagen', '', 'tixhr2910181297574975487.jpg', '2020-12-03 14:47:47'),
(25, 2, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 14:55:05'),
(26, 2, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 14:55:50'),
(27, 2, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 14:56:29'),
(28, 2, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 14:57:23'),
(29, 2, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 14:57:30'),
(30, 2, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 14:57:38'),
(31, 2, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 14:57:46'),
(32, 2, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 14:57:55'),
(33, 2, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 15:00:39'),
(34, 2, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 15:00:59'),
(35, 2, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 15:01:12'),
(36, 2, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 15:01:54'),
(37, 3, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 15:02:12'),
(38, 3, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 15:02:15'),
(39, 3, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 15:02:18'),
(40, 3, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 15:02:31'),
(41, 3, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 15:02:37'),
(42, 3, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 15:02:53'),
(43, 3, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 15:02:57'),
(44, 3, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 15:03:05'),
(45, 3, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 15:05:41'),
(46, 3, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 15:06:00'),
(47, 3, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 15:06:13'),
(48, 3, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 15:06:18'),
(49, 3, 107, 'texto', 'gracias por el servicio', '', '2020-12-03 15:08:41'),
(50, 3, 107, 'imagen', '', 'tixhr49038951443216190.jpg', '2020-12-03 15:09:13'),
(51, 4, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 15:48:37'),
(52, 4, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 15:48:46'),
(53, 4, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 15:48:49'),
(54, 4, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 15:49:01'),
(55, 4, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 15:49:13'),
(56, 4, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 15:49:22'),
(57, 4, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 15:49:30'),
(58, 4, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 15:49:47'),
(59, 4, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 15:55:05'),
(60, 4, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 15:55:14'),
(61, 4, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 15:55:23'),
(62, 4, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 15:55:42'),
(63, 5, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 17:50:45'),
(64, 5, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 17:51:25'),
(65, 5, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 17:51:45'),
(66, 5, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 17:52:05'),
(67, 5, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 17:52:45'),
(68, 5, 107, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 17:53:16'),
(69, 5, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 17:54:37'),
(70, 5, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 17:54:47'),
(71, 5, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 17:55:40'),
(72, 5, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 17:56:16'),
(73, 5, 107, 'texto', 'Ok', '', '2020-12-03 17:56:23'),
(74, 5, 107, 'imagen', 'Busca esto porfa', '01607039817.png', '2020-12-03 17:57:15'),
(75, 5, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 17:57:32'),
(76, 5, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 17:57:42'),
(77, 6, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 18:12:03'),
(78, 6, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 18:12:10'),
(79, 6, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 18:13:04'),
(80, 6, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 18:13:15'),
(81, 6, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 18:13:29'),
(82, 6, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 18:13:38'),
(83, 6, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 18:14:57'),
(84, 6, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 18:15:13'),
(85, 6, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 18:16:57'),
(86, 6, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 18:37:07'),
(87, 6, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 18:37:20'),
(88, 6, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 18:37:31'),
(89, 7, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 18:41:49'),
(90, 7, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 18:41:56'),
(91, 7, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 18:42:01'),
(92, 7, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 18:44:05'),
(93, 7, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 19:57:50'),
(94, 7, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 19:57:56'),
(95, 7, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 19:58:30'),
(96, 7, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 20:13:30'),
(97, 8, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-03 20:47:50'),
(98, 8, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-03 20:47:55'),
(99, 8, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-03 20:48:03'),
(100, 8, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-03 20:48:23'),
(101, 8, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-03 20:48:32'),
(102, 8, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-03 20:48:41'),
(103, 8, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-03 20:48:54'),
(104, 8, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-03 20:49:01'),
(105, 8, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 20:50:11'),
(106, 8, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 20:50:23'),
(107, 8, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 20:50:31'),
(108, 8, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 20:52:18'),
(109, 8, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 20:52:20'),
(110, 7, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-03 20:53:50'),
(111, 7, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-03 20:54:18'),
(112, 7, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-03 20:54:35'),
(113, 7, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-03 20:54:44'),
(114, 9, 115, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-04 16:42:11'),
(115, 13, 107, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-04 16:42:24'),
(116, 10, 113, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-04 16:42:34'),
(117, 12, 116, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-04 16:42:35'),
(118, 11, 114, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-04 16:42:37'),
(119, 14, 112, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-04 16:42:39'),
(120, 11, 114, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-04 16:42:47'),
(121, 13, 107, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-04 16:42:48'),
(122, 9, 115, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-04 16:43:07'),
(123, 13, 107, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-04 16:43:09'),
(124, 11, 114, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-04 16:43:09'),
(125, 9, 115, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-04 16:43:12'),
(126, 14, 112, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-04 16:43:18'),
(127, 10, 113, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-04 16:43:19'),
(128, 14, 112, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-04 16:43:42'),
(129, 10, 113, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-04 16:43:45'),
(130, 12, 116, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-04 16:43:55'),
(131, 11, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-04 16:43:58'),
(132, 12, 116, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-04 16:44:00'),
(133, 14, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-04 16:44:17'),
(134, 13, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-04 16:44:34'),
(135, 12, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-04 16:44:46'),
(136, 10, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-04 16:45:03'),
(137, 9, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-04 16:45:14'),
(138, 9, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-04 16:45:25'),
(139, 10, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-04 16:45:30'),
(140, 11, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-04 16:45:35'),
(141, 12, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-04 16:45:48'),
(142, 13, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-04 16:45:59'),
(143, 14, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-04 16:46:12'),
(144, 14, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-04 16:46:20'),
(145, 13, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-04 16:46:45'),
(146, 12, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-04 16:46:56'),
(147, 11, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-04 16:47:12'),
(148, 10, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-04 16:47:24'),
(149, 9, 115, 'texto', 'oie necesito que ya estés aqui', '', '2020-12-04 16:47:26'),
(150, 9, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-04 16:47:40'),
(151, 14, 112, 'texto', 'hola', '', '2020-12-04 16:47:53'),
(152, 14, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-04 16:47:55'),
(153, 10, 113, 'texto', 'Se olvido, productos de refrigeración', '', '2020-12-04 16:48:15'),
(154, 13, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-04 17:05:16'),
(155, 12, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-04 17:05:49'),
(156, 11, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-04 17:06:05'),
(157, 10, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-04 17:06:22'),
(158, 9, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-04 17:06:35'),
(159, 14, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-04 17:15:23'),
(160, 14, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-04 17:16:04'),
(161, 13, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-04 17:16:41'),
(162, 13, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-04 17:17:11'),
(163, 13, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-04 17:17:25'),
(164, 14, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-04 17:17:33'),
(165, 10, 106, 'texto', 'este pedido no me marca ruta', '', '2020-12-04 17:19:00'),
(166, 10, 111, 'texto', 'en cual', '', '2020-12-04 17:19:29'),
(167, 10, 111, 'texto', 'si , es porque no seleccionaron ninguno de lo que daba google como.tal', '', '2020-12-04 17:20:05'),
(168, 10, 111, 'texto', 'solo quedo como texto, pero como no se seleccionó de las opciones que te da google,.no cuenta con una latitud ni longitud', '', '2020-12-04 17:20:47'),
(169, 10, 111, 'imagen', 'no selecciono nada', 'tixhr1409632192.jpg', '2020-12-04 17:23:45'),
(170, 10, 111, 'imagen', 'esta es la.direccion que tira google', 'tixhr1729471141.jpg', '2020-12-04 17:24:13'),
(171, 10, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-04 17:27:03'),
(172, 10, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-04 17:27:31'),
(173, 10, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-04 17:27:38'),
(174, 10, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-04 17:41:40'),
(175, 10, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-04 17:41:53'),
(176, 14, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-04 17:42:16'),
(177, 13, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-04 17:42:32'),
(178, 12, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-04 17:42:47'),
(179, 11, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-04 17:43:01'),
(180, 11, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-04 17:43:25'),
(181, 11, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-04 17:43:32'),
(182, 11, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-04 17:44:11'),
(183, 9, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-04 17:44:33'),
(184, 9, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-04 17:45:39'),
(185, 9, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-04 17:45:48'),
(186, 9, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-04 17:46:23'),
(187, 12, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-04 17:46:51'),
(188, 12, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-04 17:47:06'),
(189, 12, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-04 17:48:03'),
(190, 12, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-04 17:48:10'),
(191, 14, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-04 17:53:27'),
(192, 13, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-04 17:53:40'),
(193, 16, 115, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-04 18:03:46'),
(194, 16, 115, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-04 18:03:51'),
(195, 16, 115, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-04 18:03:55'),
(196, 16, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-04 18:04:05'),
(197, 16, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-04 18:04:12'),
(198, 16, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-04 18:04:21'),
(199, 16, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-04 18:04:32'),
(200, 16, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-04 18:04:48'),
(201, 16, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-04 18:06:14'),
(202, 16, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-04 18:06:31'),
(203, 16, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-04 18:06:44'),
(204, 16, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-04 18:06:52'),
(205, 15, 107, 'texto', 'PEDIDO CANCELADO', '', '2020-12-04 18:07:44'),
(206, 17, 110, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-05 11:08:11'),
(207, 17, 110, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-05 11:08:23'),
(208, 17, 110, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-05 11:08:58'),
(209, 17, 109, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-05 11:09:10'),
(210, 17, 109, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-05 11:09:27'),
(211, 17, 109, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-05 11:09:38'),
(212, 17, 109, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-05 11:09:50'),
(213, 17, 109, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-05 11:10:01'),
(214, 17, 109, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-05 11:10:45'),
(215, 17, 109, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-05 11:10:55'),
(216, 17, 109, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-05 11:11:04'),
(217, 17, 109, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-05 11:11:14'),
(218, 18, 110, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-05 11:21:17'),
(219, 18, 110, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-05 11:21:24'),
(220, 18, 110, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-05 11:21:34'),
(221, 18, 109, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-05 11:21:55'),
(222, 18, 109, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-05 11:22:06'),
(223, 18, 109, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-05 11:22:14'),
(224, 18, 109, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-05 11:22:22'),
(225, 18, 109, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-05 11:33:09'),
(226, 18, 109, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-05 11:33:45'),
(227, 18, 109, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-05 11:33:54'),
(228, 18, 109, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-05 11:34:03'),
(229, 18, 109, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-05 11:34:17'),
(230, 19, 150, 'texto', 'PEDIDO EN PROCESO DE SURTIDO', '', '2020-12-09 11:52:30'),
(231, 19, 150, 'texto', 'PEDIDO EN PROCESO DE COBRO', '', '2020-12-09 11:52:42'),
(232, 19, 150, 'texto', 'PEDIDO LISTO PARA ENVIO', '', '2020-12-09 11:52:59'),
(233, 19, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-09 11:57:18'),
(234, 19, 106, 'texto', 'EN TRAYECTO A LA SUCURSAL', '', '2020-12-09 11:57:22'),
(235, 19, 106, 'texto', 'ESTOY EN SUCURSAL', '', '2020-12-09 11:57:30'),
(236, 19, 106, 'texto', 'PEDIDO RECOLECTADO', '', '2020-12-09 11:57:38'),
(237, 19, 106, 'texto', 'PEDIDO EN PROCESO DE ENTREGA', '', '2020-12-09 11:57:47'),
(238, 19, 106, 'texto', 'PEDIDO ENTREGADO AL CLIENTE', '', '2020-12-09 11:57:57'),
(239, 19, 106, 'texto', 'EVIDENCIA SUBIDA', '', '2020-12-09 11:59:05'),
(240, 19, 106, 'texto', 'REGRESANDO A SUCURSAL', '', '2020-12-09 11:59:15'),
(241, 19, 106, 'texto', 'ESTREGANDO DOCUMENTACIÓN', '', '2020-12-09 11:59:22'),
(242, 19, 106, 'texto', 'SERVICIO CONCLUIDO', '', '2020-12-09 11:59:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatusers`
--

DROP TABLE IF EXISTS `chatusers`;
CREATE TABLE `chatusers` (
  `idchatusers` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idadmin` int(11) NOT NULL,
  `tipoarchivo` text,
  `texto` text,
  `url` text,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chatusers`
--

INSERT INTO `chatusers` (`idchatusers`, `iduser`, `idadmin`, `tipoarchivo`, `texto`, `url`, `fecha`) VALUES
(1, 107, 1, 'texto', 'Hola', '', '2020-12-03 18:05:41'),
(2, 1, 107, 'texto', 'hola maria', '', '2020-12-03 18:06:02'),
(3, 106, 1, 'texto', 'ayuda', '', '2020-12-03 18:06:15'),
(4, 106, 1, 'imagen', '', 'tixhr1567775184.jpg', '2020-12-03 18:06:47'),
(5, 1, 106, 'texto', 'dime', '', '2020-12-03 18:07:13'),
(6, 1, 1, 'texto', 'ho', '', '2020-12-03 20:56:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `idstore` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `direccion` text NOT NULL,
  `referencia` text,
  `telefono` text,
  `latitude` text,
  `longitude` text,
  `disabled` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcliente`, `idstore`, `nombre`, `direccion`, `referencia`, `telefono`, `latitude`, `longitude`, `disabled`) VALUES
(1, 1, 'Marco Antonio Soliz', 'El Espejo II, Villahermosa, Tab., Mexico', 'casa azul', '9932363636', '17.9974215', '-92.9563113', 0),
(2, 1, 'Gabriela Illescas', 'Ignacio Ramírez 133, Centro Delegacion Uno, 86077 Villahermosa, Tab., Mexico', 'casa amarilla, portón blanco', '9931097715', '17.9890506', '-92.9244666', 0),
(3, 1, 'Juanita de dios', 'Río Tacotalpa 306, El Espejo II, 86109 Villahermosa, Tab., Mexico', 'casa azul', '9931258118', '17.9997087', '-92.9582698', 0),
(4, 1, 'Eduardo garcia', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Casa Blanca', '5540057226', '18.0034967', '-92.9377007', 0),
(5, 1, 'margarita', 'colorin #106 colonia petrolera', 'entre av flores', '9931556458', '0.000000', '0.000000', 0),
(6, 1, 'Juanita de dios', 'Lomas de Ocuiltzapotlán II, Fraccionamiento Ocuiltzapotlán Dos, Tab., Mexico', 'color azul', '9981235696', '18.1104992', '-92.8695567', 0),
(7, 1, 'Flor garcia', 'Calle 5, Bonanza, 86030 Villahermosa, Tab., Mexico', 'casa blanca', '9932137781', '18.0039312', '-92.9389272', 0),
(8, 1, 'humberto garcia', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'casa verde', '5565324178', '18.0034967', '-92.9377007', 0),
(9, 5, 'andres Manuel', 'Santiago de Querétaro, Qro., México', 'Casa azul', '9991245178', '20.5887932', '-100.3898881', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conf_reportes`
--

DROP TABLE IF EXISTS `conf_reportes`;
CREATE TABLE `conf_reportes` (
  `idconf_reportes` int(11) NOT NULL,
  `idstate` int(11) NOT NULL,
  `dia_corte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conf_reportes`
--

INSERT INTO `conf_reportes` (`idconf_reportes`, `idstate`, `dia_corte`) VALUES
(1, 1, 9),
(2, 2, 1),
(3, 3, 9),
(4, 4, 1),
(5, 1, 19),
(6, 3, 19),
(7, 3, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consignations`
--

DROP TABLE IF EXISTS `consignations`;
CREATE TABLE `consignations` (
  `idconsignation` int(11) NOT NULL,
  `idservices_stage` int(11) NOT NULL,
  `idstore` int(11) NOT NULL,
  `name_store` varchar(45) DEFAULT NULL,
  `status_consignation` varchar(45) DEFAULT NULL,
  `date_begin_consignation` varchar(45) DEFAULT NULL,
  `date_end_consignation` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consignations_products`
--

DROP TABLE IF EXISTS `consignations_products`;
CREATE TABLE `consignations_products` (
  `idconsignation_product` int(11) NOT NULL,
  `idconsignation` int(11) NOT NULL,
  `idstore` int(11) NOT NULL,
  `product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
  `iddevice` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `device_type` varchar(75) DEFAULT NULL,
  `device_token` text,
  `device_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `devices`
--

INSERT INTO `devices` (`iddevice`, `iduser`, `device_type`, `device_token`, `device_status`) VALUES
(1, 106, 'android', '', 0),
(2, 107, 'ios', '', 0),
(3, 1, 'android', 'czXvq5IiSHWM_r8fNwakUI:APA91bF6aQQUD0P4pibKNQb6jwGJH0ELhRSL3Fu4ykHPKbpro16yKs-TWNA4r112RvH7zmIQ9iL4c6AidsAOdldqDLoPgOhxl4DO_Iz45I0pmyB-A_KUBlLrTYDFdpAMXrQVgHiwmbYK', 0),
(4, 111, 'android', 'e7lJfx7LTWa-LFbhD10ZuN:APA91bHLKnfWWWFeZFnVlc-lLoa2LfQzxVyn2EWfsPB9F4HVFRjoa3xmVus6FEyCSY3I7qE4AJN8BhTzYr5cjTHiVr37euHihrIFnvZFyDDH72NUtnkejzFgB9FGY90b5HkNwAs6pQRB', 0),
(5, 112, 'android', 'd66bxDOtRICejJklvd_9MT:APA91bHA-710eVVKKLgqJfSHtoTt_QCcSV43GEI_3_1_3bvISVICsDCK_YQ8ufS92Q3IydNAlX30DAQoP3LC2VukvAW5S2h1s9lA1CZYmndffOkhjnMTw1VPxkdqZ2umqpnrNi5sEG1I', 0),
(6, 113, 'android', 'fNu4xV83QImUwQN3j86kQM:APA91bHNSghdufjOUYDGGUg0J7INEmYO-rHg0PyErraE-6PLnOSFjtlr10IeQqXsP8rbSakNKieKy2DcIqJpvfugv6gwKNn5BcOQEeGQ33hSPG8KwzOS3_xEo-g1WUZCRSXgajwODY2k', 0),
(7, 114, 'android', 'dkjAeSnvQ6aTlO01uOzLSQ:APA91bHAWgTYENVpGT7THtfytZFSPu0BaeYaTf6iyjrLiq4u5QkgFy-hfUFp9odcOHttnJxwP3s41eGBViyZhevngeAEBE0vhRP9klQkk6vcADX1SePj_Kj3IsSzNW3pk9WQuwysLQHq', 0),
(8, 115, 'android', '', 0),
(9, 116, 'android', 'fuf0K93GS4qva2wfbU-pSN:APA91bEUntI12xA0dk0ReaUFaby_R1MnrF3j06p_xP1tI6m3XHHbOHyA98QTlQc0jyVl9voCcf16bySCJeNTsZtK_6sNg84ApiEYVRmlCKozRpPBXnzWBw8UV1KWfg38Wr8dfv2NnseR', 0),
(10, 110, 'ios', '', 0),
(11, 109, 'android', 'f4RDJvHGTnCZmMU2tSFHZo:APA91bHstrrEy9cimfCC7uJyegxNklbTQ-OmS3tYyW3XHtERS1ZRwFDDz2S-l0xuZ_2ossstQZ1F0vy6oic0XOc2Yd0FKV3ylbS-pPME16oUznhphcNjuQxERy_1YnJ6jrv6k6NESNHv', 0),
(12, 141, 'android', '', 0),
(13, 122, 'android', 'cFP22XaUQdaayfK8bbFv18:APA91bEnz5LHky94Ys0MHc5uDessbtovgdiU0NF9TvsMB-fQGFRAYGcVsb7R37eB7bLYyKzxlm-krSvjDgO1N0pgJGKX-qo-680ICeLAHxm0HRuXEXhHERsNLOiKof2YleTZMNYs3AOj', 0),
(14, 139, 'android', 'dTluJrWTSsCG2uld6jipGL:APA91bFI2ss8WGJxGxnJEhc9nIbtyedcGuigiGQlc7IvLNhDXxZy8G2K4OTuy73OIjOEfyWNQvgkP0m3kuhvRA396hhBJAuFVgKxCN9DWvJwO3JtZfBVNf66Th2ozM6WnhjIZWxzsRDM', 0),
(15, 146, 'android', 'fKVdWUssR8aIB1eW9_89HQ:APA91bHsUzINEYl0xAyXNntO7PvbJmlI0-6KlPJTQxlgKUKP3C-kP1vdp6uclTKZhGsixcavneNa-D-mic7PCU2Bqo7ngBsi4wo4uEXRGMt2yGy5rxkGoLz9RoOKyxnRGhMWu9Kykx6g', 0),
(16, 148, 'android', 'dxVvNt_NRNuOMa0qIGx1XT:APA91bFtdJCck_BeF0vEdnFbbqX7DT9tUjBLSiADy6P_K0vGzDhZeFsDlNBpojPZk6PwktRoaUL5x6w4-Ss9HGchHE5Ngl0jtZ85qoobqTSVEW9hsb3fHcgdbvswWnzxn8whD3xBy1PQ', 0),
(17, 147, 'android', 'cnSOEIJXS6i3_iV4lB3Msl:APA91bEepe84-TfUYIzOOZzvifgcu2iw4ulofGWyKMBTFujamMLBKlRlr3XyAI4n1nonzBYQMFvb7Kb4lAqMeyh5QdR_H2PJ9YGHDDqrYP5Rfi5qJ2Hpv5Mrcnfxf5H4kQHrdgmMu2f3', 0),
(18, 143, 'android', 'eRTbSokcQsKWOBA2wYWacZ:APA91bHW7J2l5k4igLwfOTIvwrPEyofCmys0NrCjRXPCFLmj305Bw7KerACprefBfBZGpUkRc9nomYUbcyoOT_VzjpdYF4oUElPY-UF3alhpVzMruAPFj-NKl-ixOVawSadYwqwXIceH', 0),
(19, 140, 'android', 'eF4NfR6vQ_mcXT7K8LBUgu:APA91bEpH7B0iteBUwpOo00X7fz0TXgZ5HlPXra84e9PzqBzn_faZU-PqY0_XNLlftwhJCHSiB-zkjG9prHu7Q7Qg1gI_U1LBjJMlvpKoq01OU0O_vCXsWcROU6sKkQ-MTI0hVEB5fPF', 0),
(20, 145, 'android', 'fQbvpvLYQ82Xt3tYHbw5al:APA91bGWxqsNqhr7zmxIXZbeutHjKanuEQkHBr0EDZLNkeLNbwVrJQBfNMtsLeyzG_ti5KP2H4e37g09wE8Se72Ezq7iRQnPd6qUUWMEd26oA_K8N2CSOttk6OvsUVkZGA7gk6wSqIFb', 0),
(21, 150, 'android', 'ekJza6ZpQQWczMFid1Vcz4:APA91bEPTeK_YhQ0cLAqDoGQ6joTkRl4LVxEzboly8R7zYoqJZCdojKUfdrn3K4Edb2i3QBc667Piwkvu2kGoMw1_Io51SJjEtqz8ApzZbAvAViRvsJT-2hXp5S4iwjQlzmFC4qJkRkZ', 0),
(22, 144, 'android', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
CREATE TABLE `direcciones` (
  `iddireccion` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(254) NOT NULL,
  `direccion` text NOT NULL,
  `referencia` text NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`iddireccion`, `nombre`, `direccion`, `referencia`, `latitude`, `longitude`, `idcliente`) VALUES
(1, 'El Espejo II, Villahermosa, Tab., Mexico', 'El Espejo II, Villahermosa, Tab., Mexico', 'casa azul', '17.9974215', '-92.9563113', 1),
(3, 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', 'Casa gris', '17.9125724', '-92.9049239', 1),
(4, 'Ignacio Ramírez 133, Centro Delegacion Uno, 86077 Villahermosa, Tab., Mexico', 'Ignacio Ramírez 133, Centro Delegacion Uno, 86077 Villahermosa, Tab., Mexico', 'casa amarilla, portón blanco', '17.9890506', '-92.9244666', 2),
(5, 'Ignacio Ramírez 133, Centro Delegacion Uno, 86077 Villahermosa, Tab., Mexico', 'Ignacio Ramírez 133, Centro Delegacion Uno, 86077 Villahermosa, Tab., Mexico', 'casa amarilla, portón blanco', '17.9890506', '-92.9244666', 2),
(6, 'Río Tacotalpa 306, El Espejo II, 86109 Villahermosa, Tab., Mexico', 'Río Tacotalpa 306, El Espejo II, 86109 Villahermosa, Tab., Mexico', 'casa azul', '17.9997087', '-92.9582698', 3),
(7, 'Río Tacotalpa 306, El Espejo II, 86109 Villahermosa, Tab., Mexico', 'Río Tacotalpa 306, El Espejo II, 86109 Villahermosa, Tab., Mexico', 'casa azul', '17.9997087', '-92.9582698', 3),
(8, 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Casa Blanca', '18.0034967', '-92.9377007', 4),
(9, 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Casa Blanca', '18.0034967', '-92.9377007', 4),
(10, 'colorin #106 colonia petrolera', 'colorin #106 colonia petrolera', 'entre av flores', '0.000000', '0.000000', 5),
(11, 'colorin #106 colonia petrolera', 'colorin #106 colonia petrolera', 'entre av flores', '0.000000', '0.000000', 5),
(12, 'Lomas de Ocuiltzapotlán II, Fraccionamiento Ocuiltzapotlán Dos, Tab., Mexico', 'Lomas de Ocuiltzapotlán II, Fraccionamiento Ocuiltzapotlán Dos, Tab., Mexico', 'color azul', '18.1104992', '-92.8695567', 6),
(13, 'Lomas de Ocuiltzapotlán II, Fraccionamiento Ocuiltzapotlán Dos, Tab., Mexico', 'Lomas de Ocuiltzapotlán II, Fraccionamiento Ocuiltzapotlán Dos, Tab., Mexico', 'color azul', '18.1104992', '-92.8695567', 6),
(14, 'Calle 5, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Calle 5, Bonanza, 86030 Villahermosa, Tab., Mexico', 'casa blanca', '18.0039312', '-92.9389272', 7),
(15, 'Calle 5, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Calle 5, Bonanza, 86030 Villahermosa, Tab., Mexico', 'casa blanca', '18.0039312', '-92.9389272', 7),
(16, 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'casa verde', '18.0034967', '-92.9377007', 8),
(17, 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', 'casa verde', '18.0034967', '-92.9377007', 8),
(18, 'Santiago de Querétaro, Qro., México', 'Santiago de Querétaro, Qro., México', 'Casa azul', '20.5887932', '-100.3898881', 9),
(19, 'Santiago de Querétaro, Qro., México', 'Santiago de Querétaro, Qro., México', 'Casa azul', '20.5887932', '-100.3898881', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `file_incident`
--

DROP TABLE IF EXISTS `file_incident`;
CREATE TABLE `file_incident` (
  `idfile_incident` int(11) NOT NULL,
  `idincident_stage` int(11) NOT NULL,
  `name_file` text,
  `type_file` text,
  `ext_file` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `file_incident`
--

INSERT INTO `file_incident` (`idfile_incident`, `idincident_stage`, `name_file`, `type_file`, `ext_file`) VALUES
(1, 1, '1-incidencias-1.jpg', 'imagen', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history_actions`
--

DROP TABLE IF EXISTS `history_actions`;
CREATE TABLE `history_actions` (
  `idhistory_action` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `observation_action` text,
  `date_action` datetime DEFAULT NULL,
  `type_device` varchar(45) DEFAULT NULL,
  `type_action` int(11) DEFAULT NULL,
  `status_action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history_service`
--

DROP TABLE IF EXISTS `history_service`;
CREATE TABLE `history_service` (
  `idhistory_service` int(11) NOT NULL,
  `idservice` int(11) NOT NULL,
  `iduser_creator` int(11) NOT NULL,
  `iduser_driver` int(11) DEFAULT NULL,
  `folio` varchar(300) DEFAULT NULL,
  `amount` text NOT NULL,
  `idtype_payment` int(11) DEFAULT NULL,
  `idtype_service` int(11) DEFAULT NULL,
  `name_client` text,
  `address_client` text,
  `phone_client` varchar(50) DEFAULT NULL,
  `email_client` varchar(100) DEFAULT NULL,
  `reference` text,
  `status_service` int(11) DEFAULT NULL,
  `date_register` datetime NOT NULL,
  `date_close` datetime NOT NULL,
  `indications` text,
  `latitude_address` text,
  `longitude_address` text,
  `number_pedido` text,
  `idhorario` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `consignacion` varchar(254) NOT NULL,
  `iddireccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `history_service`
--

INSERT INTO `history_service` (`idhistory_service`, `idservice`, `iduser_creator`, `iduser_driver`, `folio`, `amount`, `idtype_payment`, `idtype_service`, `name_client`, `address_client`, `phone_client`, `email_client`, `reference`, `status_service`, `date_register`, `date_close`, `indications`, `latitude_address`, `longitude_address`, `number_pedido`, `idhorario`, `idcliente`, `created_at`, `consignacion`, `iddireccion`) VALUES
(1, 5, 107, 106, 'SD-000005', '250.42', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', NULL, 'Casa gris', 1, '2020-12-03 17:50:31', '0000-00-00 00:00:00', 'paga con 500', '17.9125724', '-92.9049239', NULL, 5, 1, '2020-12-03 17:53:01', '00005', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

DROP TABLE IF EXISTS `incidencias`;
CREATE TABLE `incidencias` (
  `idincidencia` int(11) NOT NULL,
  `nombre` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `incidencias`
--

INSERT INTO `incidencias` (`idincidencia`, `nombre`) VALUES
(1, 'Fuera de horario'),
(2, 'Surtido incompleto'),
(3, 'Cobro equivocado'),
(4, 'Producto dañado'),
(5, 'Producto equivocado'),
(6, 'No le llamaron al cliente para ofrecer sustituto'),
(7, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidents_stage`
--

DROP TABLE IF EXISTS `incidents_stage`;
CREATE TABLE `incidents_stage` (
  `idincident_stage` int(11) NOT NULL,
  `idservices_stage` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `description_incident` text,
  `date_incident` datetime DEFAULT NULL,
  `idincident` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `incidents_stage`
--

INSERT INTO `incidents_stage` (`idincident_stage`, `idservices_stage`, `iduser`, `description_incident`, `date_incident`, `idincident`) VALUES
(1, 11, 106, 'me comento el.cliente que no le.ofrecieron un sustituo para el pan que no se le entregó', '2020-12-03 13:48:13', 6),
(2, 75, 107, 'accidente en tal lugar', '2020-12-03 18:31:33', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `idnotification` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `status_notification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penalizaciones`
--

DROP TABLE IF EXISTS `penalizaciones`;
CREATE TABLE `penalizaciones` (
  `idpenalizacion` int(11) NOT NULL,
  `idstate` int(11) NOT NULL,
  `hora_entrega_max` time NOT NULL,
  `costo_base` float NOT NULL,
  `percent` int(11) NOT NULL,
  `km_base` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `penalizaciones`
--

INSERT INTO `penalizaciones` (`idpenalizacion`, `idstate`, `hora_entrega_max`, `costo_base`, `percent`, `km_base`) VALUES
(1, 2, '20:00:00', 30, 25, 8),
(2, 3, '20:00:00', 40, 0, 0),
(3, 1, '20:00:00', 30, 0, 0),
(5, 4, '20:00:00', 50, 30, 8),
(6, 6, '20:00:00', 30, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peoples`
--

DROP TABLE IF EXISTS `peoples`;
CREATE TABLE `peoples` (
  `idpeople` int(11) NOT NULL,
  `name` text,
  `lastname` text,
  `fullname` text,
  `email` text,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `peoples`
--

INSERT INTO `peoples` (`idpeople`, `name`, `lastname`, `fullname`, `email`, `phone`) VALUES
(1, 'Agencia', 'Tobe', 'Agencia Tobe', 'agencia@tobe.mx', '12345678'),
(116, 'Jose', 'Perez', 'Jose Perez', 'jperez@gmail.com', '1458575'),
(117, 'Maria', 'Carrillo', 'Maria Carrillo', 'mcarrillo@gmail.com', '455854654'),
(118, 'arturo', 'ramirez', 'arturo ramirez', 'aramirez@gmail.com', '1231212312'),
(119, 'Carlos', 'Madrazo', 'Carlos Madrazo', 'cmadrazo@gmail.com', '4654654645'),
(120, 'Julia', 'Castillo', 'Julia Castillo', 'jcastillo@gmail.com', '4568751'),
(121, 'jonathan', 'orlaineta', 'jonathan orlaineta', 'jonathan.orlaineta@gmail.com', '9931570586'),
(122, 'Roberto', 'Ramirez', 'Roberto Ramirez', 'rramirez@gmail.com', '145455645'),
(123, 'Consuelo', 'Lopez', 'Consuelo Lopez', 'clopez@gmail.com', '4545456'),
(124, 'karla', 'Gutierrez', 'karla Gutierrez', 'kgutierrez@gmail.com', '123123'),
(125, 'Humberto', 'Moscoso', 'Humberto Moscoso', 'hmoscoso@gmail.com', '12312312'),
(126, 'Luis', 'Hernadez', 'Luis Hernadez', 'lhdz@gmail.com', '1234123'),
(127, 'Missael', 'Jimenez Lozano', 'Missael Jimenez Lozano', 'noemail@test.com', '0000000'),
(128, 'Sandra Athenea', 'Santiago Urbina', 'Sandra Athenea Santiago Urbina', 'noemail2@test.com', '0000000'),
(129, 'Gabriela', 'Illescas Perez', 'Gabriela Illescas Perez', 'noemail3@test.com', '000000'),
(130, 'Edgar Antonio', 'Amaro Luna', 'Edgar Antonio Amaro Luna', 'edamlu@test.com', '000000'),
(131, 'Carlos', 'Peña Corzo', 'Carlos Peña Corzo', 'carpeco@test.com', '0000000'),
(132, 'Karen Nahí', 'Abreu Hernández', 'Karen Nahí Abreu Hernández', 'karabher@test.com', '000000'),
(133, 'Yuri Giovanna', 'Ventura Gómez', 'Yuri Giovanna Ventura Gómez', 'yuvengo@test.com', '0000000'),
(134, 'Carlos Alberto', 'Pacheco Rivera', 'Carlos Alberto Pacheco Rivera', 'carpari@test.com', '000000'),
(135, 'Grece Marina', 'Romero Pérez', 'Grece Marina Romero Pérez', 'grerope@test.com', '000000'),
(136, 'Erick', 'Rodriguez Dominguez', 'Erick Rodriguez Dominguez', 'erodo@test.com', '00000000'),
(137, 'Flor de Luz', 'García Rueda', 'Flor de Luz García Rueda', 'florgar@test.com', '00000000'),
(138, 'Moises Alberto', 'Rodríguez Garduza', 'Moises Alberto Rodríguez Garduza', 'moirogar@test.com', '00000000'),
(139, 'Sandra Athenea', 'Santiago Urbina', 'Sandra Athenea Santiago Urbina', 'sandraqj@test.com', '0000000'),
(140, 'Antonio', 'Santiago Urbina', 'Antonio Santiago Urbina', 'antonioqj@test.com', '00000000'),
(141, 'Sandra', 'Santiago', 'Sandra Santiago', 'sandraqp@test.com', '0000000000'),
(142, 'Antonio', 'Santiago', 'Antonio Santiago', 'antonioqp@test.com', '000000000'),
(143, 'Sandra', 'Santiago', 'Sandra Santiago', 'sandraqcan@test.com', '000000000'),
(144, 'Antonio', 'Santiago', 'Antonio Santiago', 'antonioqcan@test.com', '00000000'),
(145, 'Sandra', 'Santiago', 'Sandra Santiago', 'sandraqb@test.com', '00000000'),
(146, 'Antonio', 'Sanstiago', 'Antonio Sanstiago', 'antonioqb@test.com', '00000000'),
(147, 'Sandra', 'Santiago', 'Sandra Santiago', 'sandraqsur@test.com', '0000000'),
(148, 'Antonio', 'Santiago', 'Antonio Santiago', 'antonio@test.com', '000000000'),
(149, 'Estefania Zuheyli', 'Flores Garcia', 'Estefania Zuheyli Flores Garcia', 'esfloga@test.com', '00000000'),
(150, 'Luis Alexander', 'Alegria Illescas', 'Luis Alexander Alegria Illescas', 'luisalegria@test.com', '0000'),
(151, 'Cristofer', 'Ramírez Silva', 'Cristofer Ramírez Silva', 'crisrasi@test.com', '00000000'),
(152, 'Ximena', 'Peña Huerta', 'Ximena Peña Huerta', 'xipehu@test.com', '0000000000'),
(153, 'Yessica', 'Cruz Mendoza', 'Yessica Cruz Mendoza', 'yecrume@test.com', '00000000'),
(154, 'Ruby', 'Salas Hernández', 'Ruby Salas Hernández', 'rsala@test.com', '0000000000'),
(155, 'Valentín', 'López García', 'Valentín López García', 'vlopezg@test.com', '000000000'),
(156, 'Paulina', 'Landa García', 'Paulina Landa García', 'palaga@test.com', '0000000000'),
(157, 'Joel Alejandro', 'Ortiz Mondragon', 'Joel Alejandro Ortiz Mondragon', 'jaormon@test.com', '0000000000'),
(158, 'Alejandra', 'Guadalupe Ramírez Pérez', 'Alejandra Guadalupe Ramírez Pérez', 'aramirezp@test.com', '0000000000'),
(159, 'Daniela', 'Luna Espinoza', 'Daniela Luna Espinoza', 'dalues@test.com', '0000000000'),
(160, 'testeo', 'adminge', 'testeo adminge', 'test@test.com', '000000'),
(161, 'Luis Fernando', 'Landero López', 'Luis Fernando Landero López', 'landeroluis@test.com', '0000000000'),
(162, 'Karen Nahí', 'Abreu Hernández', 'Karen Nahí Abreu Hernández', 'test@test.com', '000000000'),
(163, 'Cristofer', 'Ramírez Silva', 'Cristofer Ramírez Silva', 'test@test.com', '000000000'),
(164, 'Ximena', 'Peña Huerta', 'Ximena Peña Huerta', 'test@test.com', '00000000'),
(165, 'Yessica', 'Cruz Mendoza', 'Yessica Cruz Mendoza', 'test@test.com', '00000000'),
(166, 'Daniela', 'Luna Espinoza', 'Daniela Luna Espinoza', 'test@test.com', '00000000'),
(167, 'Yuri Giovanna', 'Ventura Gómez', 'Yuri Giovanna Ventura Gómez', 'test@test.com', '00000000'),
(168, 'Flor de Luz', 'García Rueda', 'Flor de Luz García Rueda', 'test@test.com', '00000000'),
(169, 'Valentín', 'López García', 'Valentín López García', 'test@test.com', '00000000'),
(170, 'Grece Marina', 'Romero Pérez', 'Grece Marina Romero Pérez', 'test@test.com', '00000000'),
(171, 'Paulina', 'Landa García', 'Paulina Landa García', 'test@test.com', '00000000'),
(172, 'Joel Alejandro', 'Ortiz Mondragon', 'Joel Alejandro Ortiz Mondragon', 'test@test.com', '00000000'),
(173, 'Ruby', 'Salas Hernández', 'Ruby Salas Hernández', 'test@test.com', '00000000'),
(174, 'Alejandra Guadalupe', 'Ramírez Pérez', 'Alejandra Guadalupe Ramírez Pérez', 'test@test.com', '00000000'),
(175, 'Gabriela', 'Illescas Perez', 'Gabriela Illescas Perez', 'test@test.com', '00000000'),
(176, 'Estefania Zuheyli', 'Flores Garcia', 'Estefania Zuheyli Flores Garcia', 'test@test.com', '00000000'),
(177, 'Luis Alexander', 'Alegria Illescas', 'Luis Alexander Alegria Illescas', 'test@test.com', '00000000'),
(178, 'Luis Fernando', 'Landero López', 'Luis Fernando Landero López', 'test@test.com', '00000000'),
(179, 'Yuri Giovanna', 'Ventura Gómez', 'Yuri Giovanna Ventura Gómez', 'test@test.com', '00000000'),
(180, 'Flor de Luz', 'García Rueda', 'Flor de Luz García Rueda', 'test@test.com', '00000000'),
(181, 'Valentín', 'López García', 'Valentín López García', 'test@test.com', '00000000'),
(182, 'Grece Marina', 'Romero Pérez', 'Grece Marina Romero Pérez', 'test@test.com', '00000000'),
(183, 'Paulina', 'Landa García', 'Paulina Landa García', 'test@test.com', '00000000'),
(184, 'Joel Alejandro', 'Ortiz Mondragon', 'Joel Alejandro Ortiz Mondragon', 'test@test.com', '00000000'),
(185, 'Ruby', 'Salas Hernández', 'Ruby Salas Hernández', 'test@test.com', '00000000'),
(186, 'Alejandra Guadalupe', 'Ramírez Pérez', 'Alejandra Guadalupe Ramírez Pérez', 'test@test.com', '00000000'),
(187, 'Karen Nahí', 'Abreu Hernández', 'Karen Nahí Abreu Hernández', 'test@test.com', '00000000'),
(188, 'Cristofer', 'Ramírez Silva', 'Cristofer Ramírez Silva', 'test@test.com', '00000000'),
(189, 'Ximena', 'Peña Huerta', 'Ximena Peña Huerta', 'test@test.com', '00000000'),
(190, 'Yessica', 'Cruz Mendoza', 'Yessica Cruz Mendoza', 'test@test.com', '00000000'),
(191, 'Daniela', 'Luna Espinoza', 'Daniela Luna Espinoza', 'test@test.com', '00000000'),
(192, 'Gabriela', 'Illescas Perez', 'Gabriela Illescas Perez', 'test@test.com', '00000000'),
(193, 'Estefania Zuheyli', 'Flores Garcia', 'Estefania Zuheyli Flores Garcia', 'test@test.com', '00000000'),
(194, 'Luis Alexander', 'Alegria Illescas', 'Luis Alexander Alegria Illescas', 'test@test.com', '00000000'),
(195, 'Luis Fernando', 'Landero López', 'Luis Fernando Landero López', 'test@test.com', '00000000'),
(196, 'Grece Marina', 'Romero Pérez', 'Grece Marina Romero Pérez', 'test@test.com', '00000000'),
(197, 'Paulina', 'Landa García', 'Paulina Landa García', 'test@test.com', '00000000'),
(198, 'Joel Alejandro', 'Ortiz Mondragon', 'Joel Alejandro Ortiz Mondragon', 'test@test.com', '00000000'),
(199, 'Ruby', 'Salas Hernández', 'Ruby Salas Hernández', 'test@test.com', '00000000'),
(200, 'Alejandra Guadalupe', 'Ramírez Pérez', 'Alejandra Guadalupe Ramírez Pérez', 'test@test.com', '00000000'),
(201, 'Yuri Giovanna', 'Ventura Gómez', 'Yuri Giovanna Ventura Gómez', 'test@test.com', '00000000'),
(202, 'Flor de Luz', 'García Rueda', 'Flor de Luz García Rueda', 'test@test.com', '00000000'),
(203, 'Valentín', 'López García', 'Valentín López García', 'test@test.com', '00000000'),
(204, 'Karen Nahí', 'Abreu Hernández', 'Karen Nahí Abreu Hernández', 'test@test.com', '00000000'),
(205, 'Cristofer', 'Ramírez Silva', 'Cristofer Ramírez Silva', 'test@test.com', '00000000'),
(206, 'Ximena', 'Peña Huerta', 'Ximena Peña Huerta', 'test@test.com', '00000000'),
(207, 'Yessica', 'Cruz Mendoza', 'Yessica Cruz Mendoza', 'test@test.com', '00000000'),
(208, 'Daniela', 'Luna Espinoza', 'Daniela Luna Espinoza', 'test@test.com', '00000000'),
(209, 'Gabriela', 'Illescas Perez', 'Gabriela Illescas Perez', 'test@test.com', '00000000'),
(210, 'Estefania Zuheyli', 'Flores Garcia', 'Estefania Zuheyli Flores Garcia', 'test@test.com', '00000000'),
(211, 'Luis Alexander', 'Alegria Illescas', 'Luis Alexander Alegria Illescas', 'test@test.com', '00000000'),
(212, 'Luis Fernando', 'Landero López', 'Luis Fernando Landero López', 'test@test.com', '00000000'),
(213, 'Ruby', 'Salas Hernández', 'Ruby Salas Hernández', 'test@test.com', '00000000'),
(214, 'Alejandra Guadalupe', 'Ramírez Pérez', 'Alejandra Guadalupe Ramírez Pérez', 'test@test.com', '00000000'),
(215, 'Grece Marina', 'Romero Pérez', 'Grece Marina Romero Pérez', 'test@test.com', '00000000'),
(216, 'Paulina', 'Landa García', 'Paulina Landa García', 'test@test.com', '00000000'),
(217, 'Joel Alejandro', 'Ortiz Mondragon', 'Joel Alejandro Ortiz Mondragon', 'test@test.com', '00000000'),
(218, 'Yuri Giovanna', 'Ventura Gómez', 'Yuri Giovanna Ventura Gómez', 'test@test.com', '00000000'),
(219, 'Flor de Luz', 'García Rueda', 'Flor de Luz García Rueda', 'test@test.com', '00000000'),
(220, 'Valentín', 'López García', 'Valentín López García', 'test@test.com', '00000000'),
(221, 'Karen Nahí', 'Abreu Hernández', 'Karen Nahí Abreu Hernández', 'test@test.com', '00000000'),
(222, 'Cristofer', 'Ramírez Silva', 'Cristofer Ramírez Silva', 'test@test.com', '00000000'),
(223, 'Ximena', 'Peña Huerta', 'Ximena Peña Huerta', 'test@test.com', '00000000'),
(224, 'Yessica', 'Cruz Mendoza', 'Yessica Cruz Mendoza', 'test@test.com', '00000000'),
(225, 'Daniela', 'Luna Espinoza', 'Daniela Luna Espinoza', 'test@test.com', '00000000'),
(226, 'Gabriela', 'Illescas Perez', 'Gabriela Illescas Perez', 'test@test.com', '00000000'),
(227, 'Estefania Zuheyli', 'Flores Garcia', 'Estefania Zuheyli Flores Garcia', 'test@test.com', '00000000'),
(228, 'Luis Alexander', 'Alegria Illescas', 'Luis Alexander Alegria Illescas', 'test@test.com', '00000000'),
(229, 'Luis Fernando', 'Landero López', 'Luis Fernando Landero López', 'test@test.com', '00000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `idpermission` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `status_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`idpermission`, `permission`, `status_permission`) VALUES
(1, 'Agregar servicio', 1),
(2, 'Cambiar estatus del servicio', 1),
(3, 'Logout de aplicación', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  `idregion` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`idregion`, `name`) VALUES
(1, 'Sur'),
(2, 'Bajío');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region_state`
--

DROP TABLE IF EXISTS `region_state`;
CREATE TABLE `region_state` (
  `idregion_state` int(11) NOT NULL,
  `idregion` int(11) NOT NULL,
  `idstate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `region_state`
--

INSERT INTO `region_state` (`idregion_state`, `idregion`, `idstate`) VALUES
(1, 2, 2),
(2, 2, 3),
(3, 2, 4),
(4, 1, 1),
(5, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

DROP TABLE IF EXISTS `rols`;
CREATE TABLE `rols` (
  `idrol` int(11) NOT NULL,
  `rol_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`idrol`, `rol_name`) VALUES
(1, 'Admin'),
(2, 'Empleado Chedraui'),
(3, 'Chofer'),
(4, 'Gerente/Admon'),
(5, 'Regional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `idservice` int(11) NOT NULL,
  `iduser_creator` int(11) NOT NULL,
  `iduser_driver` int(11) DEFAULT NULL,
  `folio` varchar(300) DEFAULT NULL,
  `amount` text NOT NULL,
  `idtype_payment` int(11) DEFAULT NULL,
  `idtype_service` int(11) DEFAULT NULL,
  `name_client` text,
  `address_client` text,
  `phone_client` varchar(50) DEFAULT NULL,
  `email_client` varchar(100) DEFAULT NULL,
  `reference` text,
  `status_service` int(11) DEFAULT NULL,
  `date_register` datetime NOT NULL,
  `date_close` datetime NOT NULL,
  `indications` text,
  `latitude_address` text,
  `longitude_address` text,
  `number_pedido` text,
  `idhorario` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `consignacion` varchar(254) DEFAULT NULL,
  `iddireccion` int(11) DEFAULT NULL,
  `status_observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`idservice`, `iduser_creator`, `iduser_driver`, `folio`, `amount`, `idtype_payment`, `idtype_service`, `name_client`, `address_client`, `phone_client`, `email_client`, `reference`, `status_service`, `date_register`, `date_close`, `indications`, `latitude_address`, `longitude_address`, `number_pedido`, `idhorario`, `idcliente`, `consignacion`, `iddireccion`, `status_observaciones`) VALUES
(1, 107, 106, 'SD-000001', '150.96', 1, 1, 'Marco Antonio Soliz', 'El Espejo II, Villahermosa, Tab., Mexico', '9932363636', '', 'casa azul', 6, '2020-12-03 13:32:29', '2020-12-03 13:58:04', 'paga con 500', '17.9974215', '-92.9563113', '', 4, 1, '000001', 1, NULL),
(2, 107, 106, 'SD-000002', '365.80', 1, 1, 'Marco Antonio Soliz', 'El Espejo II, Villahermosa, Tab., Mexico', '9932363636', '', 'casa azul', 6, '2020-12-03 14:49:43', '2020-12-03 15:01:12', 'paga con 500', '17.9974215', '-92.9563113', '', 4, 1, '000002', 1, NULL),
(3, 107, 106, 'SD-000003', '300', 1, 1, 'Marco Antonio Soliz', 'El Espejo II, Villahermosa, Tab., Mexico', '9932363636', '', 'casa azul', 6, '2020-12-03 15:02:04', '2020-12-03 15:06:13', 'paga con 500', '17.9974215', '-92.9563113', '', 4, 1, '00003', 1, NULL),
(4, 107, 106, 'SD-000004', '255.6', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', '', 'Casa gris', 6, '2020-12-03 15:47:41', '2020-12-03 15:55:22', 'paga con 500', '17.9125724', '-92.9049239', '', 4, 1, '00004', 1, NULL),
(5, 107, 106, 'SD-000005', '280.50', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', '', 'Casa gris', 6, '2020-12-03 17:50:31', '2020-12-03 17:57:31', 'paga con 500', '17.9125724', '-92.9049239', '', 5, 1, '00005', 3, NULL),
(6, 107, 106, 'SD-000006', '366.89', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', '', 'Casa gris', 6, '2020-12-03 18:11:41', '2020-12-03 18:37:19', 'paga con 500', '17.9125724', '-92.9049239', '', 6, 1, '0006', 3, NULL),
(7, 107, 106, 'SD-000007', '25.85', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', '', 'Casa gris', 6, '2020-12-03 18:41:38', '2020-12-03 20:54:33', 'na', '17.9125724', '-92.9049239', '', 5, 1, '00007', 3, NULL),
(8, 107, 106, 'SD-000008', '250.85', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', '', 'Casa gris', 6, '2020-12-03 20:47:39', '2020-12-03 20:50:30', 'paga con 600', '17.9125724', '-92.9049239', '', 6, 1, '00008', 3, NULL),
(9, 115, 106, 'SD-000009', '258', 1, 1, 'Juanita de dios', 'Río Tacotalpa 306, El Espejo II, 86109 Villahermosa, Tab., Mexico', '9931258118', '', 'casa azul', 6, '2020-12-04 16:39:12', '2020-12-04 17:46:21', 'paga con 500', '17.9997087', '-92.9582698', '3332', 7, 3, '000045', 0, NULL),
(10, 113, 106, 'SD-000010', '605.89', 3, 1, 'margarita', 'colorin #106 colonia petrolera', '9931556458', '', 'entre av flores', 6, '2020-12-04 16:39:21', '2020-12-04 17:41:38', 'marcar antes de llegar', '0.000000', '0.000000', '16373848', 1, 5, '42638316383', 0, NULL),
(11, 114, 106, 'SD-000011', '600', 1, 1, 'Gabriela Illescas', 'Ignacio Ramírez 133, Centro Delegacion Uno, 86077 Villahermosa, Tab., Mexico', '9931097715', '', 'casa amarilla, portón blanco', 6, '2020-12-04 16:39:27', '2020-12-04 17:44:10', 'llamar cuando esté en su casa el repartidor', '17.9890506', '-92.9244666', '1', 2, 2, '225676895', 0, NULL),
(12, 116, 106, 'SD-000012', '2500', 3, 1, 'Juanita de dios', 'Lomas de Ocuiltzapotlán II, Fraccionamiento Ocuiltzapotlán Dos, Tab., Mexico', '9981235696', '', 'color azul', 6, '2020-12-04 16:39:39', '2020-12-04 17:48:02', 'avisar antes de llegar', '18.1104992', '-92.8695567', '12345', 6, 6, '12345', 0, NULL),
(13, 107, 106, 'SD-000013', '582', 1, 1, 'Eduardo garcia', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', '5540057226', '', 'Casa Blanca', 6, '2020-12-04 16:39:40', '2020-12-04 17:42:30', 'llegar antes de las 10', '18.0034967', '-92.9377007', '234567891', 1, 4, 'a234567879', 0, NULL),
(14, 112, 106, 'SD-000014', '150', 1, 1, 'Flor garcia', 'Calle 5, Bonanza, 86030 Villahermosa, Tab., Mexico', '9932137781', '', 'casa blanca', 6, '2020-12-04 16:41:38', '2020-12-04 17:42:14', 'llegar antes de las 10', '18.0039312', '-92.9389272', '242322211', 7, 7, 'a240701123', 0, NULL),
(15, 107, 0, 'SD-000015', '586', 3, 1, 'humberto garcia', 'Calle 5 141, Bonanza, 86030 Villahermosa, Tab., Mexico', '5565324178', '', 'casa verde', 4, '2020-12-04 17:57:24', '0000-00-00 00:00:00', 'llegar antes de la hora', '18.0034967', '-92.9377007', '432145678', 4, 8, 'a234567896', 0, 'porque no estaba el cliente'),
(16, 115, 106, 'SD-000016', '368', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', '', 'Casa gris', 6, '2020-12-04 18:03:10', '2020-12-04 18:06:42', 'ok', '17.9125724', '-92.9049239', '', 5, 1, '00007', 3, NULL),
(17, 110, 109, 'SD-000017', '258.69', 1, 1, 'andres Manuel', 'Santiago de Querétaro, Qro., México', '9991245178', '', 'Casa azul', 3, '2020-12-05 11:07:41', '2020-12-05 11:11:02', 'paga con 500', '20.5887932', '-100.3898881', '', 4, 9, '00001', 0, NULL),
(18, 110, 109, 'SD-000018', '300.58', 1, 1, 'andres Manuel', 'Santiago de Querétaro, Qro., México', '9991245178', '', 'Casa azul', 3, '2020-12-05 11:21:05', '2020-12-05 11:34:16', 'na', '20.5887932', '-100.3898881', '', 5, 9, '00004', 19, NULL),
(19, 150, 106, 'SD-000019', '256.69', 1, 1, 'Marco Antonio Soliz', 'Ficus 219, Parrilla 1ra. Secc., Santa Fe, 86280 Parrilla, Tab., México', '9932363636', '', 'Casa gris', 3, '2020-12-09 11:52:03', '2020-12-09 11:59:29', 'paga con 500', '17.9125724', '-92.9049239', '263', 3, 1, '0003', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_detail`
--

DROP TABLE IF EXISTS `services_detail`;
CREATE TABLE `services_detail` (
  `idservice_detail` int(11) NOT NULL,
  `idservice` int(11) NOT NULL,
  `km` float NOT NULL DEFAULT '0',
  `costo` float NOT NULL DEFAULT '0',
  `vueltas` int(11) NOT NULL,
  `tiene_penalizacion` tinyint(1) NOT NULL DEFAULT '0',
  `aplicar_penalizacion` tinyint(1) NOT NULL DEFAULT '1',
  `costo_penalizacion` float NOT NULL DEFAULT '0',
  `total` float NOT NULL,
  `costo_vueltas` float NOT NULL DEFAULT '0',
  `motivo_vueltas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services_detail`
--

INSERT INTO `services_detail` (`idservice_detail`, `idservice`, `km`, `costo`, `vueltas`, `tiene_penalizacion`, `aplicar_penalizacion`, `costo_penalizacion`, `total`, `costo_vueltas`, `motivo_vueltas`) VALUES
(1, 1, 10, 126, 0, 0, 1, 0, 126, 0, NULL),
(2, 2, 2.434, 110, 0, 0, 1, 0, 110, 0, NULL),
(3, 3, 14.297, 166, 0, 0, 1, 0, 166, 0, NULL),
(4, 4, 14.323, 166, 0, 0, 1, 0, 166, 0, NULL),
(5, 5, 14.326, 166, 0, 0, 1, 0, 166, 0, NULL),
(6, 6, 14.309, 256, 0, 0, 1, 0, 256, 0, NULL),
(7, 7, 10, 126, 0, 1, 0, 30, 126, 0, NULL),
(8, 8, 18.89, 198, 0, 0, 1, 0, 198, 0, NULL),
(9, 14, 1.035, 110, 0, 0, 1, 0, 110, 0, NULL),
(10, 13, 2.288, 110, 0, 0, 1, 0, 110, 0, NULL),
(11, 10, 2.677, 110, 0, 0, 1, 0, 110, 0, NULL),
(12, 12, 2.676, 110, 0, 0, 1, 0, 110, 0, NULL),
(13, 11, 2.676, 110, 0, 0, 1, 0, 110, 0, NULL),
(14, 9, 2.676, 110, 0, 0, 1, 0, 110, 0, NULL),
(15, 16, 1.112, 110, 0, 0, 1, 0, 110, 0, NULL),
(16, 17, 954.886, 7686, 0, 0, 1, 0, 7686, 0, NULL),
(17, 18, 954.887, 7686, 0, 0, 1, 0, 7686, 0, NULL),
(18, 19, 2.435, 110, 0, 0, 1, 0, 110, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_file`
--

DROP TABLE IF EXISTS `services_file`;
CREATE TABLE `services_file` (
  `idservice_file` int(11) NOT NULL,
  `idservices_stage` int(11) NOT NULL,
  `service_file` varchar(100) NOT NULL,
  `ext` varchar(50) NOT NULL,
  `type_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services_file`
--

INSERT INTO `services_file` (`idservice_file`, `idservices_stage`, `service_file`, `ext`, `type_file`) VALUES
(1, 10, '10-evidence-1.jpg', 'jpg', 'imagen'),
(2, 14, '14-evidence-1.jpg', 'jpg', 'imagen'),
(3, 23, '23-evidence-1.jpg', 'jpg', 'imagen'),
(4, 27, '27-evidence-1.jpg', 'jpg', 'imagen'),
(5, 36, '36-evidence-1.jpg', 'jpg', 'imagen'),
(6, 40, '40-evidence-1.png', 'png', 'imagen'),
(7, 49, '49-evidence-1.jpg', 'jpg', 'imagen'),
(8, 53, '53-evidence-1.png', 'png', 'imagen'),
(9, 62, '62-evidence-1.jpg', 'jpg', 'imagen'),
(10, 66, '66-evidence-1.png', 'png', 'imagen'),
(11, 75, '75-evidence-1.jpg', 'jpg', 'imagen'),
(12, 79, '79-evidence-1.png', 'png', 'imagen'),
(13, 92, '92-evidence-1.png', 'png', 'imagen'),
(14, 101, '101-evidence-1.jpg', 'jpg', 'imagen'),
(15, 88, '88-evidence-1.jpg', 'jpg', 'imagen'),
(16, 105, '105-evidence-1.jpg', 'jpg', 'imagen'),
(17, 118, '118-evidence-1.jpg', 'jpg', 'imagen'),
(18, 131, '131-evidence-1.jpg', 'jpg', 'imagen'),
(19, 144, '144-evidence-1.jpg', 'jpg', 'imagen'),
(20, 157, '157-evidence-1.jpg', 'jpg', 'imagen'),
(21, 179, '179-evidence-1.jpg', 'jpg', 'imagen'),
(22, 166, '166-evidence-1.jpg', 'jpg', 'imagen'),
(23, 127, '127-evidence-1.jpg', 'jpg', 'imagen'),
(24, 140, '140-evidence-1.jpg', 'jpg', 'imagen'),
(25, 114, '114-evidence-1.jpg', 'jpg', 'imagen'),
(26, 153, '153-evidence-1.jpg', 'jpg', 'imagen'),
(27, 183, '183-evidence-1.jpg', 'jpg', 'imagen'),
(28, 205, '205-evidence-1.jpg', 'jpg', 'imagen'),
(29, 209, '209-evidence-1.png', 'png', 'imagen'),
(30, 218, '218-evidence-1.jpg', 'jpg', 'imagen'),
(31, 222, '222-evidence-1.png', 'png', 'imagen'),
(32, 231, '231-evidence-1.jpg', 'jpg', 'imagen'),
(33, 235, '235-evidence-1.jpg', 'jpg', 'imagen'),
(34, 244, '244-evidence-1.jpg', 'jpg', 'imagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_stages`
--

DROP TABLE IF EXISTS `services_stages`;
CREATE TABLE `services_stages` (
  `idservices_stage` int(11) NOT NULL,
  `idservice` int(11) NOT NULL,
  `idstage` int(11) NOT NULL,
  `status_stage` int(11) DEFAULT NULL,
  `date_begin` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services_stages`
--

INSERT INTO `services_stages` (`idservices_stage`, `idservice`, `idstage`, `status_stage`, `date_begin`, `date_end`, `latitude`, `longitude`) VALUES
(1, 1, 1, 2, '2020-12-03 13:32:29', '2020-12-03 13:32:42', 0.000000, 0.000000),
(2, 1, 2, 2, '2020-12-03 13:32:42', '2020-12-03 13:32:46', 0.000000, 0.000000),
(3, 1, 3, 2, '2020-12-03 13:32:46', '2020-12-03 13:32:53', 0.000000, 0.000000),
(4, 1, 4, 2, '2020-12-03 13:32:53', '2020-12-03 13:33:04', 0.000000, 0.000000),
(5, 1, 5, 2, '2020-12-03 13:33:04', '2020-12-03 13:34:07', 17.999744, -92.958176),
(6, 1, 6, 2, '2020-12-03 13:34:07', '2020-12-03 13:34:36', 17.999744, -92.958176),
(7, 1, 7, 2, '2020-12-03 13:34:36', '2020-12-03 13:34:56', 17.999744, -92.958176),
(8, 1, 8, 2, '2020-12-03 13:34:56', '2020-12-03 13:35:41', 17.999741, -92.958191),
(9, 1, 9, 2, '2020-12-03 13:35:41', '2020-12-03 13:36:19', 17.999741, -92.958183),
(10, 1, 10, 2, '2020-12-03 13:36:19', '2020-12-03 13:46:28', 17.999741, -92.958183),
(11, 1, 11, 2, '2020-12-03 13:46:28', '2020-12-03 13:58:04', 17.999722, -92.958183),
(12, 1, 12, 2, '2020-12-03 13:58:04', '2020-12-03 14:38:27', 17.999743, -92.958183),
(13, 1, 13, 1, '2020-12-03 14:38:27', '0000-00-00 00:00:00', 17.999739, -92.958183),
(14, 2, 1, 2, '2020-12-03 14:49:43', '2020-12-03 14:55:04', 0.000000, 0.000000),
(15, 2, 2, 2, '2020-12-03 14:55:04', '2020-12-03 14:55:49', 0.000000, 0.000000),
(16, 2, 3, 2, '2020-12-03 14:55:49', '2020-12-03 14:56:28', 0.000000, 0.000000),
(17, 2, 4, 2, '2020-12-03 14:56:28', '2020-12-03 14:57:22', 0.000000, 0.000000),
(18, 2, 5, 2, '2020-12-03 14:57:22', '2020-12-03 14:57:29', 17.999739, -92.958176),
(19, 2, 6, 2, '2020-12-03 14:57:29', '2020-12-03 14:57:38', 17.999739, -92.958176),
(20, 2, 7, 2, '2020-12-03 14:57:38', '2020-12-03 14:57:45', 17.999739, -92.958176),
(21, 2, 8, 2, '2020-12-03 14:57:45', '2020-12-03 14:57:54', 17.999739, -92.958176),
(22, 2, 9, 2, '2020-12-03 14:57:54', '2020-12-03 15:00:38', 17.999739, -92.958176),
(23, 2, 10, 2, '2020-12-03 15:00:38', '2020-12-03 15:00:59', 17.909788, -92.920395),
(24, 2, 11, 2, '2020-12-03 15:00:59', '2020-12-03 15:01:12', 17.912552, -92.905090),
(25, 2, 12, 2, '2020-12-03 15:01:12', '2020-12-03 15:01:53', 17.912552, -92.905090),
(26, 2, 13, 1, '2020-12-03 15:01:53', '0000-00-00 00:00:00', 17.912552, -92.905090),
(27, 3, 1, 2, '2020-12-03 15:02:04', '2020-12-03 15:02:11', 0.000000, 0.000000),
(28, 3, 2, 2, '2020-12-03 15:02:11', '2020-12-03 15:02:14', 0.000000, 0.000000),
(29, 3, 3, 2, '2020-12-03 15:02:14', '2020-12-03 15:02:17', 0.000000, 0.000000),
(30, 3, 4, 2, '2020-12-03 15:02:17', '2020-12-03 15:02:30', 0.000000, 0.000000),
(31, 3, 5, 2, '2020-12-03 15:02:30', '2020-12-03 15:02:36', 17.912552, -92.905090),
(32, 3, 6, 2, '2020-12-03 15:02:36', '2020-12-03 15:02:52', 17.912552, -92.905090),
(33, 3, 7, 2, '2020-12-03 15:02:52', '2020-12-03 15:02:57', 17.912552, -92.905090),
(34, 3, 8, 2, '2020-12-03 15:02:57', '2020-12-03 15:03:05', 17.912552, -92.905090),
(35, 3, 9, 2, '2020-12-03 15:03:05', '2020-12-03 15:05:40', 17.912552, -92.905090),
(36, 3, 10, 2, '2020-12-03 15:05:40', '2020-12-03 15:06:00', 17.912552, -92.905090),
(37, 3, 11, 2, '2020-12-03 15:06:00', '2020-12-03 15:06:13', 17.912552, -92.905090),
(38, 3, 12, 2, '2020-12-03 15:06:13', '2020-12-03 15:06:17', 17.912552, -92.905090),
(39, 3, 13, 1, '2020-12-03 15:06:17', '0000-00-00 00:00:00', 17.912552, -92.905090),
(40, 4, 1, 2, '2020-12-03 15:47:41', '2020-12-03 15:48:36', 0.000000, 0.000000),
(41, 4, 2, 2, '2020-12-03 15:48:36', '2020-12-03 15:48:45', 0.000000, 0.000000),
(42, 4, 3, 2, '2020-12-03 15:48:45', '2020-12-03 15:48:48', 0.000000, 0.000000),
(43, 4, 4, 2, '2020-12-03 15:48:48', '2020-12-03 15:49:00', 0.000000, 0.000000),
(44, 4, 5, 2, '2020-12-03 15:49:00', '2020-12-03 15:49:12', 17.912588, -92.904846),
(45, 4, 6, 2, '2020-12-03 15:49:12', '2020-12-03 15:49:22', 17.912588, -92.904846),
(46, 4, 7, 2, '2020-12-03 15:49:22', '2020-12-03 15:49:29', 17.912588, -92.904846),
(47, 4, 8, 2, '2020-12-03 15:49:29', '2020-12-03 15:49:46', 17.912588, -92.904846),
(48, 4, 9, 2, '2020-12-03 15:49:46', '2020-12-03 15:55:04', 17.912588, -92.904846),
(49, 4, 10, 2, '2020-12-03 15:55:04', '2020-12-03 15:55:13', 17.999731, -92.958183),
(50, 4, 11, 2, '2020-12-03 15:55:13', '2020-12-03 15:55:22', 17.999731, -92.958183),
(51, 4, 12, 2, '2020-12-03 15:55:22', '2020-12-03 15:55:42', 17.999731, -92.958183),
(52, 4, 13, 1, '2020-12-03 15:55:42', '0000-00-00 00:00:00', 17.999731, -92.958183),
(53, 5, 1, 2, '2020-12-03 17:50:31', '2020-12-03 17:50:44', 0.000000, 0.000000),
(54, 5, 2, 2, '2020-12-03 17:50:44', '2020-12-03 17:51:24', 0.000000, 0.000000),
(55, 5, 3, 2, '2020-12-03 17:51:24', '2020-12-03 17:51:45', 0.000000, 0.000000),
(56, 5, 4, 2, '2020-12-03 17:51:45', '2020-12-03 17:52:03', 0.000000, 0.000000),
(57, 5, 5, 2, '2020-12-03 17:52:03', '2020-12-03 17:52:45', 17.912586, -92.904816),
(58, 5, 6, 2, '2020-12-03 17:52:45', '2020-12-03 17:53:16', 17.912586, -92.904816),
(59, 5, 7, 2, '2020-12-03 17:53:16', '2020-12-03 17:54:36', 0.000000, 0.000000),
(60, 5, 8, 2, '2020-12-03 17:54:36', '2020-12-03 17:54:46', 17.912586, -92.904816),
(61, 5, 9, 2, '2020-12-03 17:54:46', '2020-12-03 17:55:39', 17.912586, -92.904816),
(62, 5, 10, 2, '2020-12-03 17:55:39', '2020-12-03 17:56:15', 17.999741, -92.958183),
(63, 5, 11, 2, '2020-12-03 17:56:15', '2020-12-03 17:57:31', 17.999741, -92.958183),
(64, 5, 12, 2, '2020-12-03 17:57:31', '2020-12-03 17:57:41', 17.999741, -92.958183),
(65, 5, 13, 1, '2020-12-03 17:57:41', '0000-00-00 00:00:00', 17.999741, -92.958183),
(66, 6, 1, 2, '2020-12-03 18:11:41', '2020-12-03 18:12:02', 0.000000, 0.000000),
(67, 6, 2, 2, '2020-12-03 18:12:02', '2020-12-03 18:12:09', 0.000000, 0.000000),
(68, 6, 3, 2, '2020-12-03 18:12:09', '2020-12-03 18:13:03', 0.000000, 0.000000),
(69, 6, 4, 2, '2020-12-03 18:13:03', '2020-12-03 18:13:14', 0.000000, 0.000000),
(70, 6, 5, 2, '2020-12-03 18:13:14', '2020-12-03 18:13:28', 17.912584, -92.904976),
(71, 6, 6, 2, '2020-12-03 18:13:28', '2020-12-03 18:13:38', 17.912584, -92.904976),
(72, 6, 7, 2, '2020-12-03 18:13:38', '2020-12-03 18:14:55', 17.912584, -92.904976),
(73, 6, 8, 2, '2020-12-03 18:14:55', '2020-12-03 18:15:12', 17.912584, -92.904976),
(74, 6, 9, 2, '2020-12-03 18:15:12', '2020-12-03 18:16:56', 17.912584, -92.904976),
(75, 6, 10, 2, '2020-12-03 18:16:56', '2020-12-03 18:37:06', 17.999744, -92.958191),
(76, 6, 11, 2, '2020-12-03 18:37:06', '2020-12-03 18:37:19', 17.999744, -92.958191),
(77, 6, 12, 2, '2020-12-03 18:37:19', '2020-12-03 18:37:30', 17.999744, -92.958191),
(78, 6, 13, 1, '2020-12-03 18:37:30', '0000-00-00 00:00:00', 17.999744, -92.958191),
(79, 7, 1, 2, '2020-12-03 18:41:38', '2020-12-03 18:41:48', 0.000000, 0.000000),
(80, 7, 2, 2, '2020-12-03 18:41:48', '2020-12-03 18:41:55', 0.000000, 0.000000),
(81, 7, 3, 2, '2020-12-03 18:41:55', '2020-12-03 18:42:00', 0.000000, 0.000000),
(82, 7, 4, 2, '2020-12-03 18:42:00', '2020-12-03 18:44:04', 0.000000, 0.000000),
(83, 7, 5, 2, '2020-12-03 18:44:04', '2020-12-03 19:57:49', 17.999744, -92.958191),
(84, 7, 6, 2, '2020-12-03 19:57:49', '2020-12-03 19:57:56', 17.999010, -92.953934),
(85, 7, 7, 2, '2020-12-03 19:57:56', '2020-12-03 19:58:29', 17.999010, -92.953934),
(86, 7, 8, 2, '2020-12-03 19:58:29', '2020-12-03 20:13:28', 17.999010, -92.953934),
(87, 7, 9, 2, '2020-12-03 20:13:28', '2020-12-03 20:53:49', 18.000847, -92.962227),
(88, 7, 10, 2, '2020-12-03 20:53:49', '2020-12-03 20:54:17', 17.999744, -92.958183),
(89, 7, 11, 2, '2020-12-03 20:54:17', '2020-12-03 20:54:33', 17.999744, -92.958183),
(90, 7, 12, 2, '2020-12-03 20:54:33', '2020-12-03 20:54:43', 17.999744, -92.958183),
(91, 7, 13, 1, '2020-12-03 20:54:43', '0000-00-00 00:00:00', 17.999744, -92.958183),
(92, 8, 1, 2, '2020-12-03 20:47:39', '2020-12-03 20:47:48', 0.000000, 0.000000),
(93, 8, 2, 2, '2020-12-03 20:47:48', '2020-12-03 20:47:54', 0.000000, 0.000000),
(94, 8, 3, 2, '2020-12-03 20:47:54', '2020-12-03 20:48:02', 0.000000, 0.000000),
(95, 8, 4, 2, '2020-12-03 20:48:02', '2020-12-03 20:48:22', 0.000000, 0.000000),
(96, 8, 5, 2, '2020-12-03 20:48:22', '2020-12-03 20:48:31', 17.999744, -92.958183),
(97, 8, 6, 2, '2020-12-03 20:48:31', '2020-12-03 20:48:41', 17.999744, -92.958183),
(98, 8, 7, 2, '2020-12-03 20:48:41', '2020-12-03 20:48:52', 17.999744, -92.958183),
(99, 8, 8, 2, '2020-12-03 20:48:52', '2020-12-03 20:49:00', 17.999744, -92.958183),
(100, 8, 9, 2, '2020-12-03 20:49:00', '2020-12-03 20:50:09', 17.999744, -92.958183),
(101, 8, 10, 2, '2020-12-03 20:50:09', '2020-12-03 20:50:22', 17.999744, -92.958183),
(102, 8, 11, 2, '2020-12-03 20:50:22', '2020-12-03 20:50:30', 17.999744, -92.958183),
(103, 8, 12, 2, '2020-12-03 20:50:30', '2020-12-03 20:52:19', 17.999744, -92.958183),
(104, 8, 13, 1, '2020-12-03 20:52:19', '0000-00-00 00:00:00', 17.999697, -92.957367),
(105, 9, 1, 2, '2020-12-04 16:39:12', '2020-12-04 16:42:10', 0.000000, 0.000000),
(106, 9, 2, 2, '2020-12-04 16:42:10', '2020-12-04 16:43:06', 0.000000, 0.000000),
(107, 9, 3, 2, '2020-12-04 16:43:06', '2020-12-04 16:43:10', 0.000000, 0.000000),
(108, 9, 4, 2, '2020-12-04 16:43:10', '2020-12-04 16:45:13', 0.000000, 0.000000),
(109, 9, 5, 2, '2020-12-04 16:45:13', '2020-12-04 16:45:24', 17.987473, -92.944977),
(110, 9, 6, 2, '2020-12-04 16:45:24', '2020-12-04 16:47:39', 17.987473, -92.944977),
(111, 9, 7, 2, '2020-12-04 16:47:39', '2020-12-04 17:06:33', 17.987440, -92.945122),
(112, 9, 8, 2, '2020-12-04 17:06:33', '2020-12-04 17:44:32', 17.987455, -92.944885),
(113, 9, 9, 2, '2020-12-04 17:44:32', '2020-12-04 17:45:38', 18.007168, -92.940361),
(114, 9, 10, 2, '2020-12-04 17:45:38', '2020-12-04 17:45:47', 18.007168, -92.940361),
(115, 9, 11, 2, '2020-12-04 17:45:47', '2020-12-04 17:46:21', 18.007168, -92.940361),
(116, 9, 12, 1, '2020-12-04 17:46:21', '0000-00-00 00:00:00', 18.007168, -92.940361),
(117, 9, 13, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(118, 10, 1, 2, '2020-12-04 16:39:21', '2020-12-04 16:42:33', 0.000000, 0.000000),
(119, 10, 2, 2, '2020-12-04 16:42:33', '2020-12-04 16:43:17', 0.000000, 0.000000),
(120, 10, 3, 2, '2020-12-04 16:43:17', '2020-12-04 16:43:43', 0.000000, 0.000000),
(121, 10, 4, 2, '2020-12-04 16:43:43', '2020-12-04 16:45:01', 0.000000, 0.000000),
(122, 10, 5, 2, '2020-12-04 16:45:01', '2020-12-04 16:45:29', 17.987473, -92.944977),
(123, 10, 6, 2, '2020-12-04 16:45:29', '2020-12-04 16:47:23', 17.987473, -92.944977),
(124, 10, 7, 2, '2020-12-04 16:47:23', '2020-12-04 17:06:21', 17.987440, -92.945122),
(125, 10, 8, 2, '2020-12-04 17:06:21', '2020-12-04 17:27:02', 17.987455, -92.944885),
(126, 10, 9, 2, '2020-12-04 17:27:02', '2020-12-04 17:27:30', 18.007244, -92.940323),
(127, 10, 10, 2, '2020-12-04 17:27:30', '2020-12-04 17:27:37', 18.007168, -92.940361),
(128, 10, 11, 2, '2020-12-04 17:27:37', '2020-12-04 17:41:38', 18.007168, -92.940361),
(129, 10, 12, 2, '2020-12-04 17:41:38', '2020-12-04 17:41:52', 18.007168, -92.940361),
(130, 10, 13, 1, '2020-12-04 17:41:52', '0000-00-00 00:00:00', 18.007168, -92.940361),
(131, 11, 1, 2, '2020-12-04 16:39:27', '2020-12-04 16:42:35', 0.000000, 0.000000),
(132, 11, 2, 2, '2020-12-04 16:42:35', '2020-12-04 16:42:45', 0.000000, 0.000000),
(133, 11, 3, 2, '2020-12-04 16:42:45', '2020-12-04 16:43:08', 0.000000, 0.000000),
(134, 11, 4, 2, '2020-12-04 16:43:08', '2020-12-04 16:43:57', 0.000000, 0.000000),
(135, 11, 5, 2, '2020-12-04 16:43:57', '2020-12-04 16:45:34', 17.987473, -92.944977),
(136, 11, 6, 2, '2020-12-04 16:45:34', '2020-12-04 16:47:11', 17.987473, -92.944977),
(137, 11, 7, 2, '2020-12-04 16:47:11', '2020-12-04 17:06:03', 17.987440, -92.945122),
(138, 11, 8, 2, '2020-12-04 17:06:03', '2020-12-04 17:43:00', 17.987455, -92.944885),
(139, 11, 9, 2, '2020-12-04 17:43:00', '2020-12-04 17:43:24', 18.007168, -92.940361),
(140, 11, 10, 2, '2020-12-04 17:43:24', '2020-12-04 17:43:30', 18.007168, -92.940361),
(141, 11, 11, 2, '2020-12-04 17:43:30', '2020-12-04 17:44:10', 18.007168, -92.940361),
(142, 11, 12, 1, '2020-12-04 17:44:10', '0000-00-00 00:00:00', 18.007168, -92.940361),
(143, 11, 13, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(144, 12, 1, 2, '2020-12-04 16:39:39', '2020-12-04 16:42:34', 0.000000, 0.000000),
(145, 12, 2, 2, '2020-12-04 16:42:34', '2020-12-04 16:43:53', 0.000000, 0.000000),
(146, 12, 3, 2, '2020-12-04 16:43:53', '2020-12-04 16:43:58', 0.000000, 0.000000),
(147, 12, 4, 2, '2020-12-04 16:43:58', '2020-12-04 16:44:45', 0.000000, 0.000000),
(148, 12, 5, 2, '2020-12-04 16:44:45', '2020-12-04 16:45:47', 17.987473, -92.944977),
(149, 12, 6, 2, '2020-12-04 16:45:47', '2020-12-04 16:46:55', 17.987438, -92.945122),
(150, 12, 7, 2, '2020-12-04 16:46:55', '2020-12-04 17:05:47', 17.987440, -92.945122),
(151, 12, 8, 2, '2020-12-04 17:05:47', '2020-12-04 17:42:45', 17.987455, -92.944885),
(152, 12, 9, 2, '2020-12-04 17:42:45', '2020-12-04 17:46:49', 18.007168, -92.940361),
(153, 12, 10, 2, '2020-12-04 17:46:49', '2020-12-04 17:47:04', 18.007168, -92.940361),
(154, 12, 11, 2, '2020-12-04 17:47:04', '2020-12-04 17:48:02', 18.007168, -92.940361),
(155, 12, 12, 2, '2020-12-04 17:48:02', '2020-12-04 17:48:09', 18.007168, -92.940361),
(156, 12, 13, 1, '2020-12-04 17:48:09', '0000-00-00 00:00:00', 18.007168, -92.940361),
(157, 13, 1, 2, '2020-12-04 16:39:40', '2020-12-04 16:42:23', 0.000000, 0.000000),
(158, 13, 2, 2, '2020-12-04 16:42:23', '2020-12-04 16:42:47', 0.000000, 0.000000),
(159, 13, 3, 2, '2020-12-04 16:42:47', '2020-12-04 16:43:08', 0.000000, 0.000000),
(160, 13, 4, 2, '2020-12-04 16:43:08', '2020-12-04 16:44:33', 0.000000, 0.000000),
(161, 13, 5, 2, '2020-12-04 16:44:33', '2020-12-04 16:45:57', 17.987473, -92.944977),
(162, 13, 6, 2, '2020-12-04 16:45:57', '2020-12-04 16:46:44', 17.987431, -92.945122),
(163, 13, 7, 2, '2020-12-04 16:46:44', '2020-12-04 17:05:15', 17.987440, -92.945122),
(164, 13, 8, 2, '2020-12-04 17:05:15', '2020-12-04 17:16:40', 17.987455, -92.944885),
(165, 13, 9, 2, '2020-12-04 17:16:40', '2020-12-04 17:17:09', 18.003368, -92.937668),
(166, 13, 10, 2, '2020-12-04 17:17:09', '2020-12-04 17:17:24', 18.003368, -92.937668),
(167, 13, 11, 2, '2020-12-04 17:17:24', '2020-12-04 17:42:30', 18.003368, -92.937668),
(168, 13, 12, 2, '2020-12-04 17:42:30', '2020-12-04 17:53:38', 18.007168, -92.940361),
(169, 13, 13, 1, '2020-12-04 17:53:38', '0000-00-00 00:00:00', 17.987421, -92.945129),
(170, 14, 1, 2, '2020-12-04 16:41:38', '2020-12-04 16:42:38', 0.000000, 0.000000),
(171, 14, 2, 2, '2020-12-04 16:42:38', '2020-12-04 16:43:17', 0.000000, 0.000000),
(172, 14, 3, 2, '2020-12-04 16:43:17', '2020-12-04 16:43:41', 0.000000, 0.000000),
(173, 14, 4, 2, '2020-12-04 16:43:41', '2020-12-04 16:44:15', 0.000000, 0.000000),
(174, 14, 5, 2, '2020-12-04 16:44:15', '2020-12-04 16:46:11', 17.987473, -92.944977),
(175, 14, 6, 2, '2020-12-04 16:46:11', '2020-12-04 16:46:19', 17.987440, -92.945122),
(176, 14, 7, 2, '2020-12-04 16:46:19', '2020-12-04 16:47:53', 17.987440, -92.945122),
(177, 14, 8, 2, '2020-12-04 16:47:53', '2020-12-04 17:15:22', 17.987440, -92.945122),
(178, 14, 9, 2, '2020-12-04 17:15:22', '2020-12-04 17:16:03', 18.003368, -92.937668),
(179, 14, 10, 2, '2020-12-04 17:16:03', '2020-12-04 17:17:32', 18.003368, -92.937668),
(180, 14, 11, 2, '2020-12-04 17:17:32', '2020-12-04 17:42:14', 18.003368, -92.937668),
(181, 14, 12, 2, '2020-12-04 17:42:14', '2020-12-04 17:53:26', 18.007168, -92.940361),
(182, 14, 13, 1, '2020-12-04 17:53:26', '0000-00-00 00:00:00', 17.987421, -92.945129),
(183, 15, 1, 1, '2020-12-04 17:57:24', '0000-00-00 00:00:00', 0.000000, 0.000000),
(184, 15, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(185, 15, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(186, 15, 4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(187, 15, 5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(188, 15, 6, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(189, 15, 7, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(190, 15, 8, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(191, 15, 9, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(192, 15, 10, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(193, 15, 11, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(194, 15, 12, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(195, 15, 13, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(196, 16, 1, 2, '2020-12-04 18:03:10', '2020-12-04 18:03:44', 0.000000, 0.000000),
(197, 16, 2, 2, '2020-12-04 18:03:44', '2020-12-04 18:03:50', 0.000000, 0.000000),
(198, 16, 3, 2, '2020-12-04 18:03:50', '2020-12-04 18:03:53', 0.000000, 0.000000),
(199, 16, 4, 2, '2020-12-04 18:03:53', '2020-12-04 18:04:04', 0.000000, 0.000000),
(200, 16, 5, 2, '2020-12-04 18:04:04', '2020-12-04 18:04:11', 17.987419, -92.945122),
(201, 16, 6, 2, '2020-12-04 18:04:11', '2020-12-04 18:04:21', 17.987419, -92.945122),
(202, 16, 7, 2, '2020-12-04 18:04:21', '2020-12-04 18:04:31', 17.987419, -92.945122),
(203, 16, 8, 2, '2020-12-04 18:04:31', '2020-12-04 18:04:47', 17.987419, -92.945122),
(204, 16, 9, 2, '2020-12-04 18:04:47', '2020-12-04 18:06:13', 17.987419, -92.945122),
(205, 16, 10, 2, '2020-12-04 18:06:13', '2020-12-04 18:06:30', 17.987419, -92.945122),
(206, 16, 11, 2, '2020-12-04 18:06:30', '2020-12-04 18:06:42', 17.987419, -92.945122),
(207, 16, 12, 2, '2020-12-04 18:06:42', '2020-12-04 18:06:51', 17.987419, -92.945122),
(208, 16, 13, 1, '2020-12-04 18:06:51', '0000-00-00 00:00:00', 17.987419, -92.945122),
(209, 17, 1, 2, '2020-12-05 11:07:41', '2020-12-05 11:08:10', 0.000000, 0.000000),
(210, 17, 2, 2, '2020-12-05 11:08:10', '2020-12-05 11:08:22', 0.000000, 0.000000),
(211, 17, 3, 2, '2020-12-05 11:08:22', '2020-12-05 11:08:56', 0.000000, 0.000000),
(212, 17, 4, 2, '2020-12-05 11:08:56', '2020-12-05 11:09:09', 0.000000, 0.000000),
(213, 17, 5, 2, '2020-12-05 11:09:09', '2020-12-05 11:09:26', 17.999718, -92.958183),
(214, 17, 6, 2, '2020-12-05 11:09:26', '2020-12-05 11:09:38', 17.999718, -92.958183),
(215, 17, 7, 2, '2020-12-05 11:09:38', '2020-12-05 11:09:48', 17.999718, -92.958183),
(216, 17, 8, 2, '2020-12-05 11:09:48', '2020-12-05 11:10:00', 17.999718, -92.958183),
(217, 17, 9, 2, '2020-12-05 11:10:00', '2020-12-05 11:10:44', 17.999718, -92.958183),
(218, 17, 10, 2, '2020-12-05 11:10:44', '2020-12-05 11:10:53', 17.999718, -92.958183),
(219, 17, 11, 2, '2020-12-05 11:10:53', '2020-12-05 11:11:02', 17.999718, -92.958183),
(220, 17, 12, 2, '2020-12-05 11:11:02', '2020-12-05 11:11:13', 17.999718, -92.958183),
(221, 17, 13, 1, '2020-12-05 11:11:13', '0000-00-00 00:00:00', 17.999718, -92.958183),
(222, 18, 1, 2, '2020-12-05 11:21:05', '2020-12-05 11:21:16', 0.000000, 0.000000),
(223, 18, 2, 2, '2020-12-05 11:21:16', '2020-12-05 11:21:23', 0.000000, 0.000000),
(224, 18, 3, 2, '2020-12-05 11:21:23', '2020-12-05 11:21:33', 0.000000, 0.000000),
(225, 18, 4, 2, '2020-12-05 11:21:33', '2020-12-05 11:21:54', 0.000000, 0.000000),
(226, 18, 5, 2, '2020-12-05 11:21:54', '2020-12-05 11:22:05', 17.999722, -92.958183),
(227, 18, 6, 2, '2020-12-05 11:22:05', '2020-12-05 11:22:13', 17.999722, -92.958183),
(228, 18, 7, 2, '2020-12-05 11:22:13', '2020-12-05 11:22:20', 17.999722, -92.958183),
(229, 18, 8, 2, '2020-12-05 11:22:20', '2020-12-05 11:33:07', 17.999722, -92.958183),
(230, 18, 9, 2, '2020-12-05 11:33:07', '2020-12-05 11:33:44', 17.999722, -92.958183),
(231, 18, 10, 2, '2020-12-05 11:33:44', '2020-12-05 11:33:53', 17.999722, -92.958183),
(232, 18, 11, 2, '2020-12-05 11:33:53', '2020-12-05 11:34:01', 17.999722, -92.958183),
(233, 18, 12, 2, '2020-12-05 11:34:01', '2020-12-05 11:34:16', 17.999722, -92.958183),
(234, 18, 13, 1, '2020-12-05 11:34:16', '0000-00-00 00:00:00', 17.999722, -92.958183),
(235, 19, 1, 2, '2020-12-09 11:52:03', '2020-12-09 11:52:29', 0.000000, 0.000000),
(236, 19, 2, 2, '2020-12-09 11:52:29', '2020-12-09 11:52:41', 0.000000, 0.000000),
(237, 19, 3, 2, '2020-12-09 11:52:41', '2020-12-09 11:52:58', 0.000000, 0.000000),
(238, 19, 4, 2, '2020-12-09 11:52:58', '2020-12-09 11:57:20', 0.000000, 0.000000),
(239, 19, 5, 2, '2020-12-09 11:57:20', '2020-12-09 11:57:29', 17.999741, -92.958176),
(240, 19, 6, 2, '2020-12-09 11:57:29', '2020-12-09 11:57:37', 17.999725, -92.958176),
(241, 19, 7, 2, '2020-12-09 11:57:37', '2020-12-09 11:57:46', 17.999727, -92.958176),
(242, 19, 8, 2, '2020-12-09 11:57:46', '2020-12-09 11:57:55', 17.999727, -92.958176),
(243, 19, 9, 2, '2020-12-09 11:57:55', '2020-12-09 11:59:04', 17.999723, -92.958176),
(244, 19, 10, 2, '2020-12-09 11:59:04', '2020-12-09 11:59:14', 17.999723, -92.958176),
(245, 19, 11, 2, '2020-12-09 11:59:14', '2020-12-09 11:59:21', 17.999723, -92.958176),
(246, 19, 12, 2, '2020-12-09 11:59:21', '2020-12-09 11:59:29', 17.999723, -92.958176),
(247, 19, 13, 1, '2020-12-09 11:59:29', '0000-00-00 00:00:00', 17.999723, -92.958176);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_drivers`
--

DROP TABLE IF EXISTS `service_drivers`;
CREATE TABLE `service_drivers` (
  `idservice_driver` int(11) NOT NULL,
  `idservice` int(11) NOT NULL,
  `iddriver` int(11) NOT NULL,
  `observaciones` text,
  `current` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stages`
--

DROP TABLE IF EXISTS `stages`;
CREATE TABLE `stages` (
  `idstage` int(11) NOT NULL,
  `name_stage` varchar(45) DEFAULT NULL,
  `enable_stage` varchar(45) DEFAULT NULL,
  `color_stage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stages`
--

INSERT INTO `stages` (`idstage`, `name_stage`, `enable_stage`, `color_stage`) VALUES
(1, 'Registro', '0', '#16A085'),
(2, 'Surtido', '0', '#27AE60'),
(3, 'proceso de cobro', '0', '#F4D03F'),
(4, 'Listo para envío', '0', '#E67E22'),
(5, 'Aviso voy a la tienda', '0', '#5DADE2'),
(6, 'LLegada a la tienda', '0', '#8E44AD'),
(7, 'Pick up', '0', '#EC7063'),
(8, 'Salida de la tienda', '0', '#CB4335'),
(9, 'Entrega al cliente', '0', '#C39BD3'),
(10, 'Evidencia entregada', '0', '#D35400'),
(11, 'Regreso a tienda', '0', '#D35400'),
(12, 'Entregar documentos', '0', '#D35400'),
(13, 'Cierre de servicio', '0', '#55CF45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `idstate` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `state`
--

INSERT INTO `state` (`idstate`, `nombre`) VALUES
(1, 'Tabasco'),
(2, 'Guadalajara'),
(3, 'Queretaro'),
(4, 'Guanajuato'),
(5, 'Chihuahua'),
(6, 'Villahermosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_service`
--

DROP TABLE IF EXISTS `status_service`;
CREATE TABLE `status_service` (
  `idstatus_service` int(11) NOT NULL,
  `status_service` varchar(100) NOT NULL,
  `color_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `status_service`
--

INSERT INTO `status_service` (`idstatus_service`, `status_service`, `color_status`) VALUES
(1, 'Iniciado', '#2ECC71'),
(2, 'En proceso', '#fff021'),
(3, 'Finalizado', '#DC7633'),
(4, 'Cancelado', '#FFFFFF  '),
(5, 'Incidente', '#000000'),
(6, 'Archivado', '#02020a'),
(7, 'No entregado', '#a4947b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `idstore` int(11) NOT NULL,
  `idstate` int(11) NOT NULL,
  `name_store` varchar(100) NOT NULL,
  `show_store` int(11) NOT NULL DEFAULT '1',
  `latitude_store` text NOT NULL,
  `longitude_store` text NOT NULL,
  `num_tienda` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`idstore`, `idstate`, `name_store`, `show_store`, `latitude_store`, `longitude_store`, `num_tienda`) VALUES
(1, 1, 'Plaza Olmeca 2', 1, '17.9950742', '-92.9432679', '321'),
(2, 1, 'Plaza Crystal', 1, '17.9805929', '-92.9393583', '211'),
(3, 1, 'Mina', 1, '17.9980398', '-92.921569', '316'),
(4, 1, 'Carrizal', 1, '17.9884685', '-92.9631059', '033'),
(5, 3, 'Candiles', 1, '20.5464046', '-100.3972547', '095'),
(6, 3, 'Paseo', 1, '20.630668', '-100.35666', '185'),
(7, 3, 'Juriquilla', 1, '20.690386', '-100.449096', '186'),
(8, 3, 'Centro Sur', 1, '20.568825', '-100.3599141', '221'),
(9, 3, 'Bernardo Quintana', 1, '20.6171176', '-100.4084531', '245'),
(10, 6, 'olmeca villa', 1, '17.9950742', '-92.9432679', '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
CREATE TABLE `tarifas` (
  `idtarifa` int(11) NOT NULL,
  `idstate` int(11) NOT NULL,
  `idtype_service` int(11) NOT NULL,
  `de` float NOT NULL,
  `hasta` float NOT NULL,
  `costo` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`idtarifa`, `idstate`, `idtype_service`, `de`, `hasta`, `costo`) VALUES
(1, 1, 1, 0, 8, '110'),
(2, 1, 2, 0, 8, '110'),
(3, 2, 1, 0, 8, '110'),
(4, 2, 2, 0, 8, '110'),
(5, 3, 1, 0, 8, '110'),
(6, 3, 2, 0, 8, '110'),
(7, 4, 1, 0, 8, '110'),
(8, 4, 2, 0, 8, '110');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_actions`
--

DROP TABLE IF EXISTS `type_actions`;
CREATE TABLE `type_actions` (
  `idtype_actions` int(11) NOT NULL,
  `type_actions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `type_actions`
--

INSERT INTO `type_actions` (`idtype_actions`, `type_actions`) VALUES
(1, 'Crear servicios'),
(2, 'Crear consignaciones'),
(3, 'Enviar notificaciones'),
(4, 'Cambiar status del servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_horarios`
--

DROP TABLE IF EXISTS `type_horarios`;
CREATE TABLE `type_horarios` (
  `idhorario` int(11) NOT NULL,
  `horario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `type_horarios`
--

INSERT INTO `type_horarios` (`idhorario`, `horario`) VALUES
(1, '8 a.m - 10 a.m'),
(2, '10 a.m - 12 p.m'),
(3, '12 p.m - 2 p.m'),
(4, '2 p.m - 4 p.m'),
(5, '4 p.m - 6 p.m'),
(6, '6 p.m - 8 p.m'),
(7, '8 p.m - 10 p.m');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_payments`
--

DROP TABLE IF EXISTS `type_payments`;
CREATE TABLE `type_payments` (
  `idtype_payment` int(11) NOT NULL,
  `type_payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `type_payments`
--

INSERT INTO `type_payments` (`idtype_payment`, `type_payment`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta'),
(3, 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_services`
--

DROP TABLE IF EXISTS `type_services`;
CREATE TABLE `type_services` (
  `idtype_service` int(11) NOT NULL,
  `type_service` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `type_services`
--

INSERT INTO `type_services` (`idtype_service`, `type_service`) VALUES
(1, 'Supermercado'),
(2, 'Linea blanca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `idpeople` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `profile_picture` varchar(45) DEFAULT NULL,
  `enable_user` int(11) DEFAULT NULL,
  `register` datetime DEFAULT NULL,
  `idstate` int(11) NOT NULL,
  `idregion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`iduser`, `idpeople`, `idrol`, `user`, `password`, `token`, `profile_picture`, `enable_user`, `register`, `idstate`, `idregion`) VALUES
(1, 1, 1, 'agencia', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, '2.jpg', 0, '2018-09-29 00:00:00', 0, NULL),
(106, 116, 3, 'driver_tabasco', 'de89586ece48bda66efaf2ba21996609ec28270912274443893ae2f6249f70cb', '', '2.jpg', 0, '0000-00-00 00:00:00', 1, NULL),
(107, 117, 2, 'mcarrillo', 'de89586ece48bda66efaf2ba21996609ec28270912274443893ae2f6249f70cb', '', '2.jpg', 0, '0000-00-00 00:00:00', 1, NULL),
(108, 118, 4, 'gerente_to', 'de89586ece48bda66efaf2ba21996609ec28270912274443893ae2f6249f70cb', '', '2.jpg', 0, '0000-00-00 00:00:00', 1, NULL),
(109, 119, 3, 'driver_queretaro', 'd233c6554e57b81dd96c71edbfc30b32c464a4e61fbe44359443b229c467ba5c', '', '2.jpg', 0, '0000-00-00 00:00:00', 3, NULL),
(110, 120, 2, 'emch_qcan', 'd233c6554e57b81dd96c71edbfc30b32c464a4e61fbe44359443b229c467ba5c', '', '2.jpg', 0, '0000-00-00 00:00:00', 3, NULL),
(111, 121, 1, 'orla', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', '', '', 0, '0000-00-00 00:00:00', 0, NULL),
(112, 122, 2, 'emch_to', 'd233c6554e57b81dd96c71edbfc30b32c464a4e61fbe44359443b229c467ba5c', '', '', 0, '0000-00-00 00:00:00', 1, NULL),
(113, 123, 2, 'emch_to2', 'd233c6554e57b81dd96c71edbfc30b32c464a4e61fbe44359443b229c467ba5c', '', '', 0, '0000-00-00 00:00:00', 1, NULL),
(114, 124, 2, 'emch_to3', 'd233c6554e57b81dd96c71edbfc30b32c464a4e61fbe44359443b229c467ba5c', '', '', 0, '0000-00-00 00:00:00', 1, NULL),
(115, 125, 2, 'emch_to4', 'd233c6554e57b81dd96c71edbfc30b32c464a4e61fbe44359443b229c467ba5c', '', '', 0, '0000-00-00 00:00:00', 1, NULL),
(116, 126, 2, 'emch_to5', 'd233c6554e57b81dd96c71edbfc30b32c464a4e61fbe44359443b229c467ba5c', '', '', 0, '0000-00-00 00:00:00', 1, NULL),
(117, 127, 3, 'misjimlo', '88f723edbe34dcdc8b750650dffd4dace93ff8ba0a994ea2f211f452b293b3a7', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(118, 128, 3, 'sansanur', '159a8db19f3ff5ce01ece17ff2b8665def5ddbe29ca2f5954e47e7bfcabf14ed', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(119, 129, 4, 'gabillpe', '4dd13b972b6bcfaacdaf2ce28e7242e1b737108ae14dc6910b37302e64a7bc9e', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(120, 130, 3, 'edamlu', '92236e7dbd6d0c9cbd5b47c2dc0272ae0a54cabd1f463ac79a490a8bd8ee7816', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(121, 131, 3, 'carpeco', '299e678c0e564fb841c9433fb39899a42b52c16d8f6412b571741f6ae39fc50b', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(122, 132, 4, 'karabher', '7213b8328bc6a548cb61cac1eb639c36dd9021331d3a6e7186a3585f55871932', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(123, 133, 4, 'yuvengo', '7d2bac5c9048aaead956d5a89f331153c4105ae12df19aaa31047d1e447f28f0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(124, 134, 3, 'carpari', '167e6e67ced726ece389a674d06b2512e86bd113bccd60a1659a21e03178a1b0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(125, 135, 4, 'grerope', '634a5dc98baaacd8c45aed6e535744b00d4a22dc2e29b6d004d5b7eff66f25ec', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(126, 136, 3, 'erodo', 'a9994b3e6fba82cd4cd16bc91b4185adcfb5e4903d3d8ed6f8dbeac11156f76e', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(127, 137, 4, 'florgar', 'a3ac82269fce4bc968c41ef66a9ced9ea61a5936b515a58a845cfb180e3e9fbf', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(128, 138, 3, 'moirogar', '7b3cc3beacf873f7b7c523791dbd9f1e41c9399edd61fbf4906fa1b6f40cdd19', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(129, 139, 4, 'sandraqj', 'e6fa643c35562effb3f292ac9aa9bb6dbb087bc3eb126d57a8f2a0eb63b52eb6', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(130, 140, 4, 'antonioqj', 'a68fb4f1a85be007da9c39dbc9bf0e3715f78732138645c41f1d06ef50ac7f91', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(131, 141, 4, 'sandraqp', '9faac89e84caa164dadd28ba0001a76aaaee0506c171f9050e684575feae2751', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(132, 142, 4, 'antonioqp', 'b365f80abdfd8db1029b35448d520b648624942645ee868b4e25c323a3e580c1', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(133, 143, 4, 'sandraqcan', '7411759f6a6ea6c72af2debb6d34040c5ee28a3c11020a63778a1e51fe025c68', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(134, 144, 4, 'antonioqcan', '1b597a9ed5699425554a17dfd0e43c24e3d6da19c683ca9cc5a82917eb22047b', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(135, 145, 4, 'sandraqb', '610410dceb658cc9c694c3198a86b16e7cd9ce9609b44349c5468464b27351aa', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(136, 146, 4, 'antonioqb', 'e2eae8519b6118e25d127157a54673082c44ada66fdeb23e0c9ce164d092891b', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(137, 147, 4, 'sandraqsur', 'bd8d060bf8f6364901d77a790f03588595988dc6a5cc2eebdf87732fbef30361', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(138, 148, 4, 'antonioqsur', '8b77ff0a5881aac06c05971aecf9d95b66b5c30e189bde7e057086939c3d2ef7', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(139, 149, 2, 'esfloga', '63b7473e7dad9c3d88ff087c7b353baa00277c6a4e02ba9cd1cfba10272b6255', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(140, 150, 2, 'luisalegria', '0d10c30dcc498f43a5de5508dee485cd214865ad9b5bb4365f022245817061d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(141, 151, 2, 'crisrasi', 'abf84f1cf0ba2419abac72711c1c0b683e1eaa543a4d8747a6784ac1428280d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(142, 152, 2, 'xipehu', 'ea88c4b9aebf9ce6bf33437161a154fd9127a07e5de599bed17ab103c537c28f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(143, 153, 2, 'yecrume', '39f038277cf68ce276c798a8d8f5c9d3268f297bf37d17d8681516a66ab879bd', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(144, 154, 2, 'rsala', 'ebf799b3f5f65503a9547d5f499e5fb987d07e5c97dd2125cbc802a37bac907d', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(145, 155, 2, 'vlopezg', 'd00b250731c7a03eb956db84fcdf0db688d4d16f952f143f7946aa544800fc97', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(146, 156, 2, 'palaga', 'c3cde3b539bcea4618c5c6f29a48240625ccdb5854bc8cbae3139072c133746f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(147, 157, 2, 'jaormon', 'f05f4c25374d73915f23d8dc3168a6260f2e536924df4bb8eaf2c6cc181e7ece', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(148, 158, 2, 'aramirezp', 'd3e56d5d7ac325e19406c6943db637eeeff33bbdb86664a46ad296dc643241ae', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(149, 159, 2, 'dalues', 'ff7b62753efc523b78e201bf74423885efd19655d9a790e197cfb63a6754430a', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(150, 160, 4, 'testgerente', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', '', '', 0, '0000-00-00 00:00:00', 1, NULL),
(151, 161, 2, 'landeroluis', 'b6a9516af1e089859e4279b63b129b478d50958da93a1fce397cbbcda37dfa65', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(152, 162, 2, 'karabher_jur', '7213b8328bc6a548cb61cac1eb639c36dd9021331d3a6e7186a3585f55871932', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(153, 163, 2, 'crisrasi_jur', 'abf84f1cf0ba2419abac72711c1c0b683e1eaa543a4d8747a6784ac1428280d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(154, 164, 2, 'xipehu_jur', 'ea88c4b9aebf9ce6bf33437161a154fd9127a07e5de599bed17ab103c537c28f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(155, 165, 2, 'yecrume_jur', '39f038277cf68ce276c798a8d8f5c9d3268f297bf37d17d8681516a66ab879bd', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(156, 166, 2, 'dalues_jur', 'ff7b62753efc523b78e201bf74423885efd19655d9a790e197cfb63a6754430a', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(157, 167, 2, 'yuvengo_jur', '7d2bac5c9048aaead956d5a89f331153c4105ae12df19aaa31047d1e447f28f0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(158, 168, 2, 'florgar_jur', 'a3ac82269fce4bc968c41ef66a9ced9ea61a5936b515a58a845cfb180e3e9fbf', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(159, 169, 2, 'vlopezg_jur', 'd00b250731c7a03eb956db84fcdf0db688d4d16f952f143f7946aa544800fc97', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(160, 170, 2, 'grerope_jur', '634a5dc98baaacd8c45aed6e535744b00d4a22dc2e29b6d004d5b7eff66f25ec', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(161, 171, 2, 'palaga_jur', 'c3cde3b539bcea4618c5c6f29a48240625ccdb5854bc8cbae3139072c133746f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(162, 172, 2, 'jaormon_jur', 'f05f4c25374d73915f23d8dc3168a6260f2e536924df4bb8eaf2c6cc181e7ece', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(163, 173, 2, 'rsala_jur', 'ebf799b3f5f65503a9547d5f499e5fb987d07e5c97dd2125cbc802a37bac907d', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(164, 174, 2, 'aramirezp_jur', 'd3e56d5d7ac325e19406c6943db637eeeff33bbdb86664a46ad296dc643241ae', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(165, 175, 2, 'gabillper_pas', '4dd13b972b6bcfaacdaf2ce28e7242e1b737108ae14dc6910b37302e64a7bc9e', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(166, 176, 2, 'esfloga_pas', '63b7473e7dad9c3d88ff087c7b353baa00277c6a4e02ba9cd1cfba10272b6255', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(167, 177, 2, 'luisalegria_pas', '0d10c30dcc498f43a5de5508dee485cd214865ad9b5bb4365f022245817061d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(168, 178, 2, 'landeroluis_pas', 'b6a9516af1e089859e4279b63b129b478d50958da93a1fce397cbbcda37dfa65', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(169, 179, 2, 'yuvengo_pas', '7d2bac5c9048aaead956d5a89f331153c4105ae12df19aaa31047d1e447f28f0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(170, 180, 2, 'florgar_pas', 'a3ac82269fce4bc968c41ef66a9ced9ea61a5936b515a58a845cfb180e3e9fbf', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(171, 181, 2, 'vlopezg_pas', 'd00b250731c7a03eb956db84fcdf0db688d4d16f952f143f7946aa544800fc97', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(172, 182, 2, 'grerope_pas', '634a5dc98baaacd8c45aed6e535744b00d4a22dc2e29b6d004d5b7eff66f25ec', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(173, 183, 2, 'palaga_pas', 'c3cde3b539bcea4618c5c6f29a48240625ccdb5854bc8cbae3139072c133746f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(174, 184, 2, 'jaormon_pas', 'f05f4c25374d73915f23d8dc3168a6260f2e536924df4bb8eaf2c6cc181e7ece', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(175, 185, 2, 'rsala_pas', 'ebf799b3f5f65503a9547d5f499e5fb987d07e5c97dd2125cbc802a37bac907d', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(176, 186, 2, 'aramirezp_pas', 'd3e56d5d7ac325e19406c6943db637eeeff33bbdb86664a46ad296dc643241ae', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(177, 187, 2, 'karabher_can', '7213b8328bc6a548cb61cac1eb639c36dd9021331d3a6e7186a3585f55871932', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(178, 188, 2, 'crisrasi_can', 'abf84f1cf0ba2419abac72711c1c0b683e1eaa543a4d8747a6784ac1428280d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(179, 189, 2, 'xipehu_can', 'ea88c4b9aebf9ce6bf33437161a154fd9127a07e5de599bed17ab103c537c28f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(180, 190, 2, 'yecrume_can', '39f038277cf68ce276c798a8d8f5c9d3268f297bf37d17d8681516a66ab879bd', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(181, 191, 2, 'dalues_can', 'ff7b62753efc523b78e201bf74423885efd19655d9a790e197cfb63a6754430a', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(182, 192, 2, 'gabillper_can', '4dd13b972b6bcfaacdaf2ce28e7242e1b737108ae14dc6910b37302e64a7bc9e', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(183, 193, 2, 'esfloga_can', '63b7473e7dad9c3d88ff087c7b353baa00277c6a4e02ba9cd1cfba10272b6255', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(184, 194, 2, 'luisalegria_can', '0d10c30dcc498f43a5de5508dee485cd214865ad9b5bb4365f022245817061d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(185, 195, 2, 'landeroluis_can', 'b6a9516af1e089859e4279b63b129b478d50958da93a1fce397cbbcda37dfa65', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(186, 196, 2, 'grerope_can', '634a5dc98baaacd8c45aed6e535744b00d4a22dc2e29b6d004d5b7eff66f25ec', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(187, 197, 2, 'palaga_can', 'c3cde3b539bcea4618c5c6f29a48240625ccdb5854bc8cbae3139072c133746f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(188, 198, 2, 'jaormon_can', 'f05f4c25374d73915f23d8dc3168a6260f2e536924df4bb8eaf2c6cc181e7ece', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(189, 199, 2, 'rsala_can', 'ebf799b3f5f65503a9547d5f499e5fb987d07e5c97dd2125cbc802a37bac907d', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(190, 200, 2, 'aramirezp_can', 'd3e56d5d7ac325e19406c6943db637eeeff33bbdb86664a46ad296dc643241ae', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(191, 201, 2, 'yuvengo_ber', '7d2bac5c9048aaead956d5a89f331153c4105ae12df19aaa31047d1e447f28f0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(192, 202, 2, 'florgar_ber', 'a3ac82269fce4bc968c41ef66a9ced9ea61a5936b515a58a845cfb180e3e9fbf', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(193, 203, 2, 'vlopezg_ber', 'd00b250731c7a03eb956db84fcdf0db688d4d16f952f143f7946aa544800fc97', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(194, 204, 2, 'karabher_ber', '7213b8328bc6a548cb61cac1eb639c36dd9021331d3a6e7186a3585f55871932', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(195, 205, 2, 'crisrasi_ber', 'abf84f1cf0ba2419abac72711c1c0b683e1eaa543a4d8747a6784ac1428280d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(196, 206, 2, 'xipehu_ber', 'ea88c4b9aebf9ce6bf33437161a154fd9127a07e5de599bed17ab103c537c28f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(197, 207, 2, 'yecrume_ber', '39f038277cf68ce276c798a8d8f5c9d3268f297bf37d17d8681516a66ab879bd', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(198, 208, 2, 'dalues_ber', 'ff7b62753efc523b78e201bf74423885efd19655d9a790e197cfb63a6754430a', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(199, 209, 2, 'gabillper_ber', '4dd13b972b6bcfaacdaf2ce28e7242e1b737108ae14dc6910b37302e64a7bc9e', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(200, 210, 2, 'esfloga_ber', '63b7473e7dad9c3d88ff087c7b353baa00277c6a4e02ba9cd1cfba10272b6255', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(201, 211, 2, 'luisalegria_ber', '0d10c30dcc498f43a5de5508dee485cd214865ad9b5bb4365f022245817061d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(202, 212, 2, 'landeroluis_ber', 'b6a9516af1e089859e4279b63b129b478d50958da93a1fce397cbbcda37dfa65', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(203, 213, 2, 'rsala_ber', 'ebf799b3f5f65503a9547d5f499e5fb987d07e5c97dd2125cbc802a37bac907d', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(204, 214, 2, 'aramirezp_ber', 'd3e56d5d7ac325e19406c6943db637eeeff33bbdb86664a46ad296dc643241ae', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(205, 215, 2, 'grerope_sur', '634a5dc98baaacd8c45aed6e535744b00d4a22dc2e29b6d004d5b7eff66f25ec', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(206, 216, 2, 'palaga_sur', 'c3cde3b539bcea4618c5c6f29a48240625ccdb5854bc8cbae3139072c133746f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(207, 217, 2, 'jaormon_sur', 'f05f4c25374d73915f23d8dc3168a6260f2e536924df4bb8eaf2c6cc181e7ece', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(208, 218, 2, 'yuvengo_sur', '7d2bac5c9048aaead956d5a89f331153c4105ae12df19aaa31047d1e447f28f0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(209, 219, 2, 'florgar_sur', 'a3ac82269fce4bc968c41ef66a9ced9ea61a5936b515a58a845cfb180e3e9fbf', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(210, 220, 2, 'vlopezg_sur', 'd00b250731c7a03eb956db84fcdf0db688d4d16f952f143f7946aa544800fc97', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(211, 221, 2, 'karabher_sur', '7213b8328bc6a548cb61cac1eb639c36dd9021331d3a6e7186a3585f55871932', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(212, 222, 2, 'crisrasi_sur', 'abf84f1cf0ba2419abac72711c1c0b683e1eaa543a4d8747a6784ac1428280d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(213, 223, 2, 'xipehu_sur', 'ea88c4b9aebf9ce6bf33437161a154fd9127a07e5de599bed17ab103c537c28f', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(214, 224, 2, 'yecrume_sur', '39f038277cf68ce276c798a8d8f5c9d3268f297bf37d17d8681516a66ab879bd', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(215, 225, 2, 'dalues_sur', 'ff7b62753efc523b78e201bf74423885efd19655d9a790e197cfb63a6754430a', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(216, 226, 2, 'gabillper_sur', '4dd13b972b6bcfaacdaf2ce28e7242e1b737108ae14dc6910b37302e64a7bc9e', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(217, 227, 2, 'esfloga_sur', '63b7473e7dad9c3d88ff087c7b353baa00277c6a4e02ba9cd1cfba10272b6255', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(218, 228, 2, 'luisalegria_sur', '0d10c30dcc498f43a5de5508dee485cd214865ad9b5bb4365f022245817061d0', '', '', 0, '0000-00-00 00:00:00', 3, NULL),
(219, 229, 2, 'landeroluis_sur', 'b6a9516af1e089859e4279b63b129b478d50958da93a1fce397cbbcda37dfa65', '', '', 0, '0000-00-00 00:00:00', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_notifications`
--

DROP TABLE IF EXISTS `user_notifications`;
CREATE TABLE `user_notifications` (
  `iduser_notification` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idnotification` int(11) NOT NULL,
  `status_notification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions` (
  `iduser_permission` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpermission` int(11) NOT NULL,
  `status_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_permissions`
--

INSERT INTO `user_permissions` (`iduser_permission`, `iduser`, `idpermission`, `status_permission`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_store`
--

DROP TABLE IF EXISTS `user_store`;
CREATE TABLE `user_store` (
  `iduser_store` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idstore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_store`
--

INSERT INTO `user_store` (`iduser_store`, `iduser`, `idstore`) VALUES
(1, 107, 1),
(2, 108, 1),
(3, 110, 5),
(4, 112, 1),
(5, 113, 1),
(6, 114, 1),
(7, 115, 1),
(8, 116, 1),
(9, 119, 7),
(10, 122, 6),
(11, 123, 5),
(12, 125, 9),
(13, 127, 5),
(14, 129, 7),
(15, 130, 7),
(16, 131, 6),
(17, 132, 6),
(18, 133, 5),
(19, 134, 5),
(20, 135, 9),
(21, 136, 9),
(22, 137, 8),
(23, 138, 8),
(24, 139, 7),
(25, 140, 7),
(26, 141, 6),
(27, 142, 6),
(28, 143, 6),
(29, 144, 8),
(30, 145, 5),
(31, 146, 9),
(32, 147, 9),
(33, 148, 8),
(34, 149, 6),
(35, 150, 1),
(36, 151, 7),
(37, 152, 7),
(38, 153, 7),
(39, 154, 7),
(40, 155, 7),
(41, 156, 7),
(42, 157, 7),
(43, 158, 7),
(44, 159, 7),
(45, 160, 7),
(46, 161, 7),
(47, 162, 7),
(48, 163, 7),
(49, 164, 7),
(50, 165, 6),
(51, 166, 6),
(52, 167, 6),
(53, 168, 6),
(54, 169, 6),
(55, 170, 6),
(56, 171, 6),
(57, 172, 6),
(58, 173, 6),
(59, 174, 6),
(60, 175, 6),
(61, 176, 6),
(62, 177, 5),
(63, 178, 5),
(64, 179, 5),
(65, 180, 5),
(66, 181, 5),
(67, 182, 5),
(68, 183, 5),
(69, 184, 5),
(70, 185, 5),
(71, 186, 5),
(72, 187, 5),
(73, 188, 5),
(74, 189, 5),
(75, 190, 5),
(76, 191, 9),
(77, 192, 9),
(78, 193, 9),
(79, 194, 9),
(80, 195, 9),
(81, 196, 9),
(82, 197, 9),
(83, 198, 9),
(84, 199, 9),
(85, 200, 9),
(86, 201, 9),
(87, 202, 9),
(88, 203, 9),
(89, 204, 9),
(90, 205, 8),
(91, 206, 8),
(92, 207, 8),
(93, 208, 8),
(94, 209, 8),
(95, 210, 8),
(96, 211, 8),
(97, 212, 8),
(98, 213, 8),
(99, 214, 8),
(100, 215, 8),
(101, 216, 8),
(102, 217, 8),
(103, 218, 8),
(104, 219, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versions`
--

DROP TABLE IF EXISTS `versions`;
CREATE TABLE `versions` (
  `idversion` int(11) NOT NULL,
  `platform` varchar(45) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `text1` text NOT NULL,
  `text2` text NOT NULL,
  `text3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `versions`
--

INSERT INTO `versions` (`idversion`, `platform`, `version`, `url`, `text1`, `text2`, `text3`) VALUES
(1, 'ios', '104', '#', 'Estimado usuario para una mejor experiencia de uso, navegación y seguridad,Bversion', 'Liberamos una nueva versión de la app.', 'Porfavor descarguela dando click en el siguiente botón'),
(2, 'android', '104', 'null', 'Estimado usuario', 'Liberaremos una nueva versión de la app muy pronto.', 'Estamos trabajando para una mejor experiencia de uso');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`idchat`);

--
-- Indices de la tabla `chatusers`
--
ALTER TABLE `chatusers`
  ADD PRIMARY KEY (`idchatusers`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `conf_reportes`
--
ALTER TABLE `conf_reportes`
  ADD PRIMARY KEY (`idconf_reportes`);

--
-- Indices de la tabla `consignations`
--
ALTER TABLE `consignations`
  ADD PRIMARY KEY (`idconsignation`),
  ADD KEY `fk_consignation_services_stages1_idx` (`idservices_stage`);

--
-- Indices de la tabla `consignations_products`
--
ALTER TABLE `consignations_products`
  ADD PRIMARY KEY (`idconsignation_product`);

--
-- Indices de la tabla `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`iddevice`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`iddireccion`);

--
-- Indices de la tabla `file_incident`
--
ALTER TABLE `file_incident`
  ADD PRIMARY KEY (`idfile_incident`),
  ADD KEY `fk_file_stage_incidents_stage1_idx` (`idincident_stage`);

--
-- Indices de la tabla `history_service`
--
ALTER TABLE `history_service`
  ADD PRIMARY KEY (`idhistory_service`),
  ADD KEY `fk_services_users1_idx` (`iduser_creator`);

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`idincidencia`);

--
-- Indices de la tabla `incidents_stage`
--
ALTER TABLE `incidents_stage`
  ADD PRIMARY KEY (`idincident_stage`),
  ADD KEY `fk_indicents_stage_services_stages1_idx` (`idservices_stage`),
  ADD KEY `fk_indicents_stage_users1_idx` (`iduser`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`idnotification`);

--
-- Indices de la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
  ADD PRIMARY KEY (`idpenalizacion`);

--
-- Indices de la tabla `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`idpeople`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`idpermission`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`idregion`);

--
-- Indices de la tabla `region_state`
--
ALTER TABLE `region_state`
  ADD PRIMARY KEY (`idregion_state`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`idservice`),
  ADD KEY `fk_services_users1_idx` (`iduser_creator`);

--
-- Indices de la tabla `services_detail`
--
ALTER TABLE `services_detail`
  ADD PRIMARY KEY (`idservice_detail`);

--
-- Indices de la tabla `services_file`
--
ALTER TABLE `services_file`
  ADD PRIMARY KEY (`idservice_file`);

--
-- Indices de la tabla `services_stages`
--
ALTER TABLE `services_stages`
  ADD PRIMARY KEY (`idservices_stage`),
  ADD KEY `fk_services_stages_idstages1_idx` (`idstage`),
  ADD KEY `fk_services_stages_services1_idx` (`idservice`);

--
-- Indices de la tabla `service_drivers`
--
ALTER TABLE `service_drivers`
  ADD PRIMARY KEY (`idservice_driver`);

--
-- Indices de la tabla `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`idstage`);

--
-- Indices de la tabla `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`idstate`);

--
-- Indices de la tabla `status_service`
--
ALTER TABLE `status_service`
  ADD PRIMARY KEY (`idstatus_service`);

--
-- Indices de la tabla `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`idstore`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`idtarifa`);

--
-- Indices de la tabla `type_actions`
--
ALTER TABLE `type_actions`
  ADD PRIMARY KEY (`idtype_actions`);

--
-- Indices de la tabla `type_horarios`
--
ALTER TABLE `type_horarios`
  ADD PRIMARY KEY (`idhorario`);

--
-- Indices de la tabla `type_payments`
--
ALTER TABLE `type_payments`
  ADD PRIMARY KEY (`idtype_payment`);

--
-- Indices de la tabla `type_services`
--
ALTER TABLE `type_services`
  ADD PRIMARY KEY (`idtype_service`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`),
  ADD KEY `fk_users_peoples_idx` (`idpeople`),
  ADD KEY `fk_users_rols1_idx` (`idrol`);

--
-- Indices de la tabla `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`iduser_notification`);

--
-- Indices de la tabla `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`iduser_permission`);

--
-- Indices de la tabla `user_store`
--
ALTER TABLE `user_store`
  ADD PRIMARY KEY (`iduser_store`);

--
-- Indices de la tabla `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`idversion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `idchat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de la tabla `chatusers`
--
ALTER TABLE `chatusers`
  MODIFY `idchatusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `conf_reportes`
--
ALTER TABLE `conf_reportes`
  MODIFY `idconf_reportes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `consignations`
--
ALTER TABLE `consignations`
  MODIFY `idconsignation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consignations_products`
--
ALTER TABLE `consignations_products`
  MODIFY `idconsignation_product` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `devices`
--
ALTER TABLE `devices`
  MODIFY `iddevice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `iddireccion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `file_incident`
--
ALTER TABLE `file_incident`
  MODIFY `idfile_incident` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `history_service`
--
ALTER TABLE `history_service`
  MODIFY `idhistory_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `idincidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `incidents_stage`
--
ALTER TABLE `incidents_stage`
  MODIFY `idincident_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `idnotification` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
  MODIFY `idpenalizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peoples`
--
ALTER TABLE `peoples`
  MODIFY `idpeople` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idpermission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `idregion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `region_state`
--
ALTER TABLE `region_state`
  MODIFY `idregion_state` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `idservice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `services_detail`
--
ALTER TABLE `services_detail`
  MODIFY `idservice_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `services_file`
--
ALTER TABLE `services_file`
  MODIFY `idservice_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `services_stages`
--
ALTER TABLE `services_stages`
  MODIFY `idservices_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT de la tabla `service_drivers`
--
ALTER TABLE `service_drivers`
  MODIFY `idservice_driver` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stages`
--
ALTER TABLE `stages`
  MODIFY `idstage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `state`
--
ALTER TABLE `state`
  MODIFY `idstate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `status_service`
--
ALTER TABLE `status_service`
  MODIFY `idstatus_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `stores`
--
ALTER TABLE `stores`
  MODIFY `idstore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  MODIFY `idtarifa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `type_actions`
--
ALTER TABLE `type_actions`
  MODIFY `idtype_actions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `type_horarios`
--
ALTER TABLE `type_horarios`
  MODIFY `idhorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `type_payments`
--
ALTER TABLE `type_payments`
  MODIFY `idtype_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `type_services`
--
ALTER TABLE `type_services`
  MODIFY `idtype_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT de la tabla `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `iduser_notification` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `iduser_permission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user_store`
--
ALTER TABLE `user_store`
  MODIFY `iduser_store` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `versions`
--
ALTER TABLE `versions`
  MODIFY `idversion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consignations`
--
ALTER TABLE `consignations`
  ADD CONSTRAINT `fk_consignation_services_stages1` FOREIGN KEY (`idservices_stage`) REFERENCES `services_stages` (`idservices_stage`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `file_incident`
--
ALTER TABLE `file_incident`
  ADD CONSTRAINT `fk_file_stage_incidents_stage1` FOREIGN KEY (`idincident_stage`) REFERENCES `incidents_stage` (`idincident_stage`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `incidents_stage`
--
ALTER TABLE `incidents_stage`
  ADD CONSTRAINT `fk_indicents_stage_services_stages1` FOREIGN KEY (`idservices_stage`) REFERENCES `services_stages` (`idservices_stage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_indicents_stage_users1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `fk_services_users1` FOREIGN KEY (`iduser_creator`) REFERENCES `users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `services_stages`
--
ALTER TABLE `services_stages`
  ADD CONSTRAINT `fk_services_stages_idstages1` FOREIGN KEY (`idstage`) REFERENCES `stages` (`idstage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_services_stages_services1` FOREIGN KEY (`idservice`) REFERENCES `services` (`idservice`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_peoples` FOREIGN KEY (`idpeople`) REFERENCES `peoples` (`idpeople`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_rols1` FOREIGN KEY (`idrol`) REFERENCES `rols` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
