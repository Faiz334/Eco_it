-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 avr. 2022 à 22:33
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eco_it`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220318211802', '2022-03-18 22:18:51', 82),
('DoctrineMigrations\\Version20220321120103', '2022-03-21 16:33:44', 248),
('DoctrineMigrations\\Version20220328142108', '2022-03-28 16:24:35', 360),
('DoctrineMigrations\\Version20220329140704', '2022-03-29 16:08:15', 642),
('DoctrineMigrations\\Version20220329151629', '2022-03-29 17:17:29', 203),
('DoctrineMigrations\\Version20220330145450', '2022-03-30 16:55:43', 63),
('DoctrineMigrations\\Version20220331150956', '2022-03-31 17:10:13', 90),
('DoctrineMigrations\\Version20220405124905', '2022-04-05 14:50:17', 578),
('DoctrineMigrations\\Version20220405170027', '2022-04-05 19:00:56', 78),
('DoctrineMigrations\\Version20220418133832', '2022-04-18 15:39:03', 657),
('DoctrineMigrations\\Version20220418234631', '2022-04-19 01:46:56', 181),
('DoctrineMigrations\\Version20220418235623', '2022-04-19 01:56:31', 50);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `title`, `description`, `created_at`, `updated_at`, `slug`, `link`) VALUES
(10, 'formation 1', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae venenatis ligula. Aenean mattis at purus vitae lobortis. Donec gravida erat nibh, sed malesuada diam tristique eu. Fusce tempor odio est, a consectetur nunc vehicula vel. Ut quis viverra purus, sed blandit est. Vivamus non urna malesuada libero dictum iaculis in eu dui. In luctus, neque non scelerisque suscipit, ante ex ultrices felis, non commodo nulla massa vulputate erat. Ut non nunc blandit risus dictum maximus commodo ac arcu. Nam at interdum lacus. Maecenas pulvinar et nunc vitae eleifend. Nam eget ligula convallis, congue massa sit amet, cursus massa.&nbsp;<br><br></div><div>&nbsp;Cras commodo, neque scelerisque pellentesque efficitur, massa massa bibendum eros, at feugiat orci mauris non dui. Morbi vitae ligula sed urna convallis imperdiet at sit amet dolor. Nunc dictum tellus augue, nec viverra mi ultricies non. Fusce tempus, massa id iaculis ultricies, enim metus suscipit risus, at euismod neque erat sed diam. Duis et sem erat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras non massa ac est commodo condimentum non eget nisi. Integer at efficitur nibh, nec maximus nulla. Nunc porttitor risus vitae velit ultrices, sed malesuada felis lacinia. Duis dictum metus eget ante dictum, vitae ultricies libero iaculis. Suspendisse suscipit orci ipsum, sed vehicula nisi facilisis ac. Nam sit amet erat iaculis nunc pellentesque volutpat ac ac ante. Donec mattis sollicitudin ipsum, nec euismod lacus mattis id. Quisque odio nibh, gravida id congue at, malesuada vel arcu. Proin et vulputate odio.&nbsp;<br><br></div><div>&nbsp;Nam rutrum mollis velit eu mollis. Maecenas leo purus, dignissim quis nisi sit amet, finibus eleifend ipsum. Mauris convallis posuere tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam fringilla faucibus nisl sit amet pellentesque. Aliquam erat volutpat. Cras vehicula sapien tincidunt iaculis volutpat.&nbsp;<br><br></div><div>&nbsp;Curabitur pulvinar libero id nisl rhoncus, a tempor sem gravida. Donec vitae sem eget massa tempus imperdiet et ut orci. Vestibulum est orci, suscipit in libero at, molestie ullamcorper mi. Aenean consectetur consequat tempus. Vestibulum non diam quis enim rhoncus sagittis et et nulla. Pellentesque pulvinar massa malesuada, condimentum mi sed, auctor nisl. Pellentesque rutrum lorem mi, a luctus enim posuere quis. Pellentesque luctus dictum libero quis sollicitudin. Aenean congue sollicitudin nulla, eu eleifend ligula. In id ligula non risus viverra tristique ac vitae turpis. Donec felis orci, lacinia at lectus eu, tristique malesuada risus. Suspendisse porttitor luctus condimentum. Cras hendrerit libero in vestibulum fermentum. Etiam ullamcorper tortor id neque commodo imperdiet. Sed leo lorem, rutrum id ex id, lacinia ultricies turpis. Aliquam dictum tortor ut diam luctus pulvinar.&nbsp;<br><br></div><div>&nbsp;Mauris accumsan ipsum eu ex tincidunt, vel lacinia magna porttitor. Aliquam pretium nulla ut nisl viverra, sit amet pulvinar tortor mollis. Nullam finibus dapibus metus, at egestas ex sollicitudin vitae. Sed iaculis tempor ante, at maximus turpis tempus sit amet. Fusce malesuada imperdiet feugiat. Cras vitae hendrerit mi, sit amet porta nisi. Cras ut nisl quis eros ornare vehicula sit amet in sapien. Nam et quam in sapien vulputate faucibus. Cras rutrum dictum velit, nec vulputate sapien tempor ultrices. Phasellus ut fermentum felis.&nbsp;<br><br></div>', '2022-04-13 17:36:04', NULL, 'formation-1', NULL),
(11, 'formation 2', '<div>Cras commodo, neque scelerisque pellentesque efficitur, massa massa bibendum eros, at feugiat orci mauris non dui. Morbi vitae ligula sed urna convallis imperdiet at sit amet dolor. Nunc dictum tellus augue, nec viverra mi ultricies non. Fusce tempus, massa id iaculis ultricies, enim metus suscipit risus, at euismod neque erat sed diam. Duis et sem erat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras non massa ac est commodo condimentum non eget nisi. Integer at efficitur nibh, nec maximus nulla. Nunc porttitor risus vitae velit ultrices, sed malesuada felis lacinia. Duis dictum metus eget ante dictum, vitae ultricies libero iaculis. Suspendisse suscipit orci ipsum, sed vehicula nisi facilisis ac. Nam sit amet erat iaculis nunc pellentesque volutpat ac ac ante. Donec mattis sollicitudin ipsum, nec euismod lacus mattis id. Quisque odio nibh, gravida id congue at, malesuada vel arcu. Proin et vulputate odio.&nbsp;<br><br></div><div>&nbsp;Nam rutrum mollis velit eu mollis. Maecenas leo purus, dignissim quis nisi sit amet, finibus eleifend ipsum. Mauris convallis posuere tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam fringilla faucibus nisl sit amet pellentesque. Aliquam erat volutpat. Cras vehicula sapien tincidunt iaculis volutpat.&nbsp;<br><br></div><div>&nbsp;Curabitur pulvinar libero id nisl rhoncus, a tempor sem gravida. Donec vitae sem eget massa tempus imperdiet et ut orci. Vestibulum est orci, suscipit in libero at, molestie ullamcorper mi. Aenean consectetur consequat tempus. Vestibulum non diam quis enim rhoncus sagittis et et nulla. Pellentesque pulvinar massa malesuada, condimentum mi sed, auctor nisl. Pellentesque rutrum lorem mi, a luctus enim posuere quis. Pellentesque luctus dictum libero quis sollicitudin. Aenean congue sollicitudin nulla, eu eleifend ligula. In id ligula non risus viverra tristique ac vitae turpis. Donec felis orci, lacinia at lectus eu, tristique malesuada risus. Suspendisse porttitor luctus condimentum. Cras hendrerit libero in vestibulum fermentum. Etiam ullamcorper tortor id neque commodo imperdiet. Sed leo lorem, rutrum id ex id, lacinia ultricies turpis. Aliquam dictum tortor ut diam luctus pulvinar.&nbsp;<br><br></div><div>&nbsp;Mauris accumsan ipsum eu ex tincidunt, vel lacinia magna porttitor. Aliquam pretium nulla ut nisl viverra, sit amet pulvinar tortor mollis. Nullam finibus dapibus metus, at egestas ex sollicitudin vitae. Sed iaculis tempor ante, at maximus turpis tempus sit amet. Fusce malesuada imperdiet feugiat. Cras vitae hendrerit mi, sit amet porta nisi. Cras ut nisl quis eros ornare vehicula sit amet in sapien. Nam et quam in sapien vulputate faucibus. Cras rutrum dictum velit, nec vulputate sapien tempor ultrices. Phasellus ut fermentum felis.&nbsp;<br><br></div>', '2022-04-13 17:36:44', NULL, 'formation-2', NULL),
(12, 'formation 3', '<div>Curabitur sollicitudin auctor tellus at fringilla. Vestibulum vitae auctor velit. Curabitur eu aliquet elit, eget pretium diam. Vestibulum dapibus felis nec sapien semper, ut pulvinar mi cursus. Nullam molestie non mauris in fringilla. Suspendisse finibus consectetur diam, ut ornare justo accumsan vitae. Sed mattis non est vel blandit. Nulla feugiat ex neque, ut accumsan ipsum vulputate non. Maecenas non metus ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur mollis dapibus metus vel laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin auctor eleifend libero, vel interdum enim egestas ac. Proin ultrices vitae urna et pulvinar. Interdum et malesuada fames ac ante ipsum primis in faucibus.&nbsp;<br><br></div><div>&nbsp;Nam condimentum at dolor non euismod. Nullam feugiat tellus mauris, sit amet lacinia odio semper eget. Donec eu varius purus. Vivamus lacinia nulla metus, quis aliquam leo pulvinar a. Vestibulum gravida dignissim erat, in finibus magna aliquam posuere. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur non lorem vitae nisi feugiat laoreet at et tellus. Donec semper orci nec ornare tincidunt. Etiam tincidunt, est pulvinar feugiat convallis, elit turpis cursus nulla, et elementum augue libero sit amet tortor. In mollis tellus lorem, eu laoreet mi consectetur quis. Etiam quis varius justo. Morbi imperdiet elit sed lobortis congue. Phasellus diam nisl, tempor ut rhoncus quis, venenatis ut eros. Cras pellentesque finibus maximus. Phasellus neque dolor, mattis id sollicitudin in, laoreet a ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.&nbsp;<br><br></div><div>&nbsp;Cras sit amet dolor elementum, posuere quam sed, lobortis lacus. Pellentesque ac condimentum est, quis sagittis metus. Morbi eget libero mi. Donec vitae efficitur lacus, id vestibulum arcu. Sed in finibus ligula. Nunc est orci, semper at magna a, interdum sollicitudin nisl. Vestibulum sodales placerat elit, quis vestibulum urna porttitor eu. Vestibulum aliquam eros sapien, nec vestibulum tortor dapibus sed. Mauris augue tellus, luctus id ante vitae, suscipit elementum dui.&nbsp;<br><br></div><div>&nbsp;Donec felis lectus, pretium ac dolor quis, feugiat pellentesque augue. Aenean tempor placerat est, sit amet sodales purus finibus quis. Nulla facilisi. Phasellus cursus bibendum lacus, quis malesuada tellus tempor consectetur. Sed felis odio, pharetra non cursus sed, aliquam a arcu. Curabitur eleifend sed nunc ut sagittis. Nulla nisi odio, auctor id varius sed, egestas eu sapien. Aliquam bibendum, urna nec laoreet aliquet, enim nisl eleifend erat, a maximus dolor elit eget sem.&nbsp;<br><br></div>', '2022-04-13 17:37:45', NULL, 'formation-3', NULL),
(13, 'formation 4', '<div>Sed rutrum mauris quis ipsum placerat vulputate. Cras nec facilisis urna. Vivamus sit amet lectus eget felis placerat pellentesque. Nam tincidunt gravida purus, vitae luctus elit aliquam vel. Cras dapibus et nibh eu luctus. Sed ac aliquet velit. Morbi volutpat quis lacus in convallis. Suspendisse egestas viverra dolor et tempus. Cras in mauris nulla. Duis lacinia turpis sed condimentum tincidunt. Curabitur accumsan scelerisque metus varius porta. Pellentesque eu nulla vitae ligula rhoncus bibendum. Cras purus justo, elementum placerat ornare eu, finibus a ligula. Mauris imperdiet consequat neque, porta finibus nunc dictum vel. Cras dapibus eget eros in facilisis. Maecenas consequat eu dui eu molestie.&nbsp;<br><br></div><div>&nbsp;Nulla in faucibus arcu. Suspendisse a aliquet velit. In vestibulum, dolor a pulvinar mollis, elit purus consequat nisl, finibus placerat tortor neque eu arcu. Morbi scelerisque dapibus nibh, in aliquet velit. Praesent sed maximus nibh, id lacinia odio. Donec lobortis condimentum diam id vestibulum. Aliquam consectetur nibh est, nec placerat tellus pharetra ac. Vivamus iaculis leo a felis aliquet, ut molestie arcu dignissim. Duis dapibus feugiat lacus, at interdum nisl iaculis sit amet. Etiam sagittis aliquam pharetra. Fusce ac vulputate diam. Nulla facilisi. Quisque egestas lobortis tempor. Curabitur vehicula urna nec gravida cursus.&nbsp;<br><br></div><div>&nbsp;Fusce sit amet lacinia quam, eu egestas enim. Ut magna mi, cursus sed varius eu, eleifend non dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sit amet tincidunt dui. Vivamus eget blandit risus. Fusce sit amet justo fringilla, ultricies orci tincidunt, aliquet risus. Pellentesque non interdum ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec eget tincidunt turpis. Nunc vel lacus gravida, rhoncus eros eget, laoreet lacus. In tincidunt justo eget maximus viverra. Integer pretium magna nec purus volutpat porttitor. Curabitur imperdiet, metus sit amet commodo tincidunt, dui est dapibus libero, nec mattis lacus felis id justo. Donec vel nunc eleifend, efficitur elit nec, vestibulum elit. Donec condimentum, mi at tristique egestas, dui magna egestas neque, vel placerat nisi mi eget ex.&nbsp;<br><br></div><div>&nbsp;Praesent id tellus ut velit rhoncus aliquam. Sed eu nisi et quam facilisis faucibus at at erat. Nam dapibus eros ut tincidunt mollis. Cras quis dignissim diam. Praesent sit amet congue mi. Donec volutpat dui dolor. Ut sed interdum justo, vitae imperdiet orci. Pellentesque fermentum lacus at risus finibus gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut vulputate velit quis erat tincidunt malesuada. Morbi felis enim, posuere eu dolor vel, scelerisque faucibus nisl. Vestibulum suscipit eleifend pellentesque. Fusce augue nulla, suscipit nec porttitor luctus, ornare quis mauris. Nulla lobortis, nisl eu facilisis vehicula, massa neque lacinia metus, id sollicitudin ante massa eget nisi. Mauris justo lectus, accumsan vel lectus sed, auctor tincidunt ex.&nbsp;<br><br></div>', '2022-04-13 17:38:20', NULL, 'formation-4', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lesson`
--

