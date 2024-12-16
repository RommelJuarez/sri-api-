-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 05:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyec`
--

-- --------------------------------------------------------

--
-- Table structure for table `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `ruc` varchar(13) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consulta`
--

INSERT INTO `consulta` (`idConsulta`, `ruc`, `fecha`, `hora`) VALUES
(12, '1792104394001', '2017-09-29', '12:00:00'),
(13, '1792104394001', '2017-09-29', '12:00:00'),
(14, '1792104394001', '2017-09-29', '12:00:00'),
(15, '1792104394001', '2017-09-29', '12:00:00'),
(16, '1792104394001', '2017-09-29', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `detalles`
--

CREATE TABLE `detalles` (
  `idDetalle` int(11) NOT NULL,
  `idConsulta` int(11) NOT NULL,
  `numeroRuc` varchar(13) NOT NULL,
  `razonSocial` varchar(255) NOT NULL,
  `estadoContribuyenteRuc` varchar(50) NOT NULL,
  `actividadEconomicaPrincipal` varchar(255) NOT NULL,
  `tipoContribuyente` varchar(50) NOT NULL,
  `regimen` varchar(50) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `obligadoLlevarContabilidad` enum('SI','NO') NOT NULL,
  `agenteRetencion` enum('SI','NO') NOT NULL,
  `contribuyenteEspecial` enum('SI','NO') NOT NULL,
  `fechaInicioActividades` datetime DEFAULT NULL,
  `fechaCese` datetime DEFAULT NULL,
  `fechaReinicioActividades` datetime DEFAULT NULL,
  `fechaActualizacion` datetime DEFAULT NULL,
  `contribuyenteFantasma` enum('SI','NO') NOT NULL,
  `transaccionesInexistente` enum('SI','NO') NOT NULL,
  `motivoCancelacionSuspension` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalles`
--

INSERT INTO `detalles` (`idDetalle`, `idConsulta`, `numeroRuc`, `razonSocial`, `estadoContribuyenteRuc`, `actividadEconomicaPrincipal`, `tipoContribuyente`, `regimen`, `categoria`, `obligadoLlevarContabilidad`, `agenteRetencion`, `contribuyenteEspecial`, `fechaInicioActividades`, `fechaCese`, `fechaReinicioActividades`, `fechaActualizacion`, `contribuyenteFantasma`, `transaccionesInexistente`, `motivoCancelacionSuspension`) VALUES
(12, 12, '1792104394001', 'PRUEBA-CIAT(PP)&CÍA%ANÓNIMA', 'PASIVO', 'ACTIVIDADES DE INVENTARIOS FORESTALES Y EVALUACIÓN DE EXISTENCIAS MADERABLES, LUCHA CONTRA PLAGAS FORESTALES Y SERVICIOS DE CONSULTORÍA DE GESTIÓN FORESTAL.', 'SOCIEDAD', 'GENERAL', '', 'SI', 'NO', 'NO', '2004-04-11 00:00:00', '2017-10-02 00:00:00', '2017-10-02 00:00:00', '2017-09-29 00:00:00', 'NO', 'NO', 'EXTINCION'),
(13, 13, '1792104394001', 'PRUEBA-CIAT(PP)&CÍA%ANÓNIMA', 'PASIVO', 'ACTIVIDADES DE INVENTARIOS FORESTALES Y EVALUACIÓN DE EXISTENCIAS MADERABLES, LUCHA CONTRA PLAGAS FORESTALES Y SERVICIOS DE CONSULTORÍA DE GESTIÓN FORESTAL.', 'SOCIEDAD', 'GENERAL', '', 'SI', 'NO', 'NO', '2004-04-11 00:00:00', '2017-10-02 00:00:00', '2017-10-02 00:00:00', '2017-09-29 00:00:00', 'NO', 'NO', 'EXTINCION'),
(14, 14, '1792104394001', 'PRUEBA-CIAT(PP)&CÍA%ANÓNIMA', 'PASIVO', 'ACTIVIDADES DE INVENTARIOS FORESTALES Y EVALUACIÓN DE EXISTENCIAS MADERABLES, LUCHA CONTRA PLAGAS FORESTALES Y SERVICIOS DE CONSULTORÍA DE GESTIÓN FORESTAL.', 'SOCIEDAD', 'GENERAL', '', 'SI', 'NO', 'NO', '2004-04-11 00:00:00', '2017-10-02 00:00:00', '2017-10-02 00:00:00', '2017-09-29 00:00:00', 'NO', 'NO', 'EXTINCION'),
(15, 15, '1792104394001', 'PRUEBA-CIAT(PP)&CÍA%ANÓNIMA', 'PASIVO', 'ACTIVIDADES DE INVENTARIOS FORESTALES Y EVALUACIÓN DE EXISTENCIAS MADERABLES, LUCHA CONTRA PLAGAS FORESTALES Y SERVICIOS DE CONSULTORÍA DE GESTIÓN FORESTAL.', 'SOCIEDAD', 'GENERAL', '', 'SI', 'NO', 'NO', '2004-04-11 00:00:00', '2017-10-02 00:00:00', '2017-10-02 00:00:00', '2017-09-29 00:00:00', 'NO', 'NO', 'EXTINCION'),
(16, 16, '1792104394001', 'PRUEBA-CIAT(PP)&CÍA%ANÓNIMA', 'PASIVO', 'ACTIVIDADES DE INVENTARIOS FORESTALES Y EVALUACIÓN DE EXISTENCIAS MADERABLES, LUCHA CONTRA PLAGAS FORESTALES Y SERVICIOS DE CONSULTORÍA DE GESTIÓN FORESTAL.', 'SOCIEDAD', 'GENERAL', '', 'SI', 'NO', 'NO', '2004-04-11 00:00:00', '2017-10-02 00:00:00', '2017-10-02 00:00:00', '2017-09-29 00:00:00', 'NO', 'NO', 'EXTINCION');

