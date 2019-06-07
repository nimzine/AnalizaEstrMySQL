-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 07-Jun-2019 às 17:46
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padrao`
--
  CREATE DATABASE IF NOT EXISTS `padrao_changed`;
  USE `padrao_changed`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `albuns`
--

DROP TABLE IF EXISTS `albuns`;
CREATE TABLE IF NOT EXISTS `albuns` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configcadcliente`
--

DROP TABLE IF EXISTS `configcadcliente`;
CREATE TABLE IF NOT EXISTS `configcadcliente` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configcadclientecampos`
--

DROP TABLE IF EXISTS `configcadclientecampos`;
CREATE TABLE IF NOT EXISTS `configcadclientecampos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `campo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configcadveiculo`
--

DROP TABLE IF EXISTS `configcadveiculo`;
CREATE TABLE IF NOT EXISTS `configcadveiculo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configcadveiculocampos`
--

DROP TABLE IF EXISTS `configcadveiculocampos`;
CREATE TABLE IF NOT EXISTS `configcadveiculocampos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `campo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_cat`
--

DROP TABLE IF EXISTS `lc_cat`;
CREATE TABLE IF NOT EXISTS `lc_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `pertence` varchar(20) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_movimento`
--

DROP TABLE IF EXISTS `lc_movimento`;
CREATE TABLE IF NOT EXISTS `lc_movimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes_comp` varchar(20) NOT NULL,
  `ano_comp` varchar(20) NOT NULL,
  `dataefetivacao` varchar(20) NOT NULL,
  `cat` int(11) DEFAULT NULL,
  `descricao` longtext,
  `valor` varchar(200) DEFAULT NULL,
  `saldoatual` varchar(200) NOT NULL,
  `acrescimo` varchar(200) NOT NULL,
  `desconto` varchar(200) NOT NULL,
  `observacao` varchar(200) NOT NULL,
  `ndocumento` varchar(200) NOT NULL,
  `nnotaos` varchar(200) NOT NULL,
  `dataemissaonotaos` varchar(200) NOT NULL,
  `datafinal` varchar(200) NOT NULL,
  `horafinal` varchar(200) NOT NULL,
  `situacao` varchar(200) NOT NULL,
  `datapagamento` varchar(200) NOT NULL,
  `comprovante` varchar(200) NOT NULL,
  `arquivocomprovante` varchar(200) NOT NULL,
  `flag` varchar(200) NOT NULL,
  `tipopagamento` varchar(200) NOT NULL,
  `codclifor` int(200) NOT NULL,
  `idcompra` int(200) NOT NULL,
  `horapagamento` varchar(200) NOT NULL,
  `usuariopago` varchar(200) NOT NULL,
  `veiculo` int(200) NOT NULL,
  `filial` int(20) NOT NULL,
  `nsu` varchar(100) NOT NULL,
  `datacadastro` varchar(100) NOT NULL,
  `horacadastro` varchar(100) NOT NULL,
  `idusuariocadastro` int(200) NOT NULL,
  `idcontabancaria` int(20) NOT NULL,
  `idcontabancariadestino` varchar(200) NOT NULL,
  `conc_data` varchar(100) NOT NULL,
  `conc_descricao` varchar(100) NOT NULL,
  `conc_idconta` varchar(100) NOT NULL,
  `conc_valor` varchar(100) NOT NULL,
  `conc_tipo` varchar(100) NOT NULL,
  `transfcontas` varchar(200) NOT NULL,
  `idlanctransf` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_movimento_lanc`
--

DROP TABLE IF EXISTS `lc_movimento_lanc`;
CREATE TABLE IF NOT EXISTS `lc_movimento_lanc` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idlanc` int(200) NOT NULL,
  `datalanc` varchar(20) NOT NULL,
  `horalanc` varchar(20) NOT NULL,
  `usuariolanc` varchar(200) NOT NULL,
  `valorlanc` varchar(50) NOT NULL,
  `tipopagto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
CREATE TABLE IF NOT EXISTS `mensagens` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `id_de` varchar(200) NOT NULL,
  `id_para` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `mensagem` varchar(200) NOT NULL,
  `lido` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `text` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `color` enum('yellow','blue','green','rosa','laranja') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yellow',
  `xyz` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datalembrete` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `emaillembrete` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `visualiza` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pdv_abertura_fechamento`
--

DROP TABLE IF EXISTS `pdv_abertura_fechamento`;
CREATE TABLE IF NOT EXISTS `pdv_abertura_fechamento` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idusuario` int(200) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  `saldodinheiro` varchar(100) NOT NULL,
  `saldocheque` varchar(100) NOT NULL,
  `saldocartao` varchar(100) NOT NULL,
  `saldooutros` varchar(100) NOT NULL,
  `saldototal` varchar(100) NOT NULL,
  `nomeusuario` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `datareferencia` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pdv_lancamentos`
--

DROP TABLE IF EXISTS `pdv_lancamentos`;
CREATE TABLE IF NOT EXISTS `pdv_lancamentos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  `tiporecebimento` varchar(100) NOT NULL,
  `valor` varchar(100) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `idusuario` int(200) NOT NULL,
  `nomeusuario` varchar(100) NOT NULL,
  `creditooudebito` varchar(100) NOT NULL,
  `id_ospedido` int(200) NOT NULL,
  `id_fatura` int(200) NOT NULL,
  `plano` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_banners`
--

DROP TABLE IF EXISTS `site_banners`;
CREATE TABLE IF NOT EXISTS `site_banners` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` varchar(200) NOT NULL,
  `texto` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_configuracao`
--

DROP TABLE IF EXISTS `site_configuracao`;
CREATE TABLE IF NOT EXISTS `site_configuracao` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `padrao` varchar(20) NOT NULL,
  `opt1` varchar(3) NOT NULL,
  `opt2` varchar(3) NOT NULL,
  `opt3` varchar(3) NOT NULL,
  `opt4` varchar(3) NOT NULL,
  `opt5` varchar(3) NOT NULL,
  `opt6` varchar(3) NOT NULL,
  `opt7` varchar(3) NOT NULL,
  `telefone1` varchar(15) NOT NULL,
  `telefone2` varchar(15) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `anodaempresa` varchar(4) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `aempresa` longtext NOT NULL,
  `habilita` varchar(3) NOT NULL,
  `habilita_autopeca` varchar(3) NOT NULL,
  `habilita_mecanica` varchar(3) NOT NULL,
  `titulo1` varchar(200) NOT NULL,
  `subtitulo1` varchar(200) NOT NULL,
  `texto1` longtext NOT NULL,
  `titulo2` varchar(200) NOT NULL,
  `subtitulo2` varchar(200) NOT NULL,
  `texto2` longtext NOT NULL,
  `titulo3` varchar(200) NOT NULL,
  `subtitulo3` varchar(200) NOT NULL,
  `texto3` longtext NOT NULL,
  `politicadetrocas` longtext NOT NULL,
  `politicadeprivacidade` longtext NOT NULL,
  `politicadereembolso` longtext NOT NULL,
  `skype` varchar(100) NOT NULL,
  `emailpagseguro` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_cupons_desconto`
--

DROP TABLE IF EXISTS `site_cupons_desconto`;
CREATE TABLE IF NOT EXISTS `site_cupons_desconto` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `datagerado` varchar(50) NOT NULL,
  `datausado` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nome` int(200) NOT NULL,
  `sexo` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_newsletter`
--

DROP TABLE IF EXISTS `site_newsletter`;
CREATE TABLE IF NOT EXISTS `site_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `data` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_produtos`
--

DROP TABLE IF EXISTS `site_produtos`;
CREATE TABLE IF NOT EXISTS `site_produtos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(200) NOT NULL,
  `modelo` varchar(300) NOT NULL,
  `produto` varchar(500) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `keywords` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `page` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_produtos_imagens`
--

DROP TABLE IF EXISTS `site_produtos_imagens`;
CREATE TABLE IF NOT EXISTS `site_produtos_imagens` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idproduto` int(100) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_subbanners`
--

DROP TABLE IF EXISTS `site_subbanners`;
CREATE TABLE IF NOT EXISTS `site_subbanners` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(400) NOT NULL,
  `subtitulo` varchar(400) NOT NULL,
  `texto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `site_usuarios`
--

DROP TABLE IF EXISTS `site_usuarios`;
CREATE TABLE IF NOT EXISTS `site_usuarios` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idcliente` int(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` varchar(5) NOT NULL,
  `situacao` varchar(20) NOT NULL,
  `qtdacesso` int(200) NOT NULL,
  `dataultimoacesso` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `idloja` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_agendamento`
--

DROP TABLE IF EXISTS `tbl_agendamento`;
CREATE TABLE IF NOT EXISTS `tbl_agendamento` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `idcliente` varchar(200) NOT NULL,
  `idveiculo` varchar(200) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  `proprietario` varchar(200) NOT NULL,
  `datahoje` varchar(20) NOT NULL,
  `origem` varchar(100) NOT NULL,
  `horahoje` varchar(20) NOT NULL,
  `situacao` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_agendamentoservicos`
--

