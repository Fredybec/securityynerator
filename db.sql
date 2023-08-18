-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 11 août 2023 à 19:16
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ged`
--

-- --------------------------------------------------------

--
-- Structure de la table `access_share`
--

CREATE TABLE `access_share` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `access_share`
--

INSERT INTO `access_share` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-02 14:51:07', '', NULL, 'write', 'Write', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 14:51:19', '', NULL, 'read', 'Read', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `access_share_seq`
--

CREATE TABLE `access_share_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `access_share_seq`
--

INSERT INTO `access_share_seq` (`next_val`) VALUES
(5),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `client_category` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_category`
--

CREATE TABLE `client_category` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_category_seq`
--

CREATE TABLE `client_category_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client_category_seq`
--

INSERT INTO `client_category_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `client_seq`
--

CREATE TABLE `client_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client_seq`
--

INSERT INTO `client_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `archive` bit(1) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date_last_update` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `folder` bit(1) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `size` decimal(19,2) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `versionne` bit(1) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `document_categorie` bigint(20) DEFAULT NULL,
  `document_state` bigint(20) DEFAULT NULL,
  `document_type` bigint(20) DEFAULT NULL,
  `entite_administrative` bigint(20) DEFAULT NULL,
  `utilisateur` bigint(20) DEFAULT NULL,
  `reference_ged` varchar(255) DEFAULT NULL,
  `annee` bigint(20) DEFAULT NULL,
  `jour` bigint(20) DEFAULT NULL,
  `mois` bigint(20) DEFAULT NULL,
  `semstre` bigint(20) DEFAULT NULL,
  `ocr` bit(1) DEFAULT NULL,
  `document_categorie_model` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `archive`, `content`, `date_last_update`, `description`, `folder`, `reference`, `size`, `upload_date`, `versionne`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `document_categorie`, `document_state`, `document_type`, `entite_administrative`, `utilisateur`, `reference_ged`, `annee`, `jour`, `mois`, `semstre`, `ocr`, `document_categorie_model`) VALUES
(1, 'anonymousUser', '2023-08-01 20:44:46', '', NULL, b'0', 'nonos', NULL, NULL, b'0', 'd1', 0.00, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-01 20:45:34', '', NULL, b'0', 'zouani', NULL, NULL, b'0', 'd2', 0.00, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'anonymousUser', '2023-08-02 14:47:00', '', NULL, b'0', NULL, '2023-08-02 12:46:32', NULL, b'0', 'd4', 300.00, '2023-08-02 12:46:32', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'anonymousUser', '2023-08-02 16:00:45', '', NULL, b'1', NULL, '2023-08-02 13:59:18', NULL, b'1', 'd10', 100.00, '2023-08-02 13:59:18', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'anonymousUser', '2023-08-04 22:31:40', 'anonymousUser', '2023-08-04 23:02:09', b'0', NULL, NULL, NULL, b'0', 'd12', 0.00, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'anonymousUser', '2023-08-05 09:06:59', '', NULL, b'0', '14444', NULL, NULL, b'0', 'd14', 0.00, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'anonymousUser', '2023-08-05 15:07:51', 'anonymousUser', '2023-08-05 18:38:56', b'0', '24444444', '2023-08-22 18:00:00', NULL, b'0', 'd24', 0.00, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'anonymousUser', '2023-08-06 15:58:47', '', NULL, b'1', 'eeeeeee', '2023-08-09 20:00:00', NULL, b'1', 'd33', 0.00, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'anonymousUser', '2023-08-06 12:40:56', '', NULL, b'0', 'cfffff', '2023-08-26 20:00:00', NULL, b'0', 'd27', 0.00, '2023-08-27 20:00:00', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'anonymousUser', '2023-08-07 15:05:35', '', NULL, b'1', 'ggttttttt', NULL, NULL, b'1', 'd4000', 0.00, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'anonymousUser', '2023-08-07 16:07:10', '', NULL, b'0', '77777777', NULL, NULL, b'0', '7777', 0.00, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'anonymousUser', '2023-08-11 14:57:47', '', NULL, b'1', NULL, NULL, NULL, NULL, 'd70', 0.00, NULL, b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie`
--

CREATE TABLE `document_categorie` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie`
--

INSERT INTO `document_categorie` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-02 14:43:25', '', NULL, 'facture', 'Facture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 14:43:51', '', NULL, 'devis', 'Devis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'anonymousUser', '2023-08-02 15:52:42', '', NULL, 'al 7okem al 9ada2i', 'al 7okem al 9ada2i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'anonymousUser', '2023-08-07 13:23:45', '', NULL, 'BC', 'Bo Commande', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_field`
--

