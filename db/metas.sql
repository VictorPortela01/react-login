-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/12/2024 às 21:01
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
-- Banco de dados: `metas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `teste36s`
--

CREATE TABLE `teste36s` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `codigo` int(11) NOT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `tml` varchar(255) DEFAULT NULL,
  `devolução` varchar(255) DEFAULT NULL,
  `vales` varchar(255) DEFAULT NULL,
  `checklist` varchar(255) DEFAULT NULL,
  `boleto` varchar(255) DEFAULT NULL,
  `combustivel` varchar(255) DEFAULT NULL,
  `avarias` varchar(244) DEFAULT NULL,
  `caixas` varchar(100) DEFAULT NULL,
  `tendencias` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `teste36s`
--

INSERT INTO `teste36s` (`id`, `nome`, `codigo`, `rating`, `tml`, `devolução`, `vales`, `checklist`, `boleto`, `combustivel`, `avarias`, `caixas`, `tendencias`, `createdAt`, `updatedAt`) VALUES
(1, 'NOME DO AJUDANTE', 0, 'RATING', 'TML', '% DEV', 'VALES', NULL, NULL, NULL, 'AVARIAS', 'CX. ENTREGUES', 'TENDÊNCIA MÊS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ALEX DA SILVA DUARTE', 1, '4,93', '00:10:40', '0,68%', '0,00', NULL, NULL, NULL, ' R$35,00 ', '342', ' R$ 290,80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'ALEXANDRE OLIMPIO DA SILVA', 103, '4,93', '00:02:15', '0,00%', '0,00', NULL, NULL, NULL, ' R$69,00 ', '432', ' R$ 367,20 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'ANT EDILANDE DE LIMA MORAIS', 3, '4,93', '00:08:50', '0,00%', '0,00', NULL, NULL, NULL, ' R$65,00 ', '431', ' R$ 366,41 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'ANT HERCULES DE FRANCA FREIRES', 232, '4,93', '00:10:45', '0,00%', '0,00', NULL, NULL, NULL, ' R$74,00 ', '289', ' R$ 245,83 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'ANT JOSE MINGOTE', 4, '4,93', '00:11:10', '0,43%', '0,00', NULL, NULL, NULL, ' R$41,00 ', '329', ' R$ 280,04 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'ANTONIO KAIO DA SILVA SOUZA', 1923, '4,93', '00:02:15', '0,00%', '0,00', NULL, NULL, NULL, ' R$36,00 ', '432', ' R$ 367,01 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'ANTONIO VICTOR PEREIRA DA SILVA', 1866, '4,93', '', '0,00%', '0,00', NULL, NULL, NULL, ' R$-   ', '228', ' R$ 171,31 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'CARLOS NASCIMENTO DA SILVA', 1900, '4,93', '00:05:40', '0,00%', '0,00', NULL, NULL, NULL, ' R$34,00 ', '364', ' R$ 309,82 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CASSIO CONCEIÇÃO SILVA NASCIMENTO', 1860, '4,93', '00:04:00', '0,00%', '0,00', NULL, NULL, NULL, ' R$74,00 ', '95', ' R$ 80,97 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CRISTIANO ALBUQUERQUE BATISTA', 12, '4,93', '00:12:45', '0,00%', '0,00', NULL, NULL, NULL, ' R$14,00 ', '357', ' R$ 303,47 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'FABIO PAIVA COUTINHO', 111, '4,93', '00:05:30', '0,28%', '0,00', NULL, NULL, NULL, ' R$36,00 ', '381', ' R$ 323,72 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'FCO ALBUQUERQUE DO NASCIMENTO', 17, '4,93', '00:07:00', '1,88%', '0,00', NULL, NULL, NULL, ' R$54,00 ', '339', ' R$ 287,73 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'FCO DE PAIVA BARBOSA', 234, '4,93', '00:09:15', '0,57%', '0,00', NULL, NULL, NULL, ' R$78,00 ', '385', ' R$ 326,98 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'FCO DIONES FERNANDES DO NASC.', 26, '4,93', '00:13:20', '0,00%', '0,00', NULL, NULL, NULL, ' R$-   ', '250', ' R$ 212,41 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'FCO EDUARDO PEREIRA DA SILVA', 104, '4,93', '00:09:40', '2,16%', '0,00', NULL, NULL, NULL, ' R$14,00 ', '346', ' R$ 259,16 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'FCO MARCOS XIMANGUE PEREIRA', 24, '4,93', '', '', '1,00', NULL, NULL, NULL, ' R$36,00 ', '0', ' R$ -   ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'FRANCISCO ADRIANO DA SILVA', 1873, '4,93', '00:04:15', '1,34%', '0,00', NULL, NULL, NULL, ' R$24,00 ', '285', ' R$ 291,77 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'FRANCISCO CARLOS SILVA DOS SANTOS', 1875, '4,93', '00:07:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$58,00 ', '355', ' R$ 322,02 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'FRANCISCO DAS CHAGAS DUTRA PEREIRA', 1880, '4,93', '00:06:12', '0,26%', '0,00', NULL, NULL, NULL, ' R$69,00 ', '423', ' R$ 359,74 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'FRANCISCO FABIO BRAGA SOUSA', 1899, '4,93', '00:08:30', '0,81%', '1,00', NULL, NULL, NULL, ' R$47,00 ', '181', ' R$ 154,17 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'FRANCISCO FERREIRA DA COSTA', 241, '4,93', '00:04:40', '0,00%', '0,00', NULL, NULL, NULL, ' R$14,00 ', '256', ' R$ 217,33 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'FRANCISCO JERRY FRANCA DE SOUSA', 1871, '4,93', '00:04:00', '2,83%', '0,00', NULL, NULL, NULL, ' R$25,00 ', '261', ' R$ 195,39 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'FRANCISCO JHONATA DA COSTA CARDOSO', 1921, '4,93', '', '', '0,00', NULL, NULL, NULL, ' R$36,00 ', '0', ' R$ -   ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'FRANCISCO JONAS PEREIRA DA SILVA', 1830, '4,93', '00:07:15', '3,24%', '0,00', NULL, NULL, NULL, ' R$41,00 ', '368', ' R$ 275,91 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'FRANCISCO JOSE SABINO DE SOUSA', 1901, '4,93', '00:19:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$52,00 ', '173', ' R$ 146,73 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'FRANCISCO LEANDRO MOTA', 1778, '4,93', '00:10:15', '0,00%', '0,00', NULL, NULL, NULL, ' R$63,00 ', '384', ' R$ 326,26 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'FRANCISCO MARCELO RIBEIRO DE S', 1730, '4,93', '00:13:00', '5,42%', '0,00', NULL, NULL, NULL, ' R$47,00 ', '224', ' R$ 168,08 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'FRANCISCO WILNER DA SILVA CAVALCANTE', 1868, '4,93', '00:08:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$58,00 ', '284', ' R$ 241,06 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'GILIARD MACHADO DA SILVA', 1867, '4,93', '00:09:45', '0,00%', '0,00', NULL, NULL, NULL, ' R$69,00 ', '265', ' R$ 224,89 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'IGO DO NASCIMENTO DOS SANTOS', 1902, '4,93', '00:07:40', '0,00%', '2,00', NULL, NULL, NULL, ' R$17,00 ', '290', ' R$ 246,90 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'ISAU PIMENTA RODRIGUES', 1752, '4,93', '00:10:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$28,00 ', '310', ' R$ 263,33 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'JAIRO ANTONIO MOREIRA DE LIMA', 83, '4,93', '00:07:40', '0,00%', '0,00', NULL, NULL, NULL, ' R$39,00 ', '257', ' R$ 218,86 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'JOÃO VICTOR DA SILVA', 88, '4,93', '00:07:45', '0,00%', '0,00', NULL, NULL, NULL, ' R$-   ', '324', ' R$ 275,63 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'JOCELI GABALIA DE SOUSA', 28, '4,93', '00:11:20', '0,00%', '0,00', NULL, NULL, NULL, ' R$47,00 ', '432', ' R$ 367,39 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'JOSE ARTEIRO FREIRES FERREIRA', 13, '4,93', '', '', '0,00', NULL, NULL, NULL, ' R$58,00 ', '0', ' R$ -   ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'JOSE RENNER FRANÇA DA SILVA', 1852, '4,93', '00:12:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$69,00 ', '386', ' R$ 327,70 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'JOSE RICARDO JARDILINO MORAIS', 69, '4,93', '00:06:45', '0,00%', '0,00', NULL, NULL, NULL, ' R$63,00 ', '379', ' R$ 322,50 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'JOSÉ ROBERTO DO NASCIMENTO', 1824, '4,93', '00:06:00', '0,00%', '0,00', NULL, NULL, NULL, ' R$52,00 ', '178', ' R$ 151,65 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'JOSE VAULINO DO NASCIMENTO', 105, '4,93', '00:14:00', '0,00%', '0,00', NULL, NULL, NULL, ' R$41,00 ', '108', ' R$ 91,63 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'JOSIVAN PEDRO PIRES', 1854, '4,93', '00:07:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$14,00 ', '290', ' R$ 246,91 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'LEONARDO FERREIRA', 49, '4,93', '00:09:15', '0,30%', '0,00', NULL, NULL, NULL, ' R$25,00 ', '430', ' R$ 365,46 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'LUIS CARLOS XIMANGUE', 31, '4,93', '00:05:15', '1,07%', '2,00', NULL, NULL, NULL, ' R$36,00 ', '299', ' R$ 254,50 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'MAILSON CAMILO DA SILVA', 1912, '4,93', '00:02:30', '1,01%', '0,00', NULL, NULL, NULL, ' R$17,00 ', '364', ' R$ 309,30 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'MARCOS AURÉLIO PATRIOLINO', 38, '4,93', '00:11:50', '0,33%', '0,00', NULL, NULL, NULL, ' R$28,00 ', '331', ' R$ 280,99 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'MATHEUS DUARTE DOS SANTOS', 98, '4,93', '', '0,00%', '0,00', NULL, NULL, NULL, ' R$39,00 ', '92', ' R$ 68,67 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'PAULO HENRIQUE DE S. MARQUES', 51, '4,93', '00:11:45', '0,26%', '0,00', NULL, NULL, NULL, ' R$15,00 ', '403', ' R$ 342,54 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'PEDRO ALBINO GOMES NETO', 60, '4,93', '00:01:15', '0,11%', '0,00', NULL, NULL, NULL, ' R$34,00 ', '409', ' R$ 347,42 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'RAFAEL SALES GADELHA', 1874, '4,93', '00:06:30', '0,96%', '0,00', NULL, NULL, NULL, ' R$35,00 ', '334', ' R$ 284,10 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'RAIMUNDO FERREIRA FILHO', 52, '4,93', '00:13:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$15,00 ', '317', ' R$ 269,58 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'RAIMUNDO MÁRIO ALVES DA SILVA', 1895, '4,93', '00:05:40', '0,00%', '0,00', NULL, NULL, NULL, ' R$16,00 ', '267', ' R$ 226,93 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'RONALDO GONSALVES DA SILVA', 1821, '4,93', '00:07:00', '0,00%', '0,00', NULL, NULL, NULL, ' R$14,00 ', '244', ' R$ 207,62 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'SANTIAGO BEZERRA LOPES', 43, '4,93', '00:01:20', '0,00%', '0,00', NULL, NULL, NULL, ' R$19,00 ', '431', ' R$ 366,12 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'STENIO DE SOUSA MUNIZ', 110, '4,93', '00:13:30', '0,00%', '0,00', NULL, NULL, NULL, ' R$18,00 ', '317', ' R$ 269,58 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'THIAGO BRENER CAMPOS LOPES', 109, '4,93', '00:05:15', '0,92%', '4,00', NULL, NULL, NULL, ' R$17,00 ', '392', ' R$ 294,12 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'THIAGO MARQUES TELES', 239, '4,93', '00:11:40', '0,00%', '0,00', NULL, NULL, NULL, ' R$28,00 ', '328', ' R$ 278,43 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'VALDIMAR COSTA SANTOS', 1879, '4,93', '00:05:40', '1,34%', '0,00', NULL, NULL, NULL, ' R$36,00 ', '272', ' R$ 231,50 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'WILLIAM RODRIGUES DE LOIOLA', 113, '4,93', '00:01:00', '0,00%', '0,00', NULL, NULL, NULL, ' R$34,00 ', '158', ' R$ 134,07 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Â ANT IRINEU NASCIMENTO SOUSA', 297, '4,93', '00:09:36', '0,00%', '0,00', '84,32%', '0,00', '', NULL, NULL, ' R$ 337,27 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'ADELINO FELIPE DA PONTE', 118, '4,93', '00:15:00', '0,00%', '0,00', '99,07%', '0,00', '', NULL, NULL, ' R$ 396,29 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'APOLONIO CARDOSO DE SOUSA', 220, '4,93', '00:01:12', '0,09%', '0,00', '112,40%', '0,00', '', NULL, NULL, ' R$ 449,60 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'BENEDITO DE MESQUITA SILVA ', 7, '4,93', '00:05:00', '0,74%', '2,00', '77,03%', '0,00', '', NULL, NULL, ' R$ 308,13 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'CARLOS AUGUSTO RODRIGUES JORGE', 1792, '4,93', '00:07:15', '2,00%', '0,00', '77,84%', '0,00', '', NULL, NULL, ' R$ 311,38 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'DIEGO JUDA', 293, '4,93', '00:05:45', '0,00%', '1,00', '79,88%', '2,00', '', NULL, NULL, ' R$ 319,51 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'ELDER SOUSA DE LIMA', 305, '4,93', '00:10:48', '0,34%', '1,00', '95,60%', '2,00', '', NULL, NULL, ' R$ 382,39 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'ELIVANDO FONTENELE DE OLIVEIRA', 1803, '4,93', '00:05:12', '1,03%', '0,00', '86,94%', '2,00', '', NULL, NULL, ' R$ 347,74 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'EVERSON PEDRO PIRES', 213, '4,93', '00:07:00', '0,00%', '0,00', '79,88%', '2,00', '', NULL, NULL, ' R$ 319,53 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'FCO CASSIANO MILITAO MENDES', 269, '4,93', '00:04:48', '0,90%', '0,00', '107,48%', '2,00', '', NULL, NULL, ' R$ 429,93 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'FERNANDO OLIVEIRA SILVA', 258, '4,93', '00:11:40', '0,00%', '0,00', '53,56%', '0,00', '', NULL, NULL, ' R$ 214,25 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'FRANCIMAR DOS SANTOS', 287, '4,93', '00:03:48', '0,00%', '0,00', '83,99%', '3,00', '', NULL, NULL, ' R$ 335,95 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'FRANCISCO ARISTON SOUSA DOS SANTOS', 212, '4,93', '00:07:30', '0,00%', '0,00', '85,90%', '0,00', '', NULL, NULL, ' R$ 343,60 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'FRANCISCO ERLANDE DA MOTA', 82, '4,93', '00:07:00', '0,00%', '0,00', '104,34%', '1,00', '', NULL, NULL, ' R$ 417,36 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'FRANCISCO FERNANDO CARNEIRO', 18, '4,93', '00:12:30', '0,00%', '0,00', '50,45%', '0,00', '', NULL, NULL, ' R$ 201,80 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'FRANCISCO FERNANDO DE MORAES', 288, '4,93', '', '0,00%', '0,00', '11,23%', '0,00', '', NULL, NULL, ' R$ 44,91 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'FRANCISCO GLAUBER FERREIRA', 267, '4,93', '00:08:24', '0,00%', '0,00', '72,76%', '1,00', '', NULL, NULL, ' R$ 291,03 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'FRANCISCO HENRIQUE DE PAULA TORRES', 8, '4,93', '00:11:36', '0,87%', '0,00', '95,98%', '0,00', '', NULL, NULL, ' R$ 383,90 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'FRANCISCO RODRIGUES TORRES', 14, '4,93', '00:05:15', '1,53%', '1,00', '58,74%', '0,00', '', NULL, NULL, ' R$ 234,97 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'FRANCISCO SAMUEL GONZAGA GAMELEIRA', 300, '4,93', '00:10:12', '0,00%', '0,00', '80,76%', '2,00', '', NULL, NULL, ' R$ 323,03 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'FRANCISCO TIAGO VIEIRA OLIVEIRA', 280, '4,93', '00:02:00', '0,86%', '0,00', '98,54%', '0,00', '', NULL, NULL, ' R$ 394,14 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'IGOR DA COSTA FERREIRA', 308, '4,93', '00:01:12', '0,00%', '0,00', '117,71%', '1,00', '', NULL, NULL, ' R$ 470,86 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'IURI ALEXANDRE ALBUQUERQUE', 1872, '4,93', '00:01:36', '0,00%', '0,00', '90,91%', '0,00', '', NULL, NULL, ' R$ 363,64 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'JACKSON FERREIRA RODRIGUES', 303, '4,93', '00:10:36', '0,00%', '0,00', '101,26%', '0,00', '', NULL, NULL, ' R$ 405,02 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'JEOVANE FERNANDES', 286, '4,93', '00:03:00', '1,89%', '0,00', '97,81%', '3,00', '', NULL, NULL, ' R$ 391,24 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'JHON LENON DE SOUZA', 268, '4,93', '00:13:12', '0,00%', '0,00', '99,24%', '1,00', '', NULL, NULL, ' R$ 396,96 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'JOSE JOSENILSON MENDES MONTEIRO', 301, '4,93', '', '0,00%', '0,00', '54,25%', '2,00', '', NULL, NULL, ' R$ 216,99 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'JOSE MARCOS DE SOUSA MARCELINO', 250, '4,93', '00:10:48', '2,01%', '0,00', '89,47%', '1,00', '', NULL, NULL, ' R$ 357,87 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'JOSE SAMPAIO PEREIRA', 299, '4,93', '00:05:36', '0,03%', '0,00', '87,32%', '2,00', '', NULL, NULL, ' R$ 349,29 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'JOSE VESTIER PEREIRA DA SILVA', 283, '4,93', '00:03:45', '2,82%', '0,00', '60,07%', '1,00', '', NULL, NULL, ' R$ 240,26 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'LEANDRO FERREIRA FURTADO ', 231, '4,93', '00:08:00', '0,00%', '0,00', '89,17%', '0,00', '', NULL, NULL, ' R$ 356,70 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'LEANDRO MOURA SANTOS', 244, '4,93', '00:04:30', '0,00%', '0,00', '44,31%', '1,00', '', NULL, NULL, ' R$ 177,23 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'LEONARDO LIMA MARQUES', 224, '4,93', '00:10:00', '0,00%', '0,00', '87,22%', '2,00', '', NULL, NULL, ' R$ 348,87 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'LUAN DE CARVALHO VIANA', 1612, '4,93', '00:06:12', '0,22%', '0,00', '102,48%', '0,00', '', NULL, NULL, ' R$ 409,93 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MARDONIO PAULO PEREIRA ', 276, '4,93', '00:09:00', '0,00%', '0,00', '85,92%', '0,00', '', NULL, NULL, ' R$ 343,68 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'OLAVO FARIAS DE SOUSA ', 20, '4,93', '00:01:00', '0,00%', '0,00', '23,13%', '0,00', '', NULL, NULL, ' R$ 92,53 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'ORTUAN FERNANDES DE LIMA', 228, '4,93', '00:00:48', '1,04%', '0,00', '101,34%', '0,00', '', NULL, NULL, ' R$ 405,36 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'RDO NONATO DO NASC. DA SILVA', 289, '4,93', '00:12:00', '1,94%', '1,00', '67,26%', '0,00', '', NULL, NULL, ' R$ 269,04 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'RODRIGO PONTES', 285, '4,93', '00:05:00', '3,45%', '0,00', '96,78%', '0,00', '', NULL, NULL, ' R$ 387,12 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'YURI MAGALHÃƒES SILVA', 295, '4,93', '00:07:00', '2,55%', '0,00', '101,17%', '0,00', '', NULL, NULL, ' R$ 404,67 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'MANOEL TACIZIO DA MOTA', 100, '4,93', '00:07:00', '12,91%\r\n', '1', '76,79%\r\n', '1\r\n', NULL, NULL, NULL, 'R$ 307,14\r\n', '2024-12-11 13:45:27', '2024-12-11 13:45:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `função` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `cpf`, `name`, `codigo`, `função`, `senha`, `createdAt`, `updatedAt`) VALUES
(1, '06305591393', 'ANTONIO IRINEU NASCIMENTO SOUSA', 297, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(2, '07481643326', 'ADELINO FELIPE DA PONTE\r\n', 118, 'MOTORISTA', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(3, '03692414366', 'ANTONIO KELSON FERREIRA CARVALHO', 241, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(4, '05318030319', 'ANTONIO MARDEN ALBUQUERQUE DA COSTA', 1916, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(5, '01754937314', 'APOLONIO CARDOSO DE SOUSA', 220, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(6, '35718218315', 'BENEDITO DE MESQUITA SILVA ', 7, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(7, '05990479336', 'CARLOS AUGUSTO RODRIGUES JORGE', 1792, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(8, '91326087304', 'DIEGO JUDA CARNEIRO DE OLIVEIRA', 293, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(9, '05583279311', 'ELDER SOUSA DE LIMA', 305, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(10, '05847457375', 'ELIVANDO FONTENELE DE OLIVEIRA', 1803, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(11, '05465593369', 'ESILEUDO MELO DA SILVA', 304, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(12, '06086511330', 'EVERSON PEDRO PIRES', 213, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(13, '75882388368', 'FRANCISCO CASSIANO MILITAO MENDES\r\n', 269, 'MOTORISTA', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(14, '07110443337', 'FERNANDO OLIVEIRA SILVA', 258, 'MOTORISTA', '', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(15, '03740451351', 'FRANCIMAR DOS SANTOS', 287, 'MOTORISTA', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(16, '02965107347', 'FRANCISCO ARISTON SOUSA DOS SANTOS', 212, 'MOTORISTA', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(17, '02131610360', 'FRANCISCO ERLANDE DA MOTA', 82, 'MOTORISTA', '4719', '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(18, '26238896353', 'FRANCISCO FERNANDO CARNEIRO', 18, 'MOTORISTA', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(19, '03368171348', 'FRANCISCO FERNANDO DE MORAES', 288, 'MOTORISTA', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(20, '04630098356', 'FRANCISCO GLAUBER FERREIRA', 267, 'MOTORISTA', NULL, '2024-12-02 18:49:38', '2024-12-02 18:49:38'),
(41, '61559551313', 'FRANCISCO HENRIQUE DE PAULA TORRES', 8, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(42, '48685291372', 'FRANCISCO RODRIGUES TORRES', 14, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(43, '61901688330', 'FRANCISCO SAMUEL GONZAGA GAMELEIRA\r\n', 300, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(44, '06060276377', 'FRANCISCO TIAGO VIEIRA OLIVEIRA', 280, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(45, '04725439380', 'YURI MAGALHÃES SILVA', 295, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(46, '06307199342', 'IURI ALEXANDRE ALBUQUERQUE', 1872, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(47, '04774192325', 'JACKSON FERREIRA RODRIGUES', 303, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(48, '05972692384', 'JEOVANE FERNANDES', 286, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(49, '08827824367', 'JHON LENON DE SOUZA', 268, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(50, '61866723367', 'JOSE JOSENILSON MENDES MONTEIRO', 301, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(51, '80188346368', 'JOSE MARCOS DE SOUSA MARCELINO', 250, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(52, '07454907350', 'JOSE SAMPAIO PEREIRA', 299, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(53, '97220434391', 'JOSE VESTIER PEREIRA DA SILVA', 283, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(54, '64312399387', 'LEANDRO FERREIRA FURTADO ', 231, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(55, '07283278303', 'LEANDRO MOURA SANTOS', 244, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(56, '60473124386', 'LEONARDO LIMA MARQUES', 224, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(57, '06800171352', 'LUAN DE CARVALHO VIANA', 1612, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(58, '37989499304', 'MANOEL TARCIZIO DA MOTA', 1, 'MOTORISTA', '4719', '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(59, '03556823381', 'MARDONIO PAULO PEREIRA ', 276, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(60, '54539587315', 'OLAVO FARIAS DE SOUSA ', 20, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(61, '04189972339', 'ORTUAN FERNANDES DE LIMA', 228, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(62, '88430847391', 'RAIMUNDO NONATO DO NASCISMENTO DA SILVA\r\n', 289, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(63, '04595188366', 'RODRIGO ARAUJO PONTES', 285, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(64, '06034335370', 'THIAGO FONTELES LOPES', 243, 'MOTORISTA', NULL, '2024-12-02 19:12:45', '2024-12-02 19:12:45'),
(75, '96883618368', 'ALEX DA SILVA DUARTE', 100, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(76, '07254738350', 'ALEXANDRE OLIMPIO DA SILVA', 103, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(77, '50126695334', 'ANT EDILANDE DE LIMA MORAIS', 3, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(78, '07398467362', 'ANT HERCULES DE FRANCA FREIRES', 232, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(79, '00876996306', 'ANT JOSE MINGOTE\r\n', 4, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(80, '07109841383', 'ANTONIO KAIO DA SILVA SOUZA\r\n', 1923, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(81, '06292822346', 'ANTONIO VICTOR PEREIRA DA SILVA\r\n', 1866, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(82, '06986766378', 'CARLOS NASCIMENTO DA SILVA\r\n', 1900, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(83, '10032538308', 'CASSIO CONCEIÇÃO SILVA NASCIMENTO\r\n', 1860, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(84, '72417668300', 'CRISTIANO ALBUQUERQUE BATISTA\r\n', 12, 'AJUDANTE', NULL, '2024-12-02 20:03:40', '2024-12-02 20:03:40'),
(85, '89522117315', 'FABIO PAIVA COUTINHO\r\n', 111, 'AJUDANTE', '4719', '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(86, '43905838320', 'FCO ALBUQUERQUE DO NASCIMENTO\r\n', 17, 'AJUDANTE', '4719\r\n', '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(87, '82003149368', 'FCO DE PAIVA BARBOSA\r\n', 234, 'AJUDANTE', NULL, '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(88, '87532468372', 'FCO DIONES FERNANDES DO NASC.\r\n', 26, 'AJUDANTE', '4719\r\n', '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(89, '08915772385', 'FCO EDUARDO PEREIRA DA SILVA\r\n', 104, 'AJUDANTE', '4719', '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(90, '00926363301', 'FCO MARCOS XIMANGUE PEREIRA\r\n', 24, 'AJUDANTE', '4719', '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(91, '60723802394', 'FRANCISCO ADRIANO DA SILVA\r\n', 1873, 'AJUDANTE', NULL, '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(92, '63421456364', 'FRANCISCO CARLOS SILVA DOS SANTOS\r\n', 1875, 'AJUDANTE', NULL, '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(93, '05858684335', 'FRANCISCO DAS CHAGAS DUTRA PEREIRA\r\n', 1880, 'AJUDANTE', NULL, '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(94, '05581333394', 'FRANCISCO FABIO BRAGA SOUSA\r\n', 1899, 'AJUDANTE', NULL, '2024-12-02 20:08:11', '2024-12-02 20:08:11'),
(105, '01389710300', 'FRANCISCO FERREIRA DA COSTA', 2410, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(106, '08083507300', 'FRANCISCO JERRY FRANCA DE SOUSA\r\n', 1871, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(107, '60372064302', 'FRANCISCO JHONATA DA COSTA CARDOSO', 1921, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(108, '06227844390', 'FRANCISCO JONAS PEREIRA DA SILVA\r\n', 1830, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(109, '03476507327', 'FRANCISCO JOSE SABINO DE SOUSA\r\n', 1901, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(110, '00009241302', 'FRANCISCO LEANDRO MOTA\r\n', 1778, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(111, '07344349361', 'FRANCISCO MARCELO RIBEIRO DE S\r\n', 1730, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(112, '07019171303', 'FRANCISCO WILNER DA SILVA CAVALCANTE\r\n', 1868, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(113, '07456472351', 'GILIARD MACHADO DA SILVA\r\n', 1867, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(114, '07328239352', 'IGO DO NASCIMENTO DOS SANTOS\r\n', 1902, 'AJUDANTE', NULL, '2024-12-02 20:16:21', '2024-12-02 20:16:21'),
(115, '06193215395', 'ISAU PIMENTA RODRIGUES\r\n', 1752, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(116, '06830808308', 'JAIRO ANTONIO MOREIRA DE LIMA\r\n', 83, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(117, '05511277320', 'JOÃO VICTOR DA SILVA\r\n', 88, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(118, '04125252327', 'JOCELI GABALIA DE SOUSA\r\n', 28, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(119, '82476101320', 'JOSE ARTEIRO FREIRES FERREIRA\r\n', 13, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(120, '63250238384', 'JOSE RENNER FRANÇA DA SILVA\r\n', 1852, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(121, '80255302304', 'JOSE RICARDO JARDILINO MORAIS\r\n', 69, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(122, '04190183369', 'JOSÉ ROBERTO DO NASCIMENTO\r\n', 1824, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(123, '93482507368', 'JOSE VAULINO DO NASCIMENTO\r\n', 105, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(124, '05073307305', 'JOSIVAN PEDRO PIRES\r\n', 1854, 'AJUDANTE', NULL, '2024-12-02 20:23:34', '2024-12-02 20:23:34'),
(135, '44532465877', 'LEONARDO FERREIRA\r\n', 49, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(136, '02243697335', 'LUIS CARLOS XIMANGUE\r\n', 31, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(137, '60622069373', 'MAILSON CAMILO DA SILVA\r\n', 1912, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(138, '74783173320', 'MARCOS AURÉLIO PATRIOLINO\r\n', 38, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(139, '05874665374', 'MATHEUS DUARTE DOS SANTOS\r\n', 98, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(140, '66568366315', 'PAULO HENRIQUE DE S. MARQUES\r\n', 51, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(141, '76943097334', 'PAULO SÉRGIO DE MELO\r\n', 240, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(142, '07223012358', 'PEDRO ALBINO GOMES NETO\r\n', 60, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(143, '37831020306', 'RAIMUNDO FERREIRA FILHO\r\n', 52, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(144, '05862283307', 'RAIMUNDO MÁRIO ALVES DA SILVA\r\n', 1895, 'AJUDANTE', NULL, '2024-12-02 20:28:34', '2024-12-02 20:28:34'),
(165, '01055696318', 'RONALDO GONSALVES DA SILVA\r\n', 1821, 'AJUDANTE', NULL, '2024-12-02 20:33:18', '2024-12-02 20:33:18'),
(166, '02122398302', 'SANTIAGO BEZERRA LOPES\r\n', 43, 'AJUDANTE', NULL, '2024-12-02 20:33:18', '2024-12-02 20:33:18'),
(167, '00372339395', 'STENIO DE SOUSA MUNIZ\r\n', 110, 'AJUDANTE', NULL, '2024-12-02 20:33:18', '2024-12-02 20:33:18'),
(168, '61449923321', 'THIAGO BRENER CAMPOS LOPES\r\n', 109, 'AJUDANTE', NULL, '2024-12-02 20:33:18', '2024-12-02 20:33:18'),
(169, '07887888336', 'THIAGO MARQUES TELES\r\n', 239, 'AJUDANTE', NULL, '2024-12-02 20:33:18', '2024-12-02 20:33:18'),
(170, '05811911378', 'VALDIMAR COSTA SANTOS\r\n', 1879, 'AJUDANTE', NULL, '2024-12-02 20:33:18', '2024-12-02 20:33:18'),
(171, '03293900313', 'WILLIAM RODRIGUES DE LOIOLA\r\n', 113, 'AJUDANTE', NULL, '2024-12-02 20:33:18', '2024-12-02 20:33:18');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `teste36s`
--
ALTER TABLE `teste36s`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `teste36s`
--
ALTER TABLE `teste36s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;