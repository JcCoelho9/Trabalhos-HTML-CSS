-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/06/2024 às 04:43
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
-- Banco de dados: `cicle`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bicicleta`
--

CREATE TABLE `bicicleta` (
  `idBicicleta` int(11) NOT NULL,
  `bicicleta` varchar(100) DEFAULT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bicicleta`
--

INSERT INTO `bicicleta` (`idBicicleta`, `bicicleta`, `idCliente`) VALUES
(1, 'Caloi Montana, 21v, preta, aro 26', 1),
(2, 'Caloi Poti, vermelha, aro 26', 2),
(3, 'Caloi Aspen, 18v, vermelha, aro 26', 3),
(4, 'Sundown Bacini, 18v, preta, aro 26', 4),
(5, 'Monark Barraforte, verde ciano, aro 26', 5),
(6, 'Caloi Aspen, preta, aro 26', 6),
(7, 'Caloi Poti, azul, aro 26', 7),
(8, 'Monark Barraforte, verde, aro 26', 8),
(9, 'Gilmex Pathy, rosa, aro 26', 9),
(10, 'Monark Tigrão, preta, aro dianteiro 16 aro traseiro 20', 10),
(11, 'Caloi MTB21, 21v, preta e vermelha, aro 24', 11),
(12, 'Caloi Ceci, azul bebê, aro 26', 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `nome` varchar(100) NOT NULL,
  `contato` varchar(10) NOT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`nome`, `contato`, `idCliente`) VALUES
