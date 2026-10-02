-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2026 às 15:03
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `id_alunos` int(11) NOT NULL,
  `Nome` varchar(120) NOT NULL,
  `NumeroDaCasa` int(11) NOT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `DataDeNascimento` date NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `RA_aluno` varchar(13) NOT NULL,
  `id_ruas` int(11) DEFAULT NULL,
  `id_contatos` int(11) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id_alunos`, `Nome`, `NumeroDaCasa`, `Complemento`, `DataDeNascimento`, `CPF`, `RA_aluno`, `id_ruas`, `id_contatos`, `status`) VALUES
(1, 'Eduarda Lima Fernandes', 1, 'Casa', '2006-01-01', '40000000000', '000100000001A', 1, 126, 'A'),
(2, 'Carlos Fernandes Nunes', 2, 'Casa', '2007-02-02', '40000000000', '0001000000021', 2, 127, 'A'),
(3, 'Claudia Nunes Rezende', 3, 'Casa', '2008-03-03', '40000000000', '000100000003C', 3, 128, 'A'),
(4, 'Leandro Rezende Souza', 4, 'Casa', '2009-04-04', '40000000000', '0001000000043', 4, 129, 'A'),
(5, 'Sabrina Souza Araujo', 5, 'Casa', '2010-05-05', '40000000000', '000100000005E', 5, 130, 'A'),
(6, 'Patrick Araujo Ferreira', 6, 'Casa', '2006-06-06', '40000000000', '0001000000065', 6, 131, 'A'),
(7, 'Sandra Ferreira Lopes', 7, 'Casa', '2007-07-07', '40000000000', '000100000007G', 7, 132, 'A'),
(8, 'Arthur Lopes Moraes', 8, 'Casa', '2008-08-08', '40000000000', '0001000000087', 8, 133, 'A'),
(9, 'Priscila Moraes Barbosa', 9, 'Casa', '2009-09-09', '40000000000', '000100000009I', 9, 134, 'A'),
(10, 'Daniel Barbosa Moreira', 10, 'Casa', '2010-10-10', '40000000001', '0001000000109', 10, 135, 'A'),
(11, 'Daniela Moreira Martins', 11, 'Casa', '2006-11-11', '40000000001', '000100000011K', 11, 136, 'A'),
(12, 'Davi Martins Costa', 12, 'Casa', '2007-12-12', '40000000001', '0001000000121', 12, 137, 'A'),
(13, 'Helena Costa Batista', 13, 'Casa', '2008-01-13', '40000000001', '000100000013M', 13, 138, 'A'),
(14, 'Felipe Batista Silva', 14, 'Casa', '2009-02-14', '40000000001', '0001000000143', 14, 139, 'A'),
(15, 'Camila Silva Campos', 15, 'Casa', '2010-03-15', '40000000001', '000100000015O', 15, 140, 'A'),
(16, 'Paulo Campos Tavares', 16, 'Casa', '2006-04-16', '40000000001', '0001000000165', 16, 141, 'A'),
(17, 'Viviane Tavares Barros', 17, 'Casa', '2007-05-17', '40000000001', '000100000017Q', 17, 142, 'A'),
(18, 'Alexandre Barros Almeida', 18, 'Casa', '2008-06-18', '40000000001', '0001000000187', 18, 143, 'A'),
(19, 'Renata Almeida Rocha', 19, 'Casa', '2009-07-19', '40000000001', '000100000019S', 19, 144, 'A'),
(20, 'Wagner Rocha Carvalho', 20, 'Casa', '2010-08-20', '40000000002', '0001000000209', 20, 145, 'A'),
(21, 'Olivia Carvalho Marques', 21, 'Casa', '2006-01-01', '40000000002', '000100000021U', 1, 146, 'A'),
(22, 'Murilo Marques Ribeiro', 22, 'Casa', '2007-02-02', '40000000002', '0001000000221', 2, 147, 'A'),
(23, 'Fabiana Ribeiro Gomes', 23, 'Casa', '2008-03-03', '40000000002', '000100000023W', 3, 148, 'A'),
(24, 'Bernardo Gomes Alves', 24, 'Casa', '2009-04-04', '40000000002', '0001000000243', 4, 149, 'A'),
(25, 'Mariana Alves Lima', 25, 'Casa', '2010-05-05', '40000000002', '000100000025Y', 5, 150, 'A'),
(26, 'Thiago Lima Fernandes', 26, 'Casa', '2006-06-06', '40000000002', '0001000000265', 6, 151, 'A'),
(27, 'Ana Fernandes Nunes', 27, 'Casa', '2007-07-07', '40000000002', '000100000027A', 7, 152, 'A'),
(28, 'Gabriel Nunes Rezende', 28, 'Casa', '2008-08-08', '40000000002', '0001000000287', 8, 153, 'A'),
(29, 'Adriana Rezende Souza', 29, 'Casa', '2009-09-09', '40000000002', '000100000029C', 9, 154, 'A'),
(30, 'Fabio Souza Araujo', 30, 'Casa', '2010-10-10', '40000000003', '0001000000309', 10, 155, 'A'),
(31, 'Vanessa Araujo Ferreira', 31, 'Casa', '2006-11-11', '40000000003', '000100000031E', 11, 156, 'A'),
(32, 'Caio Ferreira Lopes', 32, 'Casa', '2007-12-12', '40000000003', '0001000000321', 12, 157, 'A'),
(33, 'Juliana Lopes Moraes', 33, 'Casa', '2008-01-13', '40000000003', '000100000033G', 13, 158, 'A'),
(34, 'Joao Moraes Barbosa', 34, 'Casa', '2009-02-14', '40000000003', '0001000000343', 14, 159, 'A'),
(35, 'Nathalia Barbosa Moreira', 35, 'Casa', '2010-03-15', '40000000003', '000100000035I', 15, 160, 'A'),
(36, 'Cauã Moreira Martins', 36, 'Casa', '2006-04-16', '40000000003', '0001000000365', 16, 161, 'A'),
(37, 'Carolina Martins Costa', 37, 'Casa', '2007-05-17', '40000000003', '000100000037K', 17, 162, 'A'),
(38, 'Sergio Costa Batista', 38, 'Casa', '2008-06-18', '40000000003', '0001000000387', 18, 163, 'A'),
(39, 'Isadora Batista Silva', 39, 'Casa', '2009-07-19', '40000000003', '000100000039M', 19, 164, 'A'),
(40, 'Vinicius Silva Campos', 40, 'Casa', '2010-08-20', '40000000004', '0001000000409', 20, 165, 'A'),
(41, 'Amanda Campos Tavares', 41, 'Casa', '2006-01-01', '40000000004', '000100000041O', 1, 166, 'A'),
(42, 'Igor Tavares Barros', 42, 'Casa', '2007-02-02', '40000000004', '0001000000421', 2, 167, 'A'),
(43, 'Gabriela Barros Almeida', 43, 'Casa', '2008-03-03', '40000000004', '000100000043Q', 3, 168, 'A'),
(44, 'Danilo Almeida Rocha', 44, 'Casa', '2009-04-04', '40000000004', '0001000000443', 4, 169, 'A'),
(45, 'Aline Rocha Carvalho', 45, 'Casa', '2010-05-05', '40000000004', '000100000045S', 5, 170, 'A'),
(46, 'Cristiano Carvalho Marques', 46, 'Casa', '2006-06-06', '40000000004', '0001000000465', 6, 171, 'A'),
(47, 'Paula Marques Ribeiro', 47, 'Casa', '2007-07-07', '40000000004', '000100000047U', 7, 172, 'A'),
(48, 'Enzo Ribeiro Gomes', 48, 'Casa', '2008-08-08', '40000000004', '0001000000487', 8, 173, 'A'),
(49, 'Maria Gomes Alves', 49, 'Casa', '2009-09-09', '40000000004', '000100000049W', 9, 174, 'A'),
(50, 'Andre Alves Lima', 50, 'Casa', '2010-10-10', '40000000005', '0001000000509', 10, 175, 'A'),
(51, 'Beatriz Lima Fernandes', 51, 'Casa', '2006-11-11', '40000000005', '000100000051Y', 11, 176, 'A'),
(52, 'Alan Fernandes Nunes', 52, 'Casa', '2007-12-12', '40000000005', '0001000000521', 12, 177, 'A'),
(53, 'Patricia Nunes Rezende', 53, 'Casa', '2008-01-13', '40000000005', '000100000053A', 13, 178, 'A'),
(54, 'Evandro Rezende Souza', 54, 'Casa', '2009-02-14', '40000000005', '0001000000543', 14, 179, 'A'),
(55, 'Monica Souza Araujo', 55, 'Casa', '2010-03-15', '40000000005', '000100000055C', 15, 180, 'A'),
(56, 'Gustavo Araujo Ferreira', 56, 'Casa', '2006-04-16', '40000000005', '0001000000565', 16, 181, 'A'),
(57, 'Carla Ferreira Lopes', 57, 'Casa', '2007-05-17', '40000000005', '000100000057E', 17, 182, 'A'),
(58, 'Lucas Lopes Moraes', 58, 'Casa', '2008-06-18', '40000000005', '0001000000587', 18, 183, 'A'),
(59, 'Leticia Moraes Barbosa', 59, 'Casa', '2009-07-19', '40000000005', '000100000059G', 19, 184, 'A'),
(60, 'Anderson Barbosa Moreira', 60, 'Casa', '2010-08-20', '40000000006', '0001000000609', 20, 185, 'A'),
(61, 'Joana Moreira Martins', 61, 'Casa', '2006-01-01', '40000000006', '000100000061I', 1, 186, 'A'),
(62, 'Leonardo Martins Costa', 62, 'Casa', '2007-02-02', '40000000006', '0001000000621', 2, 187, 'A'),
(63, 'Natalia Costa Batista', 63, 'Casa', '2008-03-03', '40000000006', '000100000063K', 3, 188, 'A'),
(64, 'Diego Batista Silva', 64, 'Casa', '2009-04-04', '40000000006', '0001000000643', 4, 189, 'A'),
(65, 'Bianca Silva Campos', 65, 'Casa', '2010-05-05', '40000000006', '000100000065M', 5, 190, 'A'),
(66, 'Eduardo Campos Tavares', 66, 'Casa', '2006-06-06', '40000000006', '0001000000665', 6, 191, 'A'),
(67, 'Queila Tavares Barros', 67, 'Casa', '2007-07-07', '40000000006', '000100000067O', 7, 192, 'A'),
(68, 'Pedro Barros Almeida', 68, 'Casa', '2008-08-08', '40000000006', '0001000000687', 8, 193, 'A'),
(69, 'Jessica Almeida Rocha', 69, 'Casa', '2009-09-09', '40000000006', '000100000069Q', 9, 194, 'A'),
(70, 'Marcos Rocha Carvalho', 70, 'Casa', '2010-10-10', '40000000007', '0001000000709', 10, 195, 'A'),
(71, 'Larissa Carvalho Marques', 71, 'Casa', '2006-11-11', '40000000007', '000100000071S', 11, 196, 'A'),
(72, 'Marcelo Marques Ribeiro', 72, 'Casa', '2007-12-12', '40000000007', '0001000000721', 12, 197, 'A'),
(73, 'Debora Ribeiro Gomes', 73, 'Casa', '2008-01-13', '40000000007', '000100000073U', 13, 198, 'A'),
(74, 'Roberto Gomes Alves', 74, 'Casa', '2009-02-14', '40000000007', '0001000000743', 14, 199, 'A'),
(75, 'Fernanda Alves Lima', 75, 'Casa', '2010-03-15', '40000000007', '000100000075W', 15, 200, 'A'),
(76, 'Mateus Lima Correia', 76, 'Casa', '2006-04-16', '40000000007', '0001000000765', 16, 201, 'A'),
(77, 'Tatiana Fernandes Machado', 77, 'Casa', '2007-05-17', '40000000007', '000100000077Y', 17, 202, 'A'),
(78, 'Rodrigo Nunes Teixeira', 78, 'Casa', '2008-06-18', '40000000007', '0001000000787', 18, 203, 'A'),
(79, 'Valeria Rezende Cruz', 79, 'Casa', '2009-07-19', '40000000007', '000100000079A', 19, 204, 'A'),
(80, 'Henrique Souza Cardoso', 80, 'Casa', '2010-08-20', '40000000008', '0001000000809', 20, 205, 'A'),
(81, 'Bruna Araujo Mendes', 81, 'Casa', '2006-01-01', '40000000008', '000100000081C', 1, 206, 'A'),
(82, 'Bruno Ferreira Oliveira', 82, 'Casa', '2007-02-02', '40000000008', '0001000000821', 2, 207, 'A'),
(83, 'Simone Lopes Cunha', 83, 'Casa', '2008-03-03', '40000000008', '000100000083E', 3, 208, 'A'),
(84, 'Samuel Moraes Dias', 84, 'Casa', '2009-04-04', '40000000008', '0001000000843', 4, 209, 'A'),
(85, 'Taina Barbosa Nascimento', 85, 'Casa', '2010-05-05', '40000000008', '000100000085G', 5, 210, 'A'),
(86, 'William Moreira Assis', 86, 'Casa', '2006-06-06', '40000000008', '0001000000865', 6, 211, 'A'),
(87, 'Regina Martins Santos', 87, 'Casa', '2007-07-07', '40000000008', '000100000087I', 7, 212, 'A'),
(88, 'Otavio Costa Castro', 88, 'Casa', '2008-08-08', '40000000008', '0001000000887', 8, 213, 'A'),
(89, 'Luciana Batista Pinto', 89, 'Casa', '2009-09-09', '40000000008', '000100000089K', 9, 214, 'A'),
(90, 'Renato Silva Rodrigues', 90, 'Casa', '2010-10-10', '40000000009', '0001000000909', 10, 215, 'A'),
(91, 'Karina Campos Andrade', 91, 'Casa', '2006-11-11', '40000000009', '000100000091M', 11, 216, 'A'),
(92, 'Rafael Tavares Sousa', 92, 'Casa', '2007-12-12', '40000000009', '0001000000921', 12, 217, 'A'),
(93, 'Elisa Barros Ramos', 93, 'Casa', '2008-01-13', '40000000009', '000100000093O', 13, 218, 'A'),
(94, 'Luiz Almeida Monteiro', 94, 'Casa', '2009-02-14', '40000000009', '0001000000943', 14, 219, 'A'),
(95, 'Isabela Rocha Cavalcante', 95, 'Casa', '2010-03-15', '40000000009', '000100000095Q', 15, 220, 'A'),
(96, 'Julio Carvalho Farias', 96, 'Casa', '2006-04-16', '40000000009', '0001000000965', 16, 221, 'A'),
(97, 'Livia Marques Vieira', 97, 'Casa', '2007-05-17', '40000000009', '000100000097S', 17, 222, 'A'),
(98, 'Miguel Ribeiro Moura', 98, 'Casa', '2008-06-18', '40000000009', '0001000000987', 18, 223, 'A'),
(99, 'Rafaela Gomes Pereira', 99, 'Casa', '2009-07-19', '40000000009', '000100000099U', 19, 224, 'A'),
(100, 'Flavio Alves Freitas', 100, 'Casa', '2010-08-20', '40000000010', '0001000001009', 20, 225, 'A'),
(101, 'Eduarda Lima Correia', 101, 'Casa', '2006-01-01', '40000000010', '000100000101W', 1, 226, 'A'),
(102, 'Carlos Fernandes Machado', 102, 'Casa', '2007-02-02', '40000000010', '0001000001021', 2, 227, 'A'),
(103, 'Claudia Nunes Teixeira', 103, 'Casa', '2008-03-03', '40000000010', '000100000103Y', 3, 228, 'A'),
(104, 'Leandro Rezende Cruz', 104, 'Casa', '2009-04-04', '40000000010', '0001000001043', 4, 229, 'A'),
(105, 'Sabrina Souza Cardoso', 105, 'Casa', '2010-05-05', '40000000010', '000100000105A', 5, 230, 'A'),
(106, 'Patrick Araujo Mendes', 106, 'Casa', '2006-06-06', '40000000010', '0001000001065', 6, 231, 'A'),
(107, 'Sandra Ferreira Oliveira', 107, 'Casa', '2007-07-07', '40000000010', '000100000107C', 7, 232, 'A'),
(108, 'Arthur Lopes Cunha', 108, 'Casa', '2008-08-08', '40000000010', '0001000001087', 8, 233, 'A'),
(109, 'Priscila Moraes Dias', 109, 'Casa', '2009-09-09', '40000000010', '000100000109E', 9, 234, 'A'),
(110, 'Daniel Barbosa Nascimento', 110, 'Casa', '2010-10-10', '40000000011', '0001000001109', 10, 235, 'A'),
(111, 'Daniela Moreira Assis', 111, 'Casa', '2006-11-11', '40000000011', '000100000111G', 11, 236, 'A'),
(112, 'Davi Martins Santos', 112, 'Casa', '2007-12-12', '40000000011', '0001000001121', 12, 237, 'A'),
(113, 'Helena Costa Castro', 113, 'Casa', '2008-01-13', '40000000011', '000100000113I', 13, 238, 'A'),
(114, 'Felipe Batista Pinto', 114, 'Casa', '2009-02-14', '40000000011', '0001000001143', 14, 239, 'A'),
(115, 'Camila Silva Rodrigues', 115, 'Casa', '2010-03-15', '40000000011', '000100000115K', 15, 240, 'A'),
(116, 'Paulo Campos Andrade', 116, 'Casa', '2006-04-16', '40000000011', '0001000001165', 16, 241, 'A'),
(117, 'Viviane Tavares Sousa', 117, 'Casa', '2007-05-17', '40000000011', '000100000117M', 17, 242, 'A'),
(118, 'Alexandre Barros Ramos', 118, 'Casa', '2008-06-18', '40000000011', '0001000001187', 18, 243, 'A'),
(119, 'Renata Almeida Monteiro', 119, 'Casa', '2009-07-19', '40000000011', '000100000119O', 19, 244, 'A'),
(120, 'Wagner Rocha Cavalcante', 120, 'Casa', '2010-08-20', '40000000012', '0001000001209', 20, 245, 'A'),
(121, 'Olivia Carvalho Farias', 121, 'Casa', '2006-01-01', '40000000012', '000100000121Q', 1, 246, 'A'),
(122, 'Murilo Marques Vieira', 122, 'Casa', '2007-02-02', '40000000012', '0001000001221', 2, 247, 'A'),
(123, 'Fabiana Ribeiro Moura', 123, 'Casa', '2008-03-03', '40000000012', '000100000123S', 3, 248, 'A'),
(124, 'Bernardo Gomes Pereira', 124, 'Casa', '2009-04-04', '40000000012', '0001000001243', 4, 249, 'A'),
(125, 'Mariana Alves Freitas', 125, 'Casa', '2010-05-05', '40000000012', '000100000125U', 5, 250, 'A'),
(126, 'Thiago Lima Correia', 126, 'Casa', '2006-06-06', '40000000012', '0001000001265', 6, 251, 'A'),
(127, 'Ana Fernandes Machado', 127, 'Casa', '2007-07-07', '40000000012', '000100000127W', 7, 252, 'A'),
(128, 'Gabriel Nunes Teixeira', 128, 'Casa', '2008-08-08', '40000000012', '0001000001287', 8, 253, 'A'),
(129, 'Adriana Rezende Cruz', 129, 'Casa', '2009-09-09', '40000000012', '000100000129Y', 9, 254, 'A'),
(130, 'Fabio Souza Cardoso', 130, 'Casa', '2010-10-10', '40000000013', '0001000001309', 10, 255, 'A'),
(131, 'Vanessa Araujo Mendes', 131, 'Casa', '2006-11-11', '40000000013', '000100000131A', 11, 256, 'A'),
(132, 'Caio Ferreira Oliveira', 132, 'Casa', '2007-12-12', '40000000013', '0001000001321', 12, 257, 'A'),
(133, 'Juliana Lopes Cunha', 133, 'Casa', '2008-01-13', '40000000013', '000100000133C', 13, 258, 'A'),
(134, 'Joao Moraes Dias', 134, 'Casa', '2009-02-14', '40000000013', '0001000001343', 14, 259, 'A'),
(135, 'Nathalia Barbosa Nascimento', 135, 'Casa', '2010-03-15', '40000000013', '000100000135E', 15, 260, 'A'),
(136, 'Cauã Moreira Assis', 136, 'Casa', '2006-04-16', '40000000013', '0001000001365', 16, 261, 'A'),
(137, 'Carolina Martins Santos', 137, 'Casa', '2007-05-17', '40000000013', '000100000137G', 17, 262, 'A'),
(138, 'Sergio Costa Castro', 138, 'Casa', '2008-06-18', '40000000013', '0001000001387', 18, 263, 'A'),
(139, 'Isadora Batista Pinto', 139, 'Casa', '2009-07-19', '40000000013', '000100000139I', 19, 264, 'A'),
(140, 'Vinicius Silva Rodrigues', 140, 'Casa', '2010-08-20', '40000000014', '0001000001409', 20, 265, 'A'),
(141, 'Amanda Campos Andrade', 141, 'Casa', '2006-01-01', '40000000014', '000100000141K', 1, 266, 'A'),
(142, 'Igor Tavares Sousa', 142, 'Casa', '2007-02-02', '40000000014', '0001000001421', 2, 267, 'A'),
(143, 'Gabriela Barros Ramos', 143, 'Casa', '2008-03-03', '40000000014', '000100000143M', 3, 268, 'A'),
(144, 'Danilo Almeida Monteiro', 144, 'Casa', '2009-04-04', '40000000014', '0001000001443', 4, 269, 'A'),
(145, 'Aline Rocha Cavalcante', 145, 'Casa', '2010-05-05', '40000000014', '000100000145O', 5, 270, 'A'),
(146, 'Cristiano Carvalho Farias', 146, 'Casa', '2006-06-06', '40000000014', '0001000001465', 6, 271, 'A'),
(147, 'Paula Marques Vieira', 147, 'Casa', '2007-07-07', '40000000014', '000100000147Q', 7, 272, 'A'),
(148, 'Enzo Ribeiro Moura', 148, 'Casa', '2008-08-08', '40000000014', '0001000001487', 8, 273, 'A'),
(149, 'Maria Gomes Pereira', 149, 'Casa', '2009-09-09', '40000000014', '000100000149S', 9, 274, 'A'),
(150, 'Andre Alves Freitas', 150, 'Casa', '2010-10-10', '40000000015', '0001000001509', 10, 275, 'A'),
(151, 'Beatriz Lima Correia', 151, 'Casa', '2006-11-11', '40000000015', '000100000151U', 11, 276, 'A'),
(152, 'Alan Fernandes Machado', 152, 'Casa', '2007-12-12', '40000000015', '0001000001521', 12, 277, 'A'),
(153, 'Patricia Nunes Teixeira', 153, 'Casa', '2008-01-13', '40000000015', '000100000153W', 13, 278, 'A'),
(154, 'Evandro Rezende Cruz', 154, 'Casa', '2009-02-14', '40000000015', '0001000001543', 14, 279, 'A'),
(155, 'Monica Souza Cardoso', 155, 'Casa', '2010-03-15', '40000000015', '000100000155Y', 15, 280, 'A'),
(156, 'Gustavo Araujo Mendes', 156, 'Casa', '2006-04-16', '40000000015', '0001000001565', 16, 281, 'A'),
(157, 'Carla Ferreira Oliveira', 157, 'Casa', '2007-05-17', '40000000015', '000100000157A', 17, 282, 'A'),
(158, 'Lucas Lopes Cunha', 158, 'Casa', '2008-06-18', '40000000015', '0001000001587', 18, 283, 'A'),
(159, 'Leticia Moraes Dias', 159, 'Casa', '2009-07-19', '40000000015', '000100000159C', 19, 284, 'A'),
(160, 'Anderson Barbosa Nascimento', 160, 'Casa', '2010-08-20', '40000000016', '0001000001609', 20, 285, 'A'),
(161, 'Joana Moreira Assis', 161, 'Casa', '2006-01-01', '40000000016', '000100000161E', 1, 286, 'A'),
(162, 'Leonardo Martins Santos', 162, 'Casa', '2007-02-02', '40000000016', '0001000001621', 2, 287, 'A'),
(163, 'Natalia Costa Castro', 163, 'Casa', '2008-03-03', '40000000016', '000100000163G', 3, 288, 'A'),
(164, 'Diego Batista Pinto', 164, 'Casa', '2009-04-04', '40000000016', '0001000001643', 4, 289, 'A'),
(165, 'Bianca Silva Rodrigues', 165, 'Casa', '2010-05-05', '40000000016', '000100000165I', 5, 290, 'A'),
(166, 'Eduardo Campos Andrade', 166, 'Casa', '2006-06-06', '40000000016', '0001000001665', 6, 291, 'A'),
(167, 'Queila Tavares Sousa', 167, 'Casa', '2007-07-07', '40000000016', '000100000167K', 7, 292, 'A'),
(168, 'Pedro Barros Ramos', 168, 'Casa', '2008-08-08', '40000000016', '0001000001687', 8, 293, 'A'),
(169, 'Jessica Almeida Monteiro', 169, 'Casa', '2009-09-09', '40000000016', '000100000169M', 9, 294, 'A'),
(170, 'Marcos Rocha Cavalcante', 170, 'Casa', '2010-10-10', '40000000017', '0001000001709', 10, 295, 'A'),
(171, 'Larissa Carvalho Farias', 171, 'Casa', '2006-11-11', '40000000017', '000100000171O', 11, 296, 'A'),
(172, 'Marcelo Marques Vieira', 172, 'Casa', '2007-12-12', '40000000017', '0001000001721', 12, 297, 'A'),
(173, 'Debora Ribeiro Moura', 173, 'Casa', '2008-01-13', '40000000017', '000100000173Q', 13, 298, 'A'),
(174, 'Roberto Gomes Pereira', 174, 'Casa', '2009-02-14', '40000000017', '0001000001743', 14, 299, 'A'),
(175, 'Fernanda Alves Freitas', 175, 'Casa', '2010-03-15', '40000000017', '000100000175S', 15, 300, 'A'),
(176, 'Mateus Lima Nunes', 176, 'Casa', '2006-04-16', '40000000017', '0001000001765', 16, 301, 'A'),
(177, 'Tatiana Fernandes Rezende', 177, 'Casa', '2007-05-17', '40000000017', '000100000177U', 17, 302, 'A'),
(178, 'Rodrigo Nunes Souza', 178, 'Casa', '2008-06-18', '40000000017', '0001000001787', 18, 303, 'A'),
(179, 'Valeria Rezende Araujo', 179, 'Casa', '2009-07-19', '40000000017', '000100000179W', 19, 304, 'A'),
(180, 'Henrique Souza Ferreira', 180, 'Casa', '2010-08-20', '40000000018', '0001000001809', 20, 305, 'A'),
(181, 'Bruna Araujo Lopes', 181, 'Casa', '2006-01-01', '40000000018', '000100000181Y', 1, 306, 'A'),
(182, 'Bruno Ferreira Moraes', 182, 'Casa', '2007-02-02', '40000000018', '0001000001821', 2, 307, 'A'),
(183, 'Simone Lopes Barbosa', 183, 'Casa', '2008-03-03', '40000000018', '000100000183A', 3, 308, 'A'),
(184, 'Samuel Moraes Moreira', 184, 'Casa', '2009-04-04', '40000000018', '0001000001843', 4, 309, 'A'),
(185, 'Taina Barbosa Martins', 185, 'Casa', '2010-05-05', '40000000018', '000100000185C', 5, 310, 'A'),
(186, 'William Moreira Costa', 186, 'Casa', '2006-06-06', '40000000018', '0001000001865', 6, 311, 'A'),
(187, 'Regina Martins Batista', 187, 'Casa', '2007-07-07', '40000000018', '000100000187E', 7, 312, 'A'),
(188, 'Otavio Costa Silva', 188, 'Casa', '2008-08-08', '40000000018', '0001000001887', 8, 313, 'A'),
(189, 'Luciana Batista Campos', 189, 'Casa', '2009-09-09', '40000000018', '000100000189G', 9, 314, 'A'),
(190, 'Renato Silva Tavares', 190, 'Casa', '2010-10-10', '40000000019', '0001000001909', 10, 315, 'A'),
(191, 'Karina Campos Barros', 191, 'Casa', '2006-11-11', '40000000019', '000100000191I', 11, 316, 'A'),
(192, 'Rafael Tavares Almeida', 192, 'Casa', '2007-12-12', '40000000019', '0001000001921', 12, 317, 'A'),
(193, 'Elisa Barros Rocha', 193, 'Casa', '2008-01-13', '40000000019', '000100000193K', 13, 318, 'A'),
(194, 'Luiz Almeida Carvalho', 194, 'Casa', '2009-02-14', '40000000019', '0001000001943', 14, 319, 'A'),
(195, 'Isabela Rocha Marques', 195, 'Casa', '2010-03-15', '40000000019', '000100000195M', 15, 320, 'A'),
(196, 'Julio Carvalho Ribeiro', 196, 'Casa', '2006-04-16', '40000000019', '0001000001965', 16, 321, 'A'),
(197, 'Livia Marques Gomes', 197, 'Casa', '2007-05-17', '40000000019', '000100000197O', 17, 322, 'A'),
(198, 'Miguel Ribeiro Alves', 198, 'Casa', '2008-06-18', '40000000019', '0001000001987', 18, 323, 'A'),
(199, 'Rafaela Gomes Lima', 199, 'Casa', '2009-07-19', '40000000019', '000100000199Q', 19, 324, 'A'),
(200, 'Flavio Alves Fernandes', 200, 'Casa', '2010-08-20', '40000000020', '0001000002009', 20, 325, 'A'),
(201, 'Eduarda Lima Nunes', 201, 'Casa', '2006-01-01', '40000000020', '000100000201S', 1, 326, 'A'),
(202, 'Carlos Fernandes Rezende', 202, 'Casa', '2007-02-02', '40000000020', '0001000002021', 2, 327, 'A'),
(203, 'Claudia Nunes Souza', 203, 'Casa', '2008-03-03', '40000000020', '000100000203U', 3, 328, 'A'),
(204, 'Leandro Rezende Araujo', 204, 'Casa', '2009-04-04', '40000000020', '0001000002043', 4, 329, 'A'),
(205, 'Sabrina Souza Ferreira', 205, 'Casa', '2010-05-05', '40000000020', '000100000205W', 5, 330, 'A'),
(206, 'Patrick Araujo Lopes', 206, 'Casa', '2006-06-06', '40000000020', '0001000002065', 6, 331, 'A'),
(207, 'Sandra Ferreira Moraes', 207, 'Casa', '2007-07-07', '40000000020', '000100000207Y', 7, 332, 'A'),
(208, 'Arthur Lopes Barbosa', 208, 'Casa', '2008-08-08', '40000000020', '0001000002087', 8, 333, 'A'),
(209, 'Priscila Moraes Moreira', 209, 'Casa', '2009-09-09', '40000000020', '000100000209A', 9, 334, 'A'),
(210, 'Daniel Barbosa Martins', 210, 'Casa', '2010-10-10', '40000000021', '0001000002109', 10, 335, 'A'),
(211, 'Daniela Moreira Costa', 211, 'Casa', '2006-11-11', '40000000021', '000100000211C', 11, 336, 'A'),
(212, 'Davi Martins Batista', 212, 'Casa', '2007-12-12', '40000000021', '0001000002121', 12, 337, 'A'),
(213, 'Helena Costa Silva', 213, 'Casa', '2008-01-13', '40000000021', '000100000213E', 13, 338, 'A'),
(214, 'Felipe Batista Campos', 214, 'Casa', '2009-02-14', '40000000021', '0001000002143', 14, 339, 'A'),
(215, 'Camila Silva Tavares', 215, 'Casa', '2010-03-15', '40000000021', '000100000215G', 15, 340, 'A'),
(216, 'Paulo Campos Barros', 216, 'Casa', '2006-04-16', '40000000021', '0001000002165', 16, 341, 'A'),
(217, 'Viviane Tavares Almeida', 217, 'Casa', '2007-05-17', '40000000021', '000100000217I', 17, 342, 'A'),
(218, 'Alexandre Barros Rocha', 218, 'Casa', '2008-06-18', '40000000021', '0001000002187', 18, 343, 'A'),
(219, 'Renata Almeida Carvalho', 219, 'Casa', '2009-07-19', '40000000021', '000100000219K', 19, 344, 'A'),
(220, 'Wagner Rocha Marques', 220, 'Casa', '2010-08-20', '40000000022', '0001000002209', 20, 345, 'A'),
(221, 'Olivia Carvalho Ribeiro', 221, 'Casa', '2006-01-01', '40000000022', '000100000221M', 1, 346, 'A'),
(222, 'Murilo Marques Gomes', 222, 'Casa', '2007-02-02', '40000000022', '0001000002221', 2, 347, 'A'),
(223, 'Fabiana Ribeiro Alves', 223, 'Casa', '2008-03-03', '40000000022', '000100000223O', 3, 348, 'A'),
(224, 'Bernardo Gomes Lima', 224, 'Casa', '2009-04-04', '40000000022', '0001000002243', 4, 349, 'A'),
(225, 'Mariana Alves Fernandes', 225, 'Casa', '2010-05-05', '40000000022', '000100000225Q', 5, 350, 'A'),
(226, 'Thiago Lima Nunes', 226, 'Casa', '2006-06-06', '40000000022', '0001000002265', 6, 351, 'A'),
(227, 'Ana Fernandes Rezende', 227, 'Casa', '2007-07-07', '40000000022', '000100000227S', 7, 352, 'A'),
(228, 'Gabriel Nunes Souza', 228, 'Casa', '2008-08-08', '40000000022', '0001000002287', 8, 353, 'A'),
(229, 'Adriana Rezende Araujo', 229, 'Casa', '2009-09-09', '40000000022', '000100000229U', 9, 354, 'A'),
(230, 'Fabio Souza Ferreira', 230, 'Casa', '2010-10-10', '40000000023', '0001000002309', 10, 355, 'A'),
(231, 'Vanessa Araujo Lopes', 231, 'Casa', '2006-11-11', '40000000023', '000100000231W', 11, 356, 'A'),
(232, 'Caio Ferreira Moraes', 232, 'Casa', '2007-12-12', '40000000023', '0001000002321', 12, 357, 'A'),
(233, 'Juliana Lopes Barbosa', 233, 'Casa', '2008-01-13', '40000000023', '000100000233Y', 13, 358, 'A'),
(234, 'Joao Moraes Moreira', 234, 'Casa', '2009-02-14', '40000000023', '0001000002343', 14, 359, 'A'),
(235, 'Nathalia Barbosa Martins', 235, 'Casa', '2010-03-15', '40000000023', '000100000235A', 15, 360, 'A'),
(236, 'Cauã Moreira Costa', 236, 'Casa', '2006-04-16', '40000000023', '0001000002365', 16, 361, 'A'),
(237, 'Carolina Martins Batista', 237, 'Casa', '2007-05-17', '40000000023', '000100000237C', 17, 362, 'A'),
(238, 'Sergio Costa Silva', 238, 'Casa', '2008-06-18', '40000000023', '0001000002387', 18, 363, 'A'),
(239, 'Isadora Batista Campos', 239, 'Casa', '2009-07-19', '40000000023', '000100000239E', 19, 364, 'A'),
(240, 'Vinicius Silva Tavares', 240, 'Casa', '2010-08-20', '40000000024', '0001000002409', 20, 365, 'A'),
(241, 'Amanda Campos Barros', 241, 'Casa', '2006-01-01', '40000000024', '000100000241G', 1, 366, 'A'),
(242, 'Igor Tavares Almeida', 242, 'Casa', '2007-02-02', '40000000024', '0001000002421', 2, 367, 'A'),
(243, 'Gabriela Barros Rocha', 243, 'Casa', '2008-03-03', '40000000024', '000100000243I', 3, 368, 'A'),
(244, 'Danilo Almeida Carvalho', 244, 'Casa', '2009-04-04', '40000000024', '0001000002443', 4, 369, 'A'),
(245, 'Aline Rocha Marques', 245, 'Casa', '2010-05-05', '40000000024', '000100000245K', 5, 370, 'A'),
(246, 'Cristiano Carvalho Ribeiro', 246, 'Casa', '2006-06-06', '40000000024', '0001000002465', 6, 371, 'A'),
(247, 'Paula Marques Gomes', 247, 'Casa', '2007-07-07', '40000000024', '000100000247M', 7, 372, 'A'),
(248, 'Enzo Ribeiro Alves', 248, 'Casa', '2008-08-08', '40000000024', '0001000002487', 8, 373, 'A'),
(249, 'Maria Gomes Lima', 249, 'Casa', '2009-09-09', '40000000024', '000100000249O', 9, 374, 'A'),
(250, 'Andre Alves Fernandes', 250, 'Casa', '2010-10-10', '40000000025', '0001000002509', 10, 375, 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos_responsaveis`
--