DROP TABLE IF EXISTS `tbl_agendamentoservicos`;
CREATE TABLE IF NOT EXISTS `tbl_agendamentoservicos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idagendamento` int(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_agrupamento`
--

DROP TABLE IF EXISTS `tbl_agrupamento`;
CREATE TABLE IF NOT EXISTS `tbl_agrupamento` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idcliente` int(200) NOT NULL,
  `somatotal` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `idnfe` int(200) NOT NULL,
  `idnfce` int(200) NOT NULL,
  `idnfse` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_agrupamento_financeiro`
--

DROP TABLE IF EXISTS `tbl_agrupamento_financeiro`;
CREATE TABLE IF NOT EXISTS `tbl_agrupamento_financeiro` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idagrupamento` int(200) NOT NULL,
  `idcliente` int(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `valor` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_agrupa_os`
--

DROP TABLE IF EXISTS `tbl_agrupa_os`;
CREATE TABLE IF NOT EXISTS `tbl_agrupa_os` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idagrupamento` int(200) NOT NULL,
  `idos` int(200) NOT NULL,
  `valor` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_bancos`
--

DROP TABLE IF EXISTS `tbl_bancos`;
CREATE TABLE IF NOT EXISTS `tbl_bancos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `banco` varchar(200) NOT NULL,
  `ag` varchar(200) NOT NULL,
  `conta` varchar(200) NOT NULL,
  `contadv` varchar(200) DEFAULT NULL,
  `agenciadv` varchar(200) DEFAULT NULL,
  `convenio` varchar(200) DEFAULT NULL,
  `contrato` varchar(200) DEFAULT NULL,
  `carteira` varchar(200) DEFAULT NULL,
  `contacedente` varchar(200) DEFAULT NULL,
  `contacedentedv` varchar(200) DEFAULT NULL,
  `variacaocarteira` varchar(200) DEFAULT NULL,
  `idcnpj` int(200) NOT NULL,
  `codigoclientebco` varchar(200) NOT NULL,
  `posto` varchar(200) NOT NULL,
  `crange` varchar(200) NOT NULL,
  `jurosboletoperc` varchar(200) NOT NULL,
  `jurosboletovalor` varchar(200) NOT NULL,
  `multaboletoperc` varchar(200) NOT NULL,
  `multaboletovalor` varchar(200) NOT NULL,
  `instrucaoboleto1` varchar(2000) NOT NULL,
  `instrucaoboleto2` varchar(2000) NOT NULL,
  `instrucaoboleto3` varchar(2000) NOT NULL,
  `chkboleto` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_boletos`
--

DROP TABLE IF EXISTS `tbl_boletos`;
CREATE TABLE IF NOT EXISTS `tbl_boletos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idcnpj` int(200) NOT NULL,
  `idbanco` int(200) NOT NULL,
  `idcliente` int(200) NOT NULL,
  `idos` int(200) NOT NULL,
  `idnfe` varchar(200) NOT NULL,
  `idnfse` int(200) NOT NULL,
  `idnfce` int(200) NOT NULL,
  `idusuario_criacao` int(200) NOT NULL,
  `data_criacao` varchar(10) NOT NULL,
  `hora_criacao` varchar(10) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `dia_vencimento` varchar(2) NOT NULL,
  `mes_vencimento` varchar(2) NOT NULL,
  `ano_vencimento` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_remessa` varchar(40) NOT NULL,
  `data_pagamento` varchar(10) NOT NULL,
  `hora_pagamento` varchar(10) NOT NULL,
  `idusuario_pagamento` int(200) NOT NULL,
  `obs1` varchar(50) NOT NULL,
  `obs2` varchar(50) NOT NULL,
  `id_os_lancamento` int(200) NOT NULL,
  `id_financeiro_lancamento` int(200) NOT NULL,
  `parcela` int(200) NOT NULL,
  `dia_vencimento_original` varchar(2) NOT NULL,
  `mes_vencimento_original` varchar(2) NOT NULL,
  `ano_vencimento_original` varchar(2) NOT NULL,
  `id_os_agrupamento` int(200) NOT NULL,
  `id_nfe_agrupamento` int(200) NOT NULL,
  `id_nfce_agrupamento` int(200) NOT NULL,
  `id_nfse_agrupamento` int(200) NOT NULL,
  `instrucao1` varchar(50) NOT NULL,
  `instrucao2` varchar(50) NOT NULL,
  `instrucao3` varchar(5000) NOT NULL,
  `link_impressao` varchar(5000) NOT NULL,
  `link_download` varchar(5000) NOT NULL,
  `numeroboleto` varchar(200) NOT NULL,
  `dataenvio` varchar(20) NOT NULL,
  `usuarioidenvio` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_caixalancamento`
--

DROP TABLE IF EXISTS `tbl_caixalancamento`;
CREATE TABLE IF NOT EXISTS `tbl_caixalancamento` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idcaixa` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `ospedido` varchar(200) NOT NULL,
  `idcliente` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `tiporecebimento` varchar(200) NOT NULL,
  `idlancamento` varchar(200) NOT NULL,
  `idusuario` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `nomeusuario` varchar(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_caixas`
--

DROP TABLE IF EXISTS `tbl_caixas`;
CREATE TABLE IF NOT EXISTS `tbl_caixas` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `local` varchar(200) NOT NULL,
  `filial` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_celularescadastrados`
--

DROP TABLE IF EXISTS `tbl_celularescadastrados`;
CREATE TABLE IF NOT EXISTS `tbl_celularescadastrados` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `celular` varchar(200) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_certificado`
--

DROP TABLE IF EXISTS `tbl_certificado`;
CREATE TABLE IF NOT EXISTS `tbl_certificado` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `dataexpiracao` varchar(200) NOT NULL,
  `idfilial` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cfop`
--

DROP TABLE IF EXISTS `tbl_cfop`;
CREATE TABLE IF NOT EXISTS `tbl_cfop` (
  `id_cfop` int(11) NOT NULL DEFAULT '0',
  `descricao` longtext,
  `aplicacao` longtext,
  PRIMARY KEY (`id_cfop`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cfop_nfe`
--

DROP TABLE IF EXISTS `tbl_cfop_nfe`;
CREATE TABLE IF NOT EXISTS `tbl_cfop_nfe` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `datacadastro` varchar(200) NOT NULL,
  `idusuario` int(200) NOT NULL,
  `id_cfop` varchar(200) NOT NULL,
  `cfop_dentro` varchar(200) NOT NULL,
  `cfop_fora` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_checklist`
--

DROP TABLE IF EXISTS `tbl_checklist`;
CREATE TABLE IF NOT EXISTS `tbl_checklist` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `caminhonete` varchar(10) NOT NULL,
  `carro` varchar(10) NOT NULL,
  `moto` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_checklist_itens`
--

DROP TABLE IF EXISTS `tbl_checklist_itens`;
CREATE TABLE IF NOT EXISTS `tbl_checklist_itens` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idchecklist` int(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_clientes`
--

DROP TABLE IF EXISTS `tbl_clientes`;
CREATE TABLE IF NOT EXISTS `tbl_clientes` (
  `Codigo` int(30) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Fantasia` varchar(200) DEFAULT NULL,
  `DataAniver` varchar(10) DEFAULT NULL,
  `CPF` varchar(38) DEFAULT NULL,
  `RG` varchar(11) DEFAULT NULL,
  `CNPJ` varchar(25) DEFAULT NULL,
  `IE` varchar(200) DEFAULT NULL,
  `Contato` varchar(20) DEFAULT NULL,
  `EndRua` varchar(50) DEFAULT NULL,
  `EndNum` varchar(10) DEFAULT NULL,
  `EndCompl` varchar(50) DEFAULT NULL,
  `Bairro` varchar(25) DEFAULT NULL,
  `CEP` varchar(24) DEFAULT NULL,
  `Cidade` varchar(25) DEFAULT NULL,
  `Estado` varchar(11) DEFAULT NULL,
  `pais` varchar(50) NOT NULL,
  `cep_entrega` varchar(20) NOT NULL,
  `endereco_entrega` varchar(300) NOT NULL,
  `numero_entrega` varchar(20) NOT NULL,
  `complemento_entrega` varchar(30) NOT NULL,
  `bairro_entrega` varchar(50) NOT NULL,
  `cidade_entrega` varchar(50) NOT NULL,
  `estado_entrega` varchar(2) NOT NULL,
  `pais_entrega` varchar(50) NOT NULL,
  `DDD` varchar(4) NOT NULL,
  `Telefone` varchar(25) DEFAULT NULL,
  `operadoratelefone` varchar(17) DEFAULT NULL,
  `Celular` varchar(25) DEFAULT NULL,
  `operadoracelular` varchar(16) DEFAULT NULL,
  `celular2` varchar(40) DEFAULT NULL,
  `operadoracelular2` varchar(17) DEFAULT NULL,
  `celular3` varchar(40) DEFAULT NULL,
  `operadoracelular3` varchar(17) DEFAULT NULL,
  `FoneComercial` varchar(19) DEFAULT NULL,
  `operadorafonecomercial` varchar(22) DEFAULT NULL,
  `Email` varchar(49) DEFAULT NULL,
  `Email2` varchar(49) DEFAULT NULL,
  `HomePage` varchar(40) DEFAULT NULL,
  `Skype` varchar(5) DEFAULT NULL,
  `Twitter` varchar(7) DEFAULT NULL,
  `Observ` varchar(171) DEFAULT NULL,
  `Observ2` longtext NOT NULL,
  `Facebook` varchar(40) DEFAULT NULL,
  `tipo` varchar(4) DEFAULT NULL,
  `datacadastro` varchar(12) DEFAULT NULL,
  `horacadastro` varchar(10) NOT NULL,
  `contato2` varchar(200) NOT NULL,
  `contato3` varchar(200) NOT NULL,
  `limite` varchar(200) NOT NULL,
  `vendedor` varchar(80) NOT NULL,
  `ramodeatividade` varchar(200) NOT NULL,
  `idloja` varchar(50) NOT NULL,
  `api` varchar(1) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `idx_1` (`tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_comprasduplicata`
--

DROP TABLE IF EXISTS `tbl_comprasduplicata`;
CREATE TABLE IF NOT EXISTS `tbl_comprasduplicata` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `numero` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `pertence` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_comprasligafornecedor`
--

DROP TABLE IF EXISTS `tbl_comprasligafornecedor`;
CREATE TABLE IF NOT EXISTS `tbl_comprasligafornecedor` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `pertence` int(200) NOT NULL,
  `atualizaestoque` varchar(20) NOT NULL,
  `codigooriginal` varchar(200) NOT NULL,
  `idpeca` int(200) NOT NULL,
  `idpecacompra` int(200) NOT NULL,
  `idfabricante` int(200) NOT NULL,
  `idfornecedor` int(200) NOT NULL,
  `idfornecedorcompra` int(200) NOT NULL,
  `valorcusto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_comprasnota`
--

DROP TABLE IF EXISTS `tbl_comprasnota`;
CREATE TABLE IF NOT EXISTS `tbl_comprasnota` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nronota` int(200) NOT NULL,
  `chaveacesso` varchar(200) NOT NULL,
  `dataemissao` varchar(200) NOT NULL,
  `dataregistro` varchar(200) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `valortotal` varchar(200) NOT NULL,
  `idordemcompra` int(200) NOT NULL,
  `vBC` varchar(50) NOT NULL,
  `vICMS` varchar(50) NOT NULL,
  `vICMSDeson` varchar(50) NOT NULL,
  `vBCST` varchar(50) NOT NULL,
  `vST` varchar(50) NOT NULL,
  `vFrete` varchar(50) NOT NULL,
  `vSeg` varchar(50) NOT NULL,
  `vDesc` varchar(50) NOT NULL,
  `vII` varchar(50) NOT NULL,
  `vIPI` varchar(50) NOT NULL,
  `vPIS` varchar(50) NOT NULL,
  `vCOFINS` varchar(50) NOT NULL,
  `vOutro` varchar(50) NOT NULL,
  `vTotTrib` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_comprasnotafornecedores`
--

DROP TABLE IF EXISTS `tbl_comprasnotafornecedores`;
CREATE TABLE IF NOT EXISTS `tbl_comprasnotafornecedores` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `pertence` varchar(200) NOT NULL,
  `cnpj` varchar(200) NOT NULL,
  `xNome` varchar(200) NOT NULL,
  `xFant` varchar(200) NOT NULL,
  `xLgr` varchar(200) NOT NULL,
  `nro` varchar(200) NOT NULL,
  `xBairro` varchar(200) NOT NULL,
  `cMun` varchar(200) NOT NULL,
  `xMun` varchar(200) NOT NULL,
  `UF` varchar(200) NOT NULL,
  `CEP` varchar(200) NOT NULL,
  `cPais` varchar(200) NOT NULL,
  `xPais` varchar(200) NOT NULL,
  `fone` varchar(200) NOT NULL,
  `IE` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_comprasnotaprodutos`
--

DROP TABLE IF EXISTS `tbl_comprasnotaprodutos`;
CREATE TABLE IF NOT EXISTS `tbl_comprasnotaprodutos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `pertence` int(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `referencia` varchar(200) NOT NULL,
  `ncm` varchar(200) NOT NULL,
  `cfop` varchar(200) NOT NULL,
  `unidade` varchar(200) NOT NULL,
  `quantidade` varchar(200) NOT NULL,
  `valorunitario` varchar(200) NOT NULL,
  `valordesconto` varchar(200) NOT NULL,
  `valorfrete` varchar(20) NOT NULL,
  `valoroutros` varchar(20) NOT NULL,
  `statusimportacao` varchar(100) NOT NULL,
  `idusuario` varchar(100) NOT NULL,
  `data` varchar(100) NOT NULL,
  `idlocal` int(100) NOT NULL,
  `porcentagemIPI` varchar(20) NOT NULL,
  `vICMSST` varchar(20) NOT NULL,
  `pIPI` varchar(5) NOT NULL,
  `pICMSST` varchar(5) NOT NULL,
  `pICMS` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_configuracoes`
--

DROP TABLE IF EXISTS `tbl_configuracoes`;
CREATE TABLE IF NOT EXISTS `tbl_configuracoes` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `mostra1` varchar(200) NOT NULL,
  `mostra2` varchar(200) NOT NULL,
  `mostra3` varchar(200) NOT NULL,
  `mostra4` varchar(200) NOT NULL,
  `mostra5` varchar(200) NOT NULL,
  `mostra6` varchar(200) NOT NULL,
  `mostra7` varchar(200) NOT NULL,
  `mostra8` varchar(200) NOT NULL,
  `mostra9` varchar(200) NOT NULL,
  `mostra10` varchar(200) NOT NULL,
  `mostra11` varchar(200) NOT NULL,
  `mostra12` varchar(200) NOT NULL,
  `mostra13` varchar(200) NOT NULL,
  `mostra14` varchar(200) NOT NULL,
  `mostra15` varchar(200) NOT NULL,
  `mostra16` varchar(5) NOT NULL,
  `mostra17` varchar(2) NOT NULL,
  `estoquenegativo` varchar(3) NOT NULL,
  `tempo` varchar(200) NOT NULL,
  `logotipo` varchar(200) NOT NULL,
  `email_aniversario` longtext NOT NULL,
  `sms_aniversario` varchar(160) NOT NULL,
  `horaenvio` varchar(5) NOT NULL,
  `plano_orc_padrao` varchar(20) NOT NULL,
  `moduloveiculos` varchar(10) NOT NULL,
  `configcadcliente` varchar(1) NOT NULL,
  `configcadveiculo` varchar(1) NOT NULL,
  `configcampopers` varchar(1) NOT NULL,
  `configcampopersnome` varchar(500) NOT NULL,
  `configfilialobggestao` varchar(1) NOT NULL,
  `configcontaobggestao` varchar(1) NOT NULL,
  `configemissaoautonfe` varchar(1) NOT NULL,
  `tipospadrao` varchar(200) NOT NULL,
  `naobaixarestoquenf` varchar(20) NOT NULL,
  `voltarestoquenfcancelada` varchar(20) NOT NULL,
  `configvendedorobrigatorio` varchar(20) NOT NULL,
  `configlancfinsocomnota` varchar(20) NOT NULL,
  `planoorcpadraocompra` varchar(200) NOT NULL,
  `naomostrarplanodre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_controleestoque`
--

DROP TABLE IF EXISTS `tbl_controleestoque`;
CREATE TABLE IF NOT EXISTS `tbl_controleestoque` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `code` longtext NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_controle_avisoentrasaidausuario`
--

DROP TABLE IF EXISTS `tbl_controle_avisoentrasaidausuario`;
CREATE TABLE IF NOT EXISTS `tbl_controle_avisoentrasaidausuario` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idusuario_entradasaida` int(200) NOT NULL,
  `idusuario_aviso` int(200) NOT NULL,
  `id_log` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_controle_movimentacao`
--

DROP TABLE IF EXISTS `tbl_controle_movimentacao`;
CREATE TABLE IF NOT EXISTS `tbl_controle_movimentacao` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idpeca` int(200) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `nomeusuario` varchar(100) NOT NULL,
  `tipodemovimento` varchar(50) NOT NULL,
  `movimento` varchar(100) NOT NULL,
  `quantidadeanterior` varchar(100) NOT NULL,
  `quantidadenova` varchar(100) NOT NULL,
  `id_os_pedido` int(200) NOT NULL,
  `data_os_pedido` varchar(10) NOT NULL,
  `id_nfe` varchar(200) NOT NULL,
  `id_cliente_fornecedor` int(200) NOT NULL,
  `cliente_fornecedor` varchar(100) NOT NULL,
  `valorunitario` varchar(100) NOT NULL,
  `valorcusto` varchar(100) NOT NULL,
  `valortotal` varchar(100) NOT NULL,
  `id_importacao_automatica` int(200) NOT NULL,
  `id_importacao_manual` int(200) NOT NULL,
  `id_nfse` int(200) NOT NULL,
  `id_nfce` int(200) NOT NULL,
  `tipo_foroucli` varchar(5) NOT NULL,
  `id_local_anterior` int(200) NOT NULL,
  `id_local_posterior` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_dados`
--

DROP TABLE IF EXISTS `tbl_dados`;
CREATE TABLE IF NOT EXISTS `tbl_dados` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `responsavel` varchar(200) NOT NULL,
  `razaosocial` varchar(200) NOT NULL,
  `nomefantasia` varchar(200) NOT NULL,
  `ie` varchar(200) NOT NULL,
  `cnpj` varchar(200) NOT NULL,
  `crt` int(1) NOT NULL,
  `nfe_ambiente` int(5) NOT NULL,
  `cep` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `complemento` varchar(200) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `codcidade` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `codestado` varchar(20) NOT NULL,
  `pais` varchar(200) NOT NULL,
  `codpais` varchar(200) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `telefonecomercial` varchar(200) NOT NULL,
  `celular` varchar(200) NOT NULL,
  `datainstalacao` varchar(200) NOT NULL,
  `tipodelicenca` varchar(200) NOT NULL,
  `emailsac` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `enderecosistema` varchar(200) NOT NULL,
  `smtp` varchar(200) NOT NULL,
  `emaile` varchar(200) NOT NULL,
  `usernamee` varchar(200) NOT NULL,
  `senhae` varchar(200) NOT NULL,
  `portae` varchar(200) NOT NULL,
  `modulonfe` varchar(3) NOT NULL,
  `modulonfce` varchar(3) NOT NULL,
  `modulonfse` varchar(3) NOT NULL,
  `espacocontratado` varchar(100) NOT NULL,
  `peridiocidade` varchar(20) NOT NULL,
  `codigodecliente` int(100) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `nvaiusarnfe` varchar(1) NOT NULL,
  `nvaiusarnfce` varchar(1) NOT NULL,
  `nvaiusarnfse` varchar(1) NOT NULL,
  `nfse_inscricaomunicipal` varchar(100) NOT NULL,
  `nfse_simplesnacional` varchar(5) NOT NULL,
  `nfse_incentivadorcultural` varchar(5) NOT NULL,
  `nfse_CNAE` varchar(50) NOT NULL,
  `nfse_regimeespecialtributacao` text NOT NULL,
  `nfse_prefeitura` varchar(50) NOT NULL,
  `nfse_ambiente` varchar(50) NOT NULL,
  `nfse_itemlistaservico` varchar(50) NOT NULL,
  `nfse_codigotributacaomunicipio` varchar(50) NOT NULL,
  `nfse_descricaoservicos` varchar(300) NOT NULL,
  `nfse_aliquota` varchar(20) NOT NULL,
  `gid` varchar(3) NOT NULL,
  `gid_codcredenciado` varchar(50) NOT NULL,
  `gid_senhacredenciado` varchar(50) NOT NULL,
  `gid_codambiente` varchar(50) NOT NULL,
  `gid_matroperacao` varchar(50) NOT NULL,
  `gid_versaoleaiute` varchar(50) NOT NULL,
  `gid_operhomologacao` varchar(50) NOT NULL,
  `nfe_serie` varchar(20) NOT NULL,
  `controlepecas` int(200) NOT NULL,
  `nfce_itoken` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_emailscadastrados`
--

DROP TABLE IF EXISTS `tbl_emailscadastrados`;
CREATE TABLE IF NOT EXISTS `tbl_emailscadastrados` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_fabricantepeca`
--

DROP TABLE IF EXISTS `tbl_fabricantepeca`;
CREATE TABLE IF NOT EXISTS `tbl_fabricantepeca` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `fabricante` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_filialxcolaborador`
--

DROP TABLE IF EXISTS `tbl_filialxcolaborador`;
CREATE TABLE IF NOT EXISTS `tbl_filialxcolaborador` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idfilial` int(200) NOT NULL,
  `idcolaborador` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_fotos`
--

DROP TABLE IF EXISTS `tbl_fotos`;
CREATE TABLE IF NOT EXISTS `tbl_fotos` (
  `foto_id` int(11) NOT NULL AUTO_INCREMENT,
  `foto_url` varchar(200) DEFAULT NULL,
  `foto_caption` varchar(100) DEFAULT NULL,
  `foto_data` datetime DEFAULT NULL,
  `foto_album` int(11) DEFAULT NULL,
  `foto_pos` int(11) DEFAULT '0',
  `foto_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`foto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_grupopeca`
--

DROP TABLE IF EXISTS `tbl_grupopeca`;
CREATE TABLE IF NOT EXISTS `tbl_grupopeca` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(200) DEFAULT NULL,
  `pertence` varchar(200) NOT NULL,
  `exemplos` longtext NOT NULL,
  `vinculasite` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_historico_custo_peca`
--

DROP TABLE IF EXISTS `tbl_historico_custo_peca`;
CREATE TABLE IF NOT EXISTS `tbl_historico_custo_peca` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idnota` int(200) NOT NULL,
  `idpecanota` int(200) NOT NULL,
  `idfornecedor` int(200) NOT NULL,
  `idpeca` int(200) NOT NULL,
  `custobruto` varchar(100) NOT NULL,
  `customesmo` varchar(100) NOT NULL,
  `data` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_importacao_manual`
--

DROP TABLE IF EXISTS `tbl_importacao_manual`;
CREATE TABLE IF NOT EXISTS `tbl_importacao_manual` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `razaosocial` varchar(500) NOT NULL,
  `fantasia` varchar(500) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `idfornecedor` varchar(200) NOT NULL,
  `idfilial` int(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `nronota` varchar(50) NOT NULL,
  `serienota` varchar(50) NOT NULL,
  `dataemissao` varchar(50) NOT NULL,
  `modelonfe` varchar(200) NOT NULL,
  `cfopnfe` varchar(50) NOT NULL,
  `naturezanfe` varchar(200) NOT NULL,
  `chavenfe` varchar(200) NOT NULL,
  `tipo_entrada` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_liga_transf_produto`
--

DROP TABLE IF EXISTS `tbl_liga_transf_produto`;
CREATE TABLE IF NOT EXISTS `tbl_liga_transf_produto` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idtransf` int(200) NOT NULL,
  `idproduto` int(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `idlocalorigem` int(200) NOT NULL,
  `idlocaldestino` int(200) NOT NULL,
  `localorigem` varchar(200) NOT NULL,
  `localdestino` varchar(200) NOT NULL,
  `qtdorigem` varchar(10) NOT NULL,
  `qtdtransf` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_locaispeca`
--

DROP TABLE IF EXISTS `tbl_locaispeca`;
CREATE TABLE IF NOT EXISTS `tbl_locaispeca` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `local` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_localxcolaborador`
--

DROP TABLE IF EXISTS `tbl_localxcolaborador`;
CREATE TABLE IF NOT EXISTS `tbl_localxcolaborador` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idlocal` int(200) NOT NULL,
  `idcolaborador` int(200) NOT NULL,
  `ver` varchar(2) NOT NULL,
  `verevender` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logbackup`
--

DROP TABLE IF EXISTS `tbl_logbackup`;
CREATE TABLE IF NOT EXISTS `tbl_logbackup` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `hora` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logemailaniversario`
--

DROP TABLE IF EXISTS `tbl_logemailaniversario`;
CREATE TABLE IF NOT EXISTS `tbl_logemailaniversario` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) NOT NULL,
  `hora` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `erro` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logemailrelatorio`
--

DROP TABLE IF EXISTS `tbl_logemailrelatorio`;
CREATE TABLE IF NOT EXISTS `tbl_logemailrelatorio` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `data` varchar(200) NOT NULL,
  `hora` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `erro` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logentradasaida`
--

DROP TABLE IF EXISTS `tbl_logentradasaida`;
CREATE TABLE IF NOT EXISTS `tbl_logentradasaida` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idusuario` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `hora` varchar(200) NOT NULL,
  `acao` varchar(200) NOT NULL,
  `nomeusuario` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logforadohorario`
--

DROP TABLE IF EXISTS `tbl_logforadohorario`;
CREATE TABLE IF NOT EXISTS `tbl_logforadohorario` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `hora` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `pais` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_lognfce`
--

DROP TABLE IF EXISTS `tbl_lognfce`;
CREATE TABLE IF NOT EXISTS `tbl_lognfce` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idnfe` int(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `idusuario` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `nomeusuario` varchar(200) NOT NULL,
  `ambiente` varchar(200) NOT NULL,
  `log` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_lognfe`
--

DROP TABLE IF EXISTS `tbl_lognfe`;
CREATE TABLE IF NOT EXISTS `tbl_lognfe` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idnfe` int(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `idusuario` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `nomeusuario` varchar(200) NOT NULL,
  `ambiente` varchar(200) NOT NULL,
  `log` longtext NOT NULL,
  `xml` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_lognfetxt`
--

DROP TABLE IF EXISTS `tbl_lognfetxt`;
CREATE TABLE IF NOT EXISTS `tbl_lognfetxt` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idnfe` int(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `idusuario` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `nomeusuario` varchar(200) NOT NULL,
  `ambiente` varchar(200) NOT NULL,
  `log` longtext NOT NULL,
  `idcnpj` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_lognfse`
--

DROP TABLE IF EXISTS `tbl_lognfse`;
CREATE TABLE IF NOT EXISTS `tbl_lognfse` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idrps` varchar(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `idusuario` varchar(20) NOT NULL,
  `nomeusuario` varchar(200) NOT NULL,
  `ambiente` varchar(20) NOT NULL,
  `log` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logsmsaniversario`
--

DROP TABLE IF EXISTS `tbl_logsmsaniversario`;
CREATE TABLE IF NOT EXISTS `tbl_logsmsaniversario` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) NOT NULL,
  `hora` varchar(50) NOT NULL,
  `status` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `celular` varchar(200) NOT NULL,
  `erro` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logsmsrelatorio`
--

DROP TABLE IF EXISTS `tbl_logsmsrelatorio`;
CREATE TABLE IF NOT EXISTS `tbl_logsmsrelatorio` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `data` varchar(200) NOT NULL,
  `hora` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `celular` varchar(200) NOT NULL,
  `erro` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_logtentativas`
--

DROP TABLE IF EXISTS `tbl_logtentativas`;
CREATE TABLE IF NOT EXISTS `tbl_logtentativas` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `hora` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `pais` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_lojas`
--

DROP TABLE IF EXISTS `tbl_lojas`;
CREATE TABLE IF NOT EXISTS `tbl_lojas` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nomefantasia` varchar(400) DEFAULT NULL,
  `razaosocial` varchar(400) DEFAULT NULL,
  `DataAniver` varchar(10) DEFAULT NULL,
  `cpfcnpj` varchar(40) DEFAULT NULL,
  `RG` varchar(11) DEFAULT NULL,
  `IE` varchar(200) DEFAULT NULL,
  `Contato` varchar(20) DEFAULT NULL,
  `EndRua` varchar(50) DEFAULT NULL,
  `EndNum` varchar(10) DEFAULT NULL,
  `EndCompl` varchar(50) DEFAULT NULL,
  `Bairro` varchar(25) DEFAULT NULL,
  `CEP` varchar(24) DEFAULT NULL,
  `Cidade` varchar(25) DEFAULT NULL,
  `Estado` varchar(11) DEFAULT NULL,
  `pais` varchar(50) NOT NULL,
  `estado_entrega` varchar(2) NOT NULL,
  `DDD` varchar(4) NOT NULL,
  `Telefone` varchar(25) DEFAULT NULL,
  `operadoratelefone` varchar(17) DEFAULT NULL,
  `Celular` varchar(25) DEFAULT NULL,
  `operadoracelular` varchar(16) DEFAULT NULL,
  `celular2` varchar(40) DEFAULT NULL,
  `operadoracelular2` varchar(17) DEFAULT NULL,
  `celular3` varchar(40) DEFAULT NULL,
  `operadoracelular3` varchar(17) DEFAULT NULL,
  `FoneComercial` varchar(19) DEFAULT NULL,
  `operadorafonecomercial` varchar(22) DEFAULT NULL,
  `Email` varchar(49) DEFAULT NULL,
  `Email2` varchar(49) DEFAULT NULL,
  `linkloja` varchar(40) DEFAULT NULL,
  `Observ` varchar(171) DEFAULT NULL,
  `tipo` varchar(4) DEFAULT NULL,
  `datacadastro` varchar(12) DEFAULT NULL,
  `horacadastro` varchar(10) NOT NULL,
  `contato2` varchar(200) NOT NULL,
  `contato3` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_lojas_precos`
--

DROP TABLE IF EXISTS `tbl_lojas_precos`;
CREATE TABLE IF NOT EXISTS `tbl_lojas_precos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `dataregistro` varchar(50) NOT NULL,
  `usuarioregistro` varchar(200) NOT NULL,
  `idloja` int(50) NOT NULL,
  `idproduto` int(200) NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `percentual` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ncm`
--

DROP TABLE IF EXISTS `tbl_ncm`;
CREATE TABLE IF NOT EXISTS `tbl_ncm` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `codigo` int(9) DEFAULT NULL,
  `ex` varchar(2) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nacionalfederal` decimal(4,2) DEFAULT NULL,
  `importadosfederal` decimal(4,2) DEFAULT NULL,
  `estadual` decimal(4,2) DEFAULT NULL,
  `municipal` decimal(3,2) DEFAULT NULL,
  `vigenciainicio` varchar(10) DEFAULT NULL,
  `vigenciafim` varchar(10) DEFAULT NULL,
  `chave` varchar(6) DEFAULT NULL,
  `versao` varchar(6) DEFAULT NULL,
  `fonte` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84244102 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfce`
--

DROP TABLE IF EXISTS `tbl_nfce`;
CREATE TABLE IF NOT EXISTS `tbl_nfce` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `numnfe` int(200) NOT NULL,
  `tipodenf` varchar(200) NOT NULL,
  `codcfop` varchar(200) NOT NULL,
  `descricaocfop` varchar(60) NOT NULL,
  `dtemissao` varchar(200) NOT NULL,
  `sped` varchar(200) NOT NULL,
  `dtsaidaentrada` varchar(200) NOT NULL,
  `horasaida` varchar(200) NOT NULL,
  `codcliente` varchar(200) NOT NULL,
  `condicaopagamento` varchar(200) NOT NULL,
  `FinNFe` varchar(200) NOT NULL,
  `nomed` varchar(200) NOT NULL,
  `cnpjcpfd` varchar(200) NOT NULL,
  `ied` varchar(200) NOT NULL,
  `emaild` varchar(200) NOT NULL,
  `foned` varchar(200) NOT NULL,
  `cepd` varchar(200) NOT NULL,
  `enderecod` varchar(200) NOT NULL,
  `numerod` varchar(200) NOT NULL,
  `complementod` varchar(200) NOT NULL,
  `bairrod` varchar(200) NOT NULL,
  `cidaded` varchar(200) NOT NULL,
  `codcidaded` varchar(200) NOT NULL,
  `estadod` varchar(200) NOT NULL,
  `codufd` varchar(200) NOT NULL,
  `paisd` varchar(200) NOT NULL,
  `codpais` varchar(200) NOT NULL,
  `basecalculoicms` varchar(200) NOT NULL,
  `valoricms` varchar(200) NOT NULL,
  `basecalculoicmssubs` varchar(200) NOT NULL,
  `valoricmssuvs` varchar(200) NOT NULL,
  `valortotalprodutos` varchar(200) NOT NULL,
  `valorfrete` varchar(200) NOT NULL,
  `valorseguro` varchar(200) NOT NULL,
  `outrasdespesas` varchar(200) NOT NULL,
  `valoripi` varchar(200) NOT NULL,
  `descontonfe` varchar(200) NOT NULL,
  `valortotaldanota` varchar(200) NOT NULL,
  `transportadora` varchar(200) NOT NULL,
  `freteporconta` varchar(200) NOT NULL,
  `ufdotransporte` varchar(200) NOT NULL,
  `tcnpj` varchar(200) NOT NULL,
  `tendereco` varchar(200) NOT NULL,
  `tcidade` varchar(200) NOT NULL,
  `tuf` varchar(200) NOT NULL,
  `tie` varchar(200) NOT NULL,
  `quantidade` varchar(200) NOT NULL,
  `especie` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `pesobruto` varchar(200) NOT NULL,
  `pesoliquido` varchar(200) NOT NULL,
  `obsnfe` varchar(200) NOT NULL,
  `numerofatura` varchar(200) NOT NULL,
  `valorbrutof` varchar(200) NOT NULL,
  `descontof` varchar(200) NOT NULL,
  `valorliquidof` varchar(200) NOT NULL,
  `opcaorecebimento` varchar(5) NOT NULL,
  `cnpjoperadoracartaocredito` varchar(20) NOT NULL,
  `codcartaocredito` varchar(5) NOT NULL,
  `status` varchar(200) NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `protocolo` varchar(200) NOT NULL,
  `recibo` varchar(200) NOT NULL,
  `chave` varchar(200) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `codstatus` varchar(200) NOT NULL,
  `log` longtext NOT NULL,
  `justificativa` varchar(300) NOT NULL,
  `filial` int(200) NOT NULL,
  `nfreferenciada` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfcecontrole`
--

DROP TABLE IF EXISTS `tbl_nfcecontrole`;
CREATE TABLE IF NOT EXISTS `tbl_nfcecontrole` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `ultimanfe` varchar(200) NOT NULL,
  `proximanfe` varchar(200) NOT NULL,
  `dataenvioultima` varchar(10) NOT NULL,
  `horaenvioultima` varchar(10) NOT NULL,
  `idfilial` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfcepc`
--

DROP TABLE IF EXISTS `tbl_nfcepc`;
CREATE TABLE IF NOT EXISTS `tbl_nfcepc` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nfe` varchar(200) NOT NULL,
  `cfop` varchar(20) NOT NULL,
  `peca` varchar(200) NOT NULL,
  `un` varchar(200) NOT NULL,
  `descricaopeca` varchar(200) NOT NULL,
  `quantidadepeca` varchar(200) NOT NULL,
  `valorpeca` varchar(200) NOT NULL,
  `valordesconto` varchar(200) NOT NULL,
  `valorfrete` varchar(200) NOT NULL,
  `valorseguro` varchar(200) NOT NULL,
  `valoroutrasdespesas` varchar(200) NOT NULL,
  `valortotalpeca` varchar(200) NOT NULL,
  `valortotalpecasemdesconto` varchar(200) NOT NULL,
  `ncmsf` varchar(200) NOT NULL,
  `cst` varchar(200) NOT NULL,
  `picms` varchar(200) NOT NULL,
  `valoricms` varchar(200) NOT NULL,
  `margem` varchar(200) NOT NULL,
  `ipi` varchar(200) NOT NULL,
  `pesobruto` varchar(200) NOT NULL,
  `icms1` varchar(100) NOT NULL,
  `icms2` varchar(100) NOT NULL,
  `cstbicms` varchar(100) NOT NULL,
  `icms3` varchar(100) NOT NULL,
  `icms4` varchar(100) NOT NULL,
  `icms5` varchar(100) NOT NULL,
  `icms6` varchar(100) NOT NULL,
  `icms7` varchar(100) NOT NULL,
  `icms8` varchar(100) NOT NULL,
  `icms9` varchar(100) NOT NULL,
  `icms10` varchar(100) NOT NULL,
  `icms11` varchar(100) NOT NULL,
  `icms12` varchar(100) NOT NULL,
  `icms13` varchar(100) NOT NULL,
  `icms14` varchar(100) NOT NULL,
  `icms15` varchar(100) NOT NULL,
  `cstpis` varchar(100) NOT NULL,
  `pis1` varchar(100) NOT NULL,
  `pis2` varchar(100) NOT NULL,
  `pis3` varchar(100) NOT NULL,
  `cofins1` varchar(100) NOT NULL,
  `cofins2` varchar(100) NOT NULL,
  `cofins3` varchar(100) NOT NULL,
  `cstipi` varchar(100) NOT NULL,
  `ipi1` varchar(100) NOT NULL,
  `ipi2` varchar(100) NOT NULL,
  `ipi3` varchar(100) NOT NULL,
  `ii1` varchar(100) NOT NULL,
  `ii2` varchar(100) NOT NULL,
  `ii3` varchar(100) NOT NULL,
  `ii4` varchar(100) NOT NULL,
  `ii5` varchar(100) NOT NULL,
  `csosn` varchar(20) NOT NULL,
  `finalidade` varchar(100) NOT NULL,
  `altura` varchar(200) NOT NULL,
  `comprimento` varchar(200) NOT NULL,
  `csta` varchar(100) NOT NULL,
  `cstcofins` varchar(20) NOT NULL,
  `largura` varchar(20) NOT NULL,
  `idlocalestoque` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfe`
--

DROP TABLE IF EXISTS `tbl_nfe`;
CREATE TABLE IF NOT EXISTS `tbl_nfe` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `numnfe` int(200) NOT NULL,
  `serie` int(100) NOT NULL,
  `tipodenf` varchar(200) NOT NULL,
  `codcfop` varchar(200) NOT NULL,
  `descricaocfop` varchar(60) NOT NULL,
  `dtemissao` varchar(200) NOT NULL,
  `sped` varchar(200) NOT NULL,
  `dtsaidaentrada` varchar(200) NOT NULL,
  `horasaida` varchar(200) NOT NULL,
  `codcliente` varchar(200) NOT NULL,
  `condicaopagamento` varchar(200) NOT NULL,
  `FinNFe` varchar(200) NOT NULL,
  `nomed` int NOT NULL,
  `cnpjcpfd` varchar(200) NOT NULL,
  `ied` varchar(200) NOT NULL,
  `emaild` varchar(200) NOT NULL,
  `foned` varchar(200) NOT NULL,
  `cepd` varchar(200) NOT NULL,
  `enderecod` varchar(200) NOT NULL,
  `numerod` varchar(200) NOT NULL,
  `complementod` varchar(200) NOT NULL,
  `bairrod` varchar(200) NOT NULL,
  `cidaded` varchar(200) NOT NULL,
  `codcidaded` varchar(200) NOT NULL,
  `estadod` varchar(200) NOT NULL,
  `codufd` varchar(200) NOT NULL,
  `paisd` varchar(200) NOT NULL,
  `codpais` varchar(200) NOT NULL,
  `basecalculoicms` varchar(200) NOT NULL,
  `valoricms` varchar(200) NOT NULL,
  `basecalculoicmssubs` varchar(200) NOT NULL,
  `valoricmssuvs` varchar(200) NOT NULL,
  `valortotalprodutos` varchar(200) NOT NULL,
  `valorfrete` varchar(200) NOT NULL,
  `valorseguro` varchar(200) NOT NULL,
  `outrasdespesas` varchar(200) NOT NULL,
  `valoripi` varchar(200) NOT NULL,
  `descontonfe` varchar(200) NOT NULL,
  `valortotaldanota` varchar(200) NOT NULL,
  `transportadora` varchar(200) NOT NULL,
  `freteporconta` varchar(200) NOT NULL,
  `ufdotransporte` varchar(200) NOT NULL,
  `tcnpj` varchar(200) NOT NULL,
  `tendereco` varchar(200) NOT NULL,
  `tcidade` varchar(200) NOT NULL,
  `tuf` varchar(200) NOT NULL,
  `tie` varchar(200) NOT NULL,
  `quantidade` varchar(200) NOT NULL,
  `especie` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `pesobruto` varchar(200) NOT NULL,
  `pesoliquido` varchar(200) NOT NULL,
  `obsnfe` varchar(5000) NOT NULL,
  `numerofatura` varchar(200) NOT NULL,
  `valorbrutof` varchar(200) NOT NULL,
  `descontof` varchar(200) NOT NULL,
  `valorliquidof` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `protocolo` varchar(200) NOT NULL,
  `recibo` varchar(200) NOT NULL,
  `chave` varchar(200) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `codstatus` varchar(200) NOT NULL,
  `log` longtext NOT NULL,
  `justificativa` varchar(300) NOT NULL,
  `filial` int(200) NOT NULL,
  `nfreferenciada` longtext NOT NULL,
  `gid_codnota` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfecidades`
--

DROP TABLE IF EXISTS `tbl_nfecidades`;
CREATE TABLE IF NOT EXISTS `tbl_nfecidades` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `coduf` int(2) DEFAULT NULL,
  `nomeuf` varchar(19) DEFAULT NULL,
  `codcidade` int(7) DEFAULT NULL,
  `cidade` varchar(32) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11128 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfecontrole`
--

DROP TABLE IF EXISTS `tbl_nfecontrole`;
CREATE TABLE IF NOT EXISTS `tbl_nfecontrole` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `ultimanfe` varchar(200) NOT NULL,
  `proximanfe` varchar(200) NOT NULL,
  `dataenvioultima` varchar(10) NOT NULL,
  `horaenvioultima` varchar(10) NOT NULL,
  `idfilial` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfecorrecao`
--

DROP TABLE IF EXISTS `tbl_nfecorrecao`;
CREATE TABLE IF NOT EXISTS `tbl_nfecorrecao` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idnfe` int(200) NOT NULL,
  `seq` int(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `correcao` longtext NOT NULL,
  `idusuario` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `protocolo` varchar(100) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `arquivo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfeduplicatas`
--

DROP TABLE IF EXISTS `tbl_nfeduplicatas`;
CREATE TABLE IF NOT EXISTS `tbl_nfeduplicatas` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idnfe` int(200) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `valor` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfehomologacao`
--

DROP TABLE IF EXISTS `tbl_nfehomologacao`;
CREATE TABLE IF NOT EXISTS `tbl_nfehomologacao` (
  `numnfe` int(200) NOT NULL AUTO_INCREMENT,
  `tipodenf` varchar(200) NOT NULL,
  `codcfop` varchar(200) NOT NULL,
  `descricaocfop` varchar(60) NOT NULL,
  `dtemissao` varchar(200) NOT NULL,
  `sped` varchar(200) NOT NULL,
  `dtsaidaentrada` varchar(200) NOT NULL,
  `horasaida` varchar(200) NOT NULL,
  `codcliente` varchar(200) NOT NULL,
  `condicaopagamento` varchar(200) NOT NULL,
  `FinNFe` varchar(200) NOT NULL,
  `nomed` varchar(200) NOT NULL,
  `cnpjcpfd` varchar(200) NOT NULL,
  `ied` varchar(200) NOT NULL,
  `indIEDest` varchar(20) NOT NULL,
  `flagaviso` varchar(50) NOT NULL,
  `flagusuario` varchar(40) NOT NULL,
  `emaild` varchar(200) NOT NULL,
  `foned` varchar(200) NOT NULL,
  `cepd` varchar(200) NOT NULL,
  `enderecod` varchar(200) NOT NULL,
  `numerod` varchar(200) NOT NULL,
  `complementod` varchar(200) NOT NULL,
  `bairrod` varchar(200) NOT NULL,
  `cidaded` varchar(200) NOT NULL,
  `codcidaded` varchar(200) NOT NULL,
  `estadod` varchar(200) NOT NULL,
  `codufd` varchar(200) NOT NULL,
  `paisd` varchar(200) NOT NULL,
  `codpais` varchar(200) NOT NULL,
  `basecalculoicms` varchar(200) NOT NULL,
  `valoricms` varchar(200) NOT NULL,
  `basecalculoicmssubs` varchar(200) NOT NULL,
  `valoricmssuvs` varchar(200) NOT NULL,
  `valortotalprodutos` varchar(200) NOT NULL,
  `valorfrete` varchar(200) NOT NULL,
  `valorseguro` varchar(200) NOT NULL,
  `outrasdespesas` varchar(200) NOT NULL,
  `valoripi` varchar(200) NOT NULL,
  `descontonfe` varchar(200) NOT NULL,
  `valortotaldanota` varchar(200) NOT NULL,
  `transportadora` varchar(200) NOT NULL,
  `freteporconta` varchar(200) NOT NULL,
  `ufdotransporte` varchar(200) NOT NULL,
  `tcnpj` varchar(200) NOT NULL,
  `tendereco` varchar(200) NOT NULL,
  `tcidade` varchar(200) NOT NULL,
  `tuf` varchar(200) NOT NULL,
  `tie` varchar(200) NOT NULL,
  `quantidade` varchar(200) NOT NULL,
  `especie` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `pesobruto` varchar(200) NOT NULL,
  `pesoliquido` varchar(200) NOT NULL,
  `obsnfe` varchar(200) NOT NULL,
  `numerofatura` varchar(200) NOT NULL,
  `valorbrutof` varchar(200) NOT NULL,
  `descontof` varchar(200) NOT NULL,
  `valorliquidof` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `xml` longtext NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `protocolo` varchar(200) NOT NULL,
  `recibo` varchar(200) NOT NULL,
  `chave` varchar(200) NOT NULL,
  `arquivo` longtext NOT NULL,
  `codstatus` varchar(200) NOT NULL,
  `log` longtext NOT NULL,
  PRIMARY KEY (`numnfe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfepaises`
--

DROP TABLE IF EXISTS `tbl_nfepaises`;
CREATE TABLE IF NOT EXISTS `tbl_nfepaises` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `codpais` int(4) DEFAULT NULL,
  `pais` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfepc`
--

DROP TABLE IF EXISTS `tbl_nfepc`;
CREATE TABLE IF NOT EXISTS `tbl_nfepc` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nfe` varchar(200) NOT NULL,
  `cfop` varchar(200) NOT NULL,
  `peca` varchar(200) NOT NULL,
  `un` varchar(200) NOT NULL,
  `descricaopeca` varchar(200) NOT NULL,
  `quantidadepeca` varchar(200) NOT NULL,
  `valorpeca` varchar(200) NOT NULL,
  `valordesconto` varchar(200) NOT NULL,
  `valorfrete` varchar(200) NOT NULL,
  `valorseguro` varchar(200) NOT NULL,
  `valoroutrasdespesas` varchar(200) NOT NULL,
  `valortotalpeca` varchar(200) NOT NULL,
  `valortotalpecasemdesconto` varchar(200) NOT NULL,
  `ncmsf` varchar(200) NOT NULL,
  `cst` varchar(200) NOT NULL,
  `picms` varchar(200) NOT NULL,
  `valoricms` varchar(200) NOT NULL,
  `margem` varchar(200) NOT NULL,
  `ipi` varchar(200) NOT NULL,
  `pesobruto` varchar(200) NOT NULL,
  `icms1` varchar(100) NOT NULL,
  `icms2` varchar(100) NOT NULL,
  `cstbicms` varchar(100) NOT NULL,
  `icms3` varchar(100) NOT NULL,
  `icms4` varchar(100) NOT NULL,
  `icms5` varchar(100) NOT NULL,
  `icms6` varchar(100) NOT NULL,
  `icms7` varchar(100) NOT NULL,
  `icms8` varchar(100) NOT NULL,
  `icms9` varchar(100) NOT NULL,
  `icms10` varchar(100) NOT NULL,
  `icms11` varchar(100) NOT NULL,
  `icms12` varchar(100) NOT NULL,
  `icms13` varchar(100) NOT NULL,
  `icms14` varchar(100) NOT NULL,
  `icms15` varchar(100) NOT NULL,
  `cstpis` varchar(100) NOT NULL,
  `pis1` varchar(100) NOT NULL,
  `pis2` varchar(100) NOT NULL,
  `pis3` varchar(100) NOT NULL,
  `cofins1` varchar(100) NOT NULL,
  `cofins2` varchar(100) NOT NULL,
  `cofins3` varchar(100) NOT NULL,
  `cstipi` varchar(100) NOT NULL,
  `ipi1` varchar(100) NOT NULL,
  `ipi2` varchar(100) NOT NULL,
  `ipi3` varchar(100) NOT NULL,
  `ii1` varchar(100) NOT NULL,
  `ii2` varchar(100) NOT NULL,
  `ii3` varchar(100) NOT NULL,
  `ii4` varchar(100) NOT NULL,
  `ii5` varchar(100) NOT NULL,
  `csosn` varchar(20) NOT NULL,
  `finalidade` varchar(100) NOT NULL,
  `altura` varchar(200) NOT NULL,
  `comprimento` varchar(200) NOT NULL,
  `csta` varchar(100) NOT NULL,
  `cstcofins` varchar(20) NOT NULL,
  `largura` varchar(20) NOT NULL,
  `infAdProd` varchar(300) NOT NULL,
  `idlocalestoque` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfepchomologacao`
--

DROP TABLE IF EXISTS `tbl_nfepchomologacao`;
CREATE TABLE IF NOT EXISTS `tbl_nfepchomologacao` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nfe` varchar(200) NOT NULL,
  `peca` varchar(200) NOT NULL,
  `un` varchar(200) NOT NULL,
  `descricaopeca` varchar(200) NOT NULL,
  `quantidadepeca` varchar(200) NOT NULL,
  `valorpeca` varchar(200) NOT NULL,
  `valordesconto` varchar(200) NOT NULL,
  `valortotalpeca` varchar(200) NOT NULL,
  `ncmsf` varchar(200) NOT NULL,
  `cst` varchar(200) NOT NULL,
  `picms` varchar(200) NOT NULL,
  `valoricms` varchar(200) NOT NULL,
  `vTotalServNaoTribICMSISS` varchar(200) NOT NULL,
  `vBCISS` varchar(200) NOT NULL,
  `vTotalISS` varchar(200) NOT NULL,
  `vPISISS` int NOT NULL,
  `vCOFINSISS` varchar(200) NOT NULL,
  `dataPrestacaoServicoISS` varchar(50) NOT NULL,
  `vDeducaoISS` varchar(200) NOT NULL,
  `vOutrasRetISS` varchar(200) NOT NULL,
  `vDescIncondISS` varchar(200) NOT NULL,
  `vDescCondISS` varchar(200) NOT NULL,
  `vTotalRetISS` varchar(200) NOT NULL,
  `cRegimeTrib` varchar(200) NOT NULL,
  `CNPJProdIPI` varchar(200) NOT NULL,
  `cSeloIPI` varchar(200) NOT NULL,
  `qSeloIPI` varchar(200) NOT NULL,
  `qUnidIPI` varchar(200) NOT NULL,
  `clEnq` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfevolumes`
--

DROP TABLE IF EXISTS `tbl_nfevolumes`;
CREATE TABLE IF NOT EXISTS `tbl_nfevolumes` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idcnpj` varchar(200) NOT NULL,
  `quantidade` int(20) NOT NULL,
  `especie` varchar(300) NOT NULL,
  `marca` varchar(300) NOT NULL,
  `pesoliquido` varchar(40) NOT NULL,
  `pesobruto` varchar(40) NOT NULL,
  `numeracao` varchar(50) NOT NULL,
  `ambiente` varchar(2) NOT NULL,
  `numnfe` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfevolumes_lacres`
--

DROP TABLE IF EXISTS `tbl_nfevolumes_lacres`;
CREATE TABLE IF NOT EXISTS `tbl_nfevolumes_lacres` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idvolume` int(200) NOT NULL,
  `numero` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfe_importacaotxt`
--

DROP TABLE IF EXISTS `tbl_nfe_importacaotxt`;
CREATE TABLE IF NOT EXISTS `tbl_nfe_importacaotxt` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `data` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  `numnfe` varchar(150) NOT NULL,
  `lote` varchar(200) NOT NULL,
  `serienfe` varchar(500) NOT NULL,
  `nomedestinatario` varchar(2000) NOT NULL,
  `cpfcnpjdestinatario` varchar(100) NOT NULL,
  `txt_recebido` longtext NOT NULL,
  `xml_convertido` longtext NOT NULL,
  `xml_assinado` longtext NOT NULL,
  `xml_protocolado` longtext NOT NULL,
  `xml_respostasefaz` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `acao` varchar(100) NOT NULL,
  `flagcomando` varchar(200) NOT NULL,
  `flagaviso` varchar(20) NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `protocolo` varchar(200) NOT NULL,
  `recibo` varchar(200) NOT NULL,
  `chave` varchar(200) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `codstatus` varchar(200) NOT NULL,
  `justificativa` longtext NOT NULL,
  `idcnpj` varchar(50) NOT NULL,
  `idnfe` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfse`
--

DROP TABLE IF EXISTS `tbl_nfse`;
CREATE TABLE IF NOT EXISTS `tbl_nfse` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `numeronfse` varchar(200) NOT NULL,
  `dataemissaonfse` varchar(200) NOT NULL,
  `datacancelamentonfse` varchar(200) NOT NULL,
  `codigoverificacaonfse` varchar(200) NOT NULL,
  `idlote` varchar(200) NOT NULL,
  `numerolote` varchar(200) NOT NULL,
  `idrps` varchar(200) NOT NULL,
  `numerorps` varchar(200) NOT NULL,
  `serierps` varchar(200) NOT NULL,
  `tiporps` varchar(200) NOT NULL,
  `dataemissao` varchar(200) NOT NULL,
  `naturezaoperacao` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `cnpjtomador` varchar(200) NOT NULL,
  `inscricaomunicipaltomador` varchar(200) NOT NULL,
  `razaosocialtomador` int NOT NULL,
  `enderecotomador` varchar(200) NOT NULL,
  `numerotomador` varchar(200) NOT NULL,
  `complementotomador` varchar(200) NOT NULL,
  `bairrotomador` varchar(200) NOT NULL,
  `nomemunicipiotomador` varchar(200) NOT NULL,
  `codigomunicipiotomador` varchar(200) NOT NULL,
  `uftomador` varchar(200) NOT NULL,
  `ceptomador` varchar(200) NOT NULL,
  `codigopaistomador` varchar(200) NOT NULL,
  `telefonetomador` varchar(200) NOT NULL,
  `emailtomador` varchar(200) NOT NULL,
  `filial` varchar(10) NOT NULL,
  `datacriacao` varchar(10) NOT NULL,
  `obs` varchar(200) NOT NULL,
  `totalservicos` varchar(50) NOT NULL,
  `deducoes` varchar(50) NOT NULL,
  `pis` varchar(50) NOT NULL,
  `cofins` varchar(50) NOT NULL,
  `inss` varchar(50) NOT NULL,
  `csll` varchar(50) NOT NULL,
  `iss` varchar(50) NOT NULL,
  `issretido` varchar(50) NOT NULL,
  `valorissretido` varchar(50) NOT NULL,
  `outrasretencoes` varchar(50) NOT NULL,
  `basecalculo` varchar(50) NOT NULL,
  `aliquota` varchar(50) NOT NULL,
  `valorliquido` varchar(50) NOT NULL,
  `descontoicondicionado` varchar(50) NOT NULL,
  `descontocondicionado` varchar(50) NOT NULL,
  `ir` varchar(50) NOT NULL,
  `searchkey` varchar(100) NOT NULL,
  `codstatus` varchar(200) NOT NULL,
  `motivo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfseduplicatas`
--

DROP TABLE IF EXISTS `tbl_nfseduplicatas`;
CREATE TABLE IF NOT EXISTS `tbl_nfseduplicatas` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idnfe` int(200) NOT NULL,
  `numero` varchar(300) NOT NULL,
  `data` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `idcnpj` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_nfseservico`
--

DROP TABLE IF EXISTS `tbl_nfseservico`;
CREATE TABLE IF NOT EXISTS `tbl_nfseservico` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nfse` int(200) NOT NULL,
  `cod` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `qtd` varchar(20) NOT NULL,
  `valorunit` varchar(50) NOT NULL,
  `valortotal` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_orcamentoproblemas`
--

DROP TABLE IF EXISTS `tbl_orcamentoproblemas`;
CREATE TABLE IF NOT EXISTS `tbl_orcamentoproblemas` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `problema` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ordemdecompra`
--

DROP TABLE IF EXISTS `tbl_ordemdecompra`;
CREATE TABLE IF NOT EXISTS `tbl_ordemdecompra` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idfornecedor` int(200) NOT NULL,
  `razaosocial` varchar(200) NOT NULL,
  `fantasia` varchar(200) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `idtransportadora` int(200) NOT NULL,
  `idfilial` int(200) NOT NULL,
  `idxml` int(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `statusanterior` varchar(200) NOT NULL,
  `condicaopagamento` varchar(200) NOT NULL,
  `valortotal` varchar(200) NOT NULL,
  `valorfrete` int NOT NULL,
  `valordespesas` varchar(200) NOT NULL,
  `valorencargos` varchar(200) NOT NULL,
  `valoripi` varchar(200) NOT NULL,
  `idcomprador` int(200) NOT NULL,
  `nomecomprador` varchar(200) NOT NULL,
  `dataemissao` varchar(20) NOT NULL,
  `idaprovador` int(200) NOT NULL,
  `horaemissao` varchar(30) NOT NULL,
  `dataprevisaoentrega` varchar(20) NOT NULL,
  `dataentrega` varchar(20) NOT NULL,
  `tipodefrete` varchar(200) NOT NULL,
  `observacao` longtext NOT NULL,
  `transportadora` varchar(200) NOT NULL,
  `tuf` varchar(50) NOT NULL,
  `tcnpj` varchar(100) NOT NULL,
  `tendereco` varchar(200) NOT NULL,
  `tcidade` varchar(100) NOT NULL,
  `ttuf` varchar(50) NOT NULL,
  `tie` varchar(50) NOT NULL,
  `tqtd` varchar(50) NOT NULL,
  `tespecie` varchar(50) NOT NULL,
  `tmarca` varchar(100) NOT NULL,
  `tnumero` varchar(50) NOT NULL,
  `tpesobruto` varchar(50) NOT NULL,
  `tpesoliquido` varchar(50) NOT NULL,
  `idusuario` int(200) NOT NULL,
  `produtosValorTotal` varchar(100) NOT NULL,
  `freteValor` varchar(100) NOT NULL,
  `outrasDespesasValor` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `ie` varchar(20) NOT NULL,
  `logradouro` varchar(200) NOT NULL,
  `nro` varchar(20) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `municipio` varchar(200) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ordemfinanceiro`
--

DROP TABLE IF EXISTS `tbl_ordemfinanceiro`;
CREATE TABLE IF NOT EXISTS `tbl_ordemfinanceiro` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idordem` int(200) NOT NULL,
  `parcela` varchar(50) NOT NULL,
  `valor` varchar(100) NOT NULL,
  `datavencimento` varchar(12) NOT NULL,
  `tiporecebimento` varchar(150) NOT NULL,
  `observacao` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ordempeca`
--

DROP TABLE IF EXISTS `tbl_ordempeca`;
CREATE TABLE IF NOT EXISTS `tbl_ordempeca` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idpeca` int(200) NOT NULL,
  `idordem` int(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `qtd` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `valortotal` varchar(200) NOT NULL,
  `referencia` varchar(200) NOT NULL,
  `un` varchar(5) NOT NULL,
  `idlocal` int(200) NOT NULL,
  `freferencia` varchar(200) NOT NULL,
  `fdescricao` varchar(200) NOT NULL,
  `fqtd` varchar(200) NOT NULL,
  `fvalor` varchar(200) NOT NULL,
  `ftotal` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_os`
--

DROP TABLE IF EXISTS `tbl_os`;
CREATE TABLE IF NOT EXISTS `tbl_os` (
  `orcamento` int(200) NOT NULL AUTO_INCREMENT,
  `codpersonalizado` varchar(200) NOT NULL,
  `dtemissao` varchar(10) DEFAULT NULL,
  `horaemissao` varchar(11) DEFAULT NULL,
  `codcliente` varchar(10) DEFAULT NULL,
  `codveic` varchar(7) DEFAULT NULL,
  `kmentrada` int DEFAULT NULL,
  `kmsaida` varchar(7) DEFAULT NULL,
  `totalpecas` varchar(10) DEFAULT NULL,
  `totalservicos` varchar(13) DEFAULT NULL,
  `desconto` varchar(100) NOT NULL,
  `totalgeral` varchar(10) DEFAULT NULL,
  `codmecanico` varchar(200) NOT NULL,
  `mecanico` varchar(21) DEFAULT NULL,
  `observ` int DEFAULT NULL,
  `datasaida` varchar(15) DEFAULT NULL,
  `horasaida` varchar(200) NOT NULL,
  `orcos` varchar(56) DEFAULT NULL,
  `tipoos` varchar(16) DEFAULT NULL,
  `numnotafiscal` varchar(13) DEFAULT NULL,
  `numnotafiscalservico` varchar(20) DEFAULT NULL,
  `numnfce` varchar(40) NOT NULL,
  `placa` varchar(200) DEFAULT NULL,
  `statusos` varchar(200) DEFAULT NULL,
  `statusgeral` varchar(200) NOT NULL,
  `album_name` varchar(200) NOT NULL,
  `alteradata` varchar(20) NOT NULL,
  `dataoriginal` varchar(10) NOT NULL,
  `filial` int(200) NOT NULL,
  `prisma` varchar(200) NOT NULL,
  `vendedor` varchar(30) NOT NULL,
  `atendente` varchar(30) NOT NULL,
  `separador` varchar(30) NOT NULL,
  `conferente` varchar(30) NOT NULL,
  `televendas` varchar(30) NOT NULL,
  `gerente` varchar(30) NOT NULL,
  `transportadora` varchar(200) NOT NULL,
  `freteporconta` varchar(2) NOT NULL,
  `ufx` varchar(5) NOT NULL,
  `transcnpj` varchar(20) NOT NULL,
  `transendereco` varchar(100) NOT NULL,
  `transcidade` varchar(50) NOT NULL,
  `transuf` varchar(5) NOT NULL,
  `transie` varchar(50) NOT NULL,
  `quantidade` varchar(50) NOT NULL,
  `especie` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `pesobruto` varchar(50) NOT NULL,
  `pesoliquido` varchar(50) NOT NULL,
  `dataentrega` varchar(50) NOT NULL,
  `horaentrega` varchar(50) NOT NULL,
  `rodape` varchar(200) NOT NULL,
  `flagComissao` varchar(2) NOT NULL,
  `verificado` varchar(20) NOT NULL,
  `idusuarioverificado` int(200) NOT NULL,
  `nomeusuarioverificado` varchar(200) NOT NULL,
  `dataverificado` varchar(20) NOT NULL,
  `horaverificado` varchar(20) NOT NULL,
  `textofrete` varchar(1000) NOT NULL,
  `valorfrete` varchar(40) NOT NULL,
  `formapagto` varchar(40) NOT NULL,
  `localentrega` varchar(30) NOT NULL,
  `modalidadeentrega` varchar(40) NOT NULL,
  `codigorastreio` varchar(200) NOT NULL,
  `idloja` varchar(50) NOT NULL,
  `campopers` varchar(200) NOT NULL,
  `vendasite` varchar(1) NOT NULL,
  PRIMARY KEY (`orcamento`),
  KEY `idx_1` (`orcos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ospc`
--

DROP TABLE IF EXISTS `tbl_ospc`;
CREATE TABLE IF NOT EXISTS `tbl_ospc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `codigopersonalizado` varchar(200) NOT NULL,
  `orc` varchar(10) DEFAULT NULL,
  `peca` varchar(10) DEFAULT NULL,
  `cfop` varchar(200) NOT NULL,
  `fabricante` int(200) NOT NULL,
  `codigodebarras` varchar(200) NOT NULL,
  `quant` varchar(5) DEFAULT NULL,
  `descri` varchar(79) DEFAULT NULL,
  `refpeca` varchar(70) DEFAULT NULL,
  `valorunit` varchar(16) DEFAULT NULL,
  `valordesc` varchar(200) NOT NULL,
  `percdesc` varchar(10) NOT NULL,
  `valortotal` varchar(10) DEFAULT NULL,
  `valorcusto` varchar(10) DEFAULT NULL,
  `orctemp` varchar(7) DEFAULT NULL,
  `ncm` varchar(200) NOT NULL,
  `idlocal` int(200) NOT NULL,
  `codresp` int(200) NOT NULL,
  `baixaestoque` varchar(1) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`orc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ospg`
--

DROP TABLE IF EXISTS `tbl_ospg`;
CREATE TABLE IF NOT EXISTS `tbl_ospg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orcamento` varchar(9) DEFAULT NULL,
  `numParcela` varchar(10) DEFAULT NULL,
  `Entrada` varchar(7) DEFAULT NULL,
  `DtVencto` varchar(10) DEFAULT NULL,
  `TipoRecebimento` varchar(200) DEFAULT NULL,
  `NumDoc` varchar(20) DEFAULT NULL,
  `Banco` varchar(5) DEFAULT NULL,
  `Agencia` varchar(8) DEFAULT NULL,
  `Conta` varchar(21) DEFAULT NULL,
  `cat` int(20) NOT NULL,
  `CodConta` varchar(8) DEFAULT NULL,
  `observacao` varchar(200) NOT NULL,
  `geraboleto` varchar(20) NOT NULL,
  `nsu` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`orcamento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_osprob`
--

DROP TABLE IF EXISTS `tbl_osprob`;
CREATE TABLE IF NOT EXISTS `tbl_osprob` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `orcamento` varchar(9) DEFAULT NULL,
  `problema` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`orcamento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_osserv`
--

DROP TABLE IF EXISTS `tbl_osserv`;
CREATE TABLE IF NOT EXISTS `tbl_osserv` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `CodPersonalizado` varchar(200) NOT NULL,
  `orcamento` varchar(9) DEFAULT NULL,
  `servico` varchar(7) DEFAULT NULL,
  `quantidade` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `valorunit` varchar(9) DEFAULT NULL,
  `valortotal` varchar(10) DEFAULT NULL,
  `valorcusto` varchar(10) DEFAULT NULL,
  `codfornecedor` varchar(13) DEFAULT NULL,
  `codresp` int(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`orcamento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_ostiporecebimento`
--

DROP TABLE IF EXISTS `tbl_ostiporecebimento`;
CREATE TABLE IF NOT EXISTS `tbl_ostiporecebimento` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(200) DEFAULT NULL,
  `alteraracrescimoatendente` char(1) DEFAULT NULL,
  `alteraracrescimovendedor` char(1) DEFAULT NULL,
  `alteraracrescimocoordenador` char(1) DEFAULT NULL,
  `alteraracrescimogerente` char(1) DEFAULT NULL,
  `alterarvencimentoatendente` char(1) DEFAULT NULL,
  `alterarvencimentovendedor` char(1) DEFAULT NULL,
  `alterarvencimentocoordenador` char(1) DEFAULT NULL,
  `alterarvencimentogerente` char(1) DEFAULT NULL,
  `descontomin` double(10,2) DEFAULT NULL,
  `descontomax` double(10,2) DEFAULT NULL,
  `acrescimomin` double(10,2) DEFAULT NULL,
  `acrescimomax` double(10,2) DEFAULT NULL,
  `taxavalor` double(10,2) DEFAULT NULL,
  `taxaporc` double(10,2) DEFAULT NULL,
  `lancamentotipoid` int(16) DEFAULT NULL,
  `gerarboletofinid` int(16) DEFAULT NULL,
  `parcelaentradaperc` double(10,2) DEFAULT NULL,
  `parcelaentradadias` int(10) DEFAULT NULL,
  `numeroparcelas` int(10) DEFAULT NULL,
  `parceladiferencadias` int(10) DEFAULT NULL,
  `alterardescontoatendente` char(1) DEFAULT NULL,
  `alterardescontovendedor` char(1) DEFAULT NULL,
  `alterardescontocoordenador` char(1) DEFAULT NULL,
  `alterardescontogerente` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_pagamento`
--

DROP TABLE IF EXISTS `tbl_pagamento`;
CREATE TABLE IF NOT EXISTS `tbl_pagamento` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `TipoPagto` varchar(21) DEFAULT NULL,
  `TipoEntrada` varchar(1) DEFAULT NULL,
  `TipoSaida` varchar(1) DEFAULT NULL,
  `Ordem` int(1) DEFAULT NULL,
  `Fluxo` varchar(1) DEFAULT NULL,
  `GrupoPagto` varchar(19) DEFAULT NULL,
  `ContaTB` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_paginasacessadas`
--

DROP TABLE IF EXISTS `tbl_paginasacessadas`;
CREATE TABLE IF NOT EXISTS `tbl_paginasacessadas` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idusuario` int(200) NOT NULL,
  `pagina` varchar(200) NOT NULL,
  `compl` varchar(200) NOT NULL,
  `registro` varchar(200) NOT NULL,
  `data` varchar(15) NOT NULL,
  `hora` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`compl`,`data`,`idusuario`,`pagina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_parcelas_ordem`
--

DROP TABLE IF EXISTS `tbl_parcelas_ordem`;
CREATE TABLE IF NOT EXISTS `tbl_parcelas_ordem` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idordem` int(200) NOT NULL,
  `parcela` varchar(200) NOT NULL,
  `vencimento` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_parcelas_referencia`
--

DROP TABLE IF EXISTS `tbl_parcelas_referencia`;
CREATE TABLE IF NOT EXISTS `tbl_parcelas_referencia` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idtiporecebimento` int(200) NOT NULL,
  `qtdtotalparcelas` int(100) NOT NULL,
  `qtdatualparcelas` int(100) NOT NULL,
  `qtddias` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_peca`
--

DROP TABLE IF EXISTS `tbl_peca`;
CREATE TABLE IF NOT EXISTS `tbl_peca` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `datacadastro` datetime NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `imagem2` varchar(100) NOT NULL,
  `imagem3` int(100) NOT NULL,
  `fabricante` varchar(10) DEFAULT NULL,
  `codigodebarras` varchar(14) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `fornecedor` varchar(10) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  `codigooriginal` varchar(20) DEFAULT NULL,
  `grupo` varchar(5) DEFAULT NULL,
  `subgrupo` int(200) NOT NULL,
  `descricao` varchar(99) DEFAULT NULL,
  `cfncm` int(21) DEFAULT NULL,
  `st` varchar(4) DEFAULT NULL,
  `localizacao` varchar(100) DEFAULT NULL,
  `unidade` varchar(7) DEFAULT NULL,
  `estoqueminimo` varchar(13) DEFAULT NULL,
  `avisar` varchar(6) DEFAULT NULL,
  `precodecusto` varchar(12) DEFAULT NULL,
  `precodevenda` varchar(12) DEFAULT NULL,
  `qtdestoque` varchar(10) DEFAULT NULL,
  `descricaooriginal` varchar(500) NOT NULL,
  `codigopersonalizado` varchar(200) NOT NULL,
  `aplicacao` varchar(200) DEFAULT NULL,
  `marca` varchar(200) DEFAULT NULL,
  `icms` varchar(200) NOT NULL,
  `pesoliquido` varchar(200) NOT NULL,
  `margem` varchar(200) NOT NULL,
  `ipi` varchar(200) NOT NULL,
  `pesobruto` varchar(200) NOT NULL,
  `icms1` varchar(100) NOT NULL,
  `icms2` varchar(100) NOT NULL,
  `cstbicms` varchar(100) NOT NULL,
  `icms3` varchar(100) NOT NULL,
  `icms4` int(100) NOT NULL,
  `icms5` varchar(100) NOT NULL,
  `icms6` varchar(100) NOT NULL,
  `icms7` int(100) NOT NULL,
  `icms8` varchar(100) NOT NULL,
  `icms9` varchar(100) NOT NULL,
  `icms10` varchar(100) NOT NULL,
  `icms11` varchar(100) NOT NULL,
  `icms12` varchar(100) NOT NULL,
  `icms13` varchar(100) NOT NULL,
  `icms14` varchar(100) NOT NULL,
  `icms15` varchar(100) NOT NULL,
  `cstpis` int(100) NOT NULL,
  `pis1` varchar(100) NOT NULL,
  `pis2` varchar(100) NOT NULL,
  `pis3` varchar(100) NOT NULL,
  `cofins1` varchar(100) NOT NULL,
  `cofins2` varchar(100) NOT NULL,
  `cofins3` varchar(100) NOT NULL,
  `cstipi` int(100) NOT NULL,
  `ipi1` varchar(100) NOT NULL,
  `ipi2` varchar(100) NOT NULL,
  `ipi3` varchar(100) NOT NULL,
  `ii1` varchar(100) NOT NULL,
  `ii2` varchar(100) NOT NULL,
  `ii3` varchar(100) NOT NULL,
  `ii4` varchar(100) NOT NULL,
  `ii5` varchar(100) NOT NULL,
  `csosn` varchar(20) NOT NULL,
  `finalidade` varchar(100) NOT NULL,
  `altura` varchar(200) NOT NULL,
  `csta` varchar(100) NOT NULL,
  `cstcofins` varchar(20) NOT NULL,
  `largura` varchar(20) NOT NULL,
  `comprimento` varchar(200) NOT NULL,
  `dataultimaatualizacao` datetime NOT NULL,
  `cfop` varchar(20) NOT NULL,
  `precodepromocao` varchar(20) NOT NULL,
  `datainiciopromocao` varchar(10) NOT NULL,
  `datafinalpromocao` varchar(10) NOT NULL,
  `R1SITE` int(5) NOT NULL,
  `precosite` varchar(30) NOT NULL,
  `precofinal` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_2` (`qtdestoque`),
  KEY `idx_3` (`codigooriginal`,`descricao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_pecaligafabricante`
--

DROP TABLE IF EXISTS `tbl_pecaligafabricante`;
CREATE TABLE IF NOT EXISTS `tbl_pecaligafabricante` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idpeca` int(200) NOT NULL,
  `idfabricante` int(200) NOT NULL,
  `referencia` varchar(200) NOT NULL,
  `codigodebarras` varchar(200) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `precodecusto` varchar(200) NOT NULL,
  `precodevenda` varchar(200) NOT NULL,
  `estoque` varchar(200) NOT NULL,
  `estoqueminimo` varchar(200) NOT NULL,
  `avisar` varchar(5) NOT NULL,
  `stcsosn` varchar(200) NOT NULL,
  `cfncm` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_pecaligafornecedor`
--

DROP TABLE IF EXISTS `tbl_pecaligafornecedor`;
CREATE TABLE IF NOT EXISTS `tbl_pecaligafornecedor` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idpeca` varchar(200) NOT NULL,
  `idfornecedor` varchar(200) NOT NULL,
  `valorfornecedor` varchar(200) NOT NULL,
  `datafornecedor` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_pecaligalocalizacao`
--

DROP TABLE IF EXISTS `tbl_pecaligalocalizacao`;
CREATE TABLE IF NOT EXISTS `tbl_pecaligalocalizacao` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idproduto` varchar(200) NOT NULL,
  `idlocal` int(200) NOT NULL,
  `localizacao` varchar(200) NOT NULL,
  `avisarestoque` varchar(200) NOT NULL,
  `estoqueminimo` varchar(200) NOT NULL,
  `estoque` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_recibos`
--

DROP TABLE IF EXISTS `tbl_recibos`;
CREATE TABLE IF NOT EXISTS `tbl_recibos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomecliente` varchar(200) NOT NULL,
  `calendario` varchar(10) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `referente` varchar(200) NOT NULL,
  `idusuario` varchar(200) NOT NULL,
  `data` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_registro_transf_produto`
--

DROP TABLE IF EXISTS `tbl_registro_transf_produto`;
CREATE TABLE IF NOT EXISTS `tbl_registro_transf_produto` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idlocalorigem` int(200) NOT NULL,
  `idlocaldestino` int(200) NOT NULL,
  `nomelocalorigem` varchar(100) NOT NULL,
  `nomelocaldestino` varchar(100) NOT NULL,
  `idproduto` int(200) NOT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(8) NOT NULL,
  `idusuario` int(200) NOT NULL,
  `nomeusuario` varchar(100) NOT NULL,
  `quantidade` varchar(20) NOT NULL,
  `motivo` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_revisao`
--

DROP TABLE IF EXISTS `tbl_revisao`;
CREATE TABLE IF NOT EXISTS `tbl_revisao` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_revisao_itens`
--

DROP TABLE IF EXISTS `tbl_revisao_itens`;
CREATE TABLE IF NOT EXISTS `tbl_revisao_itens` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idrevisao` int(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_servicos`
--

DROP TABLE IF EXISTS `tbl_servicos`;
CREATE TABLE IF NOT EXISTS `tbl_servicos` (
  `CodServico` int(10) NOT NULL AUTO_INCREMENT,
  `CodPersonalizado` varchar(200) NOT NULL,
  `DescServico` varchar(69) DEFAULT NULL,
  `DiasRetorno` varchar(11) DEFAULT NULL,
  `AddOS` varchar(5) DEFAULT NULL,
  `Terceiros` varchar(10) DEFAULT NULL,
  `ValorServico` varchar(12) DEFAULT NULL,
  `CustoServico` varchar(12) DEFAULT NULL,
  `addagenda` varchar(9) DEFAULT NULL,
  `tempo` varchar(10) NOT NULL,
  PRIMARY KEY (`CodServico`),
  KEY `idx_1` (`AddOS`,`CodServico`,`DescServico`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_servico_controletempo`
--

DROP TABLE IF EXISTS `tbl_servico_controletempo`;
CREATE TABLE IF NOT EXISTS `tbl_servico_controletempo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idmecanico` int(200) NOT NULL,
  `idservico` int(200) NOT NULL,
  `idos` int(200) NOT NULL,
  `descricaoservico` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `data` varchar(10) NOT NULL,
  `hora` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_smscredito`
--

DROP TABLE IF EXISTS `tbl_smscredito`;
CREATE TABLE IF NOT EXISTS `tbl_smscredito` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `valor` varchar(200) NOT NULL,
  `acao` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `idsms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_smsextrato`
--

DROP TABLE IF EXISTS `tbl_smsextrato`;
CREATE TABLE IF NOT EXISTS `tbl_smsextrato` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `mensagem` varchar(200) NOT NULL,
  `idusuario` varchar(200) NOT NULL,
  `nomeusuario` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL,
  `hora` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `codstatus` int(20) NOT NULL,
  `celular` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_smssaldo`
--

DROP TABLE IF EXISTS `tbl_smssaldo`;
CREATE TABLE IF NOT EXISTS `tbl_smssaldo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `saldo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_spcalerta`
--

DROP TABLE IF EXISTS `tbl_spcalerta`;
CREATE TABLE IF NOT EXISTS `tbl_spcalerta` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idconsulta` int(200) NOT NULL,
  `mensagem` varchar(200) NOT NULL,
  `ddd1` varchar(200) NOT NULL,
  `fone1` varchar(200) NOT NULL,
  `ddd2` varchar(200) NOT NULL,
  `fone2` varchar(200) NOT NULL,
  `ddd3` varchar(200) NOT NULL,
  `fone3` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_spcbacen`
--

DROP TABLE IF EXISTS `tbl_spcbacen`;
CREATE TABLE IF NOT EXISTS `tbl_spcbacen` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idconsulta` int(200) NOT NULL,
  `totalcheques` varchar(200) NOT NULL,
  `dataocorrenciaantiga` varchar(200) NOT NULL,
  `dataocorrenciarecente` varchar(200) NOT NULL,
  `codigocompensacao` varchar(200) NOT NULL,
  `agencia` varchar(200) NOT NULL,
  `banco` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_spcconsulta`
--

DROP TABLE IF EXISTS `tbl_spcconsulta`;
CREATE TABLE IF NOT EXISTS `tbl_spcconsulta` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `usuario` int(200) NOT NULL,
  `data` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `documento` varchar(200) NOT NULL,
  `nomemae` varchar(200) NOT NULL,
  `datafundacao` varchar(20) NOT NULL,
  `situacaodocumento` varchar(200) NOT NULL,
  `totaldeocorrencias` varchar(200) NOT NULL,
  `mensagem` varchar(200) NOT NULL,
  `alertadocumentos` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_spcpendencias`
--

DROP TABLE IF EXISTS `tbl_spcpendencias`;
CREATE TABLE IF NOT EXISTS `tbl_spcpendencias` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idconsulta` int(200) NOT NULL,
  `dataocorrencia` varchar(200) NOT NULL,
  `modalidade` varchar(200) NOT NULL,
  `avalista` varchar(200) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `contrato` varchar(200) NOT NULL,
  `sigla` varchar(200) NOT NULL,
  `origem` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_spcsaldo`
--

DROP TABLE IF EXISTS `tbl_spcsaldo`;
CREATE TABLE IF NOT EXISTS `tbl_spcsaldo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `saldo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_spcvarejo`
--

DROP TABLE IF EXISTS `tbl_spcvarejo`;
CREATE TABLE IF NOT EXISTS `tbl_spcvarejo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idconsulta` int(200) NOT NULL,
  `codigobanco` varchar(200) NOT NULL,
  `agencia` varchar(200) NOT NULL,
  `origem` varchar(200) NOT NULL,
  `sigla` varchar(200) NOT NULL,
  `numerofilial` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_subgrupopeca`
--

DROP TABLE IF EXISTS `tbl_subgrupopeca`;
CREATE TABLE IF NOT EXISTS `tbl_subgrupopeca` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(200) DEFAULT NULL,
  `idgrupo` int(200) NOT NULL,
  `exemplos` longtext NOT NULL,
  `vinculasite` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_1` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_tempologado`
--

DROP TABLE IF EXISTS `tbl_tempologado`;
CREATE TABLE IF NOT EXISTS `tbl_tempologado` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `idusuario` varchar(200) NOT NULL,
  `tempo` varchar(200) NOT NULL,
  `segundos` varchar(800) NOT NULL,
  `data` varchar(20) NOT NULL,
  `flag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_tipocadastro`
--

DROP TABLE IF EXISTS `tbl_tipocadastro`;
CREATE TABLE IF NOT EXISTS `tbl_tipocadastro` (
  `codigo` int(200) NOT NULL AUTO_INCREMENT,
  `cadastro` varchar(200) CHARACTER SET latin1 NOT NULL,
  `obs` varchar(200) CHARACTER SET latin1 NOT NULL,
  `exclusivo` varchar(20) NOT NULL,
  `idexclusivo` varchar(200) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_tipoos`
--

DROP TABLE IF EXISTS `tbl_tipoos`;
CREATE TABLE IF NOT EXISTS `tbl_tipoos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `datacadastro` varchar(20) NOT NULL,
  `usuariocadastro` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_tipostatusos`
--

DROP TABLE IF EXISTS `tbl_tipostatusos`;
CREATE TABLE IF NOT EXISTS `tbl_tipostatusos` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `cor` varchar(200) NOT NULL,
  `codigocor` varchar(200) NOT NULL,
  `acao` varchar(200) NOT NULL,
  `pertence` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_transportadoras`
--

DROP TABLE IF EXISTS `tbl_transportadoras`;
CREATE TABLE IF NOT EXISTS `tbl_transportadoras` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `razaosocial` varchar(300) NOT NULL,
  `nomefantasia` varchar(300) NOT NULL,
  `cnpj` varchar(40) NOT NULL,
  `ie` varchar(30) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `complemento` varchar(200) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `telefone` varchar(40) NOT NULL,
  `celular` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  `obs` varchar(300) NOT NULL,
  `datacadastro` varchar(30) NOT NULL,
  `horacadastro` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `usuarios_id` int(200) NOT NULL AUTO_INCREMENT,
  `usuarios_username` varchar(200) NOT NULL,
  `usuarios_password` varchar(200) NOT NULL,
  `usuarios_nome` varchar(200) NOT NULL,
  `usuarios_tipo` varchar(200) NOT NULL,
  `usuarios_email` varchar(200) NOT NULL,
  `usuarios_data` varchar(200) NOT NULL,
  `ultimologin` varchar(200) NOT NULL,
  `sistema` int(5) NOT NULL,
  `online` varchar(20) NOT NULL,
  `registro` varchar(200) NOT NULL,
  `registro5` varchar(100) NOT NULL,
  `qtdacesso` varchar(200) NOT NULL,
  `horarioinicio` varchar(200) NOT NULL,
  `horariofinal` varchar(200) NOT NULL,
  `segunda` varchar(200) NOT NULL,
  `terca` varchar(200) NOT NULL,
  `quarta` varchar(200) NOT NULL,
  `quinta` varchar(200) NOT NULL,
  `sexta` varchar(200) NOT NULL,
  `sabado` varchar(200) NOT NULL,
  `domingo` varchar(200) NOT NULL,
  `agendamento` varchar(200) NOT NULL,
  `agenda1` varchar(200) NOT NULL,
  `agenda2` varchar(200) NOT NULL,
  `agenda3` varchar(200) NOT NULL,
  `agenda4` varchar(200) NOT NULL,
  `cadastro` varchar(200) NOT NULL,
  `cadastro1` varchar(200) NOT NULL,
  `cadastro2` varchar(200) NOT NULL,
  `cadastro3` varchar(200) NOT NULL,
  `cadastro4` varchar(200) NOT NULL,
  `cadastro5` varchar(200) NOT NULL,
  `cadastro6` varchar(10) NOT NULL,
  `cadastro7` varchar(10) NOT NULL,
  `estoque` varchar(200) NOT NULL,
  `estoque1` varchar(200) NOT NULL,
  `estoque2` varchar(200) NOT NULL,
  `estoque3` varchar(200) NOT NULL,
  `estoque4` varchar(200) NOT NULL,
  `estoque5` varchar(10) NOT NULL,
  `financeiro` varchar(200) NOT NULL,
  `financeiro1` varchar(200) NOT NULL,
  `financeiro2` varchar(200) NOT NULL,
  `financeiro3` varchar(200) NOT NULL,
  `financeiro4` varchar(10) NOT NULL,
  `financeiro5` varchar(5) NOT NULL,
  `financeiro6` varchar(5) NOT NULL,
  `notafiscal` varchar(200) NOT NULL,
  `notafiscal1` varchar(10) NOT NULL,
  `notafiscal2` varchar(10) NOT NULL,
  `notafiscal3` varchar(10) NOT NULL,
  `notafiscal4` varchar(10) NOT NULL,
  `orcamento` varchar(200) NOT NULL,
  `orcamento1` varchar(200) NOT NULL,
  `orcamento2` varchar(200) NOT NULL,
  `orcamento3` varchar(10) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `apelido` varchar(200) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `datadenascimento` varchar(10) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `rua` varchar(200) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `complemento` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `email1` varchar(200) NOT NULL,
  `email2` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `operadoratelefone` varchar(200) NOT NULL,
  `celular1` varchar(50) NOT NULL,
  `operadoracelular1` varchar(200) NOT NULL,
  `celular2` varchar(50) NOT NULL,
  `operadoracelular2` varchar(200) NOT NULL,
  `celular3` varchar(50) NOT NULL,
  `operadoracelular3` varchar(200) NOT NULL,
  `obs` longtext NOT NULL,
  `status` varchar(30) NOT NULL,
  `funcao` varchar(50) NOT NULL,
  `nctps` varchar(200) NOT NULL,
  `seriectps` varchar(200) NOT NULL,
  `datadeadmissao` varchar(10) NOT NULL,
  `datadedesligamento` varchar(10) NOT NULL,
  `salario` varchar(30) NOT NULL,
  `datadepagamento` varchar(30) NOT NULL,
  `mecanico` varchar(10) NOT NULL,
  `bloqueio` varchar(5) NOT NULL,
  `batepapo` varchar(5) NOT NULL,
  `lembrete` varchar(5) NOT NULL,
  `enviarsms` varchar(5) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `vendedor` varchar(2) NOT NULL,
  `atendente` varchar(2) NOT NULL,
  `separador` varchar(2) NOT NULL,
  `conferente` varchar(2) NOT NULL,
  `televendas` varchar(2) NOT NULL,
  `gerente` varchar(2) NOT NULL,
  `margemdesconto` varchar(5) NOT NULL,
  PRIMARY KEY (`usuarios_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_veiculos`
--

DROP TABLE IF EXISTS `tbl_veiculos`;
CREATE TABLE IF NOT EXISTS `tbl_veiculos` (
  `Codigo` int(6) NOT NULL AUTO_INCREMENT,
  `frota` varchar(200) NOT NULL,
  `Placa` varchar(10) DEFAULT NULL,
  `prefixo` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `Marca` varchar(13) DEFAULT NULL,
  `Veiculo` varchar(45) DEFAULT NULL,
  `Ano` varchar(4) DEFAULT NULL,
  `anomodelo` varchar(20) NOT NULL,
  `Cor` varchar(17) DEFAULT NULL,
  `Combustivel` varchar(11) DEFAULT NULL,
  `Chassi` varchar(210) DEFAULT NULL,
  `CodCliente` varchar(100) DEFAULT NULL,
  `renavam` varchar(200) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_peca`
--
ALTER TABLE `tbl_peca` ADD FULLTEXT KEY `referencia` (`referencia`,`descricao`,`aplicacao`,`marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