CREATE TABLE `document_categorie_field` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `document_categorie` bigint(20) DEFAULT NULL,
  `document_categorie_field_rule` bigint(20) DEFAULT NULL,
  `field` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_field`
--

INSERT INTO `document_categorie_field` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `document_categorie`, `document_categorie_field_rule`, `field`) VALUES
(1, 'anonymousUser', '2023-08-02 14:43:25', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(2, 'anonymousUser', '2023-08-02 14:43:25', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2),
(3, 'anonymousUser', '2023-08-02 14:43:51', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 2),
(4, 'anonymousUser', '2023-08-02 15:52:42', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 3),
(5, 'anonymousUser', '2023-08-02 15:52:42', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 4),
(6, 'anonymousUser', '2023-08-07 13:23:45', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 1),
(7, 'anonymousUser', '2023-08-07 13:23:45', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_field_rule`
--

CREATE TABLE `document_categorie_field_rule` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `expresion` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_field_rule`
--

INSERT INTO `document_categorie_field_rule` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `expresion`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`) VALUES
(1, 'anonymousUser', '2023-08-02 14:40:41', '', NULL, 'nn', '! = null', 'Not Null', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 14:41:25', '', NULL, 'not-empty', '.isEmpty() == false', 'Not Empty', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_field_rule_seq`
--

CREATE TABLE `document_categorie_field_rule_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_field_rule_seq`
--

INSERT INTO `document_categorie_field_rule_seq` (`next_val`) VALUES
(3),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_field_seq`
--

CREATE TABLE `document_categorie_field_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_field_seq`
--

INSERT INTO `document_categorie_field_seq` (`next_val`) VALUES
(8),
(8);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_index`
--

CREATE TABLE `document_categorie_index` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `document_categorie` bigint(20) DEFAULT NULL,
  `document_categorie_index_rule` bigint(20) DEFAULT NULL,
  `index_element` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_index_rule`
--

CREATE TABLE `document_categorie_index_rule` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `expresion` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_index_rule_seq`
--

CREATE TABLE `document_categorie_index_rule_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_index_rule_seq`
--

INSERT INTO `document_categorie_index_rule_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_index_seq`
--

CREATE TABLE `document_categorie_index_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_index_seq`
--

INSERT INTO `document_categorie_index_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_model`
--

CREATE TABLE `document_categorie_model` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `document_categorie` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `reference_ged` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_model_seq`
--

CREATE TABLE `document_categorie_model_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_model_seq`
--

INSERT INTO `document_categorie_model_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `document_categorie_seq`
--

CREATE TABLE `document_categorie_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_categorie_seq`
--

INSERT INTO `document_categorie_seq` (`next_val`) VALUES
(5),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `document_field`
--

CREATE TABLE `document_field` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `document` bigint(20) DEFAULT NULL,
  `document_field_state` bigint(20) DEFAULT NULL,
  `field` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_field`
--

INSERT INTO `document_field` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `value`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `document`, `document_field_state`, `field`) VALUES
(1, 'anonymousUser', '2023-08-01 20:44:46', '', NULL, '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(2, 'anonymousUser', '2023-08-01 20:44:46', '', NULL, '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2),
(3, 'anonymousUser', '2023-08-07 16:07:10', '', NULL, '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 1, 1),
(4, 'anonymousUser', '2023-08-07 16:07:10', '', NULL, '777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `document_field_seq`
--

CREATE TABLE `document_field_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_field_seq`
--

INSERT INTO `document_field_seq` (`next_val`) VALUES
(5),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `document_field_state`
--

CREATE TABLE `document_field_state` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_field_state`
--

INSERT INTO `document_field_state` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `style`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`) VALUES
(1, 'anonymousUser', '2023-08-01 20:42:17', '', NULL, 'valide', 'Valide', 'info', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-01 20:42:52', 'anonymousUser', '2023-08-02 14:37:20', 'rejete', 'Rejete', 'warning', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document_field_state_seq`
--

CREATE TABLE `document_field_state_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_field_state_seq`
--

INSERT INTO `document_field_state_seq` (`next_val`) VALUES
(3),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `document_index_element`
--

CREATE TABLE `document_index_element` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `document` bigint(20) DEFAULT NULL,
  `document_index_element_state` bigint(20) DEFAULT NULL,
  `index_element` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document_index_element_seq`
--

CREATE TABLE `document_index_element_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_index_element_seq`
--

INSERT INTO `document_index_element_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `document_index_element_state`
--

CREATE TABLE `document_index_element_state` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document_index_element_state_seq`
--

CREATE TABLE `document_index_element_state_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_index_element_state_seq`
--

INSERT INTO `document_index_element_state_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `document_partage_groupe`
--

CREATE TABLE `document_partage_groupe` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `date_share` datetime DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `access_share` bigint(20) DEFAULT NULL,
  `document` bigint(20) DEFAULT NULL,
  `groupe` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_partage_groupe`
--

INSERT INTO `document_partage_groupe` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `date_share`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `access_share`, `document`, `groupe`, `description`) VALUES
(5, 'anonymousUser', '2023-08-05 09:06:59', '', NULL, '2023-08-13 20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, 1, NULL),
(6, 'anonymousUser', '2023-08-05 09:06:59', '', NULL, '2023-08-23 20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 11, 3, NULL),
(9, 'anonymousUser', '2023-08-05 14:42:50', '', NULL, '2023-08-14 20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, 2, NULL),
(10, 'anonymousUser', '2023-08-05 14:42:50', '', NULL, '2023-08-24 20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13, 3, NULL),
(13, 'anonymousUser', '2023-08-11 14:57:47', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 21, 1, NULL),
(14, 'anonymousUser', '2023-08-11 14:57:47', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 21, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document_partage_groupe_seq`
--

CREATE TABLE `document_partage_groupe_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_partage_groupe_seq`
--

INSERT INTO `document_partage_groupe_seq` (`next_val`) VALUES
(15),
(15);

-- --------------------------------------------------------

--
-- Structure de la table `document_partage_utilisateur`
--

CREATE TABLE `document_partage_utilisateur` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `date_share` datetime DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `access_share` bigint(20) DEFAULT NULL,
  `document` bigint(20) DEFAULT NULL,
  `utilisateur` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document_partage_utilisateur_seq`
--

CREATE TABLE `document_partage_utilisateur_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_partage_utilisateur_seq`
--

INSERT INTO `document_partage_utilisateur_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `document_seq`
--

CREATE TABLE `document_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_seq`
--

INSERT INTO `document_seq` (`next_val`) VALUES
(22),
(22);

-- --------------------------------------------------------

--
-- Structure de la table `document_state`
--

CREATE TABLE `document_state` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_state`
--

INSERT INTO `document_state` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `style`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-01 20:43:22', 'anonymousUser', '2023-08-02 14:42:03', 'valide', 'Valide', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-01 20:43:43', 'anonymousUser', '2023-08-02 18:36:14', 'rejete', 'Rejete', 'danger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'anonymousUser', '2023-08-06 21:00:12', '', NULL, 'encours', 'En Cours', 'info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'anonymousUser', '2023-08-06 21:50:34', '', NULL, 'eninstance', 'En instance', 'warnning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document_state_seq`
--

CREATE TABLE `document_state_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_state_seq`
--

INSERT INTO `document_state_seq` (`next_val`) VALUES
(5),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `document_tag`
--

CREATE TABLE `document_tag` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `document` bigint(20) DEFAULT NULL,
  `tag` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_tag`
--

INSERT INTO `document_tag` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `document`, `tag`) VALUES
(3, 'anonymousUser', '2023-08-04 23:02:09', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 3);

-- --------------------------------------------------------

--
-- Structure de la table `document_tag_seq`
--

CREATE TABLE `document_tag_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_tag_seq`
--

INSERT INTO `document_tag_seq` (`next_val`) VALUES
(4),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `document_type`
--

CREATE TABLE `document_type` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_type`
--

INSERT INTO `document_type` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-01 20:39:21', '', NULL, 'word', 'Word', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-01 20:39:27', '', NULL, 'excel', 'Excel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document_type_seq`
--

CREATE TABLE `document_type_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document_type_seq`
--

INSERT INTO `document_type_seq` (`next_val`) VALUES
(3),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `entite_administrative`
--

CREATE TABLE `entite_administrative` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `entite_administrative_type` bigint(20) DEFAULT NULL,
  `utilisateur` bigint(20) DEFAULT NULL,
  `code_entite_admin_parent` varchar(255) DEFAULT NULL,
  `reference_ged` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entite_administrative`
--

INSERT INTO `entite_administrative` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `description`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `entite_administrative_type`, `utilisateur`, `code_entite_admin_parent`, `reference_ged`) VALUES
(1, 'anonymousUser', '2023-08-02 15:02:38', '', NULL, 'dep-info', NULL, 'Department Inforrmatique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 15:03:03', '', NULL, 'div-achat', NULL, 'Division Achat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL),
(3, 'anonymousUser', '2023-08-02 15:57:34', '', NULL, 'ser-budget', 'Service Budget', 'Service Budget', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL),
(7, 'anonymousUser', '2023-08-08 16:21:29', '', NULL, 'ph', NULL, 'Ph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 'chimie', 'ph'),
(6, 'anonymousUser', '2023-08-08 16:21:04', '', NULL, 'chimie', NULL, 'Chimie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 'chimie-folder');

-- --------------------------------------------------------

--
-- Structure de la table `entite_administrative_seq`
--

CREATE TABLE `entite_administrative_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entite_administrative_seq`
--

INSERT INTO `entite_administrative_seq` (`next_val`) VALUES
(8),
(8);

-- --------------------------------------------------------

--
-- Structure de la table `entite_administrative_type`
--

CREATE TABLE `entite_administrative_type` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entite_administrative_type`
--

INSERT INTO `entite_administrative_type` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-02 15:00:43', 'anonymousUser', '2023-08-02 15:01:21', 'departement', 'Departement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 15:01:03', '', NULL, 'division', 'Division', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'anonymousUser', '2023-08-02 15:01:12', '', NULL, 'service', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `entite_administrative_type_seq`
--

CREATE TABLE `entite_administrative_type_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entite_administrative_type_seq`
--

INSERT INTO `entite_administrative_type_seq` (`next_val`) VALUES
(4),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement_seq`
--

CREATE TABLE `etablissement_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etablissement_seq`
--

INSERT INTO `etablissement_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `etat_utilisateur`
--

CREATE TABLE `etat_utilisateur` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etat_utilisateur`
--

INSERT INTO `etat_utilisateur` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-02 14:50:37', '', NULL, 'actif', 'Actif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 14:50:51', '', NULL, 'desactive', 'Desactive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etat_utilisateur_seq`
--

CREATE TABLE `etat_utilisateur_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etat_utilisateur_seq`
--

INSERT INTO `etat_utilisateur_seq` (`next_val`) VALUES
(3),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `field`
--

CREATE TABLE `field` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `field`
--

INSERT INTO `field` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`) VALUES
(1, 'anonymousUser', '2023-08-01 20:40:29', '', NULL, 'ttc', 'Montant TTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-01 20:40:42', '', NULL, 'ht', 'Montant HT', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'anonymousUser', '2023-08-02 15:51:26', '', NULL, 'date-jugement', 'Date jugement', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'anonymousUser', '2023-08-02 15:51:45', '', NULL, 'jugement', 'Jugement', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `field_seq`
--

CREATE TABLE `field_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `field_seq`
--

INSERT INTO `field_seq` (`next_val`) VALUES
(5),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `gender`
--

CREATE TABLE `gender` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gender_seq`
--

CREATE TABLE `gender_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gender_seq`
--

INSERT INTO `gender_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `utilisateur` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `utilisateur`) VALUES
(1, 'anonymousUser', '2023-08-02 14:59:17', '', NULL, 'ingenieure', 'Ingenieure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'anonymousUser', '2023-08-02 15:00:09', '', NULL, 'chef-department', 'Chef department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, 'anonymousUser', '2023-08-02 15:56:00', '', NULL, 'juge', 'Juge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_seq`
--

CREATE TABLE `groupe_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groupe_seq`
--

INSERT INTO `groupe_seq` (`next_val`) VALUES
(4),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_utilisateur`
--

CREATE TABLE `groupe_utilisateur` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `date_ajout` datetime DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `etat_utilisateur` bigint(20) DEFAULT NULL,
  `groupe` bigint(20) DEFAULT NULL,
  `role_utilisateur` bigint(20) DEFAULT NULL,
  `utilisateur` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groupe_utilisateur`
--

INSERT INTO `groupe_utilisateur` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `date_ajout`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `etat_utilisateur`, `groupe`, `role_utilisateur`, `utilisateur`) VALUES
(1, 'anonymousUser', '2023-08-02 14:59:17', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 2),
(2, 'anonymousUser', '2023-08-02 14:59:17', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 3),
(3, 'anonymousUser', '2023-08-02 15:00:09', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, 1),
(4, 'anonymousUser', '2023-08-02 15:00:09', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 3),
(5, 'anonymousUser', '2023-08-02 15:56:00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 1, 2),
(6, 'anonymousUser', '2023-08-02 15:56:00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_utilisateur_seq`
--

CREATE TABLE `groupe_utilisateur_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groupe_utilisateur_seq`
--

INSERT INTO `groupe_utilisateur_seq` (`next_val`) VALUES
(7),
(7);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(100),
(100),
(100);

-- --------------------------------------------------------

--
-- Structure de la table `index_element`
--

CREATE TABLE `index_element` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `index_element_seq`
--

CREATE TABLE `index_element_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `index_element_seq`
--

INSERT INTO `index_element_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`id`, `name`) VALUES
(1, 'DocumentPartageGroupe.edit'),
(2, 'DocumentPartageGroupe.list'),
(3, 'DocumentPartageGroupe.view'),
(4, 'DocumentPartageGroupe.add'),
(5, 'DocumentPartageGroupe.delete'),
(6, 'EtatUtilisateur.edit'),
(7, 'EtatUtilisateur.list'),
(8, 'EtatUtilisateur.view'),
(9, 'EtatUtilisateur.add'),
(10, 'EtatUtilisateur.delete'),
(11, 'GroupeUtilisateur.edit'),
(12, 'GroupeUtilisateur.list'),
(13, 'GroupeUtilisateur.view'),
(14, 'GroupeUtilisateur.add'),
(15, 'GroupeUtilisateur.delete'),
(16, 'RoleUtilisateur.edit'),
(17, 'RoleUtilisateur.list'),
(18, 'RoleUtilisateur.view'),
(19, 'RoleUtilisateur.add'),
(20, 'RoleUtilisateur.delete'),
(21, 'Document.edit'),
(22, 'Document.list'),
(23, 'Document.view'),
(24, 'Document.add'),
(25, 'Document.delete'),
(26, 'DocumentField.edit'),
(27, 'DocumentField.list'),
(28, 'DocumentField.view'),
(29, 'DocumentField.add'),
(30, 'DocumentField.delete'),
(31, 'DocumentFieldState.edit'),
(32, 'DocumentFieldState.list'),
(33, 'DocumentFieldState.view'),
(34, 'DocumentFieldState.add'),
(35, 'DocumentFieldState.delete'),
(36, 'EntiteAdministrativeType.edit'),
(37, 'EntiteAdministrativeType.list'),
(38, 'EntiteAdministrativeType.view'),
(39, 'EntiteAdministrativeType.add'),
(40, 'EntiteAdministrativeType.delete'),
(41, 'DocumentPartageUtilisateur.edit'),
(42, 'DocumentPartageUtilisateur.list'),
(43, 'DocumentPartageUtilisateur.view'),
(44, 'DocumentPartageUtilisateur.add'),
(45, 'DocumentPartageUtilisateur.delete'),
(46, 'DocumentCategorie.edit'),
(47, 'DocumentCategorie.list'),
(48, 'DocumentCategorie.view'),
(49, 'DocumentCategorie.add'),
(50, 'DocumentCategorie.delete'),
(51, 'DocumentCategorieFieldRule.edit'),
(52, 'DocumentCategorieFieldRule.list'),
(53, 'DocumentCategorieFieldRule.view'),
(54, 'DocumentCategorieFieldRule.add'),
(55, 'DocumentCategorieFieldRule.delete'),
(56, 'Groupe.edit'),
(57, 'Groupe.list'),
(58, 'Groupe.view'),
(59, 'Groupe.add'),
(60, 'Groupe.delete'),
(61, 'Field.edit'),
(62, 'Field.list'),
(63, 'Field.view'),
(64, 'Field.add'),
(65, 'Field.delete'),
(66, 'Utilisateur.edit'),
(67, 'Utilisateur.list'),
(68, 'Utilisateur.view'),
(69, 'Utilisateur.add'),
(70, 'Utilisateur.delete'),
(71, 'DocumentState.edit'),
(72, 'DocumentState.list'),
(73, 'DocumentState.view'),
(74, 'DocumentState.add'),
(75, 'DocumentState.delete'),
(76, 'AccessShare.edit'),
(77, 'AccessShare.list'),
(78, 'AccessShare.view'),
(79, 'AccessShare.add'),
(80, 'AccessShare.delete'),
(81, 'DocumentCategorieField.edit'),
(82, 'DocumentCategorieField.list'),
(83, 'DocumentCategorieField.view'),
(84, 'DocumentCategorieField.add'),
(85, 'DocumentCategorieField.delete'),
(86, 'DocumentType.edit'),
(87, 'DocumentType.list'),
(88, 'DocumentType.view'),
(89, 'DocumentType.add'),
(90, 'DocumentType.delete'),
(91, 'EntiteAdministrative.edit'),
(92, 'EntiteAdministrative.list'),
(93, 'EntiteAdministrative.view'),
(94, 'EntiteAdministrative.add'),
(95, 'EntiteAdministrative.delete');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `purchase`
--

CREATE TABLE `purchase` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `total` decimal(19,2) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `quantity` decimal(19,2) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product` bigint(20) DEFAULT NULL,
  `purchase` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchase_item_seq`
--

CREATE TABLE `purchase_item_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_item_seq`
--

INSERT INTO `purchase_item_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_seq`
--

CREATE TABLE `purchase_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_seq`
--

INSERT INTO `purchase_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(96, 1),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(96, 6),
(96, 7),
(96, 8),
(96, 9),
(96, 10),
(96, 11),
(96, 12),
(96, 13),
(96, 14),
(96, 15),
(96, 16),
(96, 17),
(96, 18),
(96, 19),
(96, 20),
(96, 21),
(96, 22),
(96, 23),
(96, 24),
(96, 25),
(96, 26),
(96, 27),
(96, 28),
(96, 29),
(96, 30),
(96, 31),
(96, 32),
(96, 33),
(96, 34),
(96, 35),
(96, 36),
(96, 37),
(96, 38),
(96, 39),
(96, 40),
(96, 41),
(96, 42),
(96, 43),
(96, 44),
(96, 45),
(96, 46),
(96, 47),
(96, 48),
(96, 49),
(96, 50),
(96, 51),
(96, 52),
(96, 53),
(96, 54),
(96, 55),
(96, 56),
(96, 57),
(96, 58),
(96, 59),
(96, 60),
(96, 61),
(96, 62),
(96, 63),
(96, 64),
(96, 65),
(96, 66),
(96, 67),
(96, 68),
(96, 69),
(96, 70),
(96, 71),
(96, 72),
(96, 73),
(96, 74),
(96, 75),
(96, 76),
(96, 77),
(96, 78),
(96, 79),
(96, 80),
(96, 81),
(96, 82),
(96, 83),
(96, 84),
(96, 85),
(96, 86),
(96, 87),
(96, 88),
(96, 89),
(96, 90),
(96, 91),
(96, 92),
(96, 93),
(96, 94),
(96, 95),
(98, 1),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(98, 6),
(98, 7),
(98, 8),
(98, 9),
(98, 10),
(98, 11),
(98, 12),
(98, 13),
(98, 14),
(98, 15),
(98, 16),
(98, 17),
(98, 18),
(98, 19),
(98, 20),
(98, 21),
(98, 22),
(98, 23),
(98, 24),
(98, 25),
(98, 26),
(98, 27),
(98, 28),
(98, 29),
(98, 30),
(98, 31),
(98, 32),
(98, 33),
(98, 34),
(98, 35),
(98, 36),
(98, 37),
(98, 38),
(98, 39),
(98, 40),
(98, 41),
(98, 42),
(98, 43),
(98, 44),
(98, 45),
(98, 46),
(98, 47),
(98, 48),
(98, 49),
(98, 50),
(98, 51),
(98, 52),
(98, 53),
(98, 54),
(98, 55),
(98, 56),
(98, 57),
(98, 58),
(98, 59),
(98, 60),
(98, 61),
(98, 62),
(98, 63),
(98, 64),
(98, 65),
(98, 66),
(98, 67),
(98, 68),
(98, 69),
(98, 70),
(98, 71),
(98, 72),
(98, 73),
(98, 74),
(98, 75),
(98, 76),
(98, 77),
(98, 78),
(98, 79),
(98, 80),
(98, 81),
(98, 82),
(98, 83),
(98, 84),
(98, 85),
(98, 86),
(98, 87),
(98, 88),
(98, 89),
(98, 90),
(98, 91),
(98, 92),
(98, 93),
(98, 94),
(98, 95);

-- --------------------------------------------------------

--
-- Structure de la table `role_app`
--

CREATE TABLE `role_app` (
  `id` bigint(20) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role_app`
--

INSERT INTO `role_app` (`id`, `authority`, `created_at`, `updated_at`) VALUES
(96, 'ROLE_ADMIN', NULL, NULL),
(98, 'ROLE_AGENT', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role_utilisateur`
--

CREATE TABLE `role_utilisateur` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role_utilisateur`
--

INSERT INTO `role_utilisateur` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-02 14:53:20', '', NULL, 'admin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 14:53:29', '', NULL, 'membre', 'Membre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role_utilisateur_seq`
--

CREATE TABLE `role_utilisateur_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role_utilisateur_seq`
--

INSERT INTO `role_utilisateur_seq` (`next_val`) VALUES
(3),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `libelle`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `description`) VALUES
(1, 'anonymousUser', '2023-08-02 11:28:33', '', NULL, 't1', 't1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 11:28:40', '', NULL, 't2', 't2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'anonymousUser', '2023-08-02 11:28:47', '', NULL, 't3', 't3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tag_seq`
--

CREATE TABLE `tag_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tag_seq`
--

INSERT INTO `tag_seq` (`next_val`) VALUES
(4),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(97, 96),
(99, 98);

-- --------------------------------------------------------

--
-- Structure de la table `user_app`
--

CREATE TABLE `user_app` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_changed` bit(1) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `etablissement` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_app`
--

INSERT INTO `user_app` (`id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `account_non_expired`, `account_non_locked`, `created_at`, `credentials_non_expired`, `email`, `enabled`, `nom`, `password`, `password_changed`, `prenom`, `updated_at`, `username`, `etablissement`) VALUES
(97, NULL, '2023-08-01 20:34:08', NULL, NULL, b'1', b'1', '2023-08-01 20:34:08', b'1', 'admin', b'1', 'admin', '$2a$10$IKO8Jpu5nr.iu/4oK2Bnu.89mwxc99hEnfh30T73WyEvqAi5/IQFu', b'0', 'admin', NULL, 'admin', NULL),
(99, NULL, '2023-08-01 20:34:08', NULL, NULL, b'1', b'1', '2023-08-01 20:34:08', b'1', 'agent', b'1', 'agent', '$2a$10$QD3dh104N4oSHyh7GXii/.mdfGrtgpC/rEpf8yUndyWdAvUhs9abe', b'0', 'agent', NULL, 'agent', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `gender` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `email`, `nom`, `prenom`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `date_naissance`, `telephone`, `gender`) VALUES
(1, 'anonymousUser', '2023-08-02 14:51:53', '', NULL, 'zouani.younes@gmail.com', 'Zouani', 'Younes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'anonymousUser', '2023-08-02 14:52:16', '', NULL, 't.ahmed@uca.ma', 'Taoufiq', 'Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'anonymousUser', '2023-08-02 14:52:52', '', NULL, 'idrissi@gmail,com', 'Idrissi', 'Idrissi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'anonymousUser', '2023-08-07 16:21:18', '', NULL, 'y.taoufiq@uca.ma', 'Taoufiq', 'Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_seq`
--

CREATE TABLE `utilisateur_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur_seq`
--

INSERT INTO `utilisateur_seq` (`next_val`) VALUES
(5),
(5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `access_share`
--
ALTER TABLE `access_share`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpeqltvtep7t1lgseag6usi02h` (`client_category`);

--
-- Index pour la table `client_category`
--
ALTER TABLE `client_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKen91sbyklybdhvgdpnlr39xrf` (`document_categorie`),
  ADD KEY `FKcfcnmmmlshl9nvhclts4goq41` (`document_categorie_model`),
  ADD KEY `FKb6aryo02mphdjxb258c9lg0eu` (`document_state`),
  ADD KEY `FK2kokkipw9627qe8qc7i4x33j0` (`document_type`),
  ADD KEY `FKfq1xmtat4o9cnyxuofnmclyuf` (`entite_administrative`),
  ADD KEY `FK1lwj04jj6pxqxx12tn2m82g80` (`utilisateur`);

--
-- Index pour la table `document_categorie`
--
ALTER TABLE `document_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_categorie_field`
--
ALTER TABLE `document_categorie_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrp1x6fqs42ih020o6y7vwsn4l` (`document_categorie`),
  ADD KEY `FKs94tov86jfkdvdqwmal4o75jb` (`document_categorie_field_rule`),
  ADD KEY `FK2j7mkjk67qb2vi0uscgpvpcst` (`field`);

--
-- Index pour la table `document_categorie_field_rule`
--
ALTER TABLE `document_categorie_field_rule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_categorie_index`
--
ALTER TABLE `document_categorie_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn9fy1kom2uvtxdvm993drreuy` (`document_categorie`),
  ADD KEY `FKfblqvyl5teviep8d4e5swn9gw` (`document_categorie_index_rule`),
  ADD KEY `FK7ve6vyafrwwijx0q8rbdc5k5o` (`index_element`);

--
-- Index pour la table `document_categorie_index_rule`
--
ALTER TABLE `document_categorie_index_rule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_categorie_model`
--
ALTER TABLE `document_categorie_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK78m5d16nphpm4c9v5g1vg2abs` (`document_categorie`);

--
-- Index pour la table `document_field`
--
ALTER TABLE `document_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgt37ce155dcied3wlfc48dxxc` (`document`),
  ADD KEY `FK15j8h2ouepcs4e62xqpy9y5w9` (`document_field_state`),
  ADD KEY `FKaeltl24m8qrakbs12avbixfhn` (`field`);

--
-- Index pour la table `document_field_state`
--
ALTER TABLE `document_field_state`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_index_element`
--
ALTER TABLE `document_index_element`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6am7bb6eushl0tbh6y3rdhvav` (`document_index_element_state`),
  ADD KEY `FKdva0we59a43ietioyjmy9jfno` (`document`),
  ADD KEY `FK8pllkjupwqfpcary8fmijtcef` (`index_element`);

--
-- Index pour la table `document_index_element_state`
--
ALTER TABLE `document_index_element_state`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_partage_groupe`
--
ALTER TABLE `document_partage_groupe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcoir8ul014oeskj12b416t272` (`access_share`),
  ADD KEY `FK3ohjjieisndi4cq742aeu6e2` (`document`),
  ADD KEY `FKm316ppyawykghotwgtmfc7crp` (`groupe`);

--
-- Index pour la table `document_partage_utilisateur`
--
ALTER TABLE `document_partage_utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnu0wpg04nsj10x5ncp9getluw` (`access_share`),
  ADD KEY `FK95mn6rlm038whbdw971rtqnl8` (`document`),
  ADD KEY `FKbdo49bg0gj71m3yn02bh7vkwd` (`utilisateur`);

--
-- Index pour la table `document_state`
--
ALTER TABLE `document_state`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_tag`
--
ALTER TABLE `document_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9mj03r1iafai7idm108udicum` (`document`),
  ADD KEY `FKb9j3gsnv79xx4fthjh16mbew1` (`tag`);

--
-- Index pour la table `document_type`
--
ALTER TABLE `document_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entite_administrative`
--
ALTER TABLE `entite_administrative`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7eeck7at0hx7mo9rcr8xk068e` (`entite_administrative_type`),
  ADD KEY `FK5sw4kyxfsy8ycbu14ebinjgf` (`utilisateur`);

--
-- Index pour la table `entite_administrative_type`
--
ALTER TABLE `entite_administrative_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etat_utilisateur`
--
ALTER TABLE `etat_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpo0t0gbytq9uk7rpr4jo15be5` (`utilisateur`);

--
-- Index pour la table `groupe_utilisateur`
--
ALTER TABLE `groupe_utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8r9yfmhipmib92hllsh06vblf` (`etat_utilisateur`),
  ADD KEY `FKiy2le8hl3xcec086nvn0ot4g6` (`groupe`),
  ADD KEY `FKhsrf4xth1khrkrrhtigf9pvok` (`role_utilisateur`),
  ADD KEY `FK71pukqb2w18m0ta1wv6keiny` (`utilisateur`);

--
-- Index pour la table `index_element`
--
ALTER TABLE `index_element`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK13bv6vj8l78jhf7k89731hexo` (`client`);

--
-- Index pour la table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrer69opxrjm7xrqtvd3b74dfx` (`product`),
  ADD KEY `FKncx4l5271gx8pnwpmp31kkhom` (`purchase`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD KEY `FKboeuhl31go7wer3bpy6so7exi` (`permission_id`),
  ADD KEY `FK3q3rt3at2wf4ooe7npa3et6yb` (`role_id`);

--
-- Index pour la table `role_app`
--
ALTER TABLE `role_app`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_utilisateur`
--
ALTER TABLE `role_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FK4e8pdqeupv69eukb2bvy2ftbd` (`role_id`),
  ADD KEY `FK50gpsre6oxwwqf394f8wov1yf` (`user_id`);

--
-- Index pour la table `user_app`
--
ALTER TABLE `user_app`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2xblr2jfuwcj4ktkjxbf8ir13` (`etablissement`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs2uewo3ub1uad661t1g016b9b` (`gender`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
