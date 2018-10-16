-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2018 a las 17:12:47
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ef`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `idColaborador` int(50) NOT NULL,
  `rutaLogo` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `fkIdEvento` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`idColaborador`, `rutaLogo`, `link`, `fkIdEvento`) VALUES
(1, 'https://asoonyxia.com/wp-content/uploads/2017/07/2UYUv_Uq_400x400-300x300.jpg', 'https://www.mibu.es/', 9999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `eventoId` int(32) NOT NULL,
  `nombreEvento` varchar(50) NOT NULL,
  `fechaHora` bigint(50) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `nombreEstadio` varchar(100) NOT NULL,
  `cartelPromocional` varchar(500) NOT NULL,
  `rutaFotoTitulo` varchar(500) NOT NULL,
  `rutaVideoTrailer` varchar(500) NOT NULL,
  `rutaVideoClausura` varchar(500) DEFAULT NULL,
  `rutaFotoResultados` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`eventoId`, `nombreEvento`, `fechaHora`, `calle`, `ciudad`, `nombreEstadio`, `cartelPromocional`, `rutaFotoTitulo`, `rutaVideoTrailer`, `rutaVideoClausura`, `rutaFotoResultados`) VALUES
(9999, 'epic warrior', 1539699653365, 'calle Jerusalén', 'Sevilla', 'Estadio San Pablo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/ElGrecoPaul_%28cropped%29.jpg/200px-ElGrecoPaul_%28cropped%29.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/ElGrecoPaul_%28cropped%29.jpg/200px-ElGrecoPaul_%28cropped%29.jpg', 'https://www.youtube.com/watch?v=7uAew16dxgg', 'https://www.youtube.com/watch?v=7uAew16dxgg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/ElGrecoPaul_%28cropped%29.jpg/200px-ElGrecoPaul_%28cropped%29.jpg'),
(10000, 'epic warrior', 1539699653365, 'calle Jerusalén', 'Sevilla', 'Estadio San Pablo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/ElGrecoPaul_%28cropped%29.jpg/200px-ElGrecoPaul_%28cropped%29.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/ElGrecoPaul_%28cropped%29.jpg/200px-ElGrecoPaul_%28cropped%29.jpg', 'https://www.youtube.com/watch?v=7uAew16dxgg', 'https://www.youtube.com/watch?v=7uAew16dxgg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/ElGrecoPaul_%28cropped%29.jpg/200px-ElGrecoPaul_%28cropped%29.jpg'),
(10001, 'evento2', 1539701462474, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'http://www.wradio.com.co/images/3609973_g_1f50bc_imgg.jpg', 'http://www.wradio.com.co/images/3609973_g_1f50bc_imgg.jpg', 'https://www.youtube.com/embed/J3SOGWpv1jE', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoluchador`
--

