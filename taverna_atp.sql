-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Nov-2021 às 16:57
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `taverna atp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm`
--

CREATE TABLE `adm` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `dtnasc` date NOT NULL,
  `genero` varchar(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `adm`
--

INSERT INTO `adm` (`id`, `nome`, `cpf`, `telefone`, `dtnasc`, `genero`, `email`, `senha`) VALUES
(1, 'Tamires', '933822222', '111111111', '0000-00-00', 'm', 'sdsfdss@gmail', '00099s'),
(2, 'Tamires santos', '074.349.165', '+557592476257', '2222-02-12', 'F', 'tamires280.silva@gmail.com', '123456'),
(3, 'Tamires santos', '074.349.165', '+557592476257', '2222-02-12', 'F', 'tamires280.silva@gmail.com', '123456'),
(4, 'Tamires santos', '074.349.165', '+557592476257', '2222-02-12', 'F', 'tamires280.silva@gmail.com', '123456'),
(5, '', '', '', '0000-00-00', '', 'tamires280.silva@gmail.com', '123456'),
(6, 'Tamires santos', '074.349.165', '+557592476257', '0000-00-00', '', 'tamires280.silva@gmail.com', '123456'),
(7, '', '', '', '0000-00-00', '', 'tamires280.silva@gmail.com', '123456'),
(8, '', '', '', '0000-00-00', '', 'tamires280.silva@gmail.com', '123456'),
(9, '', '', '', '0000-00-00', '', 'tamires280.silva@gmail.com', '123456'),
(10, '', '', '', '0000-00-00', '', 'tamires280.silva@gmail.com', '280624fita'),
(11, 'Tamires santos', '074.349.165', '+557592476257', '0333-03-31', 'F', 'tamires280.silva@gmail.com', '280624fita'),
(12, 'Tamires santos', '074.349.165', '+557592476257', '0000-00-00', '', 'tamires280.silva@gmail.com', '280624fita'),
(13, '', '', '', '0000-00-00', '', 'tamires280.silva@gmail.com', '280624fita'),
(14, 'Tamires santos', '074.349.165', '+557592476257', '0000-00-00', '', 'tamires280.silva@gmail.com', '280624fita'),
(15, 'Tamires santos', '074.349.165', '+557592476257', '0000-00-00', 'F', 'tamires280.silva@gmail.com', '280624fita');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro adm`
--

CREATE TABLE `cadastro adm` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `dtnasc` date NOT NULL,
  `genero` varchar(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dscitem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loginadm`
--

CREATE TABLE `loginadm` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `loginadm`
--

INSERT INTO `loginadm` (`id`, `email`, `senha`) VALUES
(1, 'tamires280.silva@gmail.com', '280624fitas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`) VALUES
(1, '$nome', ' $email'),
(2, 'jessica', 'jessica@gmail.com'),
(3, 'tamires', 'tamires280.silva@gmail.com'),
(4, 'thay', 'tatat@gmail');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadastro adm`
--
ALTER TABLE `cadastro adm`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `loginadm`
--
ALTER TABLE `loginadm`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm`
--
ALTER TABLE `adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `cadastro adm`
--
ALTER TABLE `cadastro adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loginadm`
--
ALTER TABLE `loginadm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
