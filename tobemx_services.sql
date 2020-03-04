-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-02-2020 a las 23:43:57
-- Versión del servidor: 5.6.46-86.2
-- Versión de PHP: 7.2.27

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
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `idstate` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `direccion` text NOT NULL,
  `referencia` text,
  `telefono` text,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcliente`, `idstate`, `nombre`, `direccion`, `referencia`, `telefono`, `latitude`, `longitude`) VALUES
(1, 3, 'jose trinidad', 'Blvd. Bernardo Quintana s/n, Parque Queretaro 2000, 76140 Santiago de Querétaro, Qro., Mexico', 'casa azul', '9931258118', 20.617197, -100.401176),
(2, 1, 'Juan Pérez', 'Corregidora 112, Centro, 76800 San Juan del Río, Qro., Mexico', 'casa morada', '4422151211', 20.389751, -100.001328),
(3, 3, 'Carlos Juárez López', 'Av Don Bosco 41, El Pueblito, 76900 El Pueblito, Qro., Mexico', 'club de  nutrición', '4425896325', 20.549652, -100.431175);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consignations`
--

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
(31, 26, 'android', 'earJ_p7SoFs:APA91bF3rvDyrCxIZF9g0Ko5Fip3FBJlDnWsIpUQwy5--SOdzEfyULrs1T54orktnUAFgDLJpkxYIPIeUSetjOF05SrT-LiNTT7Eypwo086iS3wPJGUrDyApkZJlDN2DEIYnO_IlCX8Z', 0),
(40, 35, 'android', '', 0),
(41, 43, 'android', 'f3xupfKPBhw:APA91bENO8eIcrhNlzVW0uVbsZRahd88WNmeyiseV1LqRMsI6fwmPpv_d68EGI9Io8KzeIqhhwXHcAHgObEvQLq-G3ia1Wb_3aKqxHkcWWD4J7Ne2TmOTtUeutmSQ7sU-K60W105f0cs', 0),
(42, 33, 'android', '', 0),
(43, 32, 'android', '', 0),
(44, 5, 'android', '', 0),
(45, 4, 'android', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `file_incident`
--

CREATE TABLE `file_incident` (
  `idfile_incident` int(11) NOT NULL,
  `idincident_stage` int(11) NOT NULL,
  `name_file` text,
  `type_file` text,
  `ext_file` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history_actions`
--

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
-- Estructura de tabla para la tabla `incidents_stage`
--

CREATE TABLE `incidents_stage` (
  `idincident_stage` int(11) NOT NULL,
  `idservices_stage` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `description_incident` text,
  `date_incident` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `idnotification` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `status_notification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penalizaciones`
--

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
(2, 3, '20:00:00', 30, 25, 10),
(3, 1, '20:00:00', 40, 25, 10),
(5, 4, '20:00:00', 50, 30, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peoples`
--

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
(1, 'Agencia', 'Tobe', 'Agencia Tobe', 'prueba@gmail.com', '9900000000'),
(2, 'Adolfo', 'Chofer', 'Adolfo Chofer', 'prueba@hotmail.com', '9900000000'),
(3, 'Empleado', 'Chedraui', 'Empleado Chedraui', 'chedraui@chedraui.com', '9900000000'),
(4, 'Sergio', 'Chofer', 'Sergio Chofer', 'prueba@tobe.mx', '9900000000'),
(5, 'empleado2', 'chedraui', 'empleado chedraui', 'prueba@gmail.com', '999999999'),
(6, 'julio', 'chofer', 'julio chofer', 'prueba@gmail.com', '999999999'),
(7, 'Sofia', 'Totosaus', 'Sofia Totosaus', '@chedraui.com', NULL),
(8, 'Roberto', 'Chablé', 'Roberto Chablé', '@chedraui.com', NULL),
(9, 'Cecilia', 'zuñiga', 'Cecilia zuñiga', '@chedraui.com', NULL),
(10, 'Xochil', 'Mayo', 'Xochil Mayo', '@chedraui.com', NULL),
(11, 'Ma. Ángeles', 'García', 'Ma. Ángeles García', '@chedraui.com', NULL),
(12, 'Carlos', 'Falcón', 'Carlos Falcón', '@chedraui.com', NULL),
(13, 'Yara', 'Jiménez Méndez', 'Yara Jiménez Méndez', '@chedraui.com', NULL),
(14, 'Héctor', 'Pérez Cruz', 'Héctor Pérez Cruz', '@chedraui.com', NULL),
(15, 'AIDE', 'GUTIERREZ RAMIREZ', 'AIDE GUTIERREZ RAMIREZ ', '@chedraui.com', '0000000000'),
(16, 'BEATRIZ', 'DELGADO DE LUIS ', 'BEATRIZ DELGADO DE LUIS ', '@chedraui.com', '0000000000'),
(17, 'VERONICA', 'GARCIA VAZQUEZ ', 'VERONICA GARCIA VAZQUEZ ', '@chedraui.com', '0000000000'),
(18, 'GUSTAVO', 'GARCIA RAMIREZ', 'GUSTAVO GARCIA RAMIREZ', '@chedraui.com', '0000000000'),
(19, 'CLAUDIA', 'BATIANTLA', 'CLAUDIA BATIANTLA', '@chedraui.com', '000000000'),
(20, 'GERMAN', 'ARISTA MANUEL', 'GERMAN ARISTA MANUEL', '@chedraui.com', '000000000'),
(21, 'Esperanza', 'Medina', 'Esperanza Medina', '@chedraui.com', '0000000000'),
(22, 'Oscar', 'Perez', 'Oscar Perez', '@chedraui.com', '0000000000'),
(24, 'Magaly', 'Jimenez', 'Magaly Jimenez', '@chedraui.com', '0000000000'),
(25, 'Claudia', 'Correa Diaz', 'Claudia Correa Diaz', '@chedraui.com', '000000000'),
(26, 'Azucena', 'Martinez Vega', 'Azucena Martinez Vega', '@chedraui.com', '0000000000'),
(27, 'Dulce', 'Martinez Rosales ', 'Dulce Martinez Rosales ', '@chedraui.com', '0000000000'),
(28, 'Carmen Nieto', 'Nieto', 'Carmen', '@chedraui.com', '0000000000'),
(29, 'Irlanda', 'Jimenez', 'Irlanda Jimenez', '@chedraui.com', '0000000000'),
(30, 'Eduardo', 'Martinez', 'Eduardo Martinez', '@chedraui.com', '0000000000'),
(31, 'Jorge', 'Sobreyra', 'Jorge Sobreyra', '@chedraui.com', '0000000000'),
(32, 'Fabian', 'Queretaro', 'Fabian', '@tobe.mx', '0000000000'),
(33, 'Antonio', 'Queretaro', 'Antonio', '@tobe.mx', '0000000000'),
(35, 'jonathan', 'orlaineta', 'jonathan orlaineta', 'jonathan.orlaineta@gmail.com', '9931570586'),
(40, 'Magdalena', 'Perez', 'Magdalena Perez', '@chedraui.com', '0000000000'),
(43, 'juan antonio', 'martinez', 'juan antonio martinez', 'juanantonio@tobe.mx', '0000000000'),
(44, 'juanito', 'Perez', 'juanito Perez', 'juanp@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

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
-- Estructura de tabla para la tabla `rols`
--

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
(3, 'Chofer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `idservice` int(11) NOT NULL,
  `iduser_creator` int(11) NOT NULL,
  `iduser_driver` int(11) DEFAULT NULL,
  `folio` varchar(300) DEFAULT NULL,
  `amount` double NOT NULL,
  `idtype_payment` int(11) DEFAULT NULL,
  `idtype_service` int(11) DEFAULT NULL,
  `name_client` text,
  `address_client` text,
  `phone_client` varchar(50) DEFAULT NULL,
  `email_client` varchar(50) DEFAULT NULL,
  `reference` text,
  `status_service` int(11) DEFAULT NULL,
  `date_register` datetime NOT NULL,
  `date_close` datetime NOT NULL,
  `indications` text,
  `latitude_address` double DEFAULT NULL,
  `longitude_address` double DEFAULT NULL,
  `number_pedido` text,
  `idhorario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`idservice`, `iduser_creator`, `iduser_driver`, `folio`, `amount`, `idtype_payment`, `idtype_service`, `name_client`, `address_client`, `phone_client`, `email_client`, `reference`, `status_service`, `date_register`, `date_close`, `indications`, `latitude_address`, `longitude_address`, `number_pedido`, `idhorario`) VALUES
(1, 26, 33, 'SD-000001', 200, 1, 1, 'jose trinidad', 'Blvd. Bernardo Quintana s/n, Parque Queretaro 2000, 76140 Santiago de Querétaro, Qro., Mexico', '9931258118', '', 'casa azul', 6, '2020-02-04 12:20:46', '2020-02-04 12:32:41', 'entregar a casa', 20.6171969, -100.4011781, '1', 3),
(2, 26, 33, 'SD-000002', 100, 1, 1, 'jose trinidad', 'Blvd. Bernardo Quintana s/n, Parque Queretaro 2000, 76140 Santiago de Querétaro, Qro., Mexico', '9931258118', '', 'casa azul', 6, '2020-02-04 12:51:54', '2020-02-04 13:53:02', 'ok', 20.617197, -100.401176, '2', 1),
(3, 26, 33, 'SD-000003', 25, 1, 1, 'jose trinidad', 'Blvd. Bernardo Quintana s/n, Parque Queretaro 2000, 76140 Santiago de Querétaro, Qro., Mexico', '9931258118', '', 'casa azul', 6, '2020-02-04 13:44:35', '2020-02-04 14:01:22', 'ok', 20.617197, -100.401176, '3', 3),
(4, 5, 4, 'SD-000004', 1500, 1, 1, 'Juan Pérez', 'Corregidora 112, Centro, 76800 San Juan del Río, Qro., Mexico', '4422151211', '', 'casa morada', 1, '2020-02-05 10:33:21', '0000-00-00 00:00:00', 'paga con 2000', 20.3897522, -100.001328, '4', 4),
(5, 16, 33, 'SD-000005', 1500, 1, 1, 'jose trinidad', 'Blvd. Bernardo Quintana s/n, Parque Queretaro 2000, 76140 Santiago de Querétaro, Qro., Mexico', '9931258118', '', 'casa azul', 1, '2020-02-05 10:42:14', '0000-00-00 00:00:00', 'paga con 2000', 20.617197, -100.401176, '5', 3),
(6, 16, 33, 'SD-000006', 500, 1, 1, 'Carlos Juárez López', 'Av Don Bosco 41, El Pueblito, 76900 El Pueblito, Qro., Mexico', '4425896325', '', 'club de  nutrición', 6, '2020-02-05 10:50:33', '2020-02-05 10:53:34', 'paga exacto', 20.5496532, -100.4311721, '6', 4),
(7, 26, 43, 'SD-000007', 100, 1, 1, 'Carlos Juárez López', 'Av Don Bosco 41, El Pueblito, 76900 El Pueblito, Qro., Mexico', '4425896325', '', 'club de  nutrición', 6, '2020-02-05 12:13:48', '2020-02-07 13:02:47', 'ok', 20.549652, -100.431175, '7', 1),
(8, 26, 43, 'SD-000008', 255, 1, 1, 'Carlos Juárez López', 'Av Don Bosco 41, El Pueblito, 76900 El Pueblito, Qro., Mexico', '4425896325', '', 'club de  nutrición', 6, '2020-02-05 12:18:56', '2020-02-05 12:30:04', 'gg', 20.549652, -100.431175, '8', 1),
(9, 26, 43, 'SD-000009', 100, 1, 1, 'Carlos Juárez López', 'Av Don Bosco 41, El Pueblito, 76900 El Pueblito, Qro., Mexico', '4425896325', '', 'club de  nutrición', 6, '2020-02-05 12:39:13', '2020-02-05 12:45:39', 'na', 20.549652, -100.431175, '9', 1),
(10, 26, 43, 'SD-000010', 369, 1, 1, 'Carlos Juárez López', 'Av Don Bosco 41, El Pueblito, 76900 El Pueblito, Qro., Mexico', '4425896325', '', 'club de  nutrición', 6, '2020-02-06 12:08:53', '2020-02-06 19:59:16', 'casa dos pisos', 20.549652, -100.431175, '10', 3),
(11, 26, 43, 'SD-000011', 125, 1, 1, 'Carlos Juárez López', 'Av Don Bosco 41, El Pueblito, 76900 El Pueblito, Qro., Mexico', '4425896325', '', 'club de  nutrición', 3, '2020-02-07 13:05:59', '2020-02-07 13:09:38', 'no aplica', 20.549652, -100.431175, '11', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_detail`
--

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
  `costo_vueltas` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services_detail`
--

INSERT INTO `services_detail` (`idservice_detail`, `idservice`, `km`, `costo`, `vueltas`, `tiene_penalizacion`, `aplicar_penalizacion`, `costo_penalizacion`, `total`, `costo_vueltas`) VALUES
(2, 1, 15.329, 250, 0, 0, 1, 0, 250, 0),
(3, 2, 955.431, 1500, 0, 0, 1, 0, 1500, 0),
(4, 3, 955.431, 11358.7, 0, 0, 1, 0, 11358.7, 0),
(5, 6, 15.907, 500, 0, 0, 1, 0, 500, 0),
(6, 8, 955.432, 0, 0, 0, 1, 0, 0, 0),
(7, 9, 955.429, 15250.6, 1, 0, 1, 0, 30501.2, 15250.6),
(8, 10, 954.881, 0, 0, 0, 1, 0, 0, 0),
(9, 4, 4.702, 80, 0, 1, 1, 40, 120, 0),
(10, 7, 955.427, 12856.7, 0, 0, 1, 0, 12856.7, 0),
(11, 11, 955.427, 0, 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_file`
--

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
(1, 1, '1-evidence-1.jpg', 'jpg', 'imagen'),
(2, 9, '9-evidence-1.jpg', 'jpg', 'imagen'),
(3, 20, '20-evidence-1.jpg', 'jpg', 'imagen'),
(4, 31, '31-evidence-1.jpg', 'jpg', 'imagen'),
(5, 34, '34-evidence-1.jpg', 'jpg', 'imagen'),
(6, 45, '45-evidence-1.jpg', 'jpg', 'imagen'),
(7, 56, '56-evidence-1.jpg', 'jpg', 'imagen'),
(8, 64, '64-evidence-1.jpg', 'jpg', 'imagen'),
(9, 89, '89-evidence-1.jpg', 'jpg', 'imagen'),
(10, 102, '102-evidence-1.jpg', 'jpg', 'imagen'),
(11, 102, '102-evidence-1.jpg', 'jpg', 'imagen'),
(12, 115, '115-evidence-1.jpg', 'jpg', 'imagen'),
(13, 43, '43-evidence-1.jpg', 'jpg', 'imagen'),
(14, 76, '76-evidence-1.jpg', 'jpg', 'imagen'),
(15, 130, '130-evidence-1.jpg', 'jpg', 'imagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_stages`
--

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
(1, 1, 1, 2, '2020-02-04 12:20:46', '2020-02-04 12:21:21', 0.000000, 0.000000),
(2, 1, 2, 2, '2020-02-04 12:21:21', '2020-02-04 12:21:29', 17.987411, -92.945015),
(3, 1, 3, 2, '2020-02-04 12:21:29', '2020-02-04 12:21:59', 17.987411, -92.945015),
(4, 1, 4, 2, '2020-02-04 12:21:59', '2020-02-04 12:24:11', 17.987396, -92.945000),
(5, 1, 5, 2, '2020-02-04 12:24:11', '2020-02-04 12:26:44', 20.608311, -100.185143),
(6, 1, 6, 2, '2020-02-04 12:26:44', '2020-02-04 12:26:57', 17.987396, -92.945015),
(7, 1, 7, 2, '2020-02-04 12:26:57', '2020-02-04 12:27:04', 20.617298, -100.401100),
(8, 1, 8, 2, '2020-02-04 12:27:04', '2020-02-04 12:27:22', 20.617298, -100.401100),
(9, 1, 9, 2, '2020-02-04 12:27:22', '2020-02-04 12:32:41', 20.617298, -100.401100),
(10, 1, 10, 2, '2020-02-04 12:32:41', '2020-02-04 12:33:20', 20.617298, -100.401100),
(11, 1, 11, 1, '2020-02-04 12:33:20', '0000-00-00 00:00:00', 20.617298, -100.401100),
(12, 2, 1, 2, '2020-02-04 12:51:54', '2020-02-04 12:52:07', 0.000000, 0.000000),
(13, 2, 2, 2, '2020-02-04 12:52:07', '2020-02-04 12:52:13', 17.987411, -92.945015),
(14, 2, 3, 2, '2020-02-04 12:52:13', '2020-02-04 12:52:22', 17.987411, -92.945015),
(15, 2, 4, 2, '2020-02-04 12:52:22', '2020-02-04 12:52:28', 17.987406, -92.945007),
(16, 2, 5, 2, '2020-02-04 12:52:28', '2020-02-04 12:52:42', 17.987398, -92.945015),
(17, 2, 6, 2, '2020-02-04 12:52:42', '2020-02-04 12:52:48', 17.987425, -92.945023),
(18, 2, 7, 2, '2020-02-04 12:52:48', '2020-02-04 12:52:54', 17.987402, -92.945015),
(19, 2, 8, 2, '2020-02-04 12:52:54', '2020-02-04 12:53:25', 17.987398, -92.945015),
(20, 2, 9, 2, '2020-02-04 12:53:25', '2020-02-04 13:53:02', 17.987427, -92.945023),
(21, 2, 10, 2, '2020-02-04 13:53:02', '2020-02-04 13:53:07', 17.987396, -92.945000),
(22, 2, 11, 1, '2020-02-04 13:53:07', '0000-00-00 00:00:00', 17.987402, -92.945015),
(23, 3, 1, 2, '2020-02-04 13:44:35', '2020-02-04 13:44:48', 0.000000, 0.000000),
(24, 3, 2, 2, '2020-02-04 13:44:48', '2020-02-04 13:44:53', 17.987406, -92.945007),
(25, 3, 3, 2, '2020-02-04 13:44:53', '2020-02-04 13:45:03', 17.987406, -92.945007),
(26, 3, 4, 2, '2020-02-04 13:45:03', '2020-02-04 13:59:59', 17.987396, -92.945007),
(27, 3, 5, 2, '2020-02-04 13:59:59', '2020-02-04 14:00:26', 17.987396, -92.945000),
(28, 3, 6, 2, '2020-02-04 14:00:26', '2020-02-04 14:00:32', 17.987398, -92.945007),
(29, 3, 7, 2, '2020-02-04 14:00:32', '2020-02-04 14:00:45', 17.987398, -92.945015),
(30, 3, 8, 2, '2020-02-04 14:00:45', '2020-02-04 14:01:12', 17.987398, -92.945015),
(31, 3, 9, 2, '2020-02-04 14:01:12', '2020-02-04 14:01:22', 17.987396, -92.945000),
(32, 3, 10, 2, '2020-02-04 14:01:22', '2020-02-04 14:01:28', 17.987396, -92.945015),
(33, 3, 11, 1, '2020-02-04 14:01:28', '0000-00-00 00:00:00', 17.987398, -92.945023),
(34, 4, 1, 2, '2020-02-05 10:33:21', '2020-02-06 20:03:15', 0.000000, 0.000000),
(35, 4, 2, 2, '2020-02-06 20:03:15', '2020-02-06 20:03:47', 17.999737, -92.958191),
(36, 4, 3, 2, '2020-02-06 20:03:47', '2020-02-06 20:04:11', 17.999737, -92.958191),
(37, 4, 4, 2, '2020-02-06 20:04:11', '2020-02-06 20:04:21', 17.999737, -92.958191),
(38, 4, 5, 2, '2020-02-06 20:04:21', '2020-02-06 20:04:30', 17.999706, -92.958153),
(39, 4, 6, 2, '2020-02-06 20:04:30', '2020-02-06 20:04:43', 17.999706, -92.958153),
(40, 4, 7, 2, '2020-02-06 20:04:43', '2020-02-06 20:04:50', 17.999706, -92.958153),
(41, 4, 8, 2, '2020-02-06 20:04:50', '2020-02-06 20:04:56', 17.999706, -92.958153),
(42, 4, 9, 2, '2020-02-06 20:04:56', '2020-02-06 20:05:23', 17.999706, -92.958153),
(43, 4, 10, 2, '2020-02-06 20:05:23', '2020-02-06 20:06:06', 17.999706, -92.958153),
(44, 4, 11, 2, '2020-02-06 20:06:06', '2020-02-06 20:06:12', 17.999706, -92.958153),
(45, 5, 1, 2, '2020-02-05 10:42:14', '2020-02-05 10:43:45', 0.000000, 0.000000),
(46, 5, 2, 2, '2020-02-05 10:43:45', '2020-02-05 10:44:57', 20.587246, -100.399048),
(47, 5, 3, 2, '2020-02-05 10:44:57', '2020-02-05 10:44:59', 20.587246, -100.399048),
(48, 5, 4, 2, '2020-02-05 10:44:59', '2020-02-05 10:45:51', 20.587246, -100.399048),
(49, 5, 5, 1, '2020-02-05 10:45:51', '0000-00-00 00:00:00', 20.587248, -100.399055),
(50, 5, 6, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(51, 5, 7, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(52, 5, 8, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(53, 5, 9, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(54, 5, 10, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(55, 5, 11, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(56, 6, 1, 2, '2020-02-05 10:50:33', '2020-02-05 10:51:04', 0.000000, 0.000000),
(57, 6, 2, 2, '2020-02-05 10:51:04', '2020-02-05 10:51:18', 20.587280, -100.399063),
(58, 6, 3, 2, '2020-02-05 10:51:18', '2020-02-05 10:51:35', 20.587280, -100.399063),
(59, 6, 4, 2, '2020-02-05 10:51:35', '2020-02-05 10:52:03', 20.587236, -100.399048),
(60, 6, 5, 2, '2020-02-05 10:52:03', '2020-02-05 10:52:28', 20.587236, -100.399048),
(61, 6, 6, 2, '2020-02-05 10:52:28', '2020-02-05 10:52:37', 20.587280, -100.399063),
(62, 6, 7, 2, '2020-02-05 10:52:37', '2020-02-05 10:52:56', 20.587242, -100.399055),
(63, 6, 8, 2, '2020-02-05 10:52:56', '2020-02-05 10:53:25', 20.587236, -100.399055),
(64, 6, 9, 2, '2020-02-05 10:53:25', '2020-02-05 10:53:34', 20.587248, -100.399048),
(65, 6, 10, 1, '2020-02-05 10:53:34', '0000-00-00 00:00:00', 20.587257, -100.399055),
(66, 6, 11, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0.000000, 0.000000),
(67, 7, 1, 2, '2020-02-05 12:13:48', '2020-02-05 12:14:07', 0.000000, 0.000000),
(68, 7, 2, 2, '2020-02-05 12:14:07', '2020-02-05 12:14:26', 17.987398, -92.945015),
(69, 7, 3, 2, '2020-02-05 12:14:26', '2020-02-05 12:16:24', 17.987398, -92.945015),
(70, 7, 4, 2, '2020-02-05 12:16:24', '2020-02-07 13:00:48', 17.987398, -92.945015),
(71, 7, 5, 2, '2020-02-07 13:00:48', '2020-02-07 13:00:58', 17.987396, -92.944992),
(72, 7, 6, 2, '2020-02-07 13:00:58', '2020-02-07 13:01:44', 17.987396, -92.944992),
(73, 7, 7, 2, '2020-02-07 13:01:44', '2020-02-07 13:01:56', 17.987394, -92.944977),
(74, 7, 8, 2, '2020-02-07 13:01:56', '2020-02-07 13:02:03', 17.987394, -92.944977),
(75, 7, 9, 2, '2020-02-07 13:02:03', '2020-02-07 13:02:22', 17.987394, -92.944977),
(76, 7, 10, 2, '2020-02-07 13:02:22', '2020-02-07 13:02:40', 17.987394, -92.944992),
(77, 7, 11, 2, '2020-02-07 13:02:40', '2020-02-07 13:02:47', 17.987394, -92.944992),
(78, 7, 12, 2, '2020-02-07 13:02:47', '2020-02-07 13:03:09', 17.987394, -92.944992),
(79, 7, 13, 1, '2020-02-07 13:03:09', '0000-00-00 00:00:00', 17.987394, -92.944992),
(80, 8, 1, 2, '2020-02-05 12:18:56', '2020-02-05 12:19:16', 0.000000, 0.000000),
(81, 8, 2, 2, '2020-02-05 12:19:16', '2020-02-05 12:19:26', 17.987398, -92.945015),
(82, 8, 3, 2, '2020-02-05 12:19:26', '2020-02-05 12:19:48', 17.987398, -92.945015),
(83, 8, 4, 2, '2020-02-05 12:19:48', '2020-02-05 12:20:04', 17.987398, -92.945015),
(84, 8, 5, 2, '2020-02-05 12:20:04', '2020-02-05 12:20:55', 17.987402, -92.945015),
(85, 8, 6, 2, '2020-02-05 12:20:55', '2020-02-05 12:28:35', 17.987402, -92.945015),
(86, 8, 7, 2, '2020-02-05 12:28:35', '2020-02-05 12:28:50', 17.987398, -92.945015),
(87, 8, 8, 2, '2020-02-05 12:28:50', '2020-02-05 12:29:02', 17.987392, -92.945030),
(88, 8, 9, 2, '2020-02-05 12:29:02', '2020-02-05 12:29:34', 17.987398, -92.945007),
(89, 8, 10, 2, '2020-02-05 12:29:34', '2020-02-05 12:29:49', 17.987398, -92.945007),
(90, 8, 11, 2, '2020-02-05 12:29:49', '2020-02-05 12:30:04', 17.987398, -92.945007),
(91, 8, 12, 2, '2020-02-05 12:30:04', '2020-02-05 12:30:23', 17.987396, -92.945007),
(92, 8, 13, 1, '2020-02-05 12:30:23', '0000-00-00 00:00:00', 17.987396, -92.945007),
(93, 9, 1, 2, '2020-02-05 12:39:13', '2020-02-05 12:39:25', 0.000000, 0.000000),
(94, 9, 2, 2, '2020-02-05 12:39:25', '2020-02-05 12:39:36', 17.987398, -92.945015),
(95, 9, 3, 2, '2020-02-05 12:39:36', '2020-02-05 12:39:45', 17.987398, -92.945015),
(96, 9, 4, 2, '2020-02-05 12:39:45', '2020-02-05 12:39:57', 17.987398, -92.945015),
(97, 9, 5, 2, '2020-02-05 12:39:57', '2020-02-05 12:42:13', 17.987396, -92.945000),
(98, 9, 6, 2, '2020-02-05 12:42:13', '2020-02-05 12:44:29', 17.987396, -92.945000),
(99, 9, 7, 1, '2020-02-05 12:44:29', '2020-02-05 12:43:12', 17.987398, -92.945015),
(100, 9, 8, 2, '2020-02-05 12:43:12', '2020-02-05 12:43:38', 17.987396, -92.945000),
(101, 9, 9, 2, '2020-02-05 12:43:38', '2020-02-05 12:45:11', 17.987396, -92.945000),
(102, 9, 10, 2, '2020-02-05 12:45:11', '2020-02-05 12:45:20', 17.987402, -92.945015),
(103, 9, 11, 2, '2020-02-05 12:45:20', '2020-02-05 12:45:39', 17.987402, -92.945015),
(104, 9, 12, 2, '2020-02-05 12:45:39', '2020-02-05 12:45:53', 17.987402, -92.945015),
(105, 9, 13, 1, '2020-02-05 12:45:53', '0000-00-00 00:00:00', 17.987402, -92.945015),
(106, 10, 1, 2, '2020-02-06 12:08:53', '2020-02-06 12:10:01', 0.000000, 0.000000),
(107, 10, 2, 2, '2020-02-06 12:10:01', '2020-02-06 19:55:55', 17.987398, -92.945015),
(108, 10, 3, 2, '2020-02-06 19:55:55', '2020-02-06 19:56:16', 17.999737, -92.958199),
(109, 10, 4, 2, '2020-02-06 19:56:16', '2020-02-06 19:57:00', 17.999737, -92.958199),
(110, 10, 5, 2, '2020-02-06 19:57:00', '2020-02-06 19:57:21', 17.999706, -92.958153),
(111, 10, 6, 2, '2020-02-06 19:57:21', '2020-02-06 19:57:59', 17.999706, -92.958153),
(112, 10, 7, 2, '2020-02-06 19:57:59', '2020-02-06 19:58:07', 17.999737, -92.958199),
(113, 10, 8, 2, '2020-02-06 19:58:07', '2020-02-06 19:58:18', 17.999706, -92.958153),
(114, 10, 9, 2, '2020-02-06 19:58:18', '2020-02-06 19:58:53', 17.999706, -92.958153),
(115, 10, 10, 2, '2020-02-06 19:58:53', '2020-02-06 19:59:05', 17.999706, -92.958153),
(116, 10, 11, 2, '2020-02-06 19:59:05', '2020-02-06 19:59:16', 17.999706, -92.958153),
(117, 10, 12, 2, '2020-02-06 19:59:16', '2020-02-06 19:59:49', 17.999706, -92.958153),
(118, 10, 13, 1, '2020-02-06 19:59:49', '0000-00-00 00:00:00', 17.999706, -92.958153),
(119, 4, 12, 2, NULL, '2020-02-06 20:13:26', NULL, NULL),
(120, 4, 13, 1, '2020-02-06 20:13:26', NULL, 17.999706, -92.958153),
(121, 11, 1, 2, '2020-02-07 13:05:59', '2020-02-07 13:06:17', 0.000000, 0.000000),
(122, 11, 2, 2, '2020-02-07 13:06:17', '2020-02-07 13:06:24', 17.987394, -92.944984),
(123, 11, 3, 2, '2020-02-07 13:06:24', '2020-02-07 13:06:56', 17.987394, -92.944984),
(124, 11, 4, 2, '2020-02-07 13:06:56', '2020-02-07 13:07:41', 17.987394, -92.944984),
(125, 11, 5, 2, '2020-02-07 13:07:41', '2020-02-07 13:08:12', 17.987394, -92.944977),
(126, 11, 6, 2, '2020-02-07 13:08:12', '2020-02-07 13:08:43', 17.987394, -92.944977),
(127, 11, 7, 2, '2020-02-07 13:08:43', '2020-02-07 13:08:50', 17.987394, -92.944977),
(128, 11, 8, 2, '2020-02-07 13:08:50', '2020-02-07 13:08:57', 17.987394, -92.944977),
(129, 11, 9, 2, '2020-02-07 13:08:57', '2020-02-07 13:09:19', 17.987394, -92.944977),
(130, 11, 10, 2, '2020-02-07 13:09:19', '2020-02-07 13:09:27', 17.987394, -92.944977),
(131, 11, 11, 2, '2020-02-07 13:09:27', '2020-02-07 13:09:38', 17.987392, -92.944977),
(132, 11, 12, 2, '2020-02-07 13:09:38', '2020-02-07 13:09:47', 17.987392, -92.944977),
(133, 11, 13, 1, '2020-02-07 13:09:47', '0000-00-00 00:00:00', 17.987392, -92.944977);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stages`
--

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
(9, 'Entrega al cliente\r\n', '0', '#C39BD3'),
(10, 'Evidencia entregada', '0', '#D35400'),
(11, 'Regreso a tienda', '0', '#D35400'),
(12, 'Entregar documentos', '0', '#D35400'),
(13, 'Cierre de servicio', '0', '#55CF45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state`
--

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
(4, 'Guanajuato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_service`
--

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
(2, 'En proceso', '#5DADE2'),
(3, 'Finalizado', '#DC7633'),
(4, 'Cancelado', '#C0392B  '),
(5, 'Incidente', '#E62231'),
(6, 'Archivado', '#DC7633');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

CREATE TABLE `stores` (
  `idstore` int(11) NOT NULL,
  `idstate` int(11) NOT NULL,
  `name_store` varchar(100) NOT NULL,
  `show_store` int(11) NOT NULL DEFAULT '1',
  `latitude_store` text NOT NULL,
  `longitude_store` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`idstore`, `idstate`, `name_store`, `show_store`, `latitude_store`, `longitude_store`) VALUES
(1, 1, 'Plaza Olmeca', 1, '17.9950742', '-92.9432679'),
(2, 1, 'Plaza Crystal', 1, '17.9805929', '-92.9393583'),
(3, 1, 'Mina', 1, '17.9980398', '-92.921569'),
(4, 1, 'Carrizal', 1, '17.9884685', '-92.9631059'),
(5, 3, 'CANDILES', 1, '20.5464046', '-100.3972547'),
(6, 3, 'PASEO QUERETARO', 1, '20.630527', '-100.3571967'),
(7, 3, 'JURIQUILLA ', 1, '20.690386', '-100.449096'),
(8, 3, 'CENTRO SUR', 1, '20.568825', '-100.3599141'),
(9, 3, 'BERNARDO QUINTANA', 1, '20.6171176', '-100.4084531');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

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
(1, 2, 1, 0, 5, '100'),
(2, 2, 1, 5, 8, '130'),
(3, 2, 1, 8, 10, '150'),
(4, 2, 1, 10, 15, '200'),
(5, 2, 1, 15, 20, '250'),
(6, 3, 1, 0, 5, '100'),
(7, 3, 1, 5, 8, '130'),
(10, 3, 1, 8, 10, '150'),
(11, 3, 1, 10, 15, '200'),
(12, 3, 1, 15, 20, '250'),
(13, 2, 2, 0, 5, '150'),
(14, 2, 2, 5, 8, '190'),
(15, 2, 2, 8, 10, '230'),
(16, 2, 2, 10, 15, '330'),
(17, 2, 2, 15, 20, '430'),
(18, 3, 2, 0, 5, '150'),
(19, 3, 2, 5, 8, '190'),
(20, 3, 2, 8, 10, '230'),
(21, 3, 2, 10, 15, '330'),
(22, 3, 2, 15, 20, '430'),
(23, 1, 1, 0, 5, '80'),
(24, 1, 2, 0, 5, '120'),
(25, 1, 1, 5, 8, '100'),
(26, 1, 2, 5, 8, '160'),
(27, 1, 1, 8, 10, '120'),
(28, 1, 2, 8, 10, '200'),
(29, 1, 1, 10, 15, '170'),
(30, 1, 2, 10, 15, '300'),
(31, 1, 1, 15, 20, '220'),
(32, 1, 2, 15, 20, '400'),
(33, 3, 1, 20, 25, '290'),
(34, 3, 1, 25, 30, '340'),
(35, 3, 1, 30, 35, '390'),
(36, 3, 1, 35, 40, '440'),
(37, 3, 2, 20, 25, '500'),
(38, 3, 2, 25, 30, '550'),
(39, 3, 2, 30, 35, '600'),
(40, 3, 2, 35, 40, '650');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_actions`
--

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

CREATE TABLE `type_services` (
  `idtype_service` int(11) NOT NULL,
  `type_service` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `type_services`
--

INSERT INTO `type_services` (`idtype_service`, `type_service`) VALUES
(1, 'Normal'),
(2, 'Linea blanca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

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
  `idstate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`iduser`, `idpeople`, `idrol`, `user`, `password`, `token`, `profile_picture`, `enable_user`, `register`, `idstate`) VALUES
(1, 1, 1, 'agencia', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2018-09-29 00:00:00', 0),
(2, 2, 3, 'adolfo', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, '2.jpg', 0, '2018-09-29 00:00:00', 1),
(3, 3, 2, 'olmeca', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2018-09-29 00:00:00', 1),
(4, 4, 3, 'sergio', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, '2.jpg', 0, '2018-09-29 00:00:00', 1),
(5, 5, 2, 'cristal', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2018-09-29 00:00:00', 1),
(6, 6, 3, 'julio', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, '2.jpg', 0, '2018-09-29 00:00:00', 1),
(7, 7, 2, 'sofia', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(8, 8, 2, 'roberto', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(9, 9, 2, 'cecilia', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(10, 10, 2, 'xochil', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(11, 11, 2, 'angeles', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(12, 12, 2, 'carlos', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(13, 13, 2, 'yara', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(14, 14, 2, 'hector', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, NULL, 1),
(15, 15, 2, 'aideg', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:38:34', 3),
(16, 16, 2, 'beatrizd', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:40:45', 3),
(17, 17, 2, 'veronicag', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:40:45', 3),
(18, 18, 2, 'gustavog', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(19, 19, 2, 'claudiab', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(20, 20, 2, 'germana', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(21, 21, 2, 'esperanzam', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(22, 22, 2, 'oscarp', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(24, 24, 2, 'magalyj', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(25, 25, 2, 'claudiac', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(26, 26, 2, 'azucenam', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(27, 27, 2, 'dulcem', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(28, 28, 2, 'carmenn', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(29, 29, 2, 'irlandaj', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(30, 30, 2, 'eduardom', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(31, 31, 2, 'jorges', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 09:41:49', 3),
(32, 32, 3, 'fabianc', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 10:30:30', 3),
(33, 33, 3, 'antonioc', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', NULL, NULL, 0, '2020-02-04 10:30:30', 3),
(35, 35, 1, 'orlaineta', '97520b82cccf350f8d378ab98da7ac021de480bfec91438042184f442331997d', '', '', 0, '0000-00-00 00:00:00', 0),
(40, 40, 2, 'magdalenap', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', '', '', 0, '0000-00-00 00:00:00', 3),
(43, 43, 3, 'juanam', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', '', '', 0, '0000-00-00 00:00:00', 3),
(44, 44, 3, 'juanitop', 'a14b545a2b994c3fe0f90c2b0a21de811003a8474574b248a5c53bd736f4acbc', '', '', 0, '0000-00-00 00:00:00', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_notifications`
--

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
(3, 1, 3, 1),
(4, 2, 1, 0),
(5, 2, 2, 0),
(6, 2, 3, 1),
(7, 3, 1, 1),
(8, 3, 2, 0),
(9, 3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_store`
--

CREATE TABLE `user_store` (
  `iduser_store` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idstore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_store`
--

INSERT INTO `user_store` (`iduser_store`, `iduser`, `idstore`) VALUES
(1, 3, 1),
(2, 5, 2),
(3, 7, 1),
(4, 8, 1),
(5, 9, 1),
(6, 10, 3),
(7, 11, 3),
(8, 12, 3),
(9, 15, 7),
(10, 16, 7),
(11, 17, 7),
(12, 18, 9),
(13, 19, 9),
(14, 20, 9),
(15, 21, 8),
(16, 22, 8),
(18, 24, 8),
(19, 25, 5),
(20, 26, 5),
(21, 27, 5),
(22, 28, 6),
(23, 29, 6),
(24, 30, 6),
(25, 31, 6),
(26, 40, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versions`
--

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
(1, 'ios', '118', '#', 'Estimado usuario para una mejor experiencia de uso, navegación y seguridad,', 'esta versión será liberada', 'el día 26 del presente mes'),
(2, 'android', '118', '#', 'Estimado usuario para una mejor experiencia de uso, navegación y seguridad,', 'esta versión será liberada', 'el día 26 del presente mes');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

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
-- Indices de la tabla `file_incident`
--
ALTER TABLE `file_incident`
  ADD PRIMARY KEY (`idfile_incident`),
  ADD KEY `fk_file_stage_incidents_stage1_idx` (`idincident_stage`);

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
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `iddevice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `file_incident`
--
ALTER TABLE `file_incident`
  MODIFY `idfile_incident` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incidents_stage`
--
ALTER TABLE `incidents_stage`
  MODIFY `idincident_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `idnotification` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `penalizaciones`
--
ALTER TABLE `penalizaciones`
  MODIFY `idpenalizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `peoples`
--
ALTER TABLE `peoples`
  MODIFY `idpeople` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idpermission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `idservice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `services_detail`
--
ALTER TABLE `services_detail`
  MODIFY `idservice_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `services_file`
--
ALTER TABLE `services_file`
  MODIFY `idservice_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `services_stages`
--
ALTER TABLE `services_stages`
  MODIFY `idservices_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `stages`
--
ALTER TABLE `stages`
  MODIFY `idstage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `state`
--
ALTER TABLE `state`
  MODIFY `idstate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `status_service`
--
ALTER TABLE `status_service`
  MODIFY `idstatus_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `stores`
--
ALTER TABLE `stores`
  MODIFY `idstore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  MODIFY `idtarifa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `iduser_store` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
