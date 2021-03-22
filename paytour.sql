-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Mar-2021 às 18:35
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `paytour`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `id` int(5) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `escolaridade` varchar(150) NOT NULL,
  `observacoes` varchar(300) NOT NULL,
  `arquivo` mediumblob NOT NULL,
  `data_hora` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`id`, `nome`, `email`, `telefone`, `cargo`, `escolaridade`, `observacoes`, `arquivo`, `data_hora`, `ip`) VALUES
(1, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', 'Oi', '', '18/03/2021 15:50:39', '::1'),
(2, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', 'Oi', '', '18/03/2021 15:51:20', '::1'),
(3, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', 'Oi', '', '18/03/2021 15:51:40', '::1'),
(4, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', 'Oi', '', '18/03/2021 15:51:52', '::1'),
(5, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', 'TT', '', '18/03/2021 15:55:31', ''),
(6, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', 'TT', '', '18/03/2021 15:57:37', ''),
(7, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Técnico', 'ttttt', 0x43757272c3ad63756c6f2d506564726f47c3b365732e706466, '18/03/2021 16:46:54', '::1'),
(8, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Superior', 'yyyy', 0x43757272c3ad63756c6f2d506564726f47c3b365732e706466, '18/03/2021 16:47:47', '::1'),
(9, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Técnico', 'ttttttt', 0x6161612e6a7067, '18/03/2021 16:50:39', '::1'),
(10, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Técnico', 'ttttttt', 0x6161612e6a7067, '18/03/2021 16:51:14', '::1'),
(11, 'Pedro Farias Góes de Souza', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Técnico', 'ttttttt', 0x6161612e6a7067, '18/03/2021 16:51:45', '::1'),
(12, 'tt', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', '', 0x676f6e67323031392e706466, '22/03/2021 06:48:09', '::1'),
(13, 'tt', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', '', 0x676f6e67323031392e706466, '22/03/2021 06:48:55', '::1'),
(14, 'Pedro', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio Incompleto', 'Badaras', 0x4546205345542043657274696669636174652e706466, '22/03/2021 07:01:34', '::1'),
(15, 'Popo', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio', 'Gogog', 0x4546205345542043657274696669636174652e706466, '22/03/2021 07:03:47', '::1'),
(16, 'Lucas', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Técnico Incompleto', '', 0x4546205345542043657274696669636174652e706466, '22/03/2021 07:06:47', '::1'),
(17, 'Joao', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Superior', '', '', '22/03/2021 07:10:09', ''),
(18, 'Pipo', 'pedrogoesbj@gmail.com', '(92) 90102-0304', 'Desenvolvedor Full Stack Jr', 'Ensino Médio Incompleto', '', 0x4546205345542043657274696669636174652e706466, '22/03/2021 07:17:44', '::1'),
(19, 'Tytyt', 'pedrogoesbj@gmail.com', '(92) 99459-6228', 'Desenvolvedor Full Stack Jr', 'Ensino Fundamental', 'sdfasdfasdfasdfasdfasdfasdfa', 0x4546205345542043657274696669636174652e706466, '22/03/2021 08:06:54', '::1'),
(20, 'Trertrt', 'pedrogoesbj@gmail.com', '92994596228', 'Desenvolvedor Full Stack Jr', 'Ensino Médio Incompleto', 'sdfasdfasdfasdfasdfasdfasdf', 0x4546205345542043657274696669636174652e706466, '22/03/2021 08:09:59', '::1');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidato`
--
ALTER TABLE `candidato`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