-- --------------------------------------------------------

--
-- Table structure for table `representantes_legales`
--

CREATE TABLE `representantes_legales` (
  `idRepresentante` int(11) NOT NULL,
  `idDetalle` int(11) NOT NULL,
  `identificacion` varchar(20) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `representantes_legales`
--

INSERT INTO `representantes_legales` (`idRepresentante`, `idDetalle`, `identificacion`, `nombre`) VALUES
(10, 12, '1717437253', 'LOAYZA ALBAN MARIA JOSE'),
(11, 13, '1717437253', 'LOAYZA ALBAN MARIA JOSE'),
(12, 14, '1717437253', 'LOAYZA ALBAN MARIA JOSE'),
(13, 15, '1717437253', 'LOAYZA ALBAN MARIA JOSE'),
(14, 16, '1717437253', 'LOAYZA ALBAN MARIA JOSE');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `contraseña`, `rol`) VALUES
(1, 'admin', '$2a$10$8bC9NjPQCnCIHyZ1BG3BeuLqUy/SQpjTdaRTkQgpTB0vh3yVeDIQu', 'admin'),
(2, 'alan', '$2a$10$6uKlhYcAEe21riXU/UICvuInq2Lbf0fp4eHi47mpI8qefunah5ymC', 'user'),
(4, 'asd', '$2a$10$2o4DcFM8psnJvEJsu3LGxuRJfS7ki6V5tWx4XVN1gPXs5Dm6WXI6u', 'admin'),
(5, 'aaa', '$2a$10$JEtpY2DElL4KqOGjndyTrOTeF5/EjEIDtIcKygOAB/BTPRSEBp/c6', 'admin'),
(6, 'p', '$2a$10$25KAkESpDQlkWB6W3pkYJunlE5nEmj7g9DicqImVMgnGKkMjvWhNO', 'user'),
(7, 'q', '$2a$10$/3QLCDpRSsaiDOVoLkWBsO4WBrc.LSgRGmhc5HC.IEnIECHG7Te3G', 'admin'),
(8, 'rommel', '$2a$10$YO51upqzRgDW.d1R3oKPmOYhIx2Fh8gBnmrrvspFyM27hQUKwWWiO', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consulta_detalle`
-- (See below for the actual view)
--
CREATE TABLE `vista_consulta_detalle` (
`numeroRuc` varchar(13)
,`razonSocial` varchar(255)
,`estadoContribuyenteRuc` varchar(50)
,`actividadEconomicaPrincipal` varchar(255)
,`tipoContribuyente` varchar(50)
,`regimen` varchar(50)
,`categoria` varchar(50)
,`obligadoLlevarContabilidad` enum('SI','NO')
,`agenteRetencion` enum('SI','NO')
,`contribuyenteEspecial` enum('SI','NO')
,`fechaInicioActividades` datetime
,`fechaCese` datetime
,`fechaReinicioActividades` datetime
,`fechaActualizacion` datetime
,`contribuyenteFantasma` enum('SI','NO')
,`transaccionesInexistente` enum('SI','NO')
,`motivoCancelacionSuspension` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vista_consulta_detalle`
--
DROP TABLE IF EXISTS `vista_consulta_detalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consulta_detalle`  AS SELECT `c`.`ruc` AS `numeroRuc`, `d`.`razonSocial` AS `razonSocial`, `d`.`estadoContribuyenteRuc` AS `estadoContribuyenteRuc`, `d`.`actividadEconomicaPrincipal` AS `actividadEconomicaPrincipal`, `d`.`tipoContribuyente` AS `tipoContribuyente`, `d`.`regimen` AS `regimen`, `d`.`categoria` AS `categoria`, `d`.`obligadoLlevarContabilidad` AS `obligadoLlevarContabilidad`, `d`.`agenteRetencion` AS `agenteRetencion`, `d`.`contribuyenteEspecial` AS `contribuyenteEspecial`, `d`.`fechaInicioActividades` AS `fechaInicioActividades`, `d`.`fechaCese` AS `fechaCese`, `d`.`fechaReinicioActividades` AS `fechaReinicioActividades`, `d`.`fechaActualizacion` AS `fechaActualizacion`, `d`.`contribuyenteFantasma` AS `contribuyenteFantasma`, `d`.`transaccionesInexistente` AS `transaccionesInexistente`, `d`.`motivoCancelacionSuspension` AS `motivoCancelacionSuspension` FROM (`consulta` `c` join `detalles` `d` on(`c`.`idConsulta` = `d`.`idConsulta`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`);

--
-- Indexes for table `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idDetalle`),
  ADD KEY `idConsulta` (`idConsulta`);

--
-- Indexes for table `representantes_legales`
--
ALTER TABLE `representantes_legales`
  ADD PRIMARY KEY (`idRepresentante`),
  ADD KEY `idDetalle` (`idDetalle`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `representantes_legales`
--
ALTER TABLE `representantes_legales`
  MODIFY `idRepresentante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idConsulta`) REFERENCES `consulta` (`idConsulta`) ON DELETE CASCADE;

--
-- Constraints for table `representantes_legales`
--
ALTER TABLE `representantes_legales`
  ADD CONSTRAINT `representantes_legales_ibfk_1` FOREIGN KEY (`idDetalle`) REFERENCES `detalles` (`idDetalle`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
