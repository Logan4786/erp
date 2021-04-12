-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Abr-2021 às 14:11
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetoadvocacia2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `andamento`
--

DROP TABLE IF EXISTS `andamento`;
CREATE TABLE IF NOT EXISTS `andamento` (
  `id_andamento` bigint(10) NOT NULL AUTO_INCREMENT,
  `fase_do_ultimo_andamento` varchar(255) DEFAULT NULL,
  `data_ultimo_andamento` datetime(6) NOT NULL,
  `ultimo_andamento` varchar(255) DEFAULT NULL,
  `orientacao_ultimo_andamento` varchar(255) DEFAULT NULL,
  `relato_publicacao_ultimo_andamento` varchar(255) DEFAULT NULL,
  `id_contrato` bigint(20) NOT NULL,
  PRIMARY KEY (`id_andamento`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `andamento`
--

INSERT INTO `andamento` (`id_andamento`, `fase_do_ultimo_andamento`, `data_ultimo_andamento`, `ultimo_andamento`, `orientacao_ultimo_andamento`, `relato_publicacao_ultimo_andamento`, `id_contrato`) VALUES
(1, '14 - FASE: MANDADO NEGATIVO   \r\n', '2021-03-12 11:48:22.000000', 'AG RESPOSTA DE OFÍCIOS                                      \r\n', NULL, 'PROTOCOLO REALIZADO\r\n', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carteira`
--

DROP TABLE IF EXISTS `carteira`;
CREATE TABLE IF NOT EXISTS `carteira` (
  `id_carteira` bigint(10) NOT NULL AUTO_INCREMENT,
  `cdc` varchar(255) DEFAULT NULL,
  `leves` varchar(255) DEFAULT NULL,
  `rci` varchar(255) DEFAULT NULL,
  `id_contrato` bigint(10) NOT NULL,
  PRIMARY KEY (`id_carteira`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carteira`
--

INSERT INTO `carteira` (`id_carteira`, `cdc`, `leves`, `rci`, `id_contrato`) VALUES
(1, NULL, 'LEVES\r\n', NULL, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato`
--

DROP TABLE IF EXISTS `contrato`;
CREATE TABLE IF NOT EXISTS `contrato` (
  `id_contrato` bigint(20) NOT NULL AUTO_INCREMENT,
  `n_contrato` varchar(255) DEFAULT NULL,
  `dt_inicio_contrato` datetime NOT NULL,
  `n_processo` varchar(255) DEFAULT NULL,
  `situacao_contrato` varchar(255) DEFAULT NULL,
  `nome_parte` varchar(255) DEFAULT NULL,
  `id_endereco` bigint(255) NOT NULL,
  PRIMARY KEY (`id_contrato`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contrato`
--

INSERT INTO `contrato` (`id_contrato`, `n_contrato`, `dt_inicio_contrato`, `n_processo`, `situacao_contrato`, `nome_parte`, `id_endereco`) VALUES
(10, '20030745565\r\n', '2021-04-08 11:02:07', '1002111-21.2020.8.26.0007\r\n', 'ATIVO\r\n', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `id_email` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `id_veiculos` bigint(20) NOT NULL,
  PRIMARY KEY (`id_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `id_endereco` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_endereco` varchar(255) DEFAULT NULL,
  `tipo_logradouro` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `id_endereco_parte` bigint(20) NOT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `tipo_endereco`, `tipo_logradouro`, `logradouro`, `numero`, `complemento`, `cep`, `bairro`, `municipio`, `id_endereco_parte`) VALUES
(1, 'teste', 'teste', 'teste', '14', 'casa', '12122', 'teste', 'teste', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_parte`
--

DROP TABLE IF EXISTS `endereco_parte`;
CREATE TABLE IF NOT EXISTS `endereco_parte` (
  `id_endereco_parte` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_endereco` varchar(255) DEFAULT NULL,
  `tipo_logradouro` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `id_telefone` bigint(20) NOT NULL,
  PRIMARY KEY (`id_endereco_parte`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco_parte`
--

INSERT INTO `endereco_parte` (`id_endereco_parte`, `tipo_endereco`, `tipo_logradouro`, `logradouro`, `numero`, `complemento`, `cep`, `bairro`, `municipio`, `uf`, `estado`, `id_telefone`) VALUES
(1, 'teste', 'teste', 'teste', '22', 'apto64', '12455555-2211', 'teste', 'teste', 'teste', 'teste', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `forum`
--

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id_forum` bigint(10) NOT NULL AUTO_INCREMENT,
  `cidade` varchar(255) DEFAULT NULL,
  `uf_forum` varchar(255) DEFAULT NULL,
  `vara` varchar(255) DEFAULT NULL,
  `rito_expresso` varchar(255) DEFAULT NULL,
  `num_processo_externo` varchar(255) DEFAULT NULL,
  `id_contrato` bigint(20) NOT NULL,
  PRIMARY KEY (`id_forum`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `forum`
--

INSERT INTO `forum` (`id_forum`, `cidade`, `uf_forum`, `vara`, `rito_expresso`, `num_processo_externo`, `id_contrato`) VALUES
(1, 'ITAQUERA\r\n', 'sp', '5ª CIVEL\r\n', 'rito expresso', 'rito expresso', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_operador_nome` varchar(50) DEFAULT NULL,
  `nome_operador` varchar(255) DEFAULT NULL,
  `status_operador` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `email` int(50) DEFAULT NULL,
  `telefone` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelopeticao`
--

DROP TABLE IF EXISTS `modelopeticao`;
CREATE TABLE IF NOT EXISTS `modelopeticao` (
  `id_modelopeticao` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_peticao` bigint(20) NOT NULL,
  `00152_conversao_execucao_2020` varchar(255) DEFAULT NULL,
  `00182_conversao_execucao_df` varchar(255) DEFAULT NULL,
  `00128_cp_suspensao_juizo_deprecante` varchar(255) DEFAULT NULL,
  `00138_desbloqueio_renajud_com_vap` varchar(255) DEFAULT NULL,
  `00139_desbloqueio_renajud_sem_vap` varchar(255) DEFAULT NULL,
  `00130_desentranham_de_ mdd_completo` varchar(255) DEFAULT NULL,
  `00105_extincao_busca_e_apreensao` varchar(255) DEFAULT NULL,
  `00131_extincao_generico` varchar(255) DEFAULT NULL,
  `00132_fiel_depositario` varchar(255) DEFAULT NULL,
  `00157_inicial_execucao` varchar(255) DEFAULT NULL,
  `00180_inicial_monitoria_2021` varchar(255) DEFAULT NULL,
  `00181_inicial_monitoria_com_avalis` varchar(255) DEFAULT NULL,
  `00170_inicial_rci_reintegracao` varchar(255) DEFAULT NULL,
  `00154_inicial_b_a_completa_hyundai` varchar(255) DEFAULT NULL,
  `00153_inicial_b_a_completa_aymore` varchar(255) DEFAULT NULL,
  `00155_inicial_b_a_completa_rci` varchar(255) DEFAULT NULL,
  `00133_julgamento_antecipado` varchar(255) DEFAULT NULL,
  `00137_juntada_de_custas_iniciais` varchar(255) DEFAULT NULL,
  `00134_juntada_guia_renajud` varchar(255) DEFAULT NULL,
  `00135_juntada_notificacao_positiva` varchar(255) DEFAULT NULL,
  `00159_minuta_acordo_ba_atualiza` varchar(255) DEFAULT NULL,
  `00162_minuta_acordo_ba_quit_rev` varchar(255) DEFAULT NULL,
  `00161_minuta_acordo_ba_quitacao` varchar(255) DEFAULT NULL,
  `00163_minuta_acordo_ba_refin` varchar(255) DEFAULT NULL,
  `00160_minuta_acordo_e_a_revis` varchar(255) DEFAULT NULL,
  `00165_minuta_acordo_exec_parc` varchar(255) DEFAULT NULL,
  `00164_minuta_acordo_execucao_quit` varchar(255) DEFAULT NULL,
  `00166_minuta_acordo_monitoria_parc` varchar(255) DEFAULT NULL,
  `00167_minuta_acordo_restituicao` varchar(255) DEFAULT NULL,
  `00151_peticao_substabelecimento` varchar(255) DEFAULT NULL,
  `00168_requerimento_de_apreensao` varchar(255) DEFAULT NULL,
  `00183_requerimento_de_pesquisas` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `00150_rito_expresso_inicial` varchar(255) DEFAULT NULL,
  `00140_sem_provas_a_produzir` varchar(255) DEFAULT NULL,
  `00136_sobrestamento` varchar(255) DEFAULT NULL,
  `00169_termo_de_acordo_extrajudicial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_modelopeticao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id_pessoa` bigint(20) NOT NULL,
  `cod_part` int(50) DEFAULT NULL,
  `nome_parte` varchar(255) DEFAULT NULL,
  `nome_pai` varchar(255) DEFAULT NULL,
  `nome_mae` varchar(255) DEFAULT NULL,
  `municipio` varchar(20) DEFAULT NULL,
  `id_pessoa_documento` bigint(20) NOT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id_pessoa`, `cod_part`, `nome_parte`, `nome_pai`, `nome_mae`, `municipio`, `id_pessoa_documento`) VALUES
(1, 1, 'ANTONIA UBERLANIA DA SILVA ALVES\r\n', '', '', 'sao paulo', 1),
(2, 457635, 'hadson', 'teste', 'teste', 'sao paulo', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_documento`
--

DROP TABLE IF EXISTS `pessoa_documento`;
CREATE TABLE IF NOT EXISTS `pessoa_documento` (
  `id_pessoas_documento` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `cpf_rep_legal` varchar(20) DEFAULT NULL,
  `uf_rg` varchar(15) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `dt_emissao_rg` datetime NOT NULL,
  `id_contrato` bigint(20) NOT NULL,
  PRIMARY KEY (`id_pessoas_documento`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa_documento`
--

INSERT INTO `pessoa_documento` (`id_pessoas_documento`, `cpf_cnpj`, `cpf_rep_legal`, `uf_rg`, `rg`, `dt_emissao_rg`, `id_contrato`) VALUES
(1, '19075252897', NULL, NULL, NULL, '2021-04-08 11:26:01', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `peticao`
--

DROP TABLE IF EXISTS `peticao`;
CREATE TABLE IF NOT EXISTS `peticao` (
  `id_peticao` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cadastro` bigint(20) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_peticao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `peticaomodelocadastro`
--

DROP TABLE IF EXISTS `peticaomodelocadastro`;
CREATE TABLE IF NOT EXISTS `peticaomodelocadastro` (
  `id_cadastro` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_parte` int(50) DEFAULT NULL,
  `nome_parte` varchar(255) DEFAULT NULL,
  `tipo_pessoa` varchar(255) DEFAULT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `nome_pai` varchar(255) DEFAULT NULL,
  `nome_mae` varchar(255) DEFAULT NULL,
  `cpf_rep_legal` int(15) DEFAULT NULL,
  `nome_rep_legal` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `uf_rg` varchar(50) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `dt_emissão_rg` varchar(20) CHARACTER SET utf8 COLLATE utf8_esperanto_ci DEFAULT NULL,
  `tipo_endereco` varchar(255) DEFAULT NULL,
  `tipo_logradouro` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `endereco_parte` varchar(255) DEFAULT NULL,
  `contrato_cobranca` varchar(255) DEFAULT NULL,
  `n_contrato` varchar(255) DEFAULT NULL,
  `dt_inicio` datetime DEFAULT NULL,
  `valor_total_original` varchar(255) DEFAULT NULL,
  `qtde_parcelas` varchar(255) DEFAULT NULL,
  `produto` varchar(255) DEFAULT NULL,
  `segmento` varchar(255) DEFAULT NULL,
  `cod_subsegmento` varchar(255) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `qtde_dias_atraso` varchar(255) DEFAULT NULL,
  `dt_movimento` datetime DEFAULT NULL,
  `vencidas_dt_vencimento` datetime DEFAULT NULL,
  `vencidas_qtde_parcelas` varchar(255) DEFAULT NULL,
  `vencidas_principal` varchar(255) DEFAULT NULL,
  `vencidas_juros_mora` varchar(255) DEFAULT NULL,
  `vencidas_multa` varchar(255) DEFAULT NULL,
  `vencidas_descapitalizacao` varchar(255) DEFAULT NULL,
  `vencidas_saldo_devedor` varchar(255) DEFAULT NULL,
  `vincendas_dt_vencimento` varchar(255) DEFAULT NULL,
  `vincendas_qtde_parcelas` varchar(255) DEFAULT NULL,
  `vincendas_principal` varchar(255) DEFAULT NULL,
  `vincendas_juros_mora` varchar(255) DEFAULT NULL,
  `vincendas_multa` varchar(255) DEFAULT NULL,
  `vincendas_descapitalizacao` varchar(255) DEFAULT NULL,
  `vincendas_saldo_devedor` varchar(255) DEFAULT NULL,
  `total_qtde_parcelas` varchar(255) DEFAULT NULL,
  `total_principal` varchar(255) DEFAULT NULL,
  `total_juros_mora` varchar(255) DEFAULT NULL,
  `total_multa` varchar(255) DEFAULT NULL,
  `total_descapitalizacao` varchar(255) DEFAULT NULL,
  `total_saldo_devedor` varchar(255) DEFAULT NULL,
  `dt_cad_causa` datetime DEFAULT NULL,
  `qualificacao_parte` varchar(255) DEFAULT NULL,
  `filial` varchar(255) DEFAULT NULL,
  `tipo_contato` varchar(255) DEFAULT NULL,
  `ddd` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `ramal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `garantia` varchar(255) DEFAULT NULL,
  `numero_sequencia` varchar(255) DEFAULT NULL,
  `descricao_tipo_bem` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `veiculo_marca` varchar(255) DEFAULT NULL,
  `veiculo_modelo` varchar(255) DEFAULT NULL,
  `veiculo_ano` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cadastro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `id_protuto` bigint(10) NOT NULL AUTO_INCREMENT,
  `cdc` varchar(255) DEFAULT NULL,
  `renault` varchar(255) DEFAULT NULL,
  `veiculos` varchar(255) DEFAULT NULL,
  `id_veiculos` bigint(10) NOT NULL,
  PRIMARY KEY (`id_protuto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_protuto`, `cdc`, `renault`, `veiculos`, `id_veiculos`) VALUES
(1, NULL, NULL, 'VEICULOS\r\n', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_contrato`
--

DROP TABLE IF EXISTS `status_contrato`;
CREATE TABLE IF NOT EXISTS `status_contrato` (
  `id_status_contrato` bigint(10) NOT NULL AUTO_INCREMENT,
  `dsc_situacao` varchar(255) DEFAULT NULL,
  `dsc_grupo_gestao` varchar(255) DEFAULT NULL,
  `resultado` varchar(255) DEFAULT NULL,
  `id_contrato` int(11) NOT NULL,
  `dt_ajuizamento` datetime(6) NOT NULL,
  PRIMARY KEY (`id_status_contrato`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `status_contrato`
--

INSERT INTO `status_contrato` (`id_status_contrato`, `dsc_situacao`, `dsc_grupo_gestao`, `resultado`, `id_contrato`, `dt_ajuizamento`) VALUES
(1, 'SUSPENSAO JURIDICA\r\n', 'PREJUIZO - SAO PAULO\r\n', '01 - Ajuizado\r\n', 10, '2020-02-14 11:32:24.000000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

DROP TABLE IF EXISTS `telefone`;
CREATE TABLE IF NOT EXISTS `telefone` (
  `id_telefone` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_contato` varchar(255) DEFAULT NULL,
  `ddd` varchar(255) DEFAULT NULL,
  `ramal` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `id_email` bigint(20) NOT NULL,
  PRIMARY KEY (`id_telefone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `userlevelpermissions`
--

DROP TABLE IF EXISTS `userlevelpermissions`;
CREATE TABLE IF NOT EXISTS `userlevelpermissions` (
  `userlevelid` int(11) NOT NULL,
  `tablename` varchar(80) NOT NULL,
  `permission` int(11) NOT NULL,
  PRIMARY KEY (`userlevelid`,`tablename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `userlevelpermissions`
--

INSERT INTO `userlevelpermissions` (`userlevelid`, `tablename`, `permission`) VALUES
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}contrato', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}email', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}endereco', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}endereco_parte', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}funcionarios', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}modelopeticao', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}pessoa', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}pessoa_documento', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}peticao', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}peticaomodelocadastro', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}telefone', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}usuarios', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}veiculos', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}userlevelpermissions', 0),
(-2, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}userlevels', 0),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}contrato', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}email', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}endereco', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}endereco_parte', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}funcionarios', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}modelopeticao', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}pessoa', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}pessoa_documento', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}peticao', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}peticaomodelocadastro', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}telefone', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}usuarios', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}veiculos', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}userlevelpermissions', 41),
(4, '{E1431375-D466-4F8E-9B7D-960F011EFEF0}userlevels', 41),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}andamento', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}carteira', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}contrato', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}email', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco_parte', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}forum', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}funcionarios', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}modelopeticao', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa_documento', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticao', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticaomodelocadastro', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}produto', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}status_contrato', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}telefone', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevelpermissions', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevels', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}usuarios', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}valor_custas', 0),
(-2, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}veiculos', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}andamento', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}carteira', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}contrato', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}email', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco_parte', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}forum', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}funcionarios', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}modelopeticao', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa_documento', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticao', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticaomodelocadastro', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}produto', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}status_contrato', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}telefone', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevelpermissions', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevels', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}usuarios', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}valor_custas', 0),
(0, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}veiculos', 0),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}andamento', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}carteira', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}contrato', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}email', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco_parte', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}forum', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}funcionarios', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}modelopeticao', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa_documento', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticao', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticaomodelocadastro', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}produto', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}status_contrato', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}telefone', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevelpermissions', 0),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevels', 0),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}usuarios', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}valor_custas', 495),
(6, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}veiculos', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}andamento', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}carteira', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}contrato', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}email', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco_parte', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}forum', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}funcionarios', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}modelopeticao', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa_documento', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticao', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticaomodelocadastro', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}produto', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}status_contrato', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}telefone', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevelpermissions', 0),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevels', 0),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}usuarios', 0),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}valor_custas', 495),
(4, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}veiculos', 495),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}andamento', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}carteira', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}contrato', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}email', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}endereco_parte', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}forum', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}funcionarios', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}modelopeticao', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}pessoa_documento', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticao', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}peticaomodelocadastro', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}produto', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}status_contrato', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}telefone', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevelpermissions', 0),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}userlevels', 0),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}usuarios', 0),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}valor_custas', 233),
(5, '{6CBE0A25-A7FA-4B6F-9871-082102998A54}veiculos', 233);

-- --------------------------------------------------------

--
-- Estrutura da tabela `userlevels`
--

DROP TABLE IF EXISTS `userlevels`;
CREATE TABLE IF NOT EXISTS `userlevels` (
  `userlevelid` int(11) NOT NULL,
  `userlevelname` varchar(80) NOT NULL,
  PRIMARY KEY (`userlevelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `userlevels`
--

INSERT INTO `userlevels` (`userlevelid`, `userlevelname`) VALUES
(-3, 'Advogado'),
(-1, 'Administrator'),
(0, 'Default'),
(-2, 'Anonymous'),
(4, 'Operador'),
(5, 'Estagiario'),
(6, 'Gerencia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `nome` varchar(255) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(10) NOT NULL,
  `permissoes` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`nome`, `username`, `email`, `senha`, `permissoes`, `id`) VALUES
('hadson', 'hadsondias', 'hadsonmota@gmail.com', '123', -1, 1),
('carlos', NULL, 'carlosroberto2019@gmail.com', '12345', NULL, 2),
('Emilly', 'Lorrayne', 'emillylorrayne@gmail.com', '123', 5, 3),
('carlos', 'carlosroberto', 'carlosroberto@gmail.com', '123', -3, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `valor_custas`
--

DROP TABLE IF EXISTS `valor_custas`;
CREATE TABLE IF NOT EXISTS `valor_custas` (
  `id_valor_custas` bigint(10) NOT NULL AUTO_INCREMENT,
  `id_contrato` bigint(10) NOT NULL,
  `status_vlr_custas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_valor_custas`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `valor_custas`
--

INSERT INTO `valor_custas` (`id_valor_custas`, `id_contrato`, `status_vlr_custas`) VALUES
(1, 10, '483.63\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE IF NOT EXISTS `veiculos` (
  `id_veiculo` bigint(20) NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `ano` year(4) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `descricao_tipo_bem` varchar(255) NOT NULL,
  `valor` varchar(10) NOT NULL,
  `garantia` varchar(255) NOT NULL,
  `numero_sequencia` varchar(50) NOT NULL,
  PRIMARY KEY (`id_veiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
