SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admin` (
  `idAdmin` int(50) NOT NULL,
  `nombreAdmin` varchar(50) NOT NULL,
  `passAdmin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`idAdmin`, `nombreAdmin`, `passAdmin`) VALUES
(1, 'LeonMarin', 'LeonMarin');

CREATE TABLE `colaborador` (
  `idColaborador` int(50) NOT NULL,
  `rutaLogo` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `fkIdEvento` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `colaborador` (`idColaborador`, `rutaLogo`, `link`, `fkIdEvento`) VALUES
(1, 'https://asoonyxia.com/wp-content/uploads/2017/07/2UYUv_Uq_400x400-300x300.jpg', 'https://www.mibu.es/', 9999),
(3, 'rutaLogo', 'link', 10009),
(4, 'ruta', 'link', 10009);

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

INSERT INTO `evento` (`eventoId`, `nombreEvento`, `fechaHora`, `calle`, `ciudad`, `nombreEstadio`, `cartelPromocional`, `rutaFotoTitulo`, `rutaVideoTrailer`, `rutaVideoClausura`, `rutaFotoResultados`) VALUES
(10002, 'Evento2', 0, 'calle prueba', 'ciudad prueba', 'estadio prueba', '', '', '', '', ''),
(10006, 'Evento3', 8, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', 'd', 'e'),
(10007, 'Evento3', 6, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', 'd', 'e'),
(10008, 'Evento3', 3, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', 'd', 'e'),
(10009, 'Evento4', 9, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', 'd', 'e'),
(10010, 'Evento4', 6, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10011, 'Evento4', 8, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10012, 'Evento5', 4, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10013, 'Evento5', 10, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10014, 'Evento5', 2, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10015, 'Evento5', 6, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10016, 'Evento5', 7, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10017, 'Evento5', 10, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10018, 'Evento5', 1539860177, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10019, 'Evento5', 1539860838, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10020, 'Evento5', 1539860855, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10021, 'Evento5', 1539860942, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10022, 'Evento5', 1539861031, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10023, 'Evento5', 1539861070, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10026, 'Evento5', 1539861381, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10027, 'Evento5', 1539861474, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10028, 'Evento5', 1539861488, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10029, 'Evento5', 1539861599, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', ''),
(10030, 'Evento5', 1539861751, 'calle prueba', 'ciudad prueba', 'estadio prueba', 'a', 'b', 'c', '', '');

CREATE TABLE `eventoluchador` (
  `id` int(50) NOT NULL,
  `fkidEvento` int(50) NOT NULL,
  `fkidLuchador` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `eventoluchador` (`id`, `fkidEvento`, `fkidLuchador`) VALUES
(1, 10009, 1);

CREATE TABLE `fotoevento` (
  `idfotoevento` int(50) NOT NULL,
  `fkidevento` int(50) NOT NULL,
  `ruta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `fotoevento` (`idfotoevento`, `fkidevento`, `ruta`) VALUES
(1, 10009, 'ruta');

CREATE TABLE `fotoluchador` (
  `idFoto` int(50) NOT NULL,
  `fkidluchador` int(50) NOT NULL,
  `ruta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `fotoluchador` (`idFoto`, `fkidluchador`, `ruta`) VALUES
(1, 1, 'http://s3-eu-west-1.amazonaws.com/cinemania-cdn/wp-content/uploads/2017/12/03033404/Cena01.jpg'),
(2, 1, 'http://s3-eu-west-1.amazonaws.com/cinemania-cdn/wp-content/uploads/2017/12/03033404/Cena01.jpg'),
(4, 1, 'rutaFoto');

CREATE TABLE `luchador` (
  `idLuchador` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rutaLogo` varchar(300) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `rutaVideoPersonal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `luchador` (`idLuchador`, `nombre`, `rutaLogo`, `descripcion`, `rutaVideoPersonal`) VALUES
(1, 'Juanito Destructor', 'https://www.freeiconspng.com/uploads/pepsi-icon-12.jpg', 'Juanito es un expero en MMA y viene dispuesto a ganar el premio.', 'https://www.youtube.com/embed/eGQcrBsSrrs '),
(3, 'Jaime el poderoso', 'https://brandmark.io/logo-rank/random/beats.png', 'Jaime es experto en JJB y no se rendirá ante nada.', 'https://www.youtube.com/embed/eGQcrBsSrrs\" '),
(4, 'nombre', 'rutaLogo', 'descripcion', 'rutaVideoPersonal');

CREATE TABLE `noticia` (
  `idnoticia` int(50) NOT NULL,
  `titular` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `rutafoto` varchar(500) NOT NULL,
  `fkidevento` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `noticia` (`idnoticia`, `titular`, `descripcion`, `rutafoto`, `fkidevento`) VALUES
(1, 'titular', 'descripcion descripcion descripcion de la noticia', 'rutaFoto', 10008),
(2, 'TÃ­tulo', 'DescripciÃ³n de la noticia', 'https://www.diariosur.es/comun/img/2014/autor/autor-1977-foto-1.jpeg', 10002);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `nombreAdmin` (`nombreAdmin`);

ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`idColaborador`),
  ADD KEY `colaborador` (`fkIdEvento`);

ALTER TABLE `evento`
  ADD PRIMARY KEY (`eventoId`);

ALTER TABLE `eventoluchador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventoluchador` (`fkidEvento`),
  ADD KEY `luchadorevento` (`fkidLuchador`);

ALTER TABLE `fotoevento`
  ADD PRIMARY KEY (`idfotoevento`),
  ADD KEY `fotoevento` (`fkidevento`);

ALTER TABLE `fotoluchador`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `fotoluchador` (`fkidluchador`);

ALTER TABLE `luchador`
  ADD PRIMARY KEY (`idLuchador`),
  ADD UNIQUE KEY `nombre` (`nombre`);

ALTER TABLE `noticia`
  ADD PRIMARY KEY (`idnoticia`),
  ADD KEY `noticiaevento` (`fkidevento`);


ALTER TABLE `admin`
  MODIFY `idAdmin` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `colaborador`
  MODIFY `idColaborador` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `evento`
  MODIFY `eventoId` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10031;

ALTER TABLE `eventoluchador`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `fotoevento`
  MODIFY `idfotoevento` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `fotoluchador`
  MODIFY `idFoto` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `luchador`
  MODIFY `idLuchador` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `noticia`
  MODIFY `idnoticia` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `eventoluchador`
  ADD CONSTRAINT `eventoluchador` FOREIGN KEY (`fkidEvento`) REFERENCES `evento` (`eventoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `luchadorevento` FOREIGN KEY (`fkidLuchador`) REFERENCES `luchador` (`idLuchador`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `fotoevento`
  ADD CONSTRAINT `fotoevento` FOREIGN KEY (`fkidevento`) REFERENCES `evento` (`eventoId`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `fotoluchador`
  ADD CONSTRAINT `fotoluchador` FOREIGN KEY (`fkidluchador`) REFERENCES `luchador` (`idLuchador`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `noticia`
  ADD CONSTRAINT `noticiaevento` FOREIGN KEY (`fkidevento`) REFERENCES `evento` (`eventoId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
