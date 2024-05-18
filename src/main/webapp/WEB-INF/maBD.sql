-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 mai 2024 à 14:49
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `javashop2`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `titre`) VALUES
(1, 'Ordinateur'),
(2, 'Téléphone portable'),
(3, 'SMART TV');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `inscription_id` int(11) NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `nom`, `email`, `password`) VALUES
(1, 'zack', 'zack@gmail.com', '123'),
(6, 'test', 'test@gmail.com', '123'),
(7, 'zaktest', 'zaktest@gmail.com', '123'),
(8, 'aaa', 'aaa@gmail.com', 'aaa'),
(9, 'cda', 'cda@gmail.com', '123'),
(10, 'ttttest', 'azerty@gmail.com', '123'),
(11, 'lol', 'lol@lol.com', '123'),
(12, 'afpa', 'afpa@gmail.com', '321'),
(13, 'afpaafpa', 'afpaa@gmail.com', '123'),
(14, 'afpa01', 'afpa01@gmail.com', '123afpa'),
(15, 'zak zak zak', 'zakzakzak@gmail.com', '123');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `prix` double NOT NULL,
  `qte` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `titre`, `prix`, `qte`, `categorie_id`, `image`) VALUES
(10, 'Chromebook Asus C436FA-E10011', 840, 100, 1, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/22/2e/e7/15150626/1540-1/tsp20210129174725/Chromebook-Asus-C436FA-E10011-14-Ecran-tactile-Intel-Core-i5-8-Go-RAM-256-Go-D-Argent.jpg'),
(11, 'PC Portable Gaming Acer Nitro 5', 1199, 100, 1, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/50/2f/ed/15544144/1540-1/tsp20210115082513/PC-Portable-Gaming-Acer-Nitro-5-AN515-55-76WN-15-6-Intel-Core-i7-16-Go-RAM-512-Go-D-Noir.jpg'),
(12, 'PC Portable Lenovo V15 ADA ', 319, 100, 1, 'https://static.fnac-static.com/multimedia/Images/A5/A5/4B/EA/15354789-1505-1540-1/tsp20210128091720/PC-Portable-Lenovo-V15-ADA-15-6-AMD-3020e-4-Go-RAM-1-To-SATA-Gris.jpg'),
(13, 'PC Portable Asus ROG Strix SCAR 17', 2070, 100, 1, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/15/2e/e7/15150613/1540-1/tsp20210129154055/PC-Portable-Asus-ROG-Strix-SCAR-17-G732LXS-HG047T-17-3-Intel-Core-i7-16-Go-RAM-1-To-D-Noir.jpg'),
(14, 'PC Ultra-Portable Asus Zenbook UX425EA', 1109, 100, 1, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/24/4b/f6/16141092/1540-1/tsp20210129155102/PC-Ultra-Portable-Asus-Zenbook-UX425EA-KC290T-14-Intel-Core-i7-16-Go-RAM-512-Go-D-Gris.jpg'),
(15, 'PC Portable Gaming Lenovo IdeaPad 3', 999, 100, 1, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/cb/4b/ea/15354827/1540-1/tsp20200827113928/PC-Portable-Gaming-Lenovo-IdeaPad-3-15ARH05-15-6-AMD-Ryzen-7-16-Go-RAM-512-Go-D-Bleu-cameleon.jpg'),
(16, 'PC Ultra-Portable Asus ZenBook Flip S', 1499, 100, 1, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/7d/3a/ef/15678077/1540-1/tsp20210129154816/PC-Ultra-Portable-Asus-ZenBook-Flip-S-UX371EA-HL036T-Ecran-4K-OLED-tactile-13-3-Intel-Core-i7-16-Go-RAM-512-Go-D.jpg'),
(17, 'PC Ultra-Portable Asus UX434FA', 1099, 100, 1, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/dd/49/ed/15550941/1540-1/tsp20210127173815/PC-Ultra-Portable-Asus-UX434FA-A5144T-14-Intel-Core-i7-16-Go-RAM-512-Go-D-Bleu.jpg'),
(18, 'Smartphone Samsung Galaxy Z Fold2 256 Go 5G', 1900, 100, 2, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/7c/29/ec/15477116/1520-4/tsp20210128171358/Smartphone-Samsung-Galaxy-Z-Fold2-256-Go-5G-Noir.jpg'),
(19, 'Smartphone Samsung Galaxy A51', 279, 100, 2, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/68/2f/d3/13840232/1540-1/tsp20210129174411/Smartphone-Samsung-Galaxy-A51-Double-SIM-128-Go-Noir.jpg'),
(20, 'Apple iPhone 12 Pro Max', 1259, 100, 2, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/96/b2/bd/12432022/1540-1/tsp20210129173524/Apple-iPhone-12-Pro-Max-6-7-128-Go-Double-SIM-5G-Bleu-pacifique.jpg'),
(21, 'Apple iPhone 11', 689, 100, 2, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/dc/b2/bd/12432092/1540-1/tsp20201124141342/Apple-iPhone-11-6-1-Double-SIM-64-Go-Noir-V2.jpg'),
(22, 'Smartphone Xiaomi Mi Note 10 ', 279, 100, 2, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/70/2b/f0/15739760/1540-1/tsp20210129155102/Smartphone-Xiaomi-Mi-Note-10-Lite-Double-SIM-64-Go-Violet-Nebuleux.jpg'),
(23, 'Samsung Galaxy S20FE', 709, 100, 2, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/75/83/ec/15500149/1540-1/tsp20210129154816/Smartphone-Samsung-Galaxy-S20FE-6-5-Double-SIM-5G-128-Go-Bleu.jpg'),
(24, 'Smartphone Samsung Galaxy S21', 859, 100, 2, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/5a/59/f6/16144730/1540-1/tsp20210129155102/Smartphone-Samsung-Galaxy-S21-6-2-128-Go-5G-Double-SIM-Gris.jpg'),
(25, 'TV LG OLED48CX 48\" OLED 4K UHD Smart TV', 1399, 100, 3, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/fc/3a/e2/14826236/1540-1/tsp20201215131740/TV-LG-OLED48CX-48-OLED-4K-UHD-Smart-TV-Noir-2020.jpg'),
(26, 'TV Samsung UE43TU7125 4K UHD Smart TV 43', 399, 100, 3, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/08/13/e2/14816008/1540-1/tsp20201006140902/TV-Samsung-UE43TU7125-4K-UHD-Smart-TV-43-Gris-2020.jpg'),
(27, 'TV Samsung 65Q83T QLED 65\" Smart TV', 1799, 100, 3, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/90/da/e2/14867088/1540-1/tsp20210121170915/TV-Samsung-65Q83T-QLED-65-Smart-TV-Noir.jpg'),
(28, 'TV Sony Bravia KD55AG9BAEP OLED 4K HDR Smart Android TV', 2499, 100, 3, 'https://static.fnac-static.com/multimedia/Images/FR/MDM/44/4b/ae/11422532/1540-1/tsp20201120130324/TV-Sony-Bravia-KD55AG9BaeP-OLED-4K-HDR-Smart-Android-TV-55.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `recherche`
--

CREATE TABLE `recherche` (
  `id` int(11) NOT NULL,
  `mot` varchar(255) NOT NULL,
  `nbr` int(11) NOT NULL,
  `dater` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `recherche`
--

INSERT INTO `recherche` (`id`, `mot`, `nbr`, `dater`) VALUES
(1, 'Galaxy', 4, '2024-04-02 16:06:04'),
(2, 'SAMSUNG', 6, '2024-04-02 16:06:09'),
(3, 'TV', 4, '2024-04-02 16:06:15'),
(4, 'Android TV', 1, '2024-04-02 16:06:24'),
(5, 'Galaxy', 4, '2024-04-02 16:06:27'),
(6, 'Iphone', 2, '2024-04-02 16:07:08'),
(7, 'iphone 15', 0, '2024-04-02 16:07:15'),
(8, 'iphone 15', 0, '2024-04-02 16:07:20'),
(9, 'iphone 15 pro', 0, '2024-04-02 16:07:23'),
(10, 'iphone 15 pro max', 0, '2024-04-02 16:07:28'),
(11, 'test', 0, '2024-04-02 16:24:50'),
(12, 'Zak', 0, '2024-04-02 16:24:52'),
(13, 'Galaxy', 4, '2024-04-02 17:15:42'),
(14, 'Zak', 0, '2024-04-02 17:16:06'),
(15, 'Sam', 6, '2024-04-02 17:16:11'),
(16, 'Galaxy', 4, '2024-04-02 17:17:34'),
(17, 'galaxy', 4, '2024-04-04 09:27:32'),
(18, 'Galaxy', 4, '2024-04-05 14:21:44'),
(19, 'Zak', 0, '2024-04-05 14:22:17'),
(20, 'Galaxy', 4, '2024-04-05 14:22:27'),
(21, 'Iphone', 2, '2024-04-05 14:26:20'),
(22, 'Galaxy', 4, '2024-04-05 14:35:19'),
(23, 'iphone 15', 0, '2024-04-05 14:35:24'),
(24, 'Zak', 0, '2024-04-05 14:35:27');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recherche`
--
ALTER TABLE `recherche`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `recherche`
--
ALTER TABLE `recherche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
