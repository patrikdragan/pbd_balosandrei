-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 01:08 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Student`
--

-- --------------------------------------------------------

--
-- Table structure for table `evidenta`
--
//generarea tabelei
CREATE TABLE `evidenta` (
  `Nume` varchar(15) NOT NULL,
  `Prenume` varchar(20) NOT NULL,
  `Nr. Legitimatie` int(6) NOT NULL,
  `Media generala` int(10) DEFAULT NULL,
  `Media pe anul 1` int(10) DEFAULT NULL,
  `Media pe anul 2` int(10) DEFAULT NULL,
  `Media pe anul 3` int(10) DEFAULT NULL,
  `Disciplina` varchar(255) NOT NULL,
  `An de studiu` int(3) NOT NULL,
  `Nr. Prezentare` int(110) NOT NULL,
  `Data prezentarii` date NOT NULL,
  `Nota obtinuta` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evidenta`
--
//adaugarea de elemente in baza de date
INSERT INTO `evidenta` (`Nume`, `Prenume`, `Nr. Legitimatie`, `Media generala`, `Media pe anul 1`, `Media pe anul 2`, `Media pe anul 3`, `Disciplina`, `An de studiu`, `Nr. Prezentare`, `Data prezentarii`, `Nota obtinuta`) VALUES
('popa', 'ion', 123456, 4, 5, 0, 0, 'Matematica', 1, 1, '2003-12-22', 4),
('adam', 'gheorghe', 123457, 7, 5, 0, 0, 'Fizica', 1, 1, '2003-12-12', 9),
('popa', 'ion', 123456, 7, 5, 0, 0, 'Chimie', 2, 1, '2004-03-01', 10),
('popa', 'ion', 123456, 7, 5, 0, 0, 'Engleza', 3, 2, '2005-09-02', 9),
('Pop', 'george', 123458, 7, 5, 0, 0, 'Matematica', 1, 1, '2002-12-12', 10);


//afisarea studentilor care au o disciplina nepromovata
SELECT * FROM `evidenta` WHERE `Nota obtinuta` < 5

//raport care cuprine nume, prenume, nr. legitimatie, an de studiu
SELECT `Nume`, `Prenume`, `Nr. Legitimatie`, `An de studiu` FROM `evidenta` WHERE 1

//raport detaliat ordonat dupa nume
SELECT `Nume`, `Prenume`, `Nr. Legitimatie`, `Disciplina`, `Nota obtinuta` FROM `evidenta` WHERE `Nota obtinuta` >= 5 ORDER BY `Nume` ASC
//raport detaliat ordonat dupa prenume
SELECT `Nume`, `Prenume`, `Nr. Legitimatie`, `Disciplina`, `Nota obtinuta` FROM `evidenta` WHERE `Nota obtinuta` >= 5 ORDER BY `Prenume` ASC
//raport detaliat ordonat dupa an de studiu
SELECT `Nume`, `Prenume`, `Nr. Legitimatie`, `Disciplina`, `Nota obtinuta` FROM `evidenta` WHERE `Nota obtinuta` >= 5 ORDER BY `An de studiu` ASC
//raport detaliat ordonat dupa disciplina
SELECT `Nume`, `Prenume`, `Nr. Legitimatie`, `Disciplina`, `Nota obtinuta` FROM `evidenta` WHERE `Nota obtinuta` >= 5 ORDER BY `Disciplina` ASC

//untrigger care calculeaza media pe anul respectiv


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