INSERT INTO `lesson` (`id`, `section_id`, `title`, `description`, `created_at`, `file`, `updated_at`, `slug`, `video`) VALUES
(6, 2, 'leçon 1', '<div>Vestibulum vel diam sapien. Maecenas mollis commodo turpis, eu mollis turpis mollis id. Nam scelerisque in metus eget viverra. Proin non commodo purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec non tristique eros. Proin vitae luctus sem, sed tempor velit. Vestibulum nunc enim, rutrum sed ultricies eget, dictum sit amet orci. Sed odio diam, convallis faucibus elementum id, eleifend iaculis nulla. Morbi malesuada tortor ut imperdiet tincidunt. Proin posuere, nulla ac pharetra volutpat, elit mauris laoreet ante, ac commodo tortor ante nec dui. Praesent commodo blandit nulla, vel placerat velit varius ac. Sed eleifend eget dui tincidunt porttitor. Praesent id accumsan enim, sit amet sollicitudin tortor. Duis fermentum vel ipsum quis vehicula. Fusce at dui elit.&nbsp;</div>', '2022-04-13 17:40:54', NULL, '2022-04-18 15:43:22', 'lecon-1', NULL),
(7, 3, 'leçon 2', '<div>Donec nulla ipsum, iaculis vel tellus rhoncus, commodo vestibulum metus. Sed enim nunc, gravida convallis rhoncus ullamcorper, malesuada ut ante. Nullam non risus semper, lobortis dui hendrerit, congue sem. In euismod leo ligula, at lacinia tortor imperdiet vel. Sed semper cursus nulla, varius tincidunt urna faucibus ut. Cras nec mauris lacus. Praesent commodo turpis a quam viverra consectetur. Pellentesque gravida turpis ac quam ultricies scelerisque. Praesent vel purus felis.&nbsp;</div>', '2022-04-13 17:41:18', NULL, '2022-04-18 15:43:34', 'lecon-2', NULL),
(8, 4, 'leçon3', '<div>Suspendisse elementum turpis eu augue varius hendrerit. Vestibulum luctus mauris quis ipsum volutpat, eu laoreet tortor blandit. Donec congue ipsum in augue porta suscipit. In molestie cursus mollis. Pellentesque velit dui, porta in libero ut, convallis fringilla justo. Pellentesque id tempor eros. Nunc vel metus et nunc maximus consectetur sed id mi. Maecenas sagittis nisi ut ligula dictum sollicitudin. In aliquet tempus turpis, at ultrices lacus venenatis quis. Quisque quis mauris eget libero posuere varius sit amet ut felis. Mauris sit amet mauris ipsum.&nbsp;</div>', '2022-04-13 17:43:02', NULL, '2022-04-18 15:43:40', 'lecon3', NULL),
(9, 5, 'leçon 4', '<div>Phasellus libero ante, dapibus vel tristique ac, rutrum ut augue. Vivamus nec viverra sem. Etiam non pretium ex. Curabitur a arcu sit amet urna commodo pellentesque. Sed pharetra orci a efficitur lacinia. Nulla viverra, enim sed rutrum dictum, nibh magna suscipit lacus, sed tristique metus orci in odio. Sed accumsan, eros quis volutpat mattis, risus felis tempor libero, quis facilisis erat erat sed dui. Curabitur eget vestibulum neque. Sed id purus eu mauris mollis sodales. Sed condimentum a risus eget suscipit. Vivamus arcu nunc, efficitur vitae dignissim non, efficitur vel enim. Curabitur vehicula lorem vitae euismod consectetur. Nullam in maximus neque, et vulputate elit. Cras vel enim enim. Praesent porttitor posuere luctus. Integer ut lacinia ante.</div>', '2022-04-21 00:04:39', 'brian-chan-qj0zgkre1zg-unsplash-6260837746543319329908.jpg', '2022-04-21 00:04:39', 'lecon-4', NULL),
(10, 5, 'leçon 4.1', '<div>Praesent id tellus ut velit rhoncus aliquam. Sed eu nisi et quam facilisis faucibus at at erat. Nam dapibus eros ut tincidunt mollis. Cras quis dignissim diam. Praesent sit amet congue mi. Donec volutpat dui dolor. Ut sed interdum justo, vitae imperdiet orci. Pellentesque fermentum lacus at risus finibus gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut vulputate velit quis erat tincidunt malesuada. Morbi felis enim, posuere eu dolor vel, scelerisque faucibus nisl. Vestibulum suscipit eleifend pellentesque. Fusce augue nulla, suscipit nec porttitor luctus, ornare quis mauris. Nulla lobortis, nisl eu facilisis vehicula, massa neque lacinia metus, id sollicitudin ante massa eget nisi. Mauris justo lectus, accumsan vel lectus sed, auctor tincidunt ex.&nbsp;<br><br></div>', '2022-04-19 13:57:18', 'boris-smokrovic-aolmxcuxr7y-unsplash-625ea39e1f004792939630.jpg', '2022-04-20 23:54:23', 'azeaze', 'https://www.youtube.com/embed/sh-TMLKMf8M');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `formation_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `section`
--

INSERT INTO `section` (`id`, `title`, `description`, `formation_id`, `created_at`, `updated_at`, `slug`) VALUES
(2, 'section 1', '<div>Nulla in faucibus arcu. Suspendisse a aliquet velit. In vestibulum, dolor a pulvinar mollis, elit purus consequat nisl, finibus placerat tortor neque eu arcu. Morbi scelerisque dapibus nibh, in aliquet velit. Praesent sed maximus nibh, id lacinia odio. Donec lobortis condimentum diam id vestibulum. Aliquam consectetur nibh est, nec placerat tellus pharetra ac. Vivamus iaculis leo a felis aliquet, ut molestie arcu dignissim. Duis dapibus feugiat lacus, at interdum nisl iaculis sit amet. Etiam sagittis aliquam pharetra. Fusce ac vulputate diam. Nulla facilisi. Quisque egestas lobortis tempor. Curabitur vehicula urna nec gravida cursus.&nbsp;</div>', 10, '2022-04-13 17:38:51', '2022-04-18 17:11:08', 'section-1'),
(3, 'section 2', '<div>Praesent id tellus ut velit rhoncus aliquam. Sed eu nisi et quam facilisis faucibus at at erat. Nam dapibus eros ut tincidunt mollis. Cras quis dignissim diam. Praesent sit amet congue mi. Donec volutpat dui dolor. Ut sed interdum justo, vitae imperdiet orci. Pellentesque fermentum lacus at risus finibus gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut vulputate velit quis erat tincidunt malesuada. Morbi felis enim, posuere eu dolor vel, scelerisque faucibus nisl. Vestibulum suscipit eleifend pellentesque. Fusce augue nulla, suscipit nec porttitor luctus, ornare quis mauris. Nulla lobortis, nisl eu facilisis vehicula, massa neque lacinia metus, id sollicitudin ante massa eget nisi. Mauris justo lectus, accumsan vel lectus sed, auctor tincidunt ex.&nbsp;<br><br></div>', 11, '2022-04-13 17:39:18', '2022-04-18 15:42:59', 'section-2'),
(4, 'section 3', '<div>Nulla in faucibus arcu. Suspendisse a aliquet velit. In vestibulum, dolor a pulvinar mollis, elit purus consequat nisl, finibus placerat tortor neque eu arcu. Morbi scelerisque dapibus nibh, in aliquet velit. Praesent sed maximus nibh, id lacinia odio. Donec lobortis condimentum diam id vestibulum. Aliquam consectetur nibh est, nec placerat tellus pharetra ac. Vivamus iaculis leo a felis aliquet, ut molestie arcu dignissim. Duis dapibus feugiat lacus, at interdum nisl iaculis sit amet. Etiam sagittis aliquam pharetra. Fusce ac vulputate diam. Nulla facilisi. Quisque egestas lobortis tempor. Curabitur vehicula urna nec gravida cursus.</div>', 12, '2022-04-13 17:39:50', '2022-04-18 15:43:05', 'section-3'),
(5, 'section 4', '<div>Sed rutrum mauris quis ipsum placerat vulputate. Cras nec facilisis urna. Vivamus sit amet lectus eget felis placerat pellentesque. Nam tincidunt gravida purus, vitae luctus elit aliquam vel. Cras dapibus et nibh eu luctus. Sed ac aliquet velit. Morbi volutpat quis lacus in convallis. Suspendisse egestas viverra dolor et tempus. Cras in mauris nulla. Duis lacinia turpis sed condimentum tincidunt. Curabitur accumsan scelerisque metus varius porta. Pellentesque eu nulla vitae ligula rhoncus bibendum. Cras purus justo, elementum placerat ornare eu, finibus a ligula. Mauris imperdiet consequat neque, porta finibus nunc dictum vel. Cras dapibus eget eros in facilisis. Maecenas consequat eu dui eu molestie.&nbsp;</div>', 13, '2022-04-13 17:40:12', '2022-04-18 15:43:11', 'section-4');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `username`, `photo`, `description`) VALUES
(4, 'admin@admin.fr', '[\"ROLE_ADMIN\"]', '$2y$13$bFRKyZVsbHreuhjgI1CNOuocyuKyioMsVxT9y4wTuwktICEcSmufO', 'Zidane', 'Zinedine', 'Zizou', NULL, NULL),
(5, 'instructeur@instructeur.fr', '[\"ROLE_INSTRUCTEUR\"]', '$2y$13$ob5zmyK0lq5i4HhLWIrOLOikHwn/NOA6hFOURfVsBrVm0FVLp9BeK', 'Benzema', 'Karim', 'KB9', NULL, NULL),
(6, 'apprenant@apprenant.fr', '[\"ROLE_APPRENANT\"]', '$2y$13$pVa1drzc21Qg8SXVIisL/uUii2oEnjOEtDKArh0F9cCiZMCCja7Ai', 'Mbappe', 'Kylian', 'Mbappe7', NULL, NULL),
(7, 'test@test.fr', '[]', '$2y$13$yn6C15usjXl8BzfRTXe0A.OWsg5NyuDlh6rH9kpiplje2GJOvpcPK', 'test', 'test', 'testeur', NULL, 'd'),
(8, 'admin1@admin1.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', 'admin', 'admin', 'admin', 'admin', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F87474F3D823E37A` (`section_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A412FA92D823E37A` (`section_id`);

--
-- Index pour la table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2D737AEF5200282E` (`formation_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_F87474F3D823E37A` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Contraintes pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FK_A412FA92D823E37A` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Contraintes pour la table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `FK_2D737AEF5200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
