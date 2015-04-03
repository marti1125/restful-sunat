create database sunat;
use sunat;

--
-- Base de datos: `sunat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ruc` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `ruc`, `direccion`) VALUES
(1, 'Arquizione S.A', '20546462324', ' Calle Juan Alfaro, 195\nMiraflores - Lima '),
(2, 'Indra S.A', '20546462325', 'Av. Basadre No 233 San Isidro - Lima'),
(3, 'GMD S.A', '20546462326', 'Piso 5,6,7,8, Pje Acuña 127, Lima 15001'),
(4, 'Accenture S.A', '20546462327', 'Av. Nicolás de Piérola 589 piso 6 Cercado de Lima Lima'),
(5, 'Mg Builders', '20546462328', ' Av. César Vallejo, 508 , Lince - Lima '),
(6, 'Phyl Contratistas Generales', '20546462329', 'Av. Guardia Civil Norte Mz.K Lt.10 - 5to Piso , Santiago de Surco - Lima'),
(7, 'Mont Group', '20546462330', ' Calle Octavio Paz, 276 , Surquillo - Lima '),
(8, 'Constructora Mpm S.A.', '20546462331', 'Av. Paseo de la República, 6010 - Piso 8 , Miraflores - Lima');