('Tunico', '98765-4321', 1),
('Beto Português', '97654-3218', 2),
('Jigulé', 'S/N', 3),
('Arthur', '96543-2109', 4),
('Perna', '97856-4431', 5),
('Muca', '99812-4356', 6),
('Dona Marta', '97545-6739', 7),
('Roberto Japonês', '99981-2456', 8),
('Luciana', '97865-1231', 9),
('João Filho', '97431-4399', 10),
('Gilmar', 'S/N', 11),
('Vera', '98871-2382', 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `idProduto` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `qtd` varchar(100) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`idProduto`, `produto`, `qtd`, `valor`) VALUES
(1, 'Borracha de freio cantilever', '24', 5),
(2, 'Borracha de freio ferradura', '18', 6),
(3, 'Borracha de freio v-break', '48', 6.5),
(4, 'Borracha de freio v-break (ALLIGATOR)', '12', 9),
(5, 'Borracha de freio v-break (GTS)', '20', 7.5),
(6, 'Cabo de freio', '101', 5),
(7, 'Cabo de marcha', '53', 5),
(8, 'Câmara de ar 16 Kenda', '6', 15.8),
(9, 'Câmara de ar 16 Pirelli', '6', 14),
(10, 'Câmara de ar 16 Premium', '6', 12),
(11, 'Câmara de ar 20 Kenda', '10', 15.8),
(12, 'Câmara de ar 20 Pirelli', '8', 14),
(13, 'Câmara de ar 20 Premium', '4', 12),
(14, 'Câmara de ar 24 Kenda', '13', 15.8),
(15, 'Câmara de ar 24 Pirelli', '20', 14),
(16, 'Câmara de ar 24 Premium', '21', 12),
(17, 'Câmara de ar 26 Kenda', '43', 15.8),
(18, 'Câmara de ar 26 Pirelli', '37', 14),
(19, 'Câmara de ar 26 Premium', '20', 12),
(20, 'Câmara de ar 29 Kenda', '7', 19.8),
(21, 'Câmara de ar 29 Pirelli', '14', 17),
(22, 'Câmara de ar 29 Premium', '10', 15),
(23, 'Desempeno', '#', 14),
(24, 'Eixo DT COMUM', '22', 13.8),
(25, 'Eixo DT ROLAMENTO', '18', 15),
(26, 'Eixo TZ COMUM', '20', 13.8),
(27, 'Eixo TZ ROLAMENTO', '31', 15),
(28, 'Furo', '#', 5),
(29, 'Jogo de direção (GTS) ROLAMENTO tamCOMUM/OVER', '11', 20),
(30, 'Jogo de direção (Neco) tamCOMUM/OVER', '15', 15),
(31, 'Jogo de direção (Paco) tamCOMUM/OVER', '10', 13),
(32, 'Jogo de freio cantilever (alumímio)', '14', 22),
(33, 'Jogo de freio cantilever (plástico)', '8', 17),
(34, 'Jogo de freio ferradura', '4', 22.8),
(35, 'Jogo de freio v-break (plástico)', '13', 21),
(36, 'Jogo de freio v-break (alimínio)', '4', 26),
(37, 'Movimento central (Neco)', '10', 14.8),
(38, 'Movimento central (Neco)ROLAMENTO', '7', 18),
(39, 'Movimento central 122mm (GTS)', '12', 28),
(40, 'Movimento central 122mm (Shimano)', '4', 35),
(41, 'Movimento central 45mm (Neco)', '10', 18),
(42, 'Movimento central (Paco)', '20', 13),
(43, 'Pedivela', '18', 21),
(44, 'Pedivela (GTS)', '15', 32),
(45, 'Pedivela (Shimano)', '10', 40),
(46, 'Pedivela MONOBLOCO', '21', 18.5),
(47, 'Pedivela REDUZIDO', '3', 24.25),
(48, 'Pião 18 dentes', '14', 13),
(49, 'Pião 20 dentes', '17', 14),
(50, 'Pião 22 dentes', '24', 15),
(51, 'Pião 24 dentes', '20', 16),
(52, 'Pião 6v', '13', 14),
(53, 'Pião 6v (GTS)', '32', 18),
(54, 'Pião 6v (Shimano)', '7', 22),
(55, 'Pneu 24x1.95 Pirelli Rally', '7', 33),
(56, 'Pneu 26x1.1/2x3 Levorin Praiero', '12', 38),
(57, 'Pneu 26x1.1/2x3 Levorin Praiero (faixa branca)', '4', 42),
(58, 'Pneu 26x1.1/2x3 Pirelli Kenda Faixa Bege', '8', 36),
(59, 'Pneu 26x1.1/2x3 Pirelli Phantom Street', '12', 34),
(60, 'Pneu 26x1.1/2x3 Pirelli Primor', '17', 35.8),
(61, 'Pneu 26x1.95 Levorin Excess', '8', 33),
(62, 'Pneu 26x1.95 Levorin Praiero', '13', 35),
(63, 'Pneu 26x1.95 Pirelli Phantom Street', '4', 34),
(64, 'Redução de corrente', '#', 4),
(65, 'Borracha de freio caneta', '28', 6.5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `ordemServico` int(11) NOT NULL,
  `nota` varchar(800) NOT NULL,
  `valorTotal` float DEFAULT 0,
  `idCliente` int(11) DEFAULT NULL,
  `idBicicleta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`ordemServico`, `nota`, `valorTotal`, `idCliente`, `idBicicleta`) VALUES
(1, 'Desempeno, Furo, Movimento central (Neco)ROLAMENTO', 37, 7, 7),
(2, 'Furo', 5, 11, 11),
(3, 'Pneu 26x1.95 Levorin Excess, Câmara de ar 26 Pirelli', 47, 3, 3),
(4, 'Pião 20 dentes, Eixo TZ ROLAMENTO', 29, 8, 8),
(9, '1 Redução de corrente, 2 Borracha de freio ferradura, 2 Cabo de freio, 1 Eixo DT ROLAMENTO, 1 Eixo TZ ROLAMENTO, Jogo de direção (GTS) ROLAMENTO tamCOMUM/OVER, 1 Câmara de ar 16 Kenda', 91.8, 10, 10),
(10, '2 Pneu 26x1.1/2x3 Levorin Praiero (faixa branca), 2 Câmara de ar 26 Kenda, 1 Jogo de freio v-break (alimínio), 2 Borracha de freio v-break (ALLIGATOR), 2 Desempeno, 1 Movimento central (Neco)ROLAMENTO, 1 Pião 22 dentes', 220.6, 9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico_produto`
--

CREATE TABLE `servico_produto` (
  `idServico` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `qtd` varchar(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico_produto`
--

INSERT INTO `servico_produto` (`idServico`, `idProduto`, `qtd`) VALUES
(1, 23, '1'),
(1, 28, '1'),
(1, 38, '1'),
(2, 28, '1'),
(3, 61, '1'),
(3, 18, '1'),
(4, 49, '1'),
(4, 27, '1'),
(9, 64, '1'),
(9, 2, '2'),
(9, 6, '2'),
(9, 25, '1'),
(9, 27, '1'),
(9, 29, '1'),
(9, 8, '1'),
(10, 57, '2'),
(10, 17, '2'),
(10, 36, '1'),
(10, 4, '2'),
(10, 23, '2'),
(10, 38, '1'),
(10, 50, '1');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bicicleta`
--
ALTER TABLE `bicicleta`
  ADD PRIMARY KEY (`idBicicleta`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`ordemServico`);

--
-- Índices de tabela `servico_produto`
--
ALTER TABLE `servico_produto`
  ADD KEY `idServico` (`idServico`),
  ADD KEY `idProduto` (`idProduto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bicicleta`
--
ALTER TABLE `bicicleta`
  MODIFY `idBicicleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `ordemServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `bicicleta`
--
ALTER TABLE `bicicleta`
  ADD CONSTRAINT `bicicleta_ibfk_1` FOREIGN KEY (`idBicicleta`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `bicicleta_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `bicicleta` (`idBicicleta`);

--
-- Restrições para tabelas `servico_produto`
--
ALTER TABLE `servico_produto`
  ADD CONSTRAINT `servico_produto_ibfk_1` FOREIGN KEY (`idServico`) REFERENCES `servico` (`ordemServico`),
  ADD CONSTRAINT `servico_produto_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `estoque` (`idProduto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