DROP TABLE IF EXISTS `alunos_responsaveis`;
CREATE TABLE `alunos_responsaveis` (
  `id_alunos_responsaveis` int(11) NOT NULL,
  `id_alunos` int(11) DEFAULT NULL,
  `id_responsaveis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos_responsaveis`
--

INSERT INTO `alunos_responsaveis` (`id_alunos_responsaveis`, `id_alunos`, `id_responsaveis`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 1),
(22, 22, 2),
(23, 23, 3),
(24, 24, 4),
(25, 25, 5),
(26, 26, 6),
(27, 27, 7),
(28, 28, 8),
(29, 29, 9),
(30, 30, 10),
(31, 31, 11),
(32, 32, 12),
(33, 33, 13),
(34, 34, 14),
(35, 35, 15),
(36, 36, 16),
(37, 37, 17),
(38, 38, 18),
(39, 39, 19),
(40, 40, 20),
(41, 41, 1),
(42, 42, 2),
(43, 43, 3),
(44, 44, 4),
(45, 45, 5),
(46, 46, 6),
(47, 47, 7),
(48, 48, 8),
(49, 49, 9),
(50, 50, 10),
(51, 51, 21),
(52, 52, 22),
(53, 53, 23),
(54, 54, 24),
(55, 55, 25),
(56, 56, 26),
(57, 57, 27),
(58, 58, 28),
(59, 59, 29),
(60, 60, 30),
(61, 61, 31),
(62, 62, 32),
(63, 63, 33),
(64, 64, 34),
(65, 65, 35),
(66, 66, 36),
(67, 67, 37),
(68, 68, 38),
(69, 69, 39),
(70, 70, 40),
(71, 71, 21),
(72, 72, 22),
(73, 73, 23),
(74, 74, 24),
(75, 75, 25),
(76, 76, 26),
(77, 77, 27),
(78, 78, 28),
(79, 79, 29),
(80, 80, 30),
(81, 81, 31),
(82, 82, 32),
(83, 83, 33),
(84, 84, 34),
(85, 85, 35),
(86, 86, 36),
(87, 87, 37),
(88, 88, 38),
(89, 89, 39),
(90, 90, 40),
(91, 91, 21),
(92, 92, 22),
(93, 93, 23),
(94, 94, 24),
(95, 95, 25),
(96, 96, 26),
(97, 97, 27),
(98, 98, 28),
(99, 99, 29),
(100, 100, 30),
(101, 101, 41),
(102, 102, 42),
(103, 103, 43),
(104, 104, 44),
(105, 105, 45),
(106, 106, 46),
(107, 107, 47),
(108, 108, 48),
(109, 109, 49),
(110, 110, 50),
(111, 111, 61),
(112, 112, 62),
(113, 113, 63),
(114, 114, 64),
(115, 115, 65),
(116, 116, 66),
(117, 117, 67),
(118, 118, 68),
(119, 119, 69),
(120, 120, 70),
(121, 121, 61),
(122, 122, 62),
(123, 123, 63),
(124, 124, 64),
(125, 125, 65),
(126, 126, 66),
(127, 127, 67),
(128, 128, 68),
(129, 129, 69),
(130, 130, 70),
(131, 131, 61),
(132, 132, 62),
(133, 133, 63),
(134, 134, 64),
(135, 135, 65),
(136, 136, 66),
(137, 137, 67),
(138, 138, 68),
(139, 139, 69),
(140, 140, 70),
(141, 141, 71),
(142, 142, 72),
(143, 143, 73),
(144, 144, 74),
(145, 145, 75),
(146, 146, 76),
(147, 147, 77),
(148, 148, 78),
(149, 149, 79),
(150, 150, 80),
(151, 151, 61),
(152, 152, 62),
(153, 153, 63),
(154, 154, 64),
(155, 155, 65),
(156, 156, 66),
(157, 157, 67),
(158, 158, 68),
(159, 159, 69),
(160, 160, 70),
(161, 161, 71),
(162, 162, 72),
(163, 163, 73),
(164, 164, 74),
(165, 165, 75),
(166, 166, 76),
(167, 167, 77),
(168, 168, 78),
(169, 169, 79),
(170, 170, 80),
(171, 171, 71),
(172, 172, 72),
(173, 173, 73),
(174, 174, 74),
(175, 175, 75),
(176, 176, 76),
(177, 177, 77),
(178, 178, 78),
(179, 179, 79),
(180, 180, 80),
(181, 181, 81),
(182, 182, 82),
(183, 183, 83),
(184, 184, 84),
(185, 185, 85),
(186, 186, 86),
(187, 187, 87),
(188, 188, 88),
(189, 189, 89),
(190, 190, 90),
(191, 191, 91),
(192, 192, 92),
(193, 193, 93),
(194, 194, 94),
(195, 195, 95),
(196, 196, 96),
(197, 197, 97),
(198, 198, 98),
(199, 199, 99),
(200, 200, 100),
(201, 201, 81),
(202, 202, 82),
(203, 203, 83),
(204, 204, 84),
(205, 205, 85),
(206, 206, 86),
(207, 207, 87),
(208, 208, 88),
(209, 209, 89),
(210, 210, 90),
(211, 211, 91),
(212, 212, 92),
(213, 213, 93),
(214, 214, 94),
(215, 215, 95),
(216, 216, 96),
(217, 217, 97),
(218, 218, 98),
(219, 219, 99),
(220, 220, 100),
(221, 221, 81),
(222, 222, 82),
(223, 223, 83),
(224, 224, 84),
(225, 225, 85),
(226, 226, 86),
(227, 227, 87),
(228, 228, 88),
(229, 229, 89),
(230, 230, 90),
(231, 231, 81),
(232, 232, 82),
(233, 233, 83),
(234, 234, 84),
(235, 235, 85),
(236, 236, 86),
(237, 237, 87),
(238, 238, 88),
(239, 239, 89),
(240, 240, 90),
(241, 241, 81),
(242, 242, 82),
(243, 243, 83),
(244, 244, 84),
(245, 245, 85),
(246, 246, 86),
(247, 247, 87),
(248, 248, 88),
(249, 249, 89),
(250, 250, 90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
CREATE TABLE `avaliacoes` (
  `id_avaliacoes` int(11) NOT NULL,
  `DataDaAvaliacao` date NOT NULL,
  `id_alunos` int(11) DEFAULT NULL,
  `id_disciplinas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairros`
--

DROP TABLE IF EXISTS `bairros`;
CREATE TABLE `bairros` (
  `id_bairros` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `id_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bairros`
--

INSERT INTO `bairros` (`id_bairros`, `Nome`, `id_cidade`) VALUES
(1, 'Centro', 1),
(2, 'Jardim Paulista', 1),
(3, 'Vila Industrial', 1),
(4, 'Santana', 1),
(5, 'Bosque', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins`
--

DROP TABLE IF EXISTS `boletins`;
CREATE TABLE `boletins` (
  `id_boletins` int(11) NOT NULL,
  `MediaFinal` decimal(4,2) DEFAULT NULL,
  `SituacaoFinal` varchar(20) DEFAULT NULL,
  `Frequencia` decimal(5,2) DEFAULT NULL,
  `id_matriculas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins_disciplinas`
--

DROP TABLE IF EXISTS `boletins_disciplinas`;
CREATE TABLE `boletins_disciplinas` (
  `id_boletins_disciplinas` int(11) NOT NULL,
  `Faltas` int(11) NOT NULL,
  `id_boletins` int(11) DEFAULT NULL,
  `id_disciplinas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `id_uf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `Nome`, `id_uf`) VALUES
(1, 'Sao Jose dos Campos', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

DROP TABLE IF EXISTS `contatos`;
CREATE TABLE `contatos` (
  `id_contatos` int(11) NOT NULL,
  `Telefone` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id_contatos`, `Telefone`, `Email`) VALUES
(1, '11900000001', 'mateus.lima.freitas@escola.com'),
(2, '11900000002', 'tatiana.fernandes.correia@escola.com'),
(3, '11900000003', 'rodrigo.nunes.machado@escola.com'),
(4, '11900000004', 'valeria.rezende.teixeira@escola.com'),
(5, '11900000005', 'henrique.souza.cruz@escola.com'),
(6, '11900000006', 'bruna.araujo.cardoso@escola.com'),
(7, '11900000007', 'bruno.ferreira.mendes@escola.com'),
(8, '11900000008', 'simone.lopes.oliveira@escola.com'),
(9, '11900000009', 'samuel.moraes.cunha@escola.com'),
(10, '11900000010', 'taina.barbosa.dias@escola.com'),
(11, '11900000011', 'william.moreira.nascimento@escola.com'),
(12, '11900000012', 'regina.martins.assis@escola.com'),
(13, '11900000013', 'otavio.costa.santos@escola.com'),
(14, '11900000014', 'luciana.batista.castro@escola.com'),
(15, '11900000015', 'renato.silva.pinto@escola.com'),
(16, '11900000016', 'karina.campos.rodrigues@escola.com'),
(17, '11900000017', 'rafael.tavares.andrade@escola.com'),
(18, '11900000018', 'elisa.barros.sousa@escola.com'),
(19, '11900000019', 'luiz.almeida.ramos@escola.com'),
(20, '11900000020', 'isabela.rocha.monteiro@escola.com'),
(21, '11900000021', 'julio.carvalho.cavalcante@escola.com'),
(22, '11900000022', 'livia.marques.farias@escola.com'),
(23, '11900000023', 'miguel.ribeiro.vieira@escola.com'),
(24, '11900000024', 'rafaela.gomes.moura@escola.com'),
(25, '11900000025', 'flavio.alves.pereira@escola.com'),
(26, '11900000026', 'eduarda.lima.freitas@escola.com'),
(27, '11900000027', 'carlos.fernandes.correia@escola.com'),
(28, '11900000028', 'claudia.nunes.machado@escola.com'),
(29, '11900000029', 'leandro.rezende.teixeira@escola.com'),
(30, '11900000030', 'sabrina.souza.cruz@escola.com'),
(31, '11900000031', 'patrick.araujo.cardoso@escola.com'),
(32, '11900000032', 'sandra.ferreira.mendes@escola.com'),
(33, '11900000033', 'arthur.lopes.oliveira@escola.com'),
(34, '11900000034', 'priscila.moraes.cunha@escola.com'),
(35, '11900000035', 'daniel.barbosa.dias@escola.com'),
(36, '11900000036', 'daniela.moreira.nascimento@escola.com'),
(37, '11900000037', 'davi.martins.assis@escola.com'),
(38, '11900000038', 'helena.costa.santos@escola.com'),
(39, '11900000039', 'felipe.batista.castro@escola.com'),
(40, '11900000040', 'camila.silva.pinto@escola.com'),
(41, '11900000041', 'paulo.campos.rodrigues@escola.com'),
(42, '11900000042', 'viviane.tavares.andrade@escola.com'),
(43, '11900000043', 'alexandre.barros.sousa@escola.com'),
(44, '11900000044', 'renata.almeida.ramos@escola.com'),
(45, '11900000045', 'wagner.rocha.monteiro@escola.com'),
(46, '11900000046', 'olivia.carvalho.cavalcante@escola.com'),
(47, '11900000047', 'murilo.marques.farias@escola.com'),
(48, '11900000048', 'fabiana.ribeiro.vieira@escola.com'),
(49, '11900000049', 'bernardo.gomes.moura@escola.com'),
(50, '11900000050', 'mariana.alves.pereira@escola.com'),
(51, '11900000051', 'thiago.lima.freitas@escola.com'),
(52, '11900000052', 'ana.fernandes.correia@escola.com'),
(53, '11900000053', 'gabriel.nunes.machado@escola.com'),
(54, '11900000054', 'adriana.rezende.teixeira@escola.com'),
(55, '11900000055', 'fabio.souza.cruz@escola.com'),
(56, '11900000056', 'vanessa.araujo.cardoso@escola.com'),
(57, '11900000057', 'caio.ferreira.mendes@escola.com'),
(58, '11900000058', 'juliana.lopes.oliveira@escola.com'),
(59, '11900000059', 'joao.moraes.cunha@escola.com'),
(60, '11900000060', 'nathalia.barbosa.dias@escola.com'),
(61, '11900000061', 'caua.moreira.nascimento@escola.com'),
(62, '11900000062', 'carolina.martins.assis@escola.com'),
(63, '11900000063', 'sergio.costa.santos@escola.com'),
(64, '11900000064', 'isadora.batista.castro@escola.com'),
(65, '11900000065', 'vinicius.silva.pinto@escola.com'),
(66, '11900000066', 'amanda.campos.rodrigues@escola.com'),
(67, '11900000067', 'igor.tavares.andrade@escola.com'),
(68, '11900000068', 'gabriela.barros.sousa@escola.com'),
(69, '11900000069', 'danilo.almeida.ramos@escola.com'),
(70, '11900000070', 'aline.rocha.monteiro@escola.com'),
(71, '11900000071', 'cristiano.carvalho.cavalcante@escola.com'),
(72, '11900000072', 'paula.marques.farias@escola.com'),
(73, '11900000073', 'enzo.ribeiro.vieira@escola.com'),
(74, '11900000074', 'maria.gomes.moura@escola.com'),
(75, '11900000075', 'andre.alves.pereira@escola.com'),
(76, '11900000076', 'beatriz.lima.freitas@escola.com'),
(77, '11900000077', 'alan.fernandes.correia@escola.com'),
(78, '11900000078', 'patricia.nunes.machado@escola.com'),
(79, '11900000079', 'evandro.rezende.teixeira@escola.com'),
(80, '11900000080', 'monica.souza.cruz@escola.com'),
(81, '11900000081', 'gustavo.araujo.cardoso@escola.com'),
(82, '11900000082', 'carla.ferreira.mendes@escola.com'),
(83, '11900000083', 'lucas.lopes.oliveira@escola.com'),
(84, '11900000084', 'leticia.moraes.cunha@escola.com'),
(85, '11900000085', 'anderson.barbosa.dias@escola.com'),
(86, '11900000086', 'joana.moreira.nascimento@escola.com'),
(87, '11900000087', 'leonardo.martins.assis@escola.com'),
(88, '11900000088', 'natalia.costa.santos@escola.com'),
(89, '11900000089', 'diego.batista.castro@escola.com'),
(90, '11900000090', 'bianca.silva.pinto@escola.com'),
(91, '11900000091', 'eduardo.campos.rodrigues@escola.com'),
(92, '11900000092', 'queila.tavares.andrade@escola.com'),
(93, '11900000093', 'pedro.barros.sousa@escola.com'),
(94, '11900000094', 'jessica.almeida.ramos@escola.com'),
(95, '11900000095', 'marcos.rocha.monteiro@escola.com'),
(96, '11900000096', 'larissa.carvalho.cavalcante@escola.com'),
(97, '11900000097', 'marcelo.marques.farias@escola.com'),
(98, '11900000098', 'debora.ribeiro.vieira@escola.com'),
(99, '11900000099', 'roberto.gomes.moura@escola.com'),
(100, '11900000100', 'fernanda.alves.pereira@escola.com'),
(101, '11900000101', 'mateus.lima.fernandes@escola.com'),
(102, '11900000102', 'tatiana.fernandes.nunes@escola.com'),
(103, '11900000103', 'rodrigo.nunes.rezende@escola.com'),
(104, '11900000104', 'valeria.rezende.souza@escola.com'),
(105, '11900000105', 'henrique.souza.araujo@escola.com'),
(106, '11900000106', 'bruna.araujo.ferreira@escola.com'),
(107, '11900000107', 'bruno.ferreira.lopes@escola.com'),
(108, '11900000108', 'simone.lopes.moraes@escola.com'),
(109, '11900000109', 'samuel.moraes.barbosa@escola.com'),
(110, '11900000110', 'taina.barbosa.moreira@escola.com'),
(111, '11900000111', 'william.moreira.martins@escola.com'),
(112, '11900000112', 'regina.martins.costa@escola.com'),
(113, '11900000113', 'otavio.costa.batista@escola.com'),
(114, '11900000114', 'luciana.batista.silva@escola.com'),
(115, '11900000115', 'renato.silva.campos@escola.com'),
(116, '11900000116', 'karina.campos.tavares@escola.com'),
(117, '11900000117', 'rafael.tavares.barros@escola.com'),
(118, '11900000118', 'elisa.barros.almeida@escola.com'),
(119, '11900000119', 'luiz.almeida.rocha@escola.com'),
(120, '11900000120', 'isabela.rocha.carvalho@escola.com'),
(121, '11900000121', 'julio.carvalho.marques@escola.com'),
(122, '11900000122', 'livia.marques.ribeiro@escola.com'),
(123, '11900000123', 'miguel.ribeiro.gomes@escola.com'),
(124, '11900000124', 'rafaela.gomes.alves@escola.com'),
(125, '11900000125', 'flavio.alves.lima@escola.com'),
(126, '11900000126', 'eduarda.lima.fernandes@escola.com'),
(127, '11900000127', 'carlos.fernandes.nunes@escola.com'),
(128, '11900000128', 'claudia.nunes.rezende@escola.com'),
(129, '11900000129', 'leandro.rezende.souza@escola.com'),
(130, '11900000130', 'sabrina.souza.araujo@escola.com'),
(131, '11900000131', 'patrick.araujo.ferreira@escola.com'),
(132, '11900000132', 'sandra.ferreira.lopes@escola.com'),
(133, '11900000133', 'arthur.lopes.moraes@escola.com'),
(134, '11900000134', 'priscila.moraes.barbosa@escola.com'),
(135, '11900000135', 'daniel.barbosa.moreira@escola.com'),
(136, '11900000136', 'daniela.moreira.martins@escola.com'),
(137, '11900000137', 'davi.martins.costa@escola.com'),
(138, '11900000138', 'helena.costa.batista@escola.com'),
(139, '11900000139', 'felipe.batista.silva@escola.com'),
(140, '11900000140', 'camila.silva.campos@escola.com'),
(141, '11900000141', 'paulo.campos.tavares@escola.com'),
(142, '11900000142', 'viviane.tavares.barros@escola.com'),
(143, '11900000143', 'alexandre.barros.almeida@escola.com'),
(144, '11900000144', 'renata.almeida.rocha@escola.com'),
(145, '11900000145', 'wagner.rocha.carvalho@escola.com'),
(146, '11900000146', 'olivia.carvalho.marques@escola.com'),
(147, '11900000147', 'murilo.marques.ribeiro@escola.com'),
(148, '11900000148', 'fabiana.ribeiro.gomes@escola.com'),
(149, '11900000149', 'bernardo.gomes.alves@escola.com'),
(150, '11900000150', 'mariana.alves.lima@escola.com'),
(151, '11900000151', 'thiago.lima.fernandes@escola.com'),
(152, '11900000152', 'ana.fernandes.nunes@escola.com'),
(153, '11900000153', 'gabriel.nunes.rezende@escola.com'),
(154, '11900000154', 'adriana.rezende.souza@escola.com'),
(155, '11900000155', 'fabio.souza.araujo@escola.com'),
(156, '11900000156', 'vanessa.araujo.ferreira@escola.com'),
(157, '11900000157', 'caio.ferreira.lopes@escola.com'),
(158, '11900000158', 'juliana.lopes.moraes@escola.com'),
(159, '11900000159', 'joao.moraes.barbosa@escola.com'),
(160, '11900000160', 'nathalia.barbosa.moreira@escola.com'),
(161, '11900000161', 'caua.moreira.martins@escola.com'),
(162, '11900000162', 'carolina.martins.costa@escola.com'),
(163, '11900000163', 'sergio.costa.batista@escola.com'),
(164, '11900000164', 'isadora.batista.silva@escola.com'),
(165, '11900000165', 'vinicius.silva.campos@escola.com'),
(166, '11900000166', 'amanda.campos.tavares@escola.com'),
(167, '11900000167', 'igor.tavares.barros@escola.com'),
(168, '11900000168', 'gabriela.barros.almeida@escola.com'),
(169, '11900000169', 'danilo.almeida.rocha@escola.com'),
(170, '11900000170', 'aline.rocha.carvalho@escola.com'),
(171, '11900000171', 'cristiano.carvalho.marques@escola.com'),
(172, '11900000172', 'paula.marques.ribeiro@escola.com'),
(173, '11900000173', 'enzo.ribeiro.gomes@escola.com'),
(174, '11900000174', 'maria.gomes.alves@escola.com'),
(175, '11900000175', 'andre.alves.lima@escola.com'),
(176, '11900000176', 'beatriz.lima.fernandes@escola.com'),
(177, '11900000177', 'alan.fernandes.nunes@escola.com'),
(178, '11900000178', 'patricia.nunes.rezende@escola.com'),
(179, '11900000179', 'evandro.rezende.souza@escola.com'),
(180, '11900000180', 'monica.souza.araujo@escola.com'),
(181, '11900000181', 'gustavo.araujo.ferreira@escola.com'),
(182, '11900000182', 'carla.ferreira.lopes@escola.com'),
(183, '11900000183', 'lucas.lopes.moraes@escola.com'),
(184, '11900000184', 'leticia.moraes.barbosa@escola.com'),
(185, '11900000185', 'anderson.barbosa.moreira@escola.com'),
(186, '11900000186', 'joana.moreira.martins@escola.com'),
(187, '11900000187', 'leonardo.martins.costa@escola.com'),
(188, '11900000188', 'natalia.costa.batista@escola.com'),
(189, '11900000189', 'diego.batista.silva@escola.com'),
(190, '11900000190', 'bianca.silva.campos@escola.com'),
(191, '11900000191', 'eduardo.campos.tavares@escola.com'),
(192, '11900000192', 'queila.tavares.barros@escola.com'),
(193, '11900000193', 'pedro.barros.almeida@escola.com'),
(194, '11900000194', 'jessica.almeida.rocha@escola.com'),
(195, '11900000195', 'marcos.rocha.carvalho@escola.com'),
(196, '11900000196', 'larissa.carvalho.marques@escola.com'),
(197, '11900000197', 'marcelo.marques.ribeiro@escola.com'),
(198, '11900000198', 'debora.ribeiro.gomes@escola.com'),
(199, '11900000199', 'roberto.gomes.alves@escola.com'),
(200, '11900000200', 'fernanda.alves.lima@escola.com'),
(201, '11900000201', 'mateus.lima.correia@escola.com'),
(202, '11900000202', 'tatiana.fernandes.machado@escola.com'),
(203, '11900000203', 'rodrigo.nunes.teixeira@escola.com'),
(204, '11900000204', 'valeria.rezende.cruz@escola.com'),
(205, '11900000205', 'henrique.souza.cardoso@escola.com'),
(206, '11900000206', 'bruna.araujo.mendes@escola.com'),
(207, '11900000207', 'bruno.ferreira.oliveira@escola.com'),
(208, '11900000208', 'simone.lopes.cunha@escola.com'),
(209, '11900000209', 'samuel.moraes.dias@escola.com'),
(210, '11900000210', 'taina.barbosa.nascimento@escola.com'),
(211, '11900000211', 'william.moreira.assis@escola.com'),
(212, '11900000212', 'regina.martins.santos@escola.com'),
(213, '11900000213', 'otavio.costa.castro@escola.com'),
(214, '11900000214', 'luciana.batista.pinto@escola.com'),
(215, '11900000215', 'renato.silva.rodrigues@escola.com'),
(216, '11900000216', 'karina.campos.andrade@escola.com'),
(217, '11900000217', 'rafael.tavares.sousa@escola.com'),
(218, '11900000218', 'elisa.barros.ramos@escola.com'),
(219, '11900000219', 'luiz.almeida.monteiro@escola.com'),
(220, '11900000220', 'isabela.rocha.cavalcante@escola.com'),
(221, '11900000221', 'julio.carvalho.farias@escola.com'),
(222, '11900000222', 'livia.marques.vieira@escola.com'),
(223, '11900000223', 'miguel.ribeiro.moura@escola.com'),
(224, '11900000224', 'rafaela.gomes.pereira@escola.com'),
(225, '11900000225', 'flavio.alves.freitas@escola.com'),
(226, '11900000226', 'eduarda.lima.correia@escola.com'),
(227, '11900000227', 'carlos.fernandes.machado@escola.com'),
(228, '11900000228', 'claudia.nunes.teixeira@escola.com'),
(229, '11900000229', 'leandro.rezende.cruz@escola.com'),
(230, '11900000230', 'sabrina.souza.cardoso@escola.com'),
(231, '11900000231', 'patrick.araujo.mendes@escola.com'),
(232, '11900000232', 'sandra.ferreira.oliveira@escola.com'),
(233, '11900000233', 'arthur.lopes.cunha@escola.com'),
(234, '11900000234', 'priscila.moraes.dias@escola.com'),
(235, '11900000235', 'daniel.barbosa.nascimento@escola.com'),
(236, '11900000236', 'daniela.moreira.assis@escola.com'),
(237, '11900000237', 'davi.martins.santos@escola.com'),
(238, '11900000238', 'helena.costa.castro@escola.com'),
(239, '11900000239', 'felipe.batista.pinto@escola.com'),
(240, '11900000240', 'camila.silva.rodrigues@escola.com'),
(241, '11900000241', 'paulo.campos.andrade@escola.com'),
(242, '11900000242', 'viviane.tavares.sousa@escola.com'),
(243, '11900000243', 'alexandre.barros.ramos@escola.com'),
(244, '11900000244', 'renata.almeida.monteiro@escola.com'),
(245, '11900000245', 'wagner.rocha.cavalcante@escola.com'),
(246, '11900000246', 'olivia.carvalho.farias@escola.com'),
(247, '11900000247', 'murilo.marques.vieira@escola.com'),
(248, '11900000248', 'fabiana.ribeiro.moura@escola.com'),
(249, '11900000249', 'bernardo.gomes.pereira@escola.com'),
(250, '11900000250', 'mariana.alves.freitas@escola.com'),
(251, '11900000251', 'thiago.lima.correia@escola.com'),
(252, '11900000252', 'ana.fernandes.machado@escola.com'),
(253, '11900000253', 'gabriel.nunes.teixeira@escola.com'),
(254, '11900000254', 'adriana.rezende.cruz@escola.com'),
(255, '11900000255', 'fabio.souza.cardoso@escola.com'),
(256, '11900000256', 'vanessa.araujo.mendes@escola.com'),
(257, '11900000257', 'caio.ferreira.oliveira@escola.com'),
(258, '11900000258', 'juliana.lopes.cunha@escola.com'),
(259, '11900000259', 'joao.moraes.dias@escola.com'),
(260, '11900000260', 'nathalia.barbosa.nascimento@escola.com'),
(261, '11900000261', 'caua.moreira.assis@escola.com'),
(262, '11900000262', 'carolina.martins.santos@escola.com'),
(263, '11900000263', 'sergio.costa.castro@escola.com'),
(264, '11900000264', 'isadora.batista.pinto@escola.com'),
(265, '11900000265', 'vinicius.silva.rodrigues@escola.com'),
(266, '11900000266', 'amanda.campos.andrade@escola.com'),
(267, '11900000267', 'igor.tavares.sousa@escola.com'),
(268, '11900000268', 'gabriela.barros.ramos@escola.com'),
(269, '11900000269', 'danilo.almeida.monteiro@escola.com'),
(270, '11900000270', 'aline.rocha.cavalcante@escola.com'),
(271, '11900000271', 'cristiano.carvalho.farias@escola.com'),
(272, '11900000272', 'paula.marques.vieira@escola.com'),
(273, '11900000273', 'enzo.ribeiro.moura@escola.com'),
(274, '11900000274', 'maria.gomes.pereira@escola.com'),
(275, '11900000275', 'andre.alves.freitas@escola.com'),
(276, '11900000276', 'beatriz.lima.correia@escola.com'),
(277, '11900000277', 'alan.fernandes.machado@escola.com'),
(278, '11900000278', 'patricia.nunes.teixeira@escola.com'),
(279, '11900000279', 'evandro.rezende.cruz@escola.com'),
(280, '11900000280', 'monica.souza.cardoso@escola.com'),
(281, '11900000281', 'gustavo.araujo.mendes@escola.com'),
(282, '11900000282', 'carla.ferreira.oliveira@escola.com'),
(283, '11900000283', 'lucas.lopes.cunha@escola.com'),
(284, '11900000284', 'leticia.moraes.dias@escola.com'),
(285, '11900000285', 'anderson.barbosa.nascimento@escola.com'),
(286, '11900000286', 'joana.moreira.assis@escola.com'),
(287, '11900000287', 'leonardo.martins.santos@escola.com'),
(288, '11900000288', 'natalia.costa.castro@escola.com'),
(289, '11900000289', 'diego.batista.pinto@escola.com'),
(290, '11900000290', 'bianca.silva.rodrigues@escola.com'),
(291, '11900000291', 'eduardo.campos.andrade@escola.com'),
(292, '11900000292', 'queila.tavares.sousa@escola.com'),
(293, '11900000293', 'pedro.barros.ramos@escola.com'),
(294, '11900000294', 'jessica.almeida.monteiro@escola.com'),
(295, '11900000295', 'marcos.rocha.cavalcante@escola.com'),
(296, '11900000296', 'larissa.carvalho.farias@escola.com'),
(297, '11900000297', 'marcelo.marques.vieira@escola.com'),
(298, '11900000298', 'debora.ribeiro.moura@escola.com'),
(299, '11900000299', 'roberto.gomes.pereira@escola.com'),
(300, '11900000300', 'fernanda.alves.freitas@escola.com'),
(301, '11900000301', 'mateus.lima.nunes@escola.com'),
(302, '11900000302', 'tatiana.fernandes.rezende@escola.com'),
(303, '11900000303', 'rodrigo.nunes.souza@escola.com'),
(304, '11900000304', 'valeria.rezende.araujo@escola.com'),
(305, '11900000305', 'henrique.souza.ferreira@escola.com'),
(306, '11900000306', 'bruna.araujo.lopes@escola.com'),
(307, '11900000307', 'bruno.ferreira.moraes@escola.com'),
(308, '11900000308', 'simone.lopes.barbosa@escola.com'),
(309, '11900000309', 'samuel.moraes.moreira@escola.com'),
(310, '11900000310', 'taina.barbosa.martins@escola.com'),
(311, '11900000311', 'william.moreira.costa@escola.com'),
(312, '11900000312', 'regina.martins.batista@escola.com'),
(313, '11900000313', 'otavio.costa.silva@escola.com'),
(314, '11900000314', 'luciana.batista.campos@escola.com'),
(315, '11900000315', 'renato.silva.tavares@escola.com'),
(316, '11900000316', 'karina.campos.barros@escola.com'),
(317, '11900000317', 'rafael.tavares.almeida@escola.com'),
(318, '11900000318', 'elisa.barros.rocha@escola.com'),
(319, '11900000319', 'luiz.almeida.carvalho@escola.com'),
(320, '11900000320', 'isabela.rocha.marques@escola.com'),
(321, '11900000321', 'julio.carvalho.ribeiro@escola.com'),
(322, '11900000322', 'livia.marques.gomes@escola.com'),
(323, '11900000323', 'miguel.ribeiro.alves@escola.com'),
(324, '11900000324', 'rafaela.gomes.lima@escola.com'),
(325, '11900000325', 'flavio.alves.fernandes@escola.com'),
(326, '11900000326', 'eduarda.lima.nunes@escola.com'),
(327, '11900000327', 'carlos.fernandes.rezende@escola.com'),
(328, '11900000328', 'claudia.nunes.souza@escola.com'),
(329, '11900000329', 'leandro.rezende.araujo@escola.com'),
(330, '11900000330', 'sabrina.souza.ferreira@escola.com'),
(331, '11900000331', 'patrick.araujo.lopes@escola.com'),
(332, '11900000332', 'sandra.ferreira.moraes@escola.com'),
(333, '11900000333', 'arthur.lopes.barbosa@escola.com'),
(334, '11900000334', 'priscila.moraes.moreira@escola.com'),
(335, '11900000335', 'daniel.barbosa.martins@escola.com'),
(336, '11900000336', 'daniela.moreira.costa@escola.com'),
(337, '11900000337', 'davi.martins.batista@escola.com'),
(338, '11900000338', 'helena.costa.silva@escola.com'),
(339, '11900000339', 'felipe.batista.campos@escola.com'),
(340, '11900000340', 'camila.silva.tavares@escola.com'),
(341, '11900000341', 'paulo.campos.barros@escola.com'),
(342, '11900000342', 'viviane.tavares.almeida@escola.com'),
(343, '11900000343', 'alexandre.barros.rocha@escola.com'),
(344, '11900000344', 'renata.almeida.carvalho@escola.com'),
(345, '11900000345', 'wagner.rocha.marques@escola.com'),
(346, '11900000346', 'olivia.carvalho.ribeiro@escola.com'),
(347, '11900000347', 'murilo.marques.gomes@escola.com'),
(348, '11900000348', 'fabiana.ribeiro.alves@escola.com'),
(349, '11900000349', 'bernardo.gomes.lima@escola.com'),
(350, '11900000350', 'mariana.alves.fernandes@escola.com'),
(351, '11900000351', 'thiago.lima.nunes@escola.com'),
(352, '11900000352', 'ana.fernandes.rezende@escola.com'),
(353, '11900000353', 'gabriel.nunes.souza@escola.com'),
(354, '11900000354', 'adriana.rezende.araujo@escola.com'),
(355, '11900000355', 'fabio.souza.ferreira@escola.com'),
(356, '11900000356', 'vanessa.araujo.lopes@escola.com'),
(357, '11900000357', 'caio.ferreira.moraes@escola.com'),
(358, '11900000358', 'juliana.lopes.barbosa@escola.com'),
(359, '11900000359', 'joao.moraes.moreira@escola.com'),
(360, '11900000360', 'nathalia.barbosa.martins@escola.com'),
(361, '11900000361', 'caua.moreira.costa@escola.com'),
(362, '11900000362', 'carolina.martins.batista@escola.com'),
(363, '11900000363', 'sergio.costa.silva@escola.com'),
(364, '11900000364', 'isadora.batista.campos@escola.com'),
(365, '11900000365', 'vinicius.silva.tavares@escola.com'),
(366, '11900000366', 'amanda.campos.barros@escola.com'),
(367, '11900000367', 'igor.tavares.almeida@escola.com'),
(368, '11900000368', 'gabriela.barros.rocha@escola.com'),
(369, '11900000369', 'danilo.almeida.carvalho@escola.com'),
(370, '11900000370', 'aline.rocha.marques@escola.com'),
(371, '11900000371', 'cristiano.carvalho.ribeiro@escola.com'),
(372, '11900000372', 'paula.marques.gomes@escola.com'),
(373, '11900000373', 'enzo.ribeiro.alves@escola.com'),
(374, '11900000374', 'maria.gomes.lima@escola.com'),
(375, '11900000375', 'andre.alves.fernandes@escola.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `coordenadores`
--

DROP TABLE IF EXISTS `coordenadores`;
CREATE TABLE `coordenadores` (
  `id_coordenadores` int(11) NOT NULL,
  `Nome` varchar(120) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `id_contatos` int(11) DEFAULT NULL,
  `id_formacoes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `coordenadores`
--

INSERT INTO `coordenadores` (`id_coordenadores`, `Nome`, `CPF`, `id_contatos`, `id_formacoes`) VALUES
(1, 'Mateus Lima Freitas', '10000000001', 1, 1),
(2, 'Tatiana Fernandes Correia', '10000000002', 2, 2),
(3, 'Rodrigo Nunes Machado', '10000000003', 3, 3),
(4, 'Valeria Rezende Teixeira', '10000000004', 4, 4),
(5, 'Henrique Souza Cruz', '10000000005', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `CargaHoraria` int(11) NOT NULL,
  `Duracao` int(11) NOT NULL,
  `Descricao` varchar(40) NOT NULL,
  `id_coordenadores` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `Nome`, `CargaHoraria`, `Duracao`, `Descricao`, `id_coordenadores`) VALUES
(1, 'DS', 1600, 2, 'Tecnico em Desenvolvimento de Sistemas', 1),
(2, 'ADM', 1600, 2, 'Tecnico em Administracao', 2),
(3, 'Logistica', 1600, 2, 'Tecnico em Logistica', 3),
(4, 'Gestao', 1600, 2, 'Tecnico em Gestao', 4),
(5, 'ADM Empresarial', 1600, 2, 'Tecnico em ADM Empresarial', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos_disciplinas`
--

DROP TABLE IF EXISTS `cursos_disciplinas`;
CREATE TABLE `cursos_disciplinas` (
  `id_cursos_disciplinas` int(11) NOT NULL,
  `id_cursos` int(11) DEFAULT NULL,
  `id_disciplinas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos_disciplinas`
--

INSERT INTO `cursos_disciplinas` (`id_cursos_disciplinas`, `id_cursos`, `id_disciplinas`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 3, 21),
(22, 3, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 3, 27),
(28, 3, 28),
(29, 3, 29),
(30, 3, 30),
(31, 4, 31),
(32, 4, 32),
(33, 4, 33),
(34, 4, 34),
(35, 4, 35),
(36, 4, 36),
(37, 4, 37),
(38, 4, 38),
(39, 4, 39),
(40, 4, 40),
(41, 5, 41),
(42, 5, 42),
(43, 5, 43),
(44, 5, 44),
(45, 5, 45),
(46, 5, 46),
(47, 5, 47),
(48, 5, 48),
(49, 5, 49),
(50, 5, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE `disciplinas` (
  `id_disciplinas` int(11) NOT NULL,
  `CargaHoraria` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id_disciplinas`, `CargaHoraria`, `Nome`) VALUES
(1, 80, 'Algoritmos'),
(2, 80, 'Banco de Dados'),
(3, 80, 'Programacao Web'),
(4, 80, 'Programacao Mobile'),
(5, 80, 'Engenharia de Softwa'),
(6, 80, 'Interfaces'),
(7, 80, 'Redes'),
(8, 80, 'SO'),
(9, 80, 'Estruturas'),
(10, 80, 'Testes'),
(11, 80, 'Administracao'),
(12, 80, 'Marketing'),
(13, 80, 'Contabilidade'),
(14, 80, 'Economia'),
(15, 80, 'Financas'),
(16, 80, 'RH'),
(17, 80, 'Empreendedorismo'),
(18, 80, 'Pessoas'),
(19, 80, 'Compras'),
(20, 80, 'Estoque'),
(21, 80, 'Cadeia Supply'),
(22, 80, 'Armazenagem'),
(23, 80, 'Transporte'),
(24, 80, 'Distribuicao'),
(25, 80, 'Planej Logistico'),
(26, 80, 'Inventario'),
(27, 80, 'Compras'),
(28, 80, 'Comerc Exterior'),
(29, 80, 'Estoque'),
(30, 80, 'PCP'),
(31, 80, 'Lideranca'),
(32, 80, 'Planej Estrateg'),
(33, 80, 'Qualidade'),
(34, 80, 'Processos'),
(35, 80, 'Indicadores'),
(36, 80, 'Projeto'),
(37, 80, 'Gestao Projetos'),
(38, 80, 'Etica'),
(39, 80, 'Inovacao'),
(40, 80, 'Governanca'),
(41, 80, 'Direito Emp'),
(42, 80, 'Financas Emp'),
(43, 80, 'Analise Mercado'),
(44, 80, 'Vendas'),
(45, 80, 'Tributacao'),
(46, 80, 'Custos'),
(47, 80, 'Negociacao'),
(48, 80, 'Planej Comercial'),
(49, 80, 'Relacion Cliente'),
(50, 80, 'Ferramentas G');

-- --------------------------------------------------------

--
-- Estrutura para tabela `formacoes`
--

DROP TABLE IF EXISTS `formacoes`;
CREATE TABLE `formacoes` (
  `id_formacoes` int(11) NOT NULL,
  `Formacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `formacoes`
--

INSERT INTO `formacoes` (`id_formacoes`, `Formacao`) VALUES
(1, 'Analise e Desenvolvimento de Sistemas'),
(2, 'Administracao'),
(3, 'Logistica'),
(4, 'Gestao Empresarial'),
(5, 'Tecnico em Informatica'),
(6, 'Processos Gerenciais'),
(7, 'Ciencias Contabeis'),
(8, 'Pedagogia'),
(9, 'Matematica'),
(10, 'Sistemas de Informacao');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE `matriculas` (
  `id_matriculas` int(11) NOT NULL,
  `EstadoDaMatricula` varchar(10) NOT NULL,
  `DataDaMatricula` date NOT NULL,
  `id_alunos` int(11) DEFAULT NULL,
  `id_turmas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`id_matriculas`, `EstadoDaMatricula`, `DataDaMatricula`, `id_alunos`, `id_turmas`) VALUES
(1, 'Ativa', '2026-02-01', 1, 1),
(2, 'Ativa', '2026-02-01', 2, 1),
(3, 'Ativa', '2026-02-01', 3, 1),
(4, 'Ativa', '2026-02-01', 4, 1),
(5, 'Ativa', '2026-02-01', 5, 1),
(6, 'Ativa', '2026-02-01', 6, 1),
(7, 'Ativa', '2026-02-01', 7, 1),
(8, 'Ativa', '2026-02-01', 8, 1),
(9, 'Ativa', '2026-02-01', 9, 1),
(10, 'Ativa', '2026-02-01', 10, 1),
(11, 'Ativa', '2026-02-01', 11, 1),
(12, 'Ativa', '2026-02-01', 12, 1),
(13, 'Ativa', '2026-02-01', 13, 1),
(14, 'Ativa', '2026-02-01', 14, 1),
(15, 'Ativa', '2026-02-01', 15, 1),
(16, 'Ativa', '2026-02-01', 16, 1),
(17, 'Ativa', '2026-02-01', 17, 1),
(18, 'Ativa', '2026-02-01', 18, 1),
(19, 'Ativa', '2026-02-01', 19, 1),
(20, 'Ativa', '2026-02-01', 20, 1),
(21, 'Ativa', '2026-02-01', 21, 1),
(22, 'Ativa', '2026-02-01', 22, 1),
(23, 'Ativa', '2026-02-01', 23, 1),
(24, 'Ativa', '2026-02-01', 24, 1),
(25, 'Ativa', '2026-02-01', 25, 1),
(26, 'Ativa', '2026-02-01', 26, 1),
(27, 'Ativa', '2026-02-01', 27, 1),
(28, 'Ativa', '2026-02-01', 28, 1),
(29, 'Ativa', '2026-02-01', 29, 1),
(30, 'Ativa', '2026-02-01', 30, 1),
(31, 'Ativa', '2026-02-01', 31, 1),
(32, 'Ativa', '2026-02-01', 32, 1),
(33, 'Ativa', '2026-02-01', 33, 1),
(34, 'Ativa', '2026-02-01', 34, 1),
(35, 'Ativa', '2026-02-01', 35, 1),
(36, 'Ativa', '2026-02-01', 36, 1),
(37, 'Ativa', '2026-02-01', 37, 1),
(38, 'Ativa', '2026-02-01', 38, 1),
(39, 'Ativa', '2026-02-01', 39, 1),
(40, 'Ativa', '2026-02-01', 40, 1),
(41, 'Ativa', '2026-02-01', 41, 1),
(42, 'Ativa', '2026-02-01', 42, 1),
(43, 'Ativa', '2026-02-01', 43, 1),
(44, 'Ativa', '2026-02-01', 44, 1),
(45, 'Ativa', '2026-02-01', 45, 1),
(46, 'Ativa', '2026-02-01', 46, 1),
(47, 'Ativa', '2026-02-01', 47, 1),
(48, 'Ativa', '2026-02-01', 48, 1),
(49, 'Ativa', '2026-02-01', 49, 1),
(50, 'Ativa', '2026-02-01', 50, 1),
(51, 'Ativa', '2026-02-01', 51, 2),
(52, 'Ativa', '2026-02-01', 52, 2),
(53, 'Ativa', '2026-02-01', 53, 2),
(54, 'Ativa', '2026-02-01', 54, 2),
(55, 'Ativa', '2026-02-01', 55, 2),
(56, 'Ativa', '2026-02-01', 56, 2),
(57, 'Ativa', '2026-02-01', 57, 2),
(58, 'Ativa', '2026-02-01', 58, 2),
(59, 'Ativa', '2026-02-01', 59, 2),
(60, 'Ativa', '2026-02-01', 60, 2),
(61, 'Ativa', '2026-02-01', 61, 2),
(62, 'Ativa', '2026-02-01', 62, 2),
(63, 'Ativa', '2026-02-01', 63, 2),
(64, 'Ativa', '2026-02-01', 64, 2),
(65, 'Ativa', '2026-02-01', 65, 2),
(66, 'Ativa', '2026-02-01', 66, 2),
(67, 'Ativa', '2026-02-01', 67, 2),
(68, 'Ativa', '2026-02-01', 68, 2),
(69, 'Ativa', '2026-02-01', 69, 2),
(70, 'Ativa', '2026-02-01', 70, 2),
(71, 'Ativa', '2026-02-01', 71, 2),
(72, 'Ativa', '2026-02-01', 72, 2),
(73, 'Ativa', '2026-02-01', 73, 2),
(74, 'Ativa', '2026-02-01', 74, 2),
(75, 'Ativa', '2026-02-01', 75, 2),
(76, 'Ativa', '2026-02-01', 76, 2),
(77, 'Ativa', '2026-02-01', 77, 2),
(78, 'Ativa', '2026-02-01', 78, 2),
(79, 'Ativa', '2026-02-01', 79, 2),
(80, 'Ativa', '2026-02-01', 80, 2),
(81, 'Ativa', '2026-02-01', 81, 2),
(82, 'Ativa', '2026-02-01', 82, 2),
(83, 'Ativa', '2026-02-01', 83, 2),
(84, 'Ativa', '2026-02-01', 84, 2),
(85, 'Ativa', '2026-02-01', 85, 2),
(86, 'Ativa', '2026-02-01', 86, 2),
(87, 'Ativa', '2026-02-01', 87, 2),
(88, 'Ativa', '2026-02-01', 88, 2),
(89, 'Ativa', '2026-02-01', 89, 2),
(90, 'Ativa', '2026-02-01', 90, 2),
(91, 'Ativa', '2026-02-01', 91, 2),
(92, 'Ativa', '2026-02-01', 92, 2),
(93, 'Ativa', '2026-02-01', 93, 2),
(94, 'Ativa', '2026-02-01', 94, 2),
(95, 'Ativa', '2026-02-01', 95, 2),
(96, 'Ativa', '2026-02-01', 96, 2),
(97, 'Ativa', '2026-02-01', 97, 2),
(98, 'Ativa', '2026-02-01', 98, 2),
(99, 'Ativa', '2026-02-01', 99, 2),
(100, 'Ativa', '2026-02-01', 100, 2),
(101, 'Ativa', '2026-02-01', 101, 3),
(102, 'Ativa', '2026-02-01', 102, 3),
(103, 'Ativa', '2026-02-01', 103, 3),
(104, 'Ativa', '2026-02-01', 104, 3),
(105, 'Ativa', '2026-02-01', 105, 3),
(106, 'Ativa', '2026-02-01', 106, 3),
(107, 'Ativa', '2026-02-01', 107, 3),
(108, 'Ativa', '2026-02-01', 108, 3),
(109, 'Ativa', '2026-02-01', 109, 3),
(110, 'Ativa', '2026-02-01', 110, 3),
(111, 'Ativa', '2026-02-01', 111, 3),
(112, 'Ativa', '2026-02-01', 112, 3),
(113, 'Ativa', '2026-02-01', 113, 3),
(114, 'Ativa', '2026-02-01', 114, 3),
(115, 'Ativa', '2026-02-01', 115, 3),
(116, 'Ativa', '2026-02-01', 116, 3),
(117, 'Ativa', '2026-02-01', 117, 3),
(118, 'Ativa', '2026-02-01', 118, 3),
(119, 'Ativa', '2026-02-01', 119, 3),
(120, 'Ativa', '2026-02-01', 120, 3),
(121, 'Ativa', '2026-02-01', 121, 3),
(122, 'Ativa', '2026-02-01', 122, 3),
(123, 'Ativa', '2026-02-01', 123, 3),
(124, 'Ativa', '2026-02-01', 124, 3),
(125, 'Ativa', '2026-02-01', 125, 3),
(126, 'Ativa', '2026-02-01', 126, 3),
(127, 'Ativa', '2026-02-01', 127, 3),
(128, 'Ativa', '2026-02-01', 128, 3),
(129, 'Ativa', '2026-02-01', 129, 3),
(130, 'Ativa', '2026-02-01', 130, 3),
(131, 'Ativa', '2026-02-01', 131, 3),
(132, 'Ativa', '2026-02-01', 132, 3),
(133, 'Ativa', '2026-02-01', 133, 3),
(134, 'Ativa', '2026-02-01', 134, 3),
(135, 'Ativa', '2026-02-01', 135, 3),
(136, 'Ativa', '2026-02-01', 136, 3),
(137, 'Ativa', '2026-02-01', 137, 3),
(138, 'Ativa', '2026-02-01', 138, 3),
(139, 'Ativa', '2026-02-01', 139, 3),
(140, 'Ativa', '2026-02-01', 140, 3),
(141, 'Ativa', '2026-02-01', 141, 3),
(142, 'Ativa', '2026-02-01', 142, 3),
(143, 'Ativa', '2026-02-01', 143, 3),
(144, 'Ativa', '2026-02-01', 144, 3),
(145, 'Ativa', '2026-02-01', 145, 3),
(146, 'Ativa', '2026-02-01', 146, 3),
(147, 'Ativa', '2026-02-01', 147, 3),
(148, 'Ativa', '2026-02-01', 148, 3),
(149, 'Ativa', '2026-02-01', 149, 3),
(150, 'Ativa', '2026-02-01', 150, 3),
(151, 'Ativa', '2026-02-01', 151, 4),
(152, 'Ativa', '2026-02-01', 152, 4),
(153, 'Ativa', '2026-02-01', 153, 4),
(154, 'Ativa', '2026-02-01', 154, 4),
(155, 'Ativa', '2026-02-01', 155, 4),
(156, 'Ativa', '2026-02-01', 156, 4),
(157, 'Ativa', '2026-02-01', 157, 4),
(158, 'Ativa', '2026-02-01', 158, 4),
(159, 'Ativa', '2026-02-01', 159, 4),
(160, 'Ativa', '2026-02-01', 160, 4),
(161, 'Ativa', '2026-02-01', 161, 4),
(162, 'Ativa', '2026-02-01', 162, 4),
(163, 'Ativa', '2026-02-01', 163, 4),
(164, 'Ativa', '2026-02-01', 164, 4),
(165, 'Ativa', '2026-02-01', 165, 4),
(166, 'Ativa', '2026-02-01', 166, 4),
(167, 'Ativa', '2026-02-01', 167, 4),
(168, 'Ativa', '2026-02-01', 168, 4),
(169, 'Ativa', '2026-02-01', 169, 4),
(170, 'Ativa', '2026-02-01', 170, 4),
(171, 'Ativa', '2026-02-01', 171, 4),
(172, 'Ativa', '2026-02-01', 172, 4),
(173, 'Ativa', '2026-02-01', 173, 4),
(174, 'Ativa', '2026-02-01', 174, 4),
(175, 'Ativa', '2026-02-01', 175, 4),
(176, 'Ativa', '2026-02-01', 176, 4),
(177, 'Ativa', '2026-02-01', 177, 4),
(178, 'Ativa', '2026-02-01', 178, 4),
(179, 'Ativa', '2026-02-01', 179, 4),
(180, 'Ativa', '2026-02-01', 180, 4),
(181, 'Ativa', '2026-02-01', 181, 4),
(182, 'Ativa', '2026-02-01', 182, 4),
(183, 'Ativa', '2026-02-01', 183, 4),
(184, 'Ativa', '2026-02-01', 184, 4),
(185, 'Ativa', '2026-02-01', 185, 4),
(186, 'Ativa', '2026-02-01', 186, 4),
(187, 'Ativa', '2026-02-01', 187, 4),
(188, 'Ativa', '2026-02-01', 188, 4),
(189, 'Ativa', '2026-02-01', 189, 4),
(190, 'Ativa', '2026-02-01', 190, 4),
(191, 'Ativa', '2026-02-01', 191, 4),
(192, 'Ativa', '2026-02-01', 192, 4),
(193, 'Ativa', '2026-02-01', 193, 4),
(194, 'Ativa', '2026-02-01', 194, 4),
(195, 'Ativa', '2026-02-01', 195, 4),
(196, 'Ativa', '2026-02-01', 196, 4),
(197, 'Ativa', '2026-02-01', 197, 4),
(198, 'Ativa', '2026-02-01', 198, 4),
(199, 'Ativa', '2026-02-01', 199, 4),
(200, 'Ativa', '2026-02-01', 200, 4),
(201, 'Ativa', '2026-02-01', 201, 5),
(202, 'Ativa', '2026-02-01', 202, 5),
(203, 'Ativa', '2026-02-01', 203, 5),
(204, 'Ativa', '2026-02-01', 204, 5),
(205, 'Ativa', '2026-02-01', 205, 5),
(206, 'Ativa', '2026-02-01', 206, 5),
(207, 'Ativa', '2026-02-01', 207, 5),
(208, 'Ativa', '2026-02-01', 208, 5),
(209, 'Ativa', '2026-02-01', 209, 5),
(210, 'Ativa', '2026-02-01', 210, 5),
(211, 'Ativa', '2026-02-01', 211, 5),
(212, 'Ativa', '2026-02-01', 212, 5),
(213, 'Ativa', '2026-02-01', 213, 5),
(214, 'Ativa', '2026-02-01', 214, 5),
(215, 'Ativa', '2026-02-01', 215, 5),
(216, 'Ativa', '2026-02-01', 216, 5),
(217, 'Ativa', '2026-02-01', 217, 5),
(218, 'Ativa', '2026-02-01', 218, 5),
(219, 'Ativa', '2026-02-01', 219, 5),
(220, 'Ativa', '2026-02-01', 220, 5),
(221, 'Ativa', '2026-02-01', 221, 5),
(222, 'Ativa', '2026-02-01', 222, 5),
(223, 'Ativa', '2026-02-01', 223, 5),
(224, 'Ativa', '2026-02-01', 224, 5),
(225, 'Ativa', '2026-02-01', 225, 5),
(226, 'Ativa', '2026-02-01', 226, 5),
(227, 'Ativa', '2026-02-01', 227, 5),
(228, 'Ativa', '2026-02-01', 228, 5),
(229, 'Ativa', '2026-02-01', 229, 5),
(230, 'Ativa', '2026-02-01', 230, 5),
(231, 'Ativa', '2026-02-01', 231, 5),
(232, 'Ativa', '2026-02-01', 232, 5),
(233, 'Ativa', '2026-02-01', 233, 5),
(234, 'Ativa', '2026-02-01', 234, 5),
(235, 'Ativa', '2026-02-01', 235, 5),
(236, 'Ativa', '2026-02-01', 236, 5),
(237, 'Ativa', '2026-02-01', 237, 5),
(238, 'Ativa', '2026-02-01', 238, 5),
(239, 'Ativa', '2026-02-01', 239, 5),
(240, 'Ativa', '2026-02-01', 240, 5),
(241, 'Ativa', '2026-02-01', 241, 5),
(242, 'Ativa', '2026-02-01', 242, 5),
(243, 'Ativa', '2026-02-01', 243, 5),
(244, 'Ativa', '2026-02-01', 244, 5),
(245, 'Ativa', '2026-02-01', 245, 5),
(246, 'Ativa', '2026-02-01', 246, 5),
(247, 'Ativa', '2026-02-01', 247, 5),
(248, 'Ativa', '2026-02-01', 248, 5),
(249, 'Ativa', '2026-02-01', 249, 5),
(250, 'Ativa', '2026-02-01', 250, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas`
--

DROP TABLE IF EXISTS `notas`;
CREATE TABLE `notas` (
  `id_notas` int(11) NOT NULL,
  `NotaObtida` decimal(4,2) NOT NULL,
  `id_alunos` int(11) DEFAULT NULL,
  `id_avaliacoes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE `professores` (
  `id_professores` int(11) NOT NULL,
  `Nome` varchar(120) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `id_contatos` int(11) DEFAULT NULL,
  `id_formacoes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id_professores`, `Nome`, `CPF`, `id_contatos`, `id_formacoes`) VALUES
(1, 'Bruna Araujo Cardoso', '20000000001', 6, 2),
(2, 'Bruno Ferreira Mendes', '20000000002', 7, 3),
(3, 'Simone Lopes Oliveira', '20000000003', 8, 4),
(4, 'Samuel Moraes Cunha', '20000000004', 9, 5),
(5, 'Taina Barbosa Dias', '20000000005', 10, 6),
(6, 'William Moreira Nascimento', '20000000006', 11, 7),
(7, 'Regina Martins Assis', '20000000007', 12, 8),
(8, 'Otavio Costa Santos', '20000000008', 13, 9),
(9, 'Luciana Batista Castro', '20000000009', 14, 10),
(10, 'Renato Silva Pinto', '20000000001', 15, 1),
(11, 'Karina Campos Rodrigues', '20000000001', 16, 2),
(12, 'Rafael Tavares Andrade', '20000000001', 17, 3),
(13, 'Elisa Barros Sousa', '20000000001', 18, 4),
(14, 'Luiz Almeida Ramos', '20000000001', 19, 5),
(15, 'Isabela Rocha Monteiro', '20000000001', 20, 6),
(16, 'Julio Carvalho Cavalcante', '20000000001', 21, 7),
(17, 'Livia Marques Farias', '20000000001', 22, 8),
(18, 'Miguel Ribeiro Vieira', '20000000001', 23, 9),
(19, 'Rafaela Gomes Moura', '20000000001', 24, 10),
(20, 'Flavio Alves Pereira', '20000000002', 25, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores_disciplinas`
--

DROP TABLE IF EXISTS `professores_disciplinas`;
CREATE TABLE `professores_disciplinas` (
  `id_professores_disciplinas` int(11) NOT NULL,
  `id_professores` int(11) DEFAULT NULL,
  `id_disciplinas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores_disciplinas`
--

INSERT INTO `professores_disciplinas` (`id_professores_disciplinas`, `id_professores`, `id_disciplinas`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 1, 21),
(22, 2, 22),
(23, 3, 23),
(24, 4, 24),
(25, 5, 25),
(26, 6, 26),
(27, 7, 27),
(28, 8, 28),
(29, 9, 29),
(30, 10, 30),
(31, 11, 31),
(32, 12, 32),
(33, 13, 33),
(34, 14, 34),
(35, 15, 35),
(36, 16, 36),
(37, 17, 37),
(38, 18, 38),
(39, 19, 39),
(40, 20, 40),
(41, 1, 41),
(42, 2, 42),
(43, 3, 43),
(44, 4, 44),
(45, 5, 45),
(46, 6, 46),
(47, 7, 47),
(48, 8, 48),
(49, 9, 49),
(50, 10, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
CREATE TABLE `responsaveis` (
  `id_responsaveis` int(11) NOT NULL,
  `Parentesco` varchar(20) NOT NULL,
  `Nome` varchar(120) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `id_contatos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `responsaveis`
--

INSERT INTO `responsaveis` (`id_responsaveis`, `Parentesco`, `Nome`, `CPF`, `id_contatos`) VALUES
(1, 'Pai', 'Eduarda Lima Freitas', '30000000000', 26),
(2, 'Mae', 'Carlos Fernandes Correia', '30000000000', 27),
(3, 'Tio', 'Claudia Nunes Machado', '30000000000', 28),
(4, 'Tia', 'Leandro Rezende Teixeira', '30000000000', 29),
(5, 'Pai', 'Sabrina Souza Cruz', '30000000000', 30),
(6, 'Mae', 'Patrick Araujo Cardoso', '30000000000', 31),
(7, 'Tio', 'Sandra Ferreira Mendes', '30000000000', 32),
(8, 'Tia', 'Arthur Lopes Oliveira', '30000000000', 33),
(9, 'Pai', 'Priscila Moraes Cunha', '30000000000', 34),
(10, 'Mae', 'Daniel Barbosa Dias', '30000000001', 35),
(11, 'Tio', 'Daniela Moreira Nascimento', '30000000001', 36),
(12, 'Tia', 'Davi Martins Assis', '30000000001', 37),
(13, 'Pai', 'Helena Costa Santos', '30000000001', 38),
(14, 'Mae', 'Felipe Batista Castro', '30000000001', 39),
(15, 'Tio', 'Camila Silva Pinto', '30000000001', 40),
(16, 'Tia', 'Paulo Campos Rodrigues', '30000000001', 41),
(17, 'Pai', 'Viviane Tavares Andrade', '30000000001', 42),
(18, 'Mae', 'Alexandre Barros Sousa', '30000000001', 43),
(19, 'Tio', 'Renata Almeida Ramos', '30000000001', 44),
(20, 'Tia', 'Wagner Rocha Monteiro', '30000000002', 45),
(21, 'Pai', 'Olivia Carvalho Cavalcante', '30000000002', 46),
(22, 'Mae', 'Murilo Marques Farias', '30000000002', 47),
(23, 'Tio', 'Fabiana Ribeiro Vieira', '30000000002', 48),
(24, 'Tia', 'Bernardo Gomes Moura', '30000000002', 49),
(25, 'Pai', 'Mariana Alves Pereira', '30000000002', 50),
(26, 'Mae', 'Thiago Lima Freitas', '30000000002', 51),
(27, 'Tio', 'Ana Fernandes Correia', '30000000002', 52),
(28, 'Tia', 'Gabriel Nunes Machado', '30000000002', 53),
(29, 'Pai', 'Adriana Rezende Teixeira', '30000000002', 54),
(30, 'Mae', 'Fabio Souza Cruz', '30000000003', 55),
(31, 'Tio', 'Vanessa Araujo Cardoso', '30000000003', 56),
(32, 'Tia', 'Caio Ferreira Mendes', '30000000003', 57),
(33, 'Pai', 'Juliana Lopes Oliveira', '30000000003', 58),
(34, 'Mae', 'Joao Moraes Cunha', '30000000003', 59),
(35, 'Tio', 'Nathalia Barbosa Dias', '30000000003', 60),
(36, 'Tia', 'Cauã Moreira Nascimento', '30000000003', 61),
(37, 'Pai', 'Carolina Martins Assis', '30000000003', 62),
(38, 'Mae', 'Sergio Costa Santos', '30000000003', 63),
(39, 'Tio', 'Isadora Batista Castro', '30000000003', 64),
(40, 'Tia', 'Vinicius Silva Pinto', '30000000004', 65),
(41, 'Pai', 'Amanda Campos Rodrigues', '30000000004', 66),
(42, 'Mae', 'Igor Tavares Andrade', '30000000004', 67),
(43, 'Tio', 'Gabriela Barros Sousa', '30000000004', 68),
(44, 'Tia', 'Danilo Almeida Ramos', '30000000004', 69),
(45, 'Pai', 'Aline Rocha Monteiro', '30000000004', 70),
(46, 'Mae', 'Cristiano Carvalho Cavalcante', '30000000004', 71),
(47, 'Tio', 'Paula Marques Farias', '30000000004', 72),
(48, 'Tia', 'Enzo Ribeiro Vieira', '30000000004', 73),
(49, 'Pai', 'Maria Gomes Moura', '30000000004', 74),
(50, 'Mae', 'Andre Alves Pereira', '30000000005', 75),
(51, 'Tio', 'Beatriz Lima Freitas', '30000000005', 76),
(52, 'Tia', 'Alan Fernandes Correia', '30000000005', 77),
(53, 'Pai', 'Patricia Nunes Machado', '30000000005', 78),
(54, 'Mae', 'Evandro Rezende Teixeira', '30000000005', 79),
(55, 'Tio', 'Monica Souza Cruz', '30000000005', 80),
(56, 'Tia', 'Gustavo Araujo Cardoso', '30000000005', 81),
(57, 'Pai', 'Carla Ferreira Mendes', '30000000005', 82),
(58, 'Mae', 'Lucas Lopes Oliveira', '30000000005', 83),
(59, 'Tio', 'Leticia Moraes Cunha', '30000000005', 84),
(60, 'Tia', 'Anderson Barbosa Dias', '30000000006', 85),
(61, 'Pai', 'Joana Moreira Nascimento', '30000000006', 86),
(62, 'Mae', 'Leonardo Martins Assis', '30000000006', 87),
(63, 'Tio', 'Natalia Costa Santos', '30000000006', 88),
(64, 'Tia', 'Diego Batista Castro', '30000000006', 89),
(65, 'Pai', 'Bianca Silva Pinto', '30000000006', 90),
(66, 'Mae', 'Eduardo Campos Rodrigues', '30000000006', 91),
(67, 'Tio', 'Queila Tavares Andrade', '30000000006', 92),
(68, 'Tia', 'Pedro Barros Sousa', '30000000006', 93),
(69, 'Pai', 'Jessica Almeida Ramos', '30000000006', 94),
(70, 'Mae', 'Marcos Rocha Monteiro', '30000000007', 95),
(71, 'Tio', 'Larissa Carvalho Cavalcante', '30000000007', 96),
(72, 'Tia', 'Marcelo Marques Farias', '30000000007', 97),
(73, 'Pai', 'Debora Ribeiro Vieira', '30000000007', 98),
(74, 'Mae', 'Roberto Gomes Moura', '30000000007', 99),
(75, 'Tio', 'Fernanda Alves Pereira', '30000000007', 100),
(76, 'Tia', 'Mateus Lima Fernandes', '30000000007', 101),
(77, 'Pai', 'Tatiana Fernandes Nunes', '30000000007', 102),
(78, 'Mae', 'Rodrigo Nunes Rezende', '30000000007', 103),
(79, 'Tio', 'Valeria Rezende Souza', '30000000007', 104),
(80, 'Tia', 'Henrique Souza Araujo', '30000000008', 105),
(81, 'Pai', 'Bruna Araujo Ferreira', '30000000008', 106),
(82, 'Mae', 'Bruno Ferreira Lopes', '30000000008', 107),
(83, 'Tio', 'Simone Lopes Moraes', '30000000008', 108),
(84, 'Tia', 'Samuel Moraes Barbosa', '30000000008', 109),
(85, 'Pai', 'Taina Barbosa Moreira', '30000000008', 110),
(86, 'Mae', 'William Moreira Martins', '30000000008', 111),
(87, 'Tio', 'Regina Martins Costa', '30000000008', 112),
(88, 'Tia', 'Otavio Costa Batista', '30000000008', 113),
(89, 'Pai', 'Luciana Batista Silva', '30000000008', 114),
(90, 'Mae', 'Renato Silva Campos', '30000000009', 115),
(91, 'Tio', 'Karina Campos Tavares', '30000000009', 116),
(92, 'Tia', 'Rafael Tavares Barros', '30000000009', 117),
(93, 'Pai', 'Elisa Barros Almeida', '30000000009', 118),
(94, 'Mae', 'Luiz Almeida Rocha', '30000000009', 119),
(95, 'Tio', 'Isabela Rocha Carvalho', '30000000009', 120),
(96, 'Tia', 'Julio Carvalho Marques', '30000000009', 121),
(97, 'Pai', 'Livia Marques Ribeiro', '30000000009', 122),
(98, 'Mae', 'Miguel Ribeiro Gomes', '30000000009', 123),
(99, 'Tio', 'Rafaela Gomes Alves', '30000000009', 124),
(100, 'Tia', 'Flavio Alves Lima', '30000000010', 125);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ruas`
--

DROP TABLE IF EXISTS `ruas`;
CREATE TABLE `ruas` (
  `id_ruas` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `CEP` char(8) NOT NULL,
  `id_bairros` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ruas`
--

INSERT INTO `ruas` (`id_ruas`, `Nome`, `CEP`, `id_bairros`) VALUES
(1, 'Rua Sete de Setembro', '12210160', 1),
(2, 'Avenida Deputado Ulisses Guimaraes', '12220010', 2),
(3, 'Rua Euclides Miragaia', '12220270', 3),
(4, 'Avenida Joao Guilhermino', '12210130', 4),
(5, 'Rua Sao Joao', '12220200', 5),
(6, 'Avenida Burlamaqui', '12209580', 1),
(7, 'Rua Vilaboim', '12220620', 2),
(8, 'Rua Sete de Abril', '12220540', 3),
(9, 'Avenida Andromeda', '12230000', 4),
(10, 'Rua Paraibuna', '12220580', 5),
(11, 'Avenida Cassiopeia', '12230011', 1),
(12, 'Rua Herbert de Souza', '12236060', 2),
(13, 'Avenida Cidade Jardim', '12230001', 3),
(14, 'Rua Palestina', '12220450', 4),
(15, 'Avenida Fortunato Farina', '12242080', 5),
(16, 'Rua Dom Pedro I', '12220380', 1),
(17, 'Rua Visconde de Inhauma', '12220330', 2),
(18, 'Avenida Senador Moraes Barros', '12242191', 3),
(19, 'Rua Quinze de Novembro', '12220500', 4),
(20, 'Avenida Olivo Gomes', '12209010', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE `turmas` (
  `id_turmas` int(11) NOT NULL,
  `Sala` varchar(20) NOT NULL,
  `Turno` varchar(20) NOT NULL,
  `AnoLetivo` char(4) NOT NULL,
  `id_cursos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id_turmas`, `Sala`, `Turno`, `AnoLetivo`, `id_cursos`) VALUES
(1, 'DS-1', 'Manha', '2026', 1),
(2, 'ADM-1', 'Tarde', '2026', 2),
(3, 'LOG-1', 'Noite', '2026', 3),
(4, 'GEST-1', 'Manha', '2026', 4),
(5, 'ADMEMP-1', 'Tarde', '2026', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `uf`
--

DROP TABLE IF EXISTS `uf`;
CREATE TABLE `uf` (
  `id_uf` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `uf`
--

INSERT INTO `uf` (`id_uf`, `Nome`, `Sigla`) VALUES
(1, 'Sao Paulo', 'SP');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_alunos`),
  ADD KEY `id_ruas` (`id_ruas`),
  ADD KEY `id_contatos` (`id_contatos`);

--
-- Índices de tabela `alunos_responsaveis`
--
ALTER TABLE `alunos_responsaveis`
  ADD PRIMARY KEY (`id_alunos_responsaveis`),
  ADD KEY `id_alunos` (`id_alunos`),
  ADD KEY `id_responsaveis` (`id_responsaveis`);

--
-- Índices de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id_avaliacoes`),
  ADD KEY `id_alunos` (`id_alunos`),
  ADD KEY `id_disciplinas` (`id_disciplinas`);

--
-- Índices de tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id_bairros`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`id_boletins`),
  ADD KEY `id_matriculas` (`id_matriculas`);

--
-- Índices de tabela `boletins_disciplinas`
--
ALTER TABLE `boletins_disciplinas`
  ADD PRIMARY KEY (`id_boletins_disciplinas`),
  ADD KEY `id_boletins` (`id_boletins`),
  ADD KEY `id_disciplinas` (`id_disciplinas`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `id_uf` (`id_uf`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id_contatos`);

--
-- Índices de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD PRIMARY KEY (`id_coordenadores`),
  ADD KEY `id_contatos` (`id_contatos`),
  ADD KEY `id_formacoes` (`id_formacoes`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`),
  ADD KEY `id_coordenadores` (`id_coordenadores`);

--
-- Índices de tabela `cursos_disciplinas`
--
ALTER TABLE `cursos_disciplinas`
  ADD PRIMARY KEY (`id_cursos_disciplinas`),
  ADD KEY `id_cursos` (`id_cursos`),
  ADD KEY `id_disciplinas` (`id_disciplinas`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id_disciplinas`);

--
-- Índices de tabela `formacoes`
--
ALTER TABLE `formacoes`
  ADD PRIMARY KEY (`id_formacoes`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matriculas`),
  ADD KEY `id_alunos` (`id_alunos`),
  ADD KEY `id_turmas` (`id_turmas`);

--
-- Índices de tabela `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_notas`),
  ADD KEY `id_alunos` (`id_alunos`),
  ADD KEY `id_avaliacoes` (`id_avaliacoes`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id_professores`),
  ADD KEY `id_contatos` (`id_contatos`),
  ADD KEY `id_formacoes` (`id_formacoes`);

--
-- Índices de tabela `professores_disciplinas`
--
ALTER TABLE `professores_disciplinas`
  ADD PRIMARY KEY (`id_professores_disciplinas`),
  ADD KEY `id_professores` (`id_professores`),
  ADD KEY `id_disciplinas` (`id_disciplinas`);

--
-- Índices de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`id_responsaveis`),
  ADD KEY `id_contatos` (`id_contatos`);

--
-- Índices de tabela `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`id_ruas`),
  ADD KEY `id_bairros` (`id_bairros`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id_turmas`),
  ADD KEY `id_cursos` (`id_cursos`);

--
-- Índices de tabela `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`id_uf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_alunos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `alunos_responsaveis`
--
ALTER TABLE `alunos_responsaveis`
  MODIFY `id_alunos_responsaveis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id_avaliacoes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id_bairros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `boletins`
--
ALTER TABLE `boletins`
  MODIFY `id_boletins` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `boletins_disciplinas`
--
ALTER TABLE `boletins_disciplinas`
  MODIFY `id_boletins_disciplinas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id_contatos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  MODIFY `id_coordenadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cursos_disciplinas`
--
ALTER TABLE `cursos_disciplinas`
  MODIFY `id_cursos_disciplinas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id_disciplinas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `formacoes`
--
ALTER TABLE `formacoes`
  MODIFY `id_formacoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matriculas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `notas`
--
ALTER TABLE `notas`
  MODIFY `id_notas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id_professores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `professores_disciplinas`
--
ALTER TABLE `professores_disciplinas`
  MODIFY `id_professores_disciplinas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `id_responsaveis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `ruas`
--
ALTER TABLE `ruas`
  MODIFY `id_ruas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id_turmas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `uf`
--
ALTER TABLE `uf`
  MODIFY `id_uf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`id_ruas`) REFERENCES `ruas` (`id_ruas`),
  ADD CONSTRAINT `alunos_ibfk_2` FOREIGN KEY (`id_contatos`) REFERENCES `contatos` (`id_contatos`);

--
-- Restrições para tabelas `alunos_responsaveis`
--
ALTER TABLE `alunos_responsaveis`
  ADD CONSTRAINT `alunos_responsaveis_ibfk_1` FOREIGN KEY (`id_alunos`) REFERENCES `alunos` (`id_alunos`),
  ADD CONSTRAINT `alunos_responsaveis_ibfk_2` FOREIGN KEY (`id_responsaveis`) REFERENCES `responsaveis` (`id_responsaveis`);

--
-- Restrições para tabelas `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`id_alunos`) REFERENCES `alunos` (`id_alunos`),
  ADD CONSTRAINT `avaliacoes_ibfk_2` FOREIGN KEY (`id_disciplinas`) REFERENCES `disciplinas` (`id_disciplinas`);

--
-- Restrições para tabelas `bairros`
--
ALTER TABLE `bairros`
  ADD CONSTRAINT `bairros_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`);

--
-- Restrições para tabelas `boletins`
--
ALTER TABLE `boletins`
  ADD CONSTRAINT `boletins_ibfk_1` FOREIGN KEY (`id_matriculas`) REFERENCES `matriculas` (`id_matriculas`);

--
-- Restrições para tabelas `boletins_disciplinas`
--
ALTER TABLE `boletins_disciplinas`
  ADD CONSTRAINT `boletins_disciplinas_ibfk_1` FOREIGN KEY (`id_boletins`) REFERENCES `boletins` (`id_boletins`),
  ADD CONSTRAINT `boletins_disciplinas_ibfk_2` FOREIGN KEY (`id_disciplinas`) REFERENCES `disciplinas` (`id_disciplinas`);

--
-- Restrições para tabelas `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`);

--
-- Restrições para tabelas `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD CONSTRAINT `coordenadores_ibfk_1` FOREIGN KEY (`id_contatos`) REFERENCES `contatos` (`id_contatos`),
  ADD CONSTRAINT `coordenadores_ibfk_2` FOREIGN KEY (`id_formacoes`) REFERENCES `formacoes` (`id_formacoes`);

--
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_coordenadores`) REFERENCES `coordenadores` (`id_coordenadores`);

--
-- Restrições para tabelas `cursos_disciplinas`
--
ALTER TABLE `cursos_disciplinas`
  ADD CONSTRAINT `cursos_disciplinas_ibfk_1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`),
  ADD CONSTRAINT `cursos_disciplinas_ibfk_2` FOREIGN KEY (`id_disciplinas`) REFERENCES `disciplinas` (`id_disciplinas`);

--
-- Restrições para tabelas `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`id_alunos`) REFERENCES `alunos` (`id_alunos`),
  ADD CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`id_turmas`) REFERENCES `turmas` (`id_turmas`);

--
-- Restrições para tabelas `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_alunos`) REFERENCES `alunos` (`id_alunos`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`id_avaliacoes`) REFERENCES `avaliacoes` (`id_avaliacoes`);

--
-- Restrições para tabelas `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`id_contatos`) REFERENCES `contatos` (`id_contatos`),
  ADD CONSTRAINT `professores_ibfk_2` FOREIGN KEY (`id_formacoes`) REFERENCES `formacoes` (`id_formacoes`);

--
-- Restrições para tabelas `professores_disciplinas`
--
ALTER TABLE `professores_disciplinas`
  ADD CONSTRAINT `professores_disciplinas_ibfk_1` FOREIGN KEY (`id_professores`) REFERENCES `professores` (`id_professores`),
  ADD CONSTRAINT `professores_disciplinas_ibfk_2` FOREIGN KEY (`id_disciplinas`) REFERENCES `disciplinas` (`id_disciplinas`);

--
-- Restrições para tabelas `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD CONSTRAINT `responsaveis_ibfk_1` FOREIGN KEY (`id_contatos`) REFERENCES `contatos` (`id_contatos`);

--
-- Restrições para tabelas `ruas`
--
ALTER TABLE `ruas`
  ADD CONSTRAINT `ruas_ibfk_1` FOREIGN KEY (`id_bairros`) REFERENCES `bairros` (`id_bairros`);

--
-- Restrições para tabelas `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
