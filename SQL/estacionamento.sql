-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 27-Jan-2021 às 17:20
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacionar`
--

DROP TABLE IF EXISTS `estacionar`;
CREATE TABLE IF NOT EXISTS `estacionar` (
  `estacionar_id` int(11) NOT NULL AUTO_INCREMENT,
  `estacionar_precificacao_id` int(11) NOT NULL,
  `estacionar_forma_pagamento_id` int(11) DEFAULT NULL,
  `estacionar_valor_hora` varchar(20) NOT NULL,
  `estacionar_numero_vaga` int(11) NOT NULL,
  `estacionar_placa_veiculo` varchar(8) NOT NULL,
  `estacionar_marca_veiculo` varchar(30) NOT NULL,
  `estacionar_modelo_veiculo` varchar(20) NOT NULL,
  `estacionar_data_entrada` datetime NOT NULL DEFAULT current_timestamp(),
  `estacionar_data_saida` datetime DEFAULT NULL,
  `estacionar_tempo_decorrido` varchar(20) DEFAULT NULL,
  `estacionar_valor_devido` varchar(30) DEFAULT NULL,
  `estacionar_status` tinyint(1) NOT NULL,
  `estacionar_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`estacionar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estacionar`
--

INSERT INTO `estacionar` (`estacionar_id`, `estacionar_precificacao_id`, `estacionar_forma_pagamento_id`, `estacionar_valor_hora`, `estacionar_numero_vaga`, `estacionar_placa_veiculo`, `estacionar_marca_veiculo`, `estacionar_modelo_veiculo`, `estacionar_data_entrada`, `estacionar_data_saida`, `estacionar_tempo_decorrido`, `estacionar_valor_devido`, `estacionar_status`, `estacionar_data_alteracao`) VALUES
(2, 2, 3, '15,00', 20, 'BSD-8888', 'VW', 'Jetta', '2021-01-18 18:33:13', '2021-01-27 14:13:45', '211.40', '3171', 1, '2021-01-27 17:13:45'),
(3, 4, 2, '8,00', 10, 'xxx-9999', 'honda', 'titan', '2021-01-22 15:19:08', '2021-01-22 23:10:49', '7.51', '60.08', 1, '2021-01-23 02:10:49'),
(9, 1, 5, '10,00', 14, 'CDR-6489', 'Fiat', 'Uno', '2021-01-22 22:27:13', '2021-01-22 22:30:16', '0.2', '0,00', 1, '2021-01-23 01:30:16'),
(10, 0, 4, '10,00', 15, 'ACD-8595', 'ford', 'fiesta', '2021-01-23 15:02:53', NULL, NULL, NULL, 0, '2021-01-27 04:08:08'),
(11, 2, 3, '15,00', 15, 'ftd-9876', 'Fiat', 'Toro', '2021-01-23 15:06:14', NULL, NULL, NULL, 0, '2021-01-27 04:06:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamentos`
--

DROP TABLE IF EXISTS `formas_pagamentos`;
CREATE TABLE IF NOT EXISTS `formas_pagamentos` (
  `forma_pagamento_id` int(11) NOT NULL AUTO_INCREMENT,
  `forma_pagamento_nome` varchar(30) NOT NULL,
  `forma_pagamento_ativa` tinyint(1) NOT NULL,
  `forma_pagamento_data_alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`forma_pagamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `formas_pagamentos`
--

INSERT INTO `formas_pagamentos` (`forma_pagamento_id`, `forma_pagamento_nome`, `forma_pagamento_ativa`, `forma_pagamento_data_alteracao`) VALUES
(1, 'Cartão de crédito', 1, '2021-01-20 16:38:06'),
(2, 'Dinheiro', 1, '2021-01-20 16:44:55'),
(3, 'Cartão de debito', 1, '2021-01-20 16:45:00'),
(5, 'Grátis', 0, '2021-01-23 19:18:28'),
(6, 'Cheque', 0, '2021-01-26 12:55:56'),
(7, 'Transferencia Bancaria', 0, '2021-01-26 12:56:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(14, '::1', 'teste@cliente', 1611690755),
(22, '::1', 'roao@gmail.com', 1611696368),
(23, '::1', 'roao@gmail.com', 1611696378),
(25, '::1', 'roao@gmail.com', 1611704965),
(31, '::1', 'oao@gmail.com', 1611715852),
(32, '::1', 'outro@gmail.com', 1611715886),
(33, '::1', 'oao@gmail.com', 1611715898);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidades`
--

DROP TABLE IF EXISTS `mensalidades`;
CREATE TABLE IF NOT EXISTS `mensalidades` (
  `mensalidade_id` int(11) NOT NULL AUTO_INCREMENT,
  `mensalidade_mensalista_id` int(11) NOT NULL,
  `mensalidade_precificacao_id` int(11) NOT NULL,
  `mensalidade_valor_mensalidade` varchar(20) NOT NULL,
  `mensalidade_mensalista_dia_vencimento` int(11) NOT NULL,
  `mensalidade_data_vencimento` date DEFAULT NULL,
  `mensalidade_data_pagamento` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `mensalidade_status` tinyint(1) NOT NULL,
  `mensalidade_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`mensalidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mensalidades`
--

INSERT INTO `mensalidades` (`mensalidade_id`, `mensalidade_mensalista_id`, `mensalidade_precificacao_id`, `mensalidade_valor_mensalidade`, `mensalidade_mensalista_dia_vencimento`, `mensalidade_data_vencimento`, `mensalidade_data_pagamento`, `mensalidade_status`, `mensalidade_data_alteracao`) VALUES
(1, 1, 2, '150,00', 5, '2021-05-05', '2021-01-15 22:50:19', 1, '2021-01-15 22:50:19'),
(6, 1, 3, '180,00', 5, '2021-06-05', '2021-01-25 23:08:59', 1, '2021-01-26 02:08:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalistas`
--

DROP TABLE IF EXISTS `mensalistas`;
CREATE TABLE IF NOT EXISTS `mensalistas` (
  `mensalista_id` int(11) NOT NULL AUTO_INCREMENT,
  `mensalista_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `mensalista_nome` varchar(45) NOT NULL,
  `mensalista_sobrenome` varchar(150) NOT NULL,
  `mensalista_data_nascimento` date DEFAULT NULL,
  `mensalista_cpf` varchar(20) NOT NULL,
  `mensalista_rg` varchar(20) NOT NULL,
  `mensalista_email` varchar(50) NOT NULL,
  `mensalista_telefone_fixo` varchar(20) DEFAULT NULL,
  `mensalista_telefone_movel` varchar(20) NOT NULL,
  `mensalista_cep` varchar(10) NOT NULL,
  `mensalista_endereco` varchar(155) NOT NULL,
  `mensalista_numero_endereco` varchar(20) NOT NULL,
  `mensalista_bairro` varchar(45) NOT NULL,
  `mensalista_cidade` varchar(105) NOT NULL,
  `mensalista_estado` varchar(2) NOT NULL,
  `mensalista_complemento` varchar(145) NOT NULL,
  `mensalista_ativo` tinyint(1) NOT NULL,
  `mensalista_dia_vencimento` int(11) NOT NULL,
  `mensalista_observacao` tinytext DEFAULT NULL,
  `mensalista_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`mensalista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensalistas`
--

INSERT INTO `mensalistas` (`mensalista_id`, `mensalista_data_cadastro`, `mensalista_nome`, `mensalista_sobrenome`, `mensalista_data_nascimento`, `mensalista_cpf`, `mensalista_rg`, `mensalista_email`, `mensalista_telefone_fixo`, `mensalista_telefone_movel`, `mensalista_cep`, `mensalista_endereco`, `mensalista_numero_endereco`, `mensalista_bairro`, `mensalista_cidade`, `mensalista_estado`, `mensalista_complemento`, `mensalista_ativo`, `mensalista_dia_vencimento`, `mensalista_observacao`, `mensalista_data_alteracao`) VALUES
(1, '2020-03-13 22:00:02', 'Lucio', 'Souza', '2020-03-13', '359.731.420-19', '334.44644-12', 'lucio@gmail.com', '(41) 3232-3232', '(41) 9999-9999', '80530-000', 'Rua de Curitiba', '45', 'Centro', 'Curitiba', 'PR', '', 1, 5, 'não atende de manhã', '2021-01-26 20:19:26'),
(2, '2021-01-18 19:02:19', 'João', 'Pedro', '2020-04-14', '158.010.380-43', '475344091123', 'joao@gmail.com', '', '(41) 88877-7777', '80444-444', 'Rua dos Trabalhadores', '90', 'Centro', 'Curitiba', 'PR', '', 1, 16, '', '2021-01-26 20:20:09'),
(3, '2021-01-26 20:17:12', 'Lucio', 'Souza', '2020-04-14', '883.052.160-47', '117975941155', 'lucio1@gmail.com', '', '(41) 9898-7676', '80600-000', 'Rua da programação', '1000', 'Centro', 'Curitiba', 'PR', '', 1, 5, '', '2021-01-26 20:20:22'),
(4, '2021-01-24 20:49:06', 'Miriam', 'Souza', '2020-04-07', '866.410.920-62', '450442913508', 'miriam@gmail.com', '', '(41) 88888-0099', '80900-000', 'Rua dos profesorres', '43', 'Centro', 'Curitiba', 'PR', '', 1, 24, '', '2021-01-26 20:18:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `precificacoes`
--

DROP TABLE IF EXISTS `precificacoes`;
CREATE TABLE IF NOT EXISTS `precificacoes` (
  `precificacao_id` int(11) NOT NULL AUTO_INCREMENT,
  `precificacao_categoria` varchar(50) NOT NULL,
  `precificacao_valor_hora` varchar(50) NOT NULL,
  `precificacao_valor_mensalidade` varchar(20) NOT NULL,
  `precificacao_numero_vagas` int(11) NOT NULL,
  `precificacao_ativa` tinyint(1) NOT NULL,
  `precificacao_data_alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`precificacao_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `precificacoes`
--

INSERT INTO `precificacoes` (`precificacao_id`, `precificacao_categoria`, `precificacao_valor_hora`, `precificacao_valor_mensalidade`, `precificacao_numero_vagas`, `precificacao_ativa`, `precificacao_data_alteracao`) VALUES
(1, 'Veículo pequeno', '10,00', '130,00', 30, 1, '2021-01-26 12:43:41'),
(2, 'Veículo médio', '15,00', '150,00', 30, 1, '2021-01-22 22:45:29'),
(3, 'Veiculo grande', '20,00', '180,00', 30, 1, '2021-01-22 22:45:39'),
(4, 'Veiculo moto', '8,00', '100,00', 30, 1, '2021-01-26 01:29:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sistema`
--

DROP TABLE IF EXISTS `sistema`;
CREATE TABLE IF NOT EXISTS `sistema` (
  `sistema_id` int(11) NOT NULL AUTO_INCREMENT,
  `sistema_razao_social` varchar(145) DEFAULT NULL,
  `sistema_nome_fantasia` varchar(145) DEFAULT NULL,
  `sistema_cnpj` varchar(25) DEFAULT NULL,
  `sistema_ie` varchar(25) DEFAULT NULL,
  `sistema_telefone_fixo` varchar(25) DEFAULT NULL,
  `sistema_telefone_movel` varchar(25) NOT NULL,
  `sistema_email` varchar(100) DEFAULT NULL,
  `sistema_site_url` varchar(100) DEFAULT NULL,
  `sistema_cep` varchar(25) DEFAULT NULL,
  `sistema_endereco` varchar(145) DEFAULT NULL,
  `sistema_numero` varchar(25) DEFAULT NULL,
  `sistema_cidade` varchar(45) DEFAULT NULL,
  `sistema_estado` varchar(2) DEFAULT NULL,
  `sistema_texto_ticket` tinytext DEFAULT NULL,
  `sistema_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`sistema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sistema`
--

INSERT INTO `sistema` (`sistema_id`, `sistema_razao_social`, `sistema_nome_fantasia`, `sistema_cnpj`, `sistema_ie`, `sistema_telefone_fixo`, `sistema_telefone_movel`, `sistema_email`, `sistema_site_url`, `sistema_cep`, `sistema_endereco`, `sistema_numero`, `sistema_cidade`, `sistema_estado`, `sistema_texto_ticket`, `sistema_data_alteracao`) VALUES
(1, 'Park Now System', 'Park Now', '80.838.809/0001-26', '683.90228-49', NULL, '(41) 9999-9999', 'parknow@contato.com.br', NULL, '80510-000', 'Rua da Programação', '54', 'Curitiba', 'PR', 'Park Now - um novo conceito em estacionamentos.', '2021-01-07 03:00:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `data_ultima_alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `data_ultima_alteracao`) VALUES
(1, '127.0.0.1', 'joao', '$2y$10$/wvXOlquB1tg51dk5zlWbuILh7PwdXDljtG.80cBIft3YZ2rtBKeO', 'joao@gmail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1611767590, 1, 'wallace', 'ferreira_teste', 'ADMIN', '0', '2021-01-27 17:13:11'),
(6, '1', 'administrador', '$2y$12$werW/MmjYsXrWc5udQagwuorNCD4HpPsBATKHxQUCGulCikOFInuS', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1609879035, 1611762631, 1, 'joao', 'Beltrano da silva', NULL, NULL, '2021-01-27 15:50:31'),
(8, '::1', 'xdwdw', '$2y$10$sSQFsfbBiKIK83GHVVl5MezcaDdJy07.jBeGJ4cAP.TT6OMVmPDwC', 'roao@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1611695749, NULL, 1, 'Wallace Rian', 'de souza', NULL, NULL, '2021-01-27 00:11:45'),
(9, '::1', 'wallace', '$2y$10$XsqnA9K6FBidzrWP9wplu.mufskj4P5U3s8fe22qdNdlJgHnBf2Ua', 'aoao@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1611695815, NULL, 1, 'Wallace Rian', 'de souza', NULL, NULL, '2021-01-27 00:11:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(26, 1, 2),
(21, 6, 1);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
