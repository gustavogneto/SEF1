-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 18-Nov-2019 às 20:32
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sefdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CARGO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`ID`, `CARGO`) VALUES
(1, 'ANALISTA'),
(2, 'DESENVOLVEDOR'),
(3, 'GERENTE DE PROJETOS'),
(4, 'SCRUM MASTER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orgao`
--

DROP TABLE IF EXISTS `orgao`;
CREATE TABLE IF NOT EXISTS `orgao` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ORGAO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `orgao`
--

INSERT INTO `orgao` (`ID`, `ORGAO`) VALUES
(1, 'SECRETARIA A'),
(2, 'SECRETARIA B'),
(3, 'SECREATARIA C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sistema`
--

DROP TABLE IF EXISTS `sistema`;
CREATE TABLE IF NOT EXISTS `sistema` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SISTEMA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sistema`
--

INSERT INTO `sistema` (`ID`, `SISTEMA`) VALUES
(1, 'ECLIPSE'),
(2, 'JUNIT'),
(3, 'GUIA SBOOK ONLINE'),
(4, 'ADMIN USERS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_cargo`
--

DROP TABLE IF EXISTS `user_cargo`;
CREATE TABLE IF NOT EXISTS `user_cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_cargo`
--

INSERT INTO `user_cargo` (`id`, `cpf`, `id_cargo`) VALUES
(1, '05598812536', 1),
(2, '05512185836', 2),
(3, '08896512345', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_org`
--

DROP TABLE IF EXISTS `user_org`;
CREATE TABLE IF NOT EXISTS `user_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `id_orgao` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_org`
--

INSERT INTO `user_org` (`id`, `cpf`, `id_orgao`) VALUES
(1, '05598812536', 1),
(2, '05512185836', 2),
(3, '08896512345', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_sis`
--

DROP TABLE IF EXISTS `user_sis`;
CREATE TABLE IF NOT EXISTS `user_sis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `id_sistema` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_sis`
--

INSERT INTO `user_sis` (`id`, `cpf`, `id_sistema`) VALUES
(1, '05598812536', 1),
(2, '05512185836', 2),
(3, '08896512345', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(180) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cpf`, `nome`) VALUES
('05598812536', 'gustavo gomes'),
('05512185836', 'ALEX gabbers'),
('08896512345', 'MIRA ALFFAR');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