CREATE TABLE `eventoluchador` (
  `id` int(50) NOT NULL,
  `fkidEvento` int(50) NOT NULL,
  `fkidLuchador` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventoluchador`
--

INSERT INTO `eventoluchador` (`id`, `fkidEvento`, `fkidLuchador`) VALUES
(1, 9999, 1),
(2, 9999, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotoevento`
--

CREATE TABLE `fotoevento` (
  `idfotoevento` int(50) NOT NULL,
  `fkidevento` int(50) NOT NULL,
  `ruta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fotoevento`
--

INSERT INTO `fotoevento` (`idfotoevento`, `fkidevento`, `ruta`) VALUES
(1, 9999, 'http://static.t13.cl/images/sizes/1200x675/1539528980-captura.jpg'),
(2, 10001, 'https://www.ecestaticos.com/imagestatic/clipping/65e/843/65e84371d2f07acd0443f9efde4efca8/mma-no-es-ministerio-de-medio-ambiente-la-evolucion-del-arte-que-enamora-al-mundo.jpg?mtime=1491493652');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotoluchador`
--

CREATE TABLE `fotoluchador` (
  `idFoto` int(50) NOT NULL,
  `fkidluchador` int(50) NOT NULL,
  `ruta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fotoluchador`
--

INSERT INTO `fotoluchador` (`idFoto`, `fkidluchador`, `ruta`) VALUES
(1, 1, 'http://s3-eu-west-1.amazonaws.com/cinemania-cdn/wp-content/uploads/2017/12/03033404/Cena01.jpg'),
(2, 1, 'http://s3-eu-west-1.amazonaws.com/cinemania-cdn/wp-content/uploads/2017/12/03033404/Cena01.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `luchador`
--

CREATE TABLE `luchador` (
  `idLuchador` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rutaLogo` varchar(300) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `rutaVideoPersonal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `luchador`
--

INSERT INTO `luchador` (`idLuchador`, `nombre`, `rutaLogo`, `descripcion`, `rutaVideoPersonal`) VALUES
(1, 'Juanito Destructor', 'https://www.freeiconspng.com/uploads/pepsi-icon-12.jpg', 'Juanito es un expero en MMA y viene dispuesto a ganar el premio.', 'https://www.youtube.com/embed/eGQcrBsSrrs '),
(2, 'Juanito Destructor', 'https://www.freeiconspng.com/uploads/pepsi-icon-12.jpg', 'Juanito es un expero en MMA y viene dispuesto a ganar el premio.', 'https://www.youtube.com/embed/eGQcrBsSrrs '),
(3, 'Jaime el poderoso', 'https://brandmark.io/logo-rank/random/beats.png', 'Jaime es experto en JJB y no se rendirá ante nada.', 'https://www.youtube.com/embed/eGQcrBsSrrs\" ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `idnoticia` int(50) NOT NULL,
  `titular` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `rutafoto` varchar(500) NOT NULL,
  `fkidevento` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`idnoticia`, `titular`, `descripcion`, `rutafoto`, `fkidevento`) VALUES
(1, 'Juanito suspende de nuevo', 'Juanito ha vuelto a suspender por abandonar voluntariamente otra asignatura aunque ya la tenía más o menos preparada.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/ElGrecoPaul_%28cropped%29.jpg/800px-ElGrecoPaul_%28cropped%29.jpg', 9999);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`idColaborador`),
  ADD KEY `colaborador` (`fkIdEvento`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`eventoId`);

--
-- Indices de la tabla `eventoluchador`
--
ALTER TABLE `eventoluchador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventoluchador` (`fkidEvento`),
  ADD KEY `luchadorevento` (`fkidLuchador`);

--
-- Indices de la tabla `fotoevento`
--
ALTER TABLE `fotoevento`
  ADD PRIMARY KEY (`idfotoevento`),
  ADD KEY `fotoevento` (`fkidevento`);

--
-- Indices de la tabla `fotoluchador`
--
ALTER TABLE `fotoluchador`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `fotoluchador` (`fkidluchador`);

--
-- Indices de la tabla `luchador`
--
ALTER TABLE `luchador`
  ADD PRIMARY KEY (`idLuchador`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`idnoticia`),
  ADD KEY `noticiaevento` (`fkidevento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `idColaborador` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `eventoId` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT de la tabla `eventoluchador`
--
ALTER TABLE `eventoluchador`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fotoevento`
--
ALTER TABLE `fotoevento`
  MODIFY `idfotoevento` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fotoluchador`
--
ALTER TABLE `fotoluchador`
  MODIFY `idFoto` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `luchador`
--
ALTER TABLE `luchador`
  MODIFY `idLuchador` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `idnoticia` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `colaborador` FOREIGN KEY (`fkIdEvento`) REFERENCES `evento` (`eventoId`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventoluchador`
--
ALTER TABLE `eventoluchador`
  ADD CONSTRAINT `eventoluchador` FOREIGN KEY (`fkidEvento`) REFERENCES `evento` (`eventoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `luchadorevento` FOREIGN KEY (`fkidLuchador`) REFERENCES `luchador` (`idLuchador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fotoevento`
--
ALTER TABLE `fotoevento`
  ADD CONSTRAINT `fotoevento` FOREIGN KEY (`fkidevento`) REFERENCES `evento` (`eventoId`);

--
-- Filtros para la tabla `fotoluchador`
--
ALTER TABLE `fotoluchador`
  ADD CONSTRAINT `fotoluchador` FOREIGN KEY (`fkidluchador`) REFERENCES `luchador` (`idLuchador`);

--
-- Filtros para la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticiaevento` FOREIGN KEY (`fkidevento`) REFERENCES `evento` (`eventoId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
