-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 08:20 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`) VALUES
(1, 'Sofas'),
(2, 'Chairs'),
(3, 'Coffee-tables'),
(4, 'Bookcases'),
(5, 'Beds'),
(6, 'Bedside-tables'),
(7, 'Dressers'),
(8, 'Wardrobes'),
(9, 'Dining-tables'),
(10, 'Dining-chairs'),
(11, 'Barstools'),
(12, 'Kids-beds'),
(13, 'Kids-desks'),
(14, 'Seating'),
(15, 'Storage-cabinets'),
(16, 'Benches'),
(17, 'Console-tables'),
(18, 'Garden-sets'),
(19, 'Garden-tables'),
(20, 'Outdoor-chairs'),
(21, 'Hammocks');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `comment` varchar(1500) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `idProduct`, `user`, `comment`, `date`) VALUES
(1, 1, 'Bela', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident cumque eveniet recusandae, fuga iusto, mollitia accusamus, debitis commodi earum est minima eligendi aut quisquam ratione fugiat ut! Molestiae laudantium dolorem soluta dignissimos sequi voluptates ipsam, vel nihil vitae assumenda quisquam doloribus tempora, sapiente, ad dolor laborum neque ipsum maxime architecto, debitis reiciendis! Autem eveniet iure dolores aspernatur optio a neque, nam, cum tempora consequuntur. Esse repudiandae non sunt harum amet dignissimos eum qui quisquam, voluptate? Culpa quasi dolores, ratione quo unde quae esse rerum nisi sed ut libero consequatur alias voluptatem omnis quos, dicta voluptatum accusamus. Esse asperiores corporis, minima officia soluta nesciunt similique. Dignissimos corrupti quia harum aliquid qui ea saepe voluptas soluta iure vero, labore ducimus provident odio iste sunt totam omnis quis fuga repellendus veniam maxime neque. Inventore, ad minus dignissimos hic error magni corporis modi. Dolor quas quo eum esse, veniam, neque error suscipit necessitatibus ipsam!', '2017-06-11 20:01:59'),
(2, 1, 'Miloš', ' Molestiae laudantium dolorem soluta dignissimos sequi voluptates ipsam, vel nihil vitae assumenda quisquam doloribus tempora, sapiente, ad dolor laborum neque ipsum maxime architecto, debitis reiciendis! Autem eveniet iure dolores aspernatur optio a neque, nam, cum tempora consequuntur. Esse repudiandae non sunt harum amet dignissimos eum qui quisquam, voluptate? Culpa quasi dolores, ratione quo unde quae esse rerum nisi sed ut libero consequatur alias voluptatem omnis quos, dicta voluptatum accusamus. Esse asperiores corporis, minima officia soluta nesciunt similique. Dignissimos corrupti quia harum aliquid qui ea saepe voluptas soluta iure vero, labore ducimus provident odio iste sunt totam omnis quis fuga repellendus veniam maxime neque. Inventore, ad minus dignissimos hic error magni corporis modi.', '2017-06-11 20:20:24'),
(3, 2, 'Vana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ultrices, magna vel porttitor aliquam, neque urna viverra diam, quis volutpat augue velit sit amet tortor. Nulla consequat lorem non purus eleifend, et sodales diam vehicula. Aliquam vitae nulla accumsan, faucibus orci vitae, hendrerit lectus. Vivamus vulputate quam in lorem luctus scelerisque. Phasellus id ex eget odio porttitor mollis. Vestibulum nec risus sollicitudin, condimentum sapien et, pellentesque diam. Mauris metus neque, sagittis eget accumsan eget, malesuada nec leo. Aliquam erat volutpat. Proin eu erat vitae velit lobortis volutpat. Aenean eget nunc ac sem scelerisque auctor. Donec lacinia dapibus consequat.\n\nSed tristique suscipit ipsum, non consequat lectus sollicitudin placerat. Morbi rhoncus ipsum enim, in sagittis est mollis eu. Aenean posuere dui et orci rutrum, vel feugiat purus tempus. Ut scelerisque sit amet felis auctor sodales. Ut quis mi ipsum. Sed laoreet aliquam risus sit amet iaculis. Etiam sed nunc vitae lacus ullamcorper ornare non at ante. Sed placerat urna mauris, in efficitur sapien viverra eu. Etiam convallis velit ac erat convallis, at elementum est convallis. In id molestie lacus.\n\nCras dictum bibendum suscipit. In hac habitasse platea dictumst. Fusce porttitor elit a arcu sagittis eleifend. Nulla et nisl id tellus vestibulum consequat nec vitae mauris. Mauris porttitor efficitur urna sed maximus. \n', '2017-06-15 14:57:11'),
(4, 2, 'Žirko', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum erat vitae elit lacinia, at mollis lorem mattis. Vestibulum arcu nibh, rhoncus eu eleifend id, venenatis vel odio. Aliquam molestie urna velit, nec elementum neque ultricies at. Vivamus commodo, turpis vitae aliquet lacinia, lectus sem ultricies diam, a pharetra lectus elit vel urna. Vestibulum scelerisque orci lorem, ac tempus nisl congue in. Etiam congue odio sed commodo pellentesque. Maecenas tincidunt ante sit amet elit viverra, id mollis diam blandit. Maecenas in imperdiet arcu, sed elementum enim. Mauris nulla massa, tempus ac imperdiet eleifend, ullamcorper nec ex. Suspendisse euismod, dolor quis efficitur porta, nisi diam rhoncus dolor, scelerisque mattis magna orci eget sem.\r\n\r\nAliquam arcu risus, condimentum in vestibulum ut, tincidunt nec nisl. Nulla id neque eget ante porta commodo ac in odio. In risus metus, faucibus vel neque sit amet, bibendum aliquam dui. Maecenas eu lectus libero. Etiam commodo imperdiet leo at semper. Praesent bibendum ex sit amet tortor dapibus fermentum. Etiam at purus ut leo iaculis malesuada ut vel odio. Nunc ac pulvinar mi, sed luctus nisi.\r\n', '2017-06-15 21:13:45'),
(5, 18, 'Lara', 'Donec nibh metus, scelerisque blandit pulvinar sit amet, commodo non urna. Morbi ut auctor lorem. Suspendisse potenti. Maecenas at laoreet nisi, vel porta leo. Morbi commodo libero quam, sed consectetur augue porta vitae. Nunc venenatis dui eget aliquet finibus. Pellentesque erat diam, laoreet ut ultricies elementum, efficitur nec diam. Aliquam tristique dolor erat, eget scelerisque ligula hendrerit eget. Donec pharetra elit orci, vel sagittis massa egestas sit amet. Integer iaculis mi ut velit convallis, at sagittis turpis accumsan. Suspendisse varius, nisl nec commodo congue, nulla purus sodales odio, quis sodales neque lorem vel tellus. Etiam vulputate semper velit efficitur porttitor.', '2017-06-27 13:19:18'),
(6, 21, 'Luna', 'Donec eu consequat sapien. Integer posuere semper euismod. Pellentesque ut libero eget nunc iaculis tincidunt. Donec in lectus rutrum, efficitur ex a, fermentum leo. Praesent eu viverra velit. Sed semper turpis at orci feugiat fermentum. Sed odio lacus, vulputate sed accumsan efficitur, hendrerit et felis. Maecenas tempor quam sit amet orci consectetur, sit amet rutrum neque accumsan. Phasellus eget pulvinar turpis. Sed enim ante, fermentum ac ultricies sit amet, vestibulum ut augue. Fusce feugiat maximus metus, ac sodales justo vulputate at. Praesent a lorem hendrerit, ultrices enim nec, iaculis nunc. Nunc non luctus erat. Integer at euismod dui.', '2017-06-27 13:54:52'),
(7, 9, 'Dragoslav', 'Sed eu aliquam purus, nec pharetra urna. Aliquam nec egestas mi, ac tincidunt nulla. Fusce quis felis quis diam gravida faucibus vitae eu neque. Suspendisse mollis neque id urna sodales, lacinia consectetur dolor lobortis. Maecenas quis sem a augue varius placerat sed et arcu. Aliquam eleifend sed ligula vitae vehicula. Cras ornare lorem sed neque fringilla sodales. Praesent eget purus vitae nisl pulvinar lacinia. Sed porttitor malesuada metus vel cursus. Quisque vulputate feugiat est, ut commodo turpis aliquam vitae. Sed vel velit dapibus, rhoncus enim et, eleifend dui. Maecenas pulvinar risus pharetra diam semper commodo. Fusce nec tortor ac massa euismod luctus vitae et velit.', '2017-06-27 22:19:05'),
(8, 76, 'Dragan', 'Fusce non felis justo. Aliquam et purus ultricies, rutrum quam id, finibus metus. Etiam non aliquet magna. Nam dapibus posuere condimentum. Nulla congue ante ornare elit vehicula semper. Proin eu fringilla ligula, ut vehicula turpis. Proin ac libero condimentum, dictum dui sed, efficitur ligula. Aenean nec nisl rutrum, vestibulum leo vel, commodo augue. Cras gravida molestie massa, a porta risus sodales vel. Donec dapibus nec dui eu tristique. In id ligula vel sapien cursus imperdiet vel et justo. Integer nulla ex, condimentum ut massa eu, congue condimentum risus.', '2017-07-14 12:06:20'),
(9, 24, 'Dusanka', 'In nec leo eget massa euismod sodales. Curabitur non eros sapien. Cras iaculis, lacus fringilla commodo consectetur, quam lectus luctus velit, vitae placerat augue tellus at urna. Quisque mollis ultrices felis, pretium rutrum ipsum dictum quis. Nam luctus mollis elit in euismod. Maecenas aliquet neque tellus, vitae ullamcorper sem efficitur id. Quisque a nunc quam. Quisque blandit mauris id feugiat mollis. Quisque in euismod turpis, at porta ligula. Vestibulum venenatis nulla mattis nibh tincidunt semper.', '2017-07-14 12:10:04'),
(10, 24, 'Angelina', 'Mauris tortor metus, vestibulum quis rhoncus quis, vulputate sed elit. Sed vitae est at turpis ornare venenatis at sit amet tellus. Suspendisse eu orci ac diam feugiat mollis. Sed iaculis quis risus a blandit. Cras vestibulum laoreet lectus, ac scelerisque velit bibendum quis. Proin non lorem vitae enim rutrum dignissim. Vivamus convallis eleifend ex in commodo. Fusce scelerisque placerat euismod. Donec eu libero in nisi pharetra maximus.', '2017-07-14 12:11:05'),
(11, 75, 'Ira', 'Very pleased with this garden table. I would certainly recommend buying one.', '2017-07-16 20:59:48'),
(12, 67, 'Ira', 'Great product, reasonable price. ', '2017-07-16 21:03:02'),
(13, 44, 'Iris', 'Sed bibendum quam ac lectus accumsan posuere. Phasellus in arcu mi. Nulla eu cursus ligula. Vestibulum egestas tortor accumsan augue sodales lacinia. Curabitur sed sapien eget mi hendrerit rutrum. Integer ipsum ex, condimentum id leo in, imperdiet tincidunt lectus. Mauris sit amet leo sed dolor imperdiet sagittis. Vestibulum sed risus leo. Cras dictum est nec nisi finibus, ut interdum neque lacinia. Nunc lacus tortor, faucibus tempus augue in, pretium porttitor diam.', '2017-07-22 17:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `idProduct`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 4),
(13, 4),
(14, 4),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 9),
(32, 9),
(33, 9),
(34, 9),
(35, 10),
(36, 10),
(37, 10),
(38, 11),
(39, 11),
(40, 11),
(41, 12),
(42, 12),
(43, 12),
(44, 12),
(45, 13),
(46, 13),
(47, 13),
(48, 13),
(49, 14),
(50, 14),
(51, 14),
(52, 14),
(53, 15),
(54, 15),
(55, 15),
(56, 15),
(57, 16),
(58, 16),
(59, 16),
(60, 16),
(61, 17),
(62, 17),
(63, 17),
(64, 17),
(65, 18),
(66, 18),
(67, 18),
(68, 18),
(69, 19),
(70, 19),
(71, 19),
(72, 19),
(73, 20),
(74, 20),
(75, 20),
(76, 20),
(77, 21),
(78, 21),
(79, 21),
(80, 21),
(81, 22),
(82, 22),
(83, 22),
(84, 22),
(85, 23),
(86, 23),
(87, 23),
(88, 23),
(89, 24),
(90, 24),
(91, 24),
(92, 24),
(93, 25),
(94, 25),
(95, 25),
(96, 26),
(97, 26),
(98, 26),
(99, 26),
(100, 27),
(101, 27),
(102, 27),
(103, 27),
(104, 28),
(105, 28),
(106, 28),
(107, 28),
(108, 29),
(109, 29),
(110, 29),
(111, 30),
(112, 30),
(113, 30),
(114, 30),
(115, 31),
(116, 31),
(117, 31),
(118, 31),
(119, 32),
(120, 32),
(121, 32),
(122, 32),
(123, 33),
(124, 33),
(125, 33),
(126, 33),
(127, 34),
(128, 34),
(129, 34),
(130, 34),
(131, 35),
(132, 35),
(133, 35),
(134, 35),
(135, 36),
(136, 36),
(137, 36),
(138, 36),
(139, 37),
(140, 37),
(141, 37),
(142, 37),
(143, 38),
(144, 38),
(145, 38),
(146, 38),
(147, 39),
(148, 39),
(149, 39),
(150, 39),
(151, 40),
(152, 40),
(153, 40),
(154, 40),
(155, 41),
(156, 41),
(157, 41),
(158, 41),
(159, 42),
(160, 42),
(161, 42),
(162, 42),
(163, 43),
(164, 43),
(165, 43),
(166, 43),
(167, 44),
(168, 44),
(169, 44),
(170, 44),
(171, 45),
(172, 45),
(173, 45),
(174, 45),
(175, 46),
(176, 46),
(177, 46),
(178, 46),
(179, 47),
(180, 47),
(181, 47),
(182, 47),
(183, 48),
(184, 48),
(185, 48),
(186, 48),
(187, 49),
(188, 49),
(189, 49),
(190, 50),
(191, 50),
(192, 50),
(193, 50),
(194, 51),
(195, 51),
(196, 51),
(197, 51),
(198, 52),
(199, 52),
(200, 52),
(201, 52),
(202, 53),
(203, 53),
(204, 53),
(205, 53),
(206, 54),
(207, 54),
(208, 54),
(209, 54),
(210, 55),
(211, 55),
(212, 55),
(213, 55),
(214, 56),
(215, 56),
(216, 56),
(217, 56),
(218, 57),
(219, 57),
(220, 57),
(221, 57),
(222, 58),
(223, 58),
(224, 58),
(225, 59),
(226, 59),
(227, 59),
(228, 59),
(229, 60),
(230, 60),
(231, 60),
(232, 60),
(233, 61),
(234, 61),
(235, 61),
(236, 61),
(237, 62),
(238, 62),
(239, 62),
(240, 62),
(241, 63),
(242, 63),
(243, 63),
(244, 63),
(245, 64),
(246, 64),
(247, 64),
(248, 64),
(249, 65),
(250, 65),
(251, 65),
(252, 65),
(253, 66),
(254, 66),
(255, 66),
(256, 66),
(257, 67),
(258, 67),
(259, 67),
(260, 67),
(261, 68),
(262, 68),
(263, 68),
(264, 68),
(265, 69),
(266, 69),
(267, 69),
(268, 69),
(269, 70),
(270, 70),
(271, 70),
(272, 70),
(273, 71),
(274, 71),
(275, 71),
(276, 71),
(277, 72),
(278, 72),
(279, 72),
(280, 72),
(281, 73),
(282, 73),
(283, 73),
(284, 73),
(285, 74),
(286, 74),
(287, 74),
(288, 74),
(289, 75),
(290, 75),
(291, 75),
(292, 75),
(293, 76),
(294, 76),
(295, 76),
(296, 76),
(297, 77),
(298, 77),
(299, 77),
(300, 77),
(301, 78),
(302, 78),
(303, 78),
(304, 78),
(305, 79),
(306, 79),
(307, 79),
(308, 79),
(309, 80),
(310, 80),
(311, 80),
(312, 80),
(313, 81),
(314, 81),
(315, 81),
(316, 81),
(317, 82),
(318, 82),
(319, 82),
(320, 82),
(321, 83),
(322, 83),
(323, 83),
(324, 83),
(325, 84),
(326, 84),
(327, 84),
(328, 84),
(329, 85),
(330, 85),
(331, 85),
(332, 85),
(333, 86),
(334, 86),
(335, 86),
(336, 86),
(337, 87),
(338, 87),
(339, 87),
(340, 87);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roomType` varchar(50) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `idCategory` int(11) NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `roomType`, `content`, `idCategory`, `price`, `deleted`) VALUES
(1, 'Sofa 1', 'Living-room', 'Cras at est volutpat dui euismod varius nec a nibh. Mauris enim nulla, faucibus eget semper eu, egestas non risus. Donec a hendrerit nunc. Duis eros massa, ultricies a consequat luctus, elementum ut urna. Nam ac lorem purus. Pellentesque convallis purus sed eros vehicula.\r\nDuis vehicula egestas elit, eu finibus felis volutpat quis. Vestibulum et hendrerit libero. Phasellus eleifend, dolor eu aliquet gravida, dui odio consequat orci, at consequat urna elit at est.', 1, '$229.99', 0),
(2, 'Sofa 2', 'Living-room', 'Nulla ac lobortis massa. Etiam tempor egestas sem, lacinia convallis nunc blandit at. Nunc urna magna, interdum quis diam mollis, efficitur aliquam dolor. Nam feugiat est urna, at vehicula nibh posuere et. Morbi sit amet ante auctor arcu tempus iaculis ut quis quam. Aenean efficitur imperdiet augue, ut commodo mauris suscipit quis. Etiam non ligula nec odio sodales imperdiet at ut arcu. Vestibulum id est nec nisi ultrices posuere vitae ut ligula. Pellentesque consectetur ultricies semper. Nulla semper blandit nisi, ac mattis nulla vehicula et. Nulla vel vehicula justo, id dapibus metus. Aenean ac lorem vitae libero placerat scelerisque at eget ipsum. Nam eu sollicitudin neque.', 1, '$290.90', 0),
(3, 'Sofa 3', 'Living-room', 'Maecenas sed metus a diam finibus consectetur eget id lacus. Nullam vel sapien facilisis, suscipit leo vitae, luctus magna. Ut finibus venenatis massa, at lobortis felis ornare et. Sed sed lorem hendrerit, vulputate nibh at, rhoncus ligula. Nulla hendrerit, erat quis efficitur ultricies, nunc elit molestie mi, quis tristique nisi tellus in velit. Proin tempus sapien arcu, quis tristique mi porta eget. Morbi nisi ipsum, blandit ut tristique sit amet, varius ac arcu. Mauris dictum finibus leo, sit amet faucibus ante ultricies ac. Integer aliquet convallis urna at pharetra. Sed a maximus mauris, at tincidunt augue. Ut nulla libero, placerat a semper id, posuere et orci. In non tortor metus. Morbi arcu libero, ultrices a lobortis id, pharetra ac tortor.', 1, '$319.90', 0),
(4, 'Sofa 4', 'Living-room', 'Pellentesque egestas nisl a hendrerit facilisis. Quisque varius nisl eu nunc cursus, ac efficitur dolor tristique. Donec tincidunt convallis pretium. Morbi ullamcorper, sapien in maximus auctor, dolor est volutpat odio ut ultricies ligula purus quis risus. Mauris sit amet felis at massa tempus malesuada ut eget nulla. Mauris mollis euismod enim, et viverra mauris tincidunt in. Nulla in leo non purus egestas laoreet. Ut eget lectus ex. Cras viverra suscipit odio ut cursus. Cras eget mattis metus, in rhoncus diam. Suspendisse vestibulum nibh nunc, et condimentum turpis imperdiet et. Sed quis sem sit amet nunc consequat molestie. Fusce imperdiet hendrerit tortor, vitae aliquet quam egestas id. Maecenas malesuada, mauris nec fringilla tristique, dolor ligula venenatis ipsum, et faucibus nulla dui a risus. Duis vitae turpis nulla.', 1, '$239.90', 0),
(5, 'Chair 1', 'Living-room', 'Mauris mollis euismod enim, et viverra mauris tincidunt in. Nulla in leo non purus egestas laoreet. Ut eget lectus ex. Cras viverra suscipit odio ut cursus. Cras eget mattis metus, in rhoncus diam. Suspendisse vestibulum nibh nunc, et condimentum turpis imperdiet et. Sed quis sem sit amet nunc consequat molestie. Fusce imperdiet hendrerit tortor, vitae aliquet quam egestas id. Maecenas malesuada, mauris nec fringilla tristique, dolor ligula venenatis ipsum, et faucibus nulla dui a risus. Duis vitae turpis nulla.', 2, '$179.90', 0),
(6, 'Chair 2', 'Living-room', 'Phasellus condimentum pharetra ex, vel varius ligula pulvinar at. Aenean ac dignissim tortor, nec euismod arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent urna nulla, aliquet non turpis sed, ornare feugiat sapien. Aliquam facilisis rutrum ipsum id ultricies. Nulla venenatis quis tortor in congue. Suspendisse posuere eleifend quam id faucibus. Curabitur vulputate at erat nec suscipit. Donec interdum consequat feugiat. Nunc rutrum lobortis ligula at eleifend. Praesent at felis ut lectus mattis dictum volutpat nec diam. Phasellus malesuada in tellus sed blandit. Donec sit amet justo id ex efficitur tincidunt quis quis risus. Cras vestibulum eget sapien eget molestie.', 2, '$158.90', 0),
(7, 'Chair 3', 'Living-room', 'Aliquam sollicitudin justo libero, scelerisque vulputate sapien sollicitudin non. Mauris leo odio, facilisis aliquam porta eget, pretium non augue. Pellentesque at accumsan nunc. Duis pretium metus est, non dictum tortor vulputate vel. Nulla facilisi. Sed pretium felis at quam dapibus, vel suscipit felis gravida. In volutpat nulla purus, ut blandit magna volutpat ac. Fusce sit amet congue leo. Duis pharetra dictum massa sit amet lobortis. Pellentesque ex tortor, mollis non semper vel, commodo id ipsum. Sed scelerisque ligula ac ante maximus accumsan.', 2, '$209.90', 0),
(8, 'Chair 4', 'Living-room', 'Aliquam sollicitudin et augue eu porta. Duis varius, est ut vestibulum rhoncus, risus dui tincidunt sapien, et dictum dui mi quis nulla. Vivamus aliquam varius magna a interdum. Pellentesque sollicitudin, urna non tempus efficitur, purus neque ultrices leo, condimentum vehicula lacus lacus in massa. Fusce dui lacus, tempus nec viverra in, semper quis est. Proin nibh quam, congue eget augue vel, varius ultrices dolor. Mauris id enim mollis, porta enim in, vestibulum massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent ullamcorper dui id purus pulvinar euismod. In ultrices condimentum libero, in venenatis dui eleifend convallis. Curabitur eget convallis tellus, sagittis rutrum sapien. Aliquam id erat est. Donec fringilla maximus nisi, dapibus cursus nulla semper vitae. Donec aliquet arcu eu vulputate malesuada. Phasellus vitae neque nec dui vulputate viverra nec et mi. Nam tincidunt felis magna, vel facilisis augue dapibus eget.  ', 2, '$189.90', 0),
(9, 'Chair 5', 'Living-room', 'Vivamus et nibh non arcu elementum imperdiet eu nec mauris. Donec posuere mauris est, in convallis lectus varius vel. Suspendisse sagittis at sapien eget dignissim. Phasellus tristique diam quis ligula gravida, quis aliquet erat commodo. Proin quis iaculis velit. Quisque arcu leo, auctor a luctus vitae, ornare condimentum turpis. Integer dignissim laoreet ultricies. Cras sit amet tortor ac eros consequat egestas. Pellentesque felis urna, maximus ac diam eget, faucibus vestibulum sapien. Quisque metus tellus, pellentesque venenatis aliquet tristique, rutrum ut felis.', 2, '$212.90', 0),
(10, 'Coffee table 1', 'Living-room', 'Quisque ultrices vestibulum lacus sed efficitur. Donec neque nisi, laoreet et vehicula at, rutrum nec orci. Proin ornare ut libero vitae tempor. Aliquam metus ante, commodo non commodo sed, scelerisque sit amet arcu. Quisque interdum lectus lorem, interdum accumsan justo fermentum sed. Vivamus nec rutrum justo, et porta velit. Vivamus accumsan convallis ex, ac fermentum erat sagittis consectetur. Nulla dapibus facilisis arcu eget posuere. Integer quam eros, elementum a nunc ac, convallis imperdiet erat. Nam semper egestas dictum.', 3, '$119.90', 0),
(11, 'Coffee table 2', 'Living-room', 'Nunc molestie fringilla pulvinar. Nunc scelerisque tortor at tellus posuere, ac feugiat lorem feugiat. Aenean est arcu, euismod vel augue at, posuere malesuada urna. Maecenas lacus metus, semper ut sem eu, accumsan egestas sem. Mauris quis odio iaculis, laoreet metus a, facilisis turpis. Donec mollis enim ac ex aliquam, id euismod est euismod. Quisque suscipit mattis mi. Pellentesque scelerisque at felis nec convallis. Vivamus non diam eu tellus faucibus eleifend ut euismod turpis. Curabitur vulputate mattis maximus. Fusce sollicitudin euismod tempus.', 3, '$159.90', 0),
(12, 'Coffee table 3', 'Living-room', 'Sed sed malesuada sapien. Suspendisse quis velit et erat hendrerit placerat nec vel nulla. Vestibulum euismod quis risus ac congue. Morbi tempor, nibh quis convallis pellentesque, augue nibh tristique leo, eget tincidunt metus orci id lorem. Aliquam aliquam turpis sed accumsan maximus. Proin efficitur risus eu iaculis mattis. Nulla quis semper nisi, vel rhoncus lectus. Suspendisse eget ipsum lacus. Mauris consequat ut est non semper. Suspendisse iaculis nisi eu nisi volutpat, ut efficitur tortor faucibus. Quisque molestie elementum quam eu vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse potenti. Sed volutpat arcu vel mi venenatis aliquam at ac libero. Fusce eu finibus libero.', 3, '$169.90', 0),
(13, 'Coffee table 4', 'Living-room', 'Praesent pellentesque justo neque, sed ultricies est hendrerit sollicitudin. Aliquam aliquet mattis elit. In ultricies mattis diam, ut finibus eros feugiat vitae. Praesent lacinia ante lectus, quis luctus lectus pretium vitae. Integer consectetur ante sit amet euismod commodo. Vivamus sodales volutpat nibh, nec semper est pellentesque non. Vivamus euismod, nisl non congue ultricies, augue eros euismod sapien, sodales pharetra quam ante vel sapien. Aliquam pellentesque commodo orci ultricies mattis. Morbi euismod scelerisque urna. Sed venenatis sagittis augue. Morbi lacinia eros ut varius tincidunt. Phasellus pretium dapibus magna non scelerisque.', 3, '$149.90', 0),
(14, 'Bookcase 1', 'Living-room', 'Suspendisse quis velit et erat hendrerit placerat nec vel nulla. Vestibulum euismod quis risus ac congue. Morbi tempor, nibh quis convallis pellentesque, augue nibh tristique leo, eget tincidunt metus orci id lorem. Aliquam aliquam turpis sed accumsan maximus. Proin efficitur risus eu iaculis mattis. Nulla quis semper nisi, vel rhoncus lectus. Suspendisse eget ipsum lacus. Mauris consequat ut est non semper. Suspendisse iaculis nisi eu nisi volutpat, ut efficitur tortor faucibus. Quisque molestie elementum quam eu vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse potenti. Sed volutpat arcu vel mi venenatis aliquam at ac libero. Fusce eu finibus libero.', 4, '$99.90', 0),
(15, 'Bookcase 2', 'Living-room', 'Donec posuere mauris est, in convallis lectus varius vel. Suspendisse sagittis at sapien eget dignissim. Phasellus tristique diam quis ligula gravida, quis aliquet erat commodo. Proin quis iaculis velit. Quisque arcu leo, auctor a luctus vitae, ornare condimentum turpis. Integer dignissim laoreet ultricies. Cras sit amet tortor ac eros consequat egestas. Pellentesque felis urna, maximus ac diam eget, faucibus vestibulum sapien. Quisque metus tellus, pellentesque venenatis aliquet tristique, rutrum ut felis.', 4, '$109.90', 0),
(16, 'Bookcase 3', 'Living-room', 'Duis varius, est ut vestibulum rhoncus, risus dui tincidunt sapien, et dictum dui mi quis nulla. Vivamus aliquam varius magna a interdum. Pellentesque sollicitudin, urna non tempus efficitur, purus neque ultrices leo, condimentum vehicula lacus lacus in massa. Fusce dui lacus, tempus nec viverra in, semper quis est. Proin nibh quam, congue eget augue vel, varius ultrices dolor. Mauris id enim mollis, porta enim in, vestibulum massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent ullamcorper dui id purus pulvinar euismod. In ultrices condimentum libero, in venenatis dui eleifend convallis. Curabitur eget convallis tellus, sagittis rutrum sapien.', 4, '$89.90', 0),
(17, 'Bookcase 4', 'Living-room', 'Nunc molestie fringilla pulvinar. Nunc scelerisque tortor at tellus posuere, ac feugiat lorem feugiat. Aenean est arcu, euismod vel augue at, posuere malesuada urna. Maecenas lacus metus, semper ut sem eu, accumsan egestas sem. Mauris quis odio iaculis, laoreet metus a, facilisis turpis. Donec mollis enim ac ex aliquam, id euismod est euismod. Quisque suscipit mattis mi. Pellentesque scelerisque at felis nec convallis. Vivamus non diam eu tellus faucibus eleifend ut euismod turpis. Curabitur vulputate mattis maximus. Fusce sollicitudin euismod tempus.', 4, '$119.90', 0),
(18, 'Bed 1', 'Bedroom', 'Quisque ac mi aliquam metus mattis varius sit amet in lorem. Etiam volutpat ex sed neque porta, et finibus magna placerat. Maecenas facilisis faucibus malesuada. Nullam eget viverra odio. Donec vitae gravida ante, id cursus odio. Suspendisse hendrerit eleifend lacinia. Sed at venenatis nulla. Nunc turpis dui, mollis vitae velit iaculis, condimentum suscipit leo. Integer laoreet a nulla a iaculis. Fusce pretium metus arcu, ut lacinia metus rutrum lacinia. Sed nec diam sit amet est placerat semper. Curabitur suscipit enim in nibh consequat porttitor.', 5, '$219.90', 0),
(19, 'Bed 2', 'Bedroom', 'Nam quam justo, egestas non molestie nec, pulvinar eget mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean interdum vel neque at euismod. Donec a magna vitae sem maximus convallis. Etiam nunc tellus, porttitor vitae dictum vel, vestibulum fringilla massa. Pellentesque finibus ullamcorper lorem at scelerisque. Nulla molestie tellus ut enim tempus, id iaculis magna lacinia. Sed neque orci, porttitor at malesuada et, consequat eu nisl. Sed dignissim ligula ut felis volutpat tempor. Mauris venenatis nulla augue, blandit sodales enim feugiat in. Donec quis dignissim leo. Nullam in ultricies sapien, quis venenatis sem. Praesent diam massa, porta id dapibus ut, sagittis quis odio. In varius justo augue, nec lobortis ex ultricies non.', 5, '$179.90', 0),
(20, 'Bed 3', 'Bedroom', ' Fusce nibh nunc, pharetra tincidunt felis eget, placerat vulputate quam. Ut dictum, lacus quis dignissim interdum, odio nisl auctor lectus, sed sollicitudin tellus mi non lectus. Morbi lobortis leo tellus, in imperdiet velit bibendum et. Mauris convallis mi lorem, ut dapibus diam molestie a. Praesent bibendum ipsum vitae purus scelerisque, vel commodo erat tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris at lorem vitae felis lobortis feugiat et quis tellus. Nullam vitae placerat lacus, nec auctor leo. Phasellus ut varius mi, at tincidunt odio. In lorem urna, ultricies non quam ac, pharetra cursus turpis. Pellentesque lacus magna, feugiat nec posuere viverra, congue ornare purus. Morbi varius gravida arcu pulvinar sodales.', 5, '$179.90', 0),
(21, 'Bed 4', 'Bedroom', 'Nullam elementum semper massa, sit amet elementum velit porta ut. Praesent tincidunt lorem at tristique congue. Nam felis tortor, varius eget aliquet ac, sodales in nisi. Aenean maximus risus et elit fermentum eleifend. Pellentesque aliquet vel odio vel placerat. Vivamus eget nibh enim. Vestibulum sit amet volutpat tellus. Cras justo sem, luctus quis efficitur ac, pellentesque nec magna. Nam lorem ante, dignissim eget ultrices ac, imperdiet sit amet nibh. Phasellus in diam vel lorem placerat lobortis ut non est. Ut eget finibus dolor. Pellentesque luctus risus ut ante dignissim facilisis in in nisi.', 5, '$219.90', 0),
(22, 'Bed 5', 'Bedroom', 'Quisque molestie sem vitae placerat aliquet. Curabitur quis dui at elit hendrerit vehicula ut eu nulla. Proin augue lectus, ultrices nec magna non, faucibus lacinia erat. Integer mollis interdum diam nec convallis. Integer semper neque eu arcu lacinia porttitor. Proin sollicitudin, lorem faucibus interdum varius, nisi orci egestas lacus, euismod tempor tellus quam faucibus ligula. Aliquam non nulla et ante fermentum varius. Aenean lorem eros, viverra eu viverra et, suscipit nec diam. Cras sagittis tincidunt viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel ipsum lacus. Curabitur dui neque, rhoncus vulputate malesuada quis, facilisis sed quam. Nullam pellentesque lacus neque, ut eleifend est varius sed. Aliquam pretium massa ligula, sed venenatis leo efficitur sit amet. In vitae tincidunt neque.', 5, '$189.90', 0),
(23, 'Bedside table 1', 'Bedroom', 'Nunc rutrum lacinia enim eu lacinia. Fusce eu quam dignissim, dictum tortor ac, hendrerit tellus. Fusce eget rutrum mauris. Pellentesque facilisis posuere augue eleifend eleifend. Donec ac erat mauris. Praesent elementum, neque id ultricies maximus, sem tellus consectetur nisl, eu ultricies odio nisl vel eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas non magna et tellus lobortis maximus vel sit amet eros. Vestibulum dictum nisi sit amet dolor porttitor, sed porta magna bibendum. Maecenas dapibus et mi ac sodales.', 6, '$89.90', 0),
(24, 'Bedside table 2', 'Bedroom', 'Praesent tincidunt lorem at tristique congue. Nam felis tortor, varius eget aliquet ac, sodales in nisi. Aenean maximus risus et elit fermentum eleifend. Pellentesque aliquet vel odio vel placerat. Vivamus eget nibh enim. Vestibulum sit amet volutpat tellus. Cras justo sem, luctus quis efficitur ac, pellentesque nec magna. Nam lorem ante, dignissim eget ultrices ac, imperdiet sit amet nibh. Phasellus in diam vel lorem placerat lobortis ut non est. Ut eget finibus dolor. Pellentesque luctus risus ut ante dignissim facilisis in in nisi.', 6, '$119.90', 0),
(25, 'Bedside table 3', 'Bedroom', ' Vestibulum maximus nisi nec interdum porta. Pellentesque at nulla ac velit lobortis lobortis ut id dolor. Sed cursus sit amet dolor eu mattis. Fusce nibh nunc, pharetra tincidunt felis eget, placerat vulputate quam. Ut dictum, lacus quis dignissim interdum, odio nisl auctor lectus, sed sollicitudin tellus mi non lectus. Morbi lobortis leo tellus, in imperdiet velit bibendum et. Mauris convallis mi lorem, ut dapibus diam molestie a. Praesent bibendum ipsum vitae purus scelerisque, vel commodo erat tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris at lorem vitae felis lobortis feugiat et quis tellus. Nullam vitae placerat lacus, nec auctor leo. Phasellus ut varius mi, at tincidunt odio. In lorem urna, ultricies non quam ac, pharetra cursus turpis. Pellentesque lacus magna, feugiat nec posuere viverra, congue ornare purus. ', 6, '$99.90', 0),
(26, 'Bedside table 4', 'Bedroom', 'Suspendisse id nisi consequat, blandit turpis sed, feugiat diam. Nullam consequat tincidunt orci, nec ullamcorper diam condimentum pretium. Maecenas pretium facilisis elit, sit amet congue velit euismod id. Maecenas sed lorem ultricies, sodales mi nec, suscipit lacus. Sed tempus tellus ut elit auctor tincidunt et et diam. Cras eu pretium sapien, vitae varius est. Proin viverra purus id justo varius, ut hendrerit tortor ultrices.', 6, '$119.90', 0),
(27, 'Dresser 1', 'Bedroom', 'Integer pellentesque, elit ut ultrices dictum, mi nibh pharetra turpis, non varius augue dui vel lorem. Vivamus elit tortor, auctor a mi sed, lacinia finibus ex. Etiam varius dolor eget turpis dignissim scelerisque. Integer quam tortor, sagittis id eleifend sit amet, pellentesque vel sapien. Sed consectetur nulla ut ante tincidunt ultrices. Nunc nec malesuada erat. Integer scelerisque lacus sed felis tincidunt, id congue nunc luctus. Phasellus eget metus pulvinar, euismod turpis ac, elementum justo. Pellentesque elit erat, finibus pharetra justo quis, sollicitudin imperdiet felis. Nulla non nulla at sapien dapibus dignissim posuere eget velit. Sed in laoreet quam, eget convallis nisl. Pellentesque eget erat et lectus cursus fermentum. Vestibulum lobortis leo id magna accumsan, sit amet cursus libero venenatis. Fusce accumsan euismod erat. ', 7, '$279.90', 0),
(28, 'Dresser 2', 'Bedroom', 'Curabitur eget venenatis felis, et blandit diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent maximus nisl ac leo mollis, nec porta nisi facilisis. Curabitur ligula odio, porta vitae sollicitudin eget, vestibulum sed lacus. Sed sollicitudin imperdiet dui, nec ornare mi placerat sed. Donec congue risus eu urna consectetur, eu pellentesque nunc euismod. Sed mauris tellus, vestibulum eget faucibus at, accumsan vel eros. Duis ultrices risus a ornare mattis. Fusce id turpis eget orci egestas feugiat et eget risus. Maecenas rutrum erat porta urna imperdiet, euismod dictum purus efficitur. Duis interdum nibh euismod eros sodales ultrices.', 7, '$179.90', 0),
(29, 'Dresser 3', 'Bedroom', 'Etiam sit amet ipsum non sem fringilla tincidunt non quis arcu. Sed eu scelerisque ante, blandit feugiat lorem. Sed dictum scelerisque libero, quis finibus nisl. Sed fermentum augue at vehicula consectetur. Phasellus eget nisl fermentum, imperdiet odio ut, aliquet ex. Cras vel metus tellus. Pellentesque tempus justo quis mollis placerat. Ut suscipit, turpis non varius bibendum, ligula nisi facilisis purus, sed fermentum arcu tellus sed lectus. Ut elementum eleifend libero, nec fringilla odio eleifend id. Phasellus eu felis nec magna rhoncus tincidunt quis et nulla. Aenean non sodales neque. Donec elit nisi, porta nec luctus eu, sodales eu lorem. Vivamus nec nulla lorem. Nunc a risus ac turpis hendrerit consectetur dapibus nec ante. ', 7, '$189.90', 0),
(30, 'Dresser 4', 'Bedroom', 'Duis ornare massa at ultrices lobortis. Quisque egestas, metus a sagittis consectetur, leo lectus consequat turpis, maximus dignissim neque velit in magna. Mauris sodales scelerisque magna faucibus consequat. Integer sed nulla eu justo placerat convallis at non mi. Vestibulum auctor pellentesque nibh, sit amet consectetur odio fermentum vel. Nulla tempor efficitur lorem, eget efficitur neque iaculis eu. Phasellus blandit velit sit amet sem suscipit rutrum. Pellentesque fermentum dictum lorem, ut maximus ex cursus volutpat. Etiam malesuada in diam ac blandit. Sed in tincidunt velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ac sagittis dui. Nunc nisl odio, lobortis at rutrum vitae, volutpat eu augue.', 7, '$219.90', 0),
(31, 'Wardrobe 1', 'Bedroom', 'Cras rhoncus nisi et commodo vulputate. Suspendisse eu diam sit amet dui suscipit malesuada at ac ante. Sed accumsan, nulla ac consequat mattis, lorem sem dictum justo, et aliquet nibh risus ut massa. Sed vitae arcu in odio venenatis commodo. Fusce tempus lorem pellentesque varius rutrum. Morbi sed hendrerit felis. Phasellus a euismod nunc, et rhoncus risus. Vestibulum sit amet urna vel mauris eleifend gravida. Duis ultrices dictum purus non ultricies. Nullam finibus tortor a massa fringilla, sed vulputate dolor sodales. Morbi tincidunt nulla eu diam consectetur, quis vestibulum lectus condimentum. Cras et leo feugiat, vestibulum odio sed, fringilla neque.', 8, '$629.90', 0),
(32, 'Wardrobe 2', 'Bedroom', 'Sed consectetur felis quis mauris efficitur, non finibus elit vulputate. Nulla facilisi. Nulla imperdiet felis velit, quis commodo dui placerat a. Aliquam vulputate, leo nec laoreet venenatis, metus enim faucibus massa, quis sagittis lacus lacus id leo. Vivamus bibendum ipsum sed elit congue sodales. Nunc vitae risus ac dui euismod interdum. Nulla vel massa sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi rhoncus orci ligula, quis tincidunt ante fringilla in. Curabitur augue risus, viverra ut eros eu, sagittis porttitor sem.', 8, '$439.90', 0),
(33, 'Wardrobe 3', 'Bedroom', 'Aenean et commodo nisl. Mauris sit amet felis sed nisi pellentesque mollis vitae eu tortor. Duis tempor, urna quis hendrerit laoreet, ex arcu varius nibh, eget molestie nisl felis ut quam. Quisque auctor diam nec odio feugiat placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse tincidunt nec magna id malesuada. Fusce eros diam, condimentum non mauris eu, finibus mattis neque. Donec gravida pharetra elit ac sagittis. Quisque non egestas nisi. Quisque non dui placerat, semper turpis eu, luctus velit. Vestibulum tincidunt tempus felis, ultrices vulputate ex vehicula sit amet. Cras commodo eleifend elit, quis convallis nunc auctor non. Morbi efficitur augue sit amet leo malesuada, at sagittis turpis vulputate. Pellentesque et semper mi.', 8, '$459.90', 0),
(34, 'Wardrobe 4', 'Bedroom', 'Nullam velit sapien, suscipit eget ultricies eget, feugiat ac lacus. Nullam ornare vel erat eget viverra. Vestibulum pretium vel nisl vel pellentesque. Nulla iaculis commodo erat, ac bibendum ligula tristique at. Suspendisse sit amet vestibulum velit, ut commodo purus. Integer at eleifend dolor, at vestibulum ante. Integer sit amet lobortis turpis, dignissim volutpat quam. Cras eget augue eleifend, malesuada nisl et, porta lorem. Mauris iaculis, ante vitae venenatis aliquet, nunc tortor aliquet quam, dapibus euismod libero leo ut tortor. Nulla ex elit, ultrices eget turpis nec, iaculis ornare dolor.', 8, '$390.90', 0),
(35, 'Dining table 1', 'Dining-room', 'Vestibulum aliquam massa at risus pharetra, nec luctus diam scelerisque. Mauris sed erat et ipsum elementum scelerisque nec at erat. Fusce mauris neque, feugiat congue magna vitae, congue consectetur nibh. Mauris non maximus leo. Nulla luctus, tortor non pellentesque pellentesque, urna dolor condimentum nisi, et rhoncus diam orci malesuada purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent quis ipsum dolor.', 9, '$199.90', 0),
(36, 'Dining table 2', 'Dining-room', 'Phasellus dapibus, purus quis ornare faucibus, dolor ex consectetur libero, volutpat lacinia neque lectus et purus. Suspendisse non tortor lacinia, pharetra est at, consequat ex. Donec nec porta arcu. Proin aliquam, odio quis dapibus efficitur, nisi elit eleifend orci, quis porttitor sem mi et augue. Ut in sodales lorem. Duis sed lacinia orci. Nam in ultrices nibh, in semper neque. Phasellus in quam et tortor elementum rhoncus. Ut eget ex in leo hendrerit facilisis. Nullam sed mi at erat hendrerit lacinia et ac lectus. In ornare arcu id cursus blandit. Duis convallis neque a tellus imperdiet fermentum. Sed id malesuada odio. Integer ac dictum ante. Quisque dapibus tincidunt lectus, ultrices commodo metus.', 9, '$569.90', 0),
(37, 'Dining table 3', 'Dining-room', 'Fusce urna lorem, ullamcorper eu congue ut, vestibulum eget ex. Vestibulum et diam ultricies, elementum nisl dictum, interdum dolor. Integer massa lacus, tincidunt a libero eu, lobortis dictum tortor. Donec tempus sed dui at egestas. Nulla congue tincidunt tincidunt. Nullam non nulla at arcu consequat semper iaculis quis arcu. Duis ornare est quis magna porttitor dignissim. Vestibulum pharetra lorem ipsum, id egestas dolor auctor a. Curabitur euismod orci aliquet, egestas neque in, varius dolor. Proin ut ex erat. Donec velit erat, mollis id urna ullamcorper, vulputate porta odio. Nulla nec neque at ex ultrices feugiat viverra sed urna. In tincidunt augue nec dolor iaculis, eget pulvinar dui tincidunt. Vivamus sit amet rutrum sem.', 9, '$159.90', 0),
(38, 'Dining table 4', 'Dining-room', 'Etiam consectetur at lorem vel viverra. Aenean imperdiet a nulla vitae tincidunt. Etiam viverra lobortis sagittis. Quisque quis nibh eget orci pharetra fringilla quis eu ipsum. Fusce dictum, ligula eget tempus sagittis, odio diam consequat quam, pretium porttitor arcu lectus elementum dui. Integer mattis posuere consequat. Sed enim nibh, sodales vel finibus vel, blandit dictum elit. Aliquam volutpat id orci porta porta. Nulla viverra eget diam nec cursus. Nam interdum sed est molestie faucibus. Cras est ligula, eleifend nec sapien in, condimentum luctus ex.', 9, '$529.90', 0),
(39, 'Dining chair 1', 'Dining-room', 'Quisque justo neque, tristique vitae lorem ut, consequat facilisis nulla. Praesent convallis, nulla nec dapibus feugiat, nisi nulla gravida nibh, et tempus orci elit sed eros. Nullam in nunc varius, dignissim libero ac, laoreet erat. Curabitur viverra varius nunc vitae dignissim. Proin finibus rutrum massa, sagittis malesuada nisi consectetur vel. Nulla congue pretium sagittis. Vivamus porttitor maximus nisi, sed elementum metus rutrum ac. Vestibulum vel purus elit. Phasellus non fermentum justo. Suspendisse ac elit vitae lectus pulvinar euismod. Sed egestas porta erat, sit amet aliquam metus pulvinar at. Ut sit amet justo ut mauris consequat porttitor. Cras sagittis congue blandit. Sed sit amet eros et elit fringilla maximus. In hac habitasse platea dictumst. Aenean eros risus, viverra at tempor sit amet, tincidunt non velit.', 10, '$89.90', 0),
(40, 'Dining chair 2', 'Dining-room', 'Praesent aliquam lectus eget iaculis condimentum. Proin blandit ante sit amet mauris mattis tincidunt. Cras lacinia, sem in vestibulum volutpat, erat metus pellentesque quam, ut venenatis turpis tellus quis dolor. In consequat, ipsum pharetra fermentum molestie, orci diam scelerisque odio, eget tempor felis purus sit amet nulla. Phasellus id leo ut tellus sagittis placerat. Proin semper urna et convallis lacinia. Sed sed molestie velit, id viverra nibh. Nullam non sodales elit, vitae gravida eros. In odio justo, venenatis auctor nunc ac, venenatis vehicula dui. Quisque leo augue, volutpat ac laoreet in, cursus eleifend sapien.', 10, '$119.90', 0),
(41, 'Dining chair 3', 'Dining-room', 'Proin placerat et lorem dignissim euismod. Pellentesque a tellus blandit orci consectetur facilisis quis et turpis. Etiam facilisis neque sed tortor condimentum, non auctor ipsum consectetur. Maecenas eu magna varius turpis tempor tincidunt. Integer gravida et ipsum a sollicitudin. Fusce et leo urna. Sed velit nibh, cursus sed gravida in, ultrices eu nulla. Mauris eleifend tincidunt egestas. Maecenas a aliquam augue.', 10, '$109.90', 0),
(42, 'Dining chair 4', 'Dining-room', 'Praesent maximus enim malesuada lectus facilisis, sed tincidunt sem aliquam. Nulla sagittis maximus tincidunt. Curabitur ornare erat in turpis tristique, sed hendrerit tellus facilisis. In eu ipsum enim. Phasellus vitae pulvinar justo, sit amet lacinia arcu. Maecenas facilisis et mauris eget egestas. Aliquam erat volutpat. Donec aliquam eros in feugiat malesuada. Praesent gravida ullamcorper turpis eget luctus. Suspendisse venenatis convallis tincidunt. Integer quis ornare tellus. Pellentesque iaculis dolor magna, ac posuere lectus fermentum vel. Nullam vel gravida mauris. Suspendisse condimentum ultrices mauris at imperdiet.', 10, '$139.90', 0),
(43, 'Barstool 1', 'Dining-room', 'Sed vel arcu at leo interdum aliquet. Maecenas mi lorem, dictum in euismod vel, rutrum in justo. Morbi malesuada finibus ante eu auctor. In diam felis, dapibus vel venenatis et, blandit placerat ipsum. Mauris a ex odio. Pellentesque vehicula velit sem, ullamcorper congue nunc aliquet non. Aliquam erat volutpat. Fusce eu tortor tempor, malesuada leo sit amet, posuere augue. Mauris eu mauris sed ipsum ultricies blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam vulputate, magna non pellentesque accumsan, sapien sem volutpat tellus, eget auctor ante nisi ut purus. Quisque finibus sapien commodo quam fermentum, nec scelerisque velit egestas. Sed egestas ultricies lobortis.', 11, '$99.90', 0),
(44, 'Barstool 2', 'Dining-room', ' Nulla sagittis maximus tincidunt. Curabitur ornare erat in turpis tristique, sed hendrerit tellus facilisis. In eu ipsum enim. Phasellus vitae pulvinar justo, sit amet lacinia arcu. Maecenas facilisis et mauris eget egestas. Aliquam erat volutpat. Donec aliquam eros in feugiat malesuada. Praesent gravida ullamcorper turpis eget luctus. Suspendisse venenatis convallis tincidunt. Integer quis ornare tellus. Pellentesque iaculis dolor magna, ac posuere lectus fermentum vel. Nullam vel gravida mauris. Suspendisse condimentum ultrices mauris at imperdiet. Donec luctus, mauris non euismod pretium, eros urna pellentesque libero, eu porttitor libero urna at justo. In blandit lorem vitae velit placerat, nec malesuada felis pellentesque.', 11, '$139.90', 0),
(45, 'Barstool 3', 'Dining-room', 'Maecenas vestibulum mattis sollicitudin. Proin vel tortor egestas, condimentum leo ut, blandit mi. Quisque lacinia sit amet justo vitae posuere. Sed venenatis fermentum mi non aliquam. Ut sed commodo enim, vel ullamcorper elit. Etiam vel tortor eu tortor sodales convallis. Nulla imperdiet turpis tellus, vitae luctus dolor rutrum non. Sed sodales fermentum risus eu malesuada. Aenean viverra lacus nec augue volutpat, non congue sem varius. In fringilla nulla quis turpis viverra consequat. Pellentesque lobortis varius volutpat. In id ornare nulla, sed eleifend felis. Phasellus molestie posuere dui, et ultricies nisl condimentum vitae.', 11, '$79.90', 0),
(46, 'Barstool 4', 'Dining-room', 'Phasellus at libero mattis, fermentum quam consequat, pharetra purus. Ut purus odio, aliquam nec est id, ullamcorper condimentum dolor. Phasellus in viverra metus, nec malesuada neque. Vivamus hendrerit sagittis velit, eu fringilla quam iaculis commodo. Maecenas lacus nisl, pharetra non enim non, vulputate blandit mauris. Nunc vulputate quam et nisl euismod pharetra. Sed accumsan maximus magna ut bibendum. Pellentesque faucibus laoreet justo sed cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et eros sodales, facilisis ante sed, mattis lacus.', 11, '$129.90', 0),
(47, 'Kids bed 1', 'Kids-room', 'Suspendisse iaculis sapien non orci maximus, et faucibus magna varius. Mauris mollis a lacus non laoreet. Vestibulum eget accumsan sem, condimentum accumsan ligula. Quisque sed nulla lorem. Donec hendrerit mi eu accumsan convallis. Aliquam gravida tellus sit amet tincidunt sagittis. Duis ante mauris, sollicitudin at odio ut, posuere lacinia massa. Nam molestie tempus hendrerit. Donec a nunc egestas tortor mattis placerat in vel magna. Nulla id nulla metus. Praesent sed scelerisque sapien. Sed non sollicitudin quam, sit amet finibus tortor. Integer at vehicula dui, a scelerisque quam. Fusce at velit ac metus vehicula scelerisque. Nulla pellentesque risus quis urna porta, at condimentum metus elementum. Praesent facilisis sed erat vel egestas.', 12, '$329.90', 0),
(48, 'Kids bed 2', 'Kids-room', 'In placerat, velit pretium maximus molestie, augue orci sodales felis, interdum tincidunt erat odio eu diam. Suspendisse eget justo sed arcu interdum lobortis. Sed eu magna id erat molestie euismod vel et sem. Aenean neque nisl, placerat et finibus eu, vulputate sit amet lectus. Nullam ullamcorper urna enim, a pellentesque tortor pulvinar id. Phasellus vitae consectetur quam. Phasellus ultricies nibh id imperdiet pretium. Aliquam blandit porttitor blandit. Fusce ultricies purus metus, eu bibendum nisi scelerisque sit amet. Donec faucibus odio bibendum auctor volutpat. Donec id lobortis nunc. Curabitur mollis purus eu felis tincidunt gravida.', 12, '$389.90', 0),
(49, 'Kids bed 3', 'Kids-room', 'Nulla facilisi. Praesent vitae mi tristique, consequat nunc et, dictum sapien. Sed pharetra aliquet magna quis vestibulum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean a mattis erat, a facilisis quam. Maecenas sollicitudin tellus placerat augue aliquam, quis fringilla dui facilisis. Sed rhoncus leo vitae enim tempus bibendum. Integer dictum nunc id libero vehicula, in sollicitudin lacus vestibulum. Morbi eget laoreet lorem. Ut tincidunt libero quis ligula vehicula efficitur. Pellentesque quis elementum felis, nec rhoncus dui. Nam venenatis ligula ac dolor ornare dapibus ut bibendum purus. Aliquam vulputate felis a ultricies venenatis.', 12, '$209.90', 0),
(50, 'Kids bed 4', 'Kids-room', 'Suspendisse eget justo sed arcu interdum lobortis. Sed eu magna id erat molestie euismod vel et sem. Aenean neque nisl, placerat et finibus eu, vulputate sit amet lectus. Nullam ullamcorper urna enim, a pellentesque tortor pulvinar id. Phasellus vitae consectetur quam. Phasellus ultricies nibh id imperdiet pretium. Aliquam blandit porttitor blandit. Fusce ultricies purus metus, eu bibendum nisi scelerisque sit amet. Donec faucibus odio bibendum auctor volutpat. Donec id lobortis nunc. Curabitur mollis purus eu felis tincidunt gravida.', 12, '$289.90', 0),
(51, 'Kids desk 1', 'Kids-room', 'Vivamus interdum placerat felis, id posuere dolor. Sed dictum, arcu non fringilla mattis, lorem diam efficitur odio, at ullamcorper velit nisi id turpis. Donec tempor dui purus. Duis ante lacus, semper vitae laoreet ut, lacinia a sem. Donec in porta tellus, in ornare justo. Donec quis tempus quam. Mauris eget magna quis ipsum porta sagittis. Phasellus sit amet cursus tortor. Ut eu ipsum eu nisi mattis rhoncus. Fusce ut nisi vitae tortor cursus iaculis. Nulla iaculis cursus nunc, sit amet malesuada mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 13, '$189.90', 0),
(52, 'Kids desk 2', 'Kids-room', 'Nam quis odio id quam pharetra auctor scelerisque non justo. Ut vel augue est. Sed hendrerit nulla eget porttitor auctor. In placerat viverra quam, tempus mattis tellus sodales eget. Nam consequat efficitur efficitur. Donec et facilisis magna. Nulla eget metus turpis. Ut vehicula erat ligula, at rhoncus lectus gravida ut. Aliquam nulla mi, semper eget erat sed, ultricies auctor lectus. Praesent vitae convallis metus. Nam facilisis auctor ante a mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.', 13, '$219.90', 0),
(53, 'Kids desk 3', 'Kids-room', 'Donec tincidunt interdum leo id convallis. Etiam consectetur auctor nunc ac molestie. Pellentesque efficitur felis auctor vulputate rutrum. Fusce faucibus semper nunc. Integer iaculis aliquet eros, vitae iaculis lacus tempus id. Aenean id est sagittis, commodo turpis sed, ullamcorper magna. Sed feugiat viverra ante, in ultrices nibh ultrices eget. Donec sollicitudin lacinia neque, non facilisis diam mollis vitae. In lobortis augue efficitur felis mattis tempor. Aenean ut ante est.', 13, '$199.90', 0),
(54, 'Kids desk 4', 'Kids-room', 'Ut vitae metus vitae nisi posuere rhoncus. Nulla feugiat rutrum eros, et viverra libero ultricies in. Sed tincidunt egestas nulla, quis semper dui lobortis non. Nullam est ipsum, viverra sit amet ultrices eget, luctus vitae magna. Nam egestas, diam in fringilla porta, sem lorem varius metus, in pretium augue ante aliquam lacus. Maecenas mattis tincidunt nulla quis tristique. Curabitur vel lacus vestibulum, dignissim nisi at, porta diam. Curabitur ullamcorper purus ut tortor ultricies, at condimentum nunc interdum. Fusce ultrices ornare posuere.', 13, '$179.90', 0),
(55, 'Seating 1', 'Kids-room', 'Duis vel aliquam urna, nec ullamcorper nunc. Aliquam id accumsan ante. Aenean vitae eros vel ante venenatis egestas. Sed auctor magna justo, vel volutpat est venenatis congue. Etiam nec erat nisl. Donec vitae dignissim turpis, vitae gravida velit. Fusce rutrum blandit congue. Proin sodales pellentesque eros, quis luctus nisi interdum at. Duis ac libero ut ipsum tincidunt bibendum. Nullam maximus mattis suscipit. Duis consequat dictum augue, mollis egestas nisi rutrum ac. Sed rhoncus ipsum sit amet gravida sollicitudin. Sed quis erat a ex dictum gravida. Proin fermentum tortor non justo posuere, a porta libero iaculis.', 14, '$189.90', 0),
(56, 'Seating 2', 'Kids-room', 'Nam ut maximus odio, vel scelerisque nunc. Fusce imperdiet nec nibh non ornare. Maecenas ut consequat nulla, at viverra arcu. Mauris fermentum ultrices ex, nec mollis velit maximus vitae. Pellentesque at ante in augue ornare tempus ac eu lectus. Donec a maximus est. Quisque malesuada nisi in faucibus finibus. Ut quis interdum ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 14, '$159.90', 0),
(57, 'Seating 3', 'Kids-room', 'Praesent vel sapien lacinia, molestie lacus nec, consequat lacus. Mauris tempor semper sapien quis mollis. Nam laoreet nibh ex, vitae eleifend orci tristique vitae. Sed sed scelerisque tellus, non finibus mauris. Proin sem nibh, dapibus eu fringilla vel, faucibus nec velit. Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum.', 14, '$119.90', 0),
(58, 'Seating 4', 'Kids-room', 'Mauris tempor semper sapien quis mollis. Nam laoreet nibh ex, vitae eleifend orci tristique vitae. Sed sed scelerisque tellus, non finibus mauris. Proin sem nibh, dapibus eu fringilla vel, faucibus nec velit. Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum. Sed fermentum erat non dictum luctus. Etiam rhoncus ultricies ipsum, ac vestibulum odio porta ac. Sed cursus hendrerit ligula quis sollicitudin.', 14, '$119.90', 0),
(59, 'Storage cabinet 1', 'Entryway', 'Integer ut ipsum in enim condimentum eleifend gravida nec est. Cras blandit metus vel fringilla mollis. Suspendisse nec massa metus. Nulla vel feugiat felis, et laoreet augue. Morbi auctor sodales massa sed laoreet. Nam vel quam at lorem finibus placerat a in risus. Vivamus congue orci lectus, in blandit sem fermentum eget. Aliquam ut libero quis nibh tempor pharetra vel vel tortor. Vivamus est orci, fermentum vitae ex et, varius lacinia nisl. Pellentesque pharetra ut magna vitae interdum. Integer lacinia, nisi vitae tincidunt tempor, mauris dolor aliquet lacus, vitae aliquet eros lectus et nunc. Nam efficitur id dolor id consequat. In sit amet dui vitae nibh rutrum dignissim vel sed arcu. Fusce tincidunt maximus est sodales viverra.', 15, '$389.90', 0),
(60, 'Storage cabinet 2', 'Entryway', 'Mauris tempor semper sapien quis mollis. Nam laoreet nibh ex, vitae eleifend orci tristique vitae. Sed sed scelerisque tellus, non finibus mauris. Proin sem nibh, dapibus eu fringilla vel, faucibus nec velit. Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum. Sed fermentum erat non dictum luctus. Etiam rhoncus ultricies ipsum, ac vestibulum odio porta ac. Sed cursus hendrerit ligula quis sollicitudin.', 15, '$289.90', 0),
(61, 'Storage cabinet 3', 'Entryway', 'Nam ut maximus odio, vel scelerisque nunc. Fusce imperdiet nec nibh non ornare. Maecenas ut consequat nulla, at viverra arcu. Mauris fermentum ultrices ex, nec mollis velit maximus vitae. Pellentesque at ante in augue ornare tempus ac eu lectus. Donec a maximus est. Quisque malesuada nisi in faucibus finibus. Ut quis interdum ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 15, '$329.90', 0),
(62, 'Storage cabinet 4', 'Entryway', 'Praesent vel sapien lacinia, molestie lacus nec, consequat lacus. Mauris tempor semper sapien quis mollis. Nam laoreet nibh ex, vitae eleifend orci tristique vitae. Sed sed scelerisque tellus, non finibus mauris. Proin sem nibh, dapibus eu fringilla vel, faucibus nec velit. Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum. Sed fermentum erat non dictum luctus. Etiam rhoncus ultricies ipsum, ac vestibulum odio porta ac. Sed cursus hendrerit ligula quis sollicitudin.', 15, '$259.90', 0),
(63, 'Bench 1', 'Entryway', 'Aliquam id accumsan ante. Aenean vitae eros vel ante venenatis egestas. Sed auctor magna justo, vel volutpat est venenatis congue. Etiam nec erat nisl. Donec vitae dignissim turpis, vitae gravida velit. Fusce rutrum blandit congue. Proin sodales pellentesque eros, quis luctus nisi interdum at. Duis ac libero ut ipsum tincidunt bibendum. Nullam maximus mattis suscipit. Duis consequat dictum augue, mollis egestas nisi rutrum ac. Sed rhoncus ipsum sit amet gravida sollicitudin. Sed quis erat a ex dictum gravida. Proin fermentum tortor non justo posuere, a porta libero iaculis. Integer at eros nec mi dignissim rutrum at pellentesque odio. Proin efficitur leo vel mauris vulputate, sed semper arcu faucibus.', 16, '$179.90', 0),
(64, 'Bench 2', 'Entryway', 'Proin sem nibh, dapibus eu fringilla vel, faucibus nec velit. Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum. Sed fermentum erat non dictum luctus. Etiam rhoncus ultricies ipsum, ac vestibulum odio porta ac. Sed cursus hendrerit ligula quis sollicitudin.', 16, '$219.90', 0),
(65, 'Bench 3', 'Entryway', 'Aenean vitae eros vel ante venenatis egestas. Sed auctor magna justo, vel volutpat est venenatis congue. Etiam nec erat nisl. Donec vitae dignissim turpis, vitae gravida velit. Fusce rutrum blandit congue. Proin sodales pellentesque eros, quis luctus nisi interdum at. Duis ac libero ut ipsum tincidunt bibendum. Nullam maximus mattis suscipit. Duis consequat dictum augue, mollis egestas nisi rutrum ac. Sed rhoncus ipsum sit amet gravida sollicitudin. Sed quis erat a ex dictum gravida. Proin fermentum tortor non justo posuere, a porta libero iaculis. Integer at eros nec mi dignissim rutrum at pellentesque odio. Proin efficitur leo vel mauris vulputate, sed semper arcu faucibus.', 16, '$159.90', 0),
(66, 'Bench 4', 'Entryway', ' Proin sem nibh, dapibus eu fringilla vel, faucibus nec velit. Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum. Sed fermentum erat non dictum luctus. Etiam rhoncus ultricies ipsum, ac vestibulum odio porta ac. Sed cursus hendrerit ligula quis sollicitudin.', 16, '$199.90', 0),
(67, 'Console table 1', 'Entryway', 'Donec vitae dignissim turpis, vitae gravida velit. Fusce rutrum blandit congue. Proin sodales pellentesque eros, quis luctus nisi interdum at. Duis ac libero ut ipsum tincidunt bibendum. Nullam maximus mattis suscipit. Duis consequat dictum augue, mollis egestas nisi rutrum ac. Sed rhoncus ipsum sit amet gravida sollicitudin. Sed quis erat a ex dictum gravida. Proin fermentum tortor non justo posuere, a porta libero iaculis. Integer at eros nec mi dignissim rutrum at pellentesque odio. Proin efficitur leo vel mauris vulputate, sed semper arcu faucibus.', 17, '$149.90', 0),
(68, 'Console table 2', 'Entryway', 'Nam ut maximus odio, vel scelerisque nunc. Fusce imperdiet nec nibh non ornare. Maecenas ut consequat nulla, at viverra arcu. Mauris fermentum ultrices ex, nec mollis velit maximus vitae. Pellentesque at ante in augue ornare tempus ac eu lectus. Donec a maximus est. Quisque malesuada nisi in faucibus finibus. Ut quis interdum ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 17, '$179.90', 0),
(69, 'Console table 3', 'Entryway', 'Nam laoreet nibh ex, vitae eleifend orci tristique vitae. Sed sed scelerisque tellus, non finibus mauris. Proin sem nibh, dapibus eu fringilla vel, faucibus nec velit. Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum. Sed fermentum erat non dictum luctus. Etiam rhoncus ultricies ipsum, ac vestibulum odio porta ac. Sed cursus hendrerit ligula quis sollicitudin.', 17, '$229.90', 0),
(70, 'Console table 4', 'Entryway', ' Sed euismod sodales lectus, eu imperdiet justo cursus non. Curabitur porttitor purus nec vehicula lacinia. In elementum odio nec orci hendrerit, eu aliquam tortor accumsan. Morbi pretium lobortis elit, id lobortis libero aliquam sit amet. Curabitur efficitur eros a nisi sagittis, non ullamcorper velit vestibulum. Sed fermentum erat non dictum luctus. Etiam rhoncus ultricies ipsum, ac vestibulum odio porta ac. Sed cursus hendrerit ligula quis sollicitudin.', 17, '$239.90', 0),
(71, 'Garden set 1', 'Garden', 'Pellentesque eget odio venenatis, posuere turpis convallis, semper mauris. Vivamus efficitur neque diam, quis pellentesque nisl euismod in. Aliquam vitae magna posuere odio ultrices ultricies. Vestibulum sollicitudin faucibus viverra. Duis sapien augue, blandit eu cursus eu, finibus a quam. Maecenas hendrerit, massa ac vulputate venenatis, erat nulla bibendum purus, sed tempus ex neque eget magna. Integer finibus erat vitae turpis gravida lobortis. Pellentesque porta arcu non rhoncus pulvinar. Ut feugiat facilisis posuere. Nam vel scelerisque orci.', 18, '$389.90', 0),
(72, 'Garden set 2', 'Garden', 'Mauris nec ex id arcu finibus faucibus ut et erat. Donec tempus sagittis lobortis. Praesent congue sem in risus aliquet volutpat. Nunc in laoreet est, ut dignissim velit. Curabitur bibendum elit ullamcorper massa ornare placerat. Mauris ante orci, eleifend ac nisi ornare, egestas molestie urna. Sed at rutrum neque, nec lobortis ligula. Nam ligula purus, porttitor at lacus eu, sodales eleifend turpis. Etiam in est enim. Aliquam et bibendum massa. Pellentesque ut laoreet nisl, eu fermentum nisi.', 18, '$279.90', 0);
INSERT INTO `product` (`id`, `name`, `roomType`, `content`, `idCategory`, `price`, `deleted`) VALUES
(73, 'Garden set 3', 'Garden', 'Vivamus vel ullamcorper nibh, sed viverra augue. Mauris gravida magna eros, eu elementum nibh molestie nec. Integer pretium leo non diam imperdiet tincidunt. Morbi in neque at urna maximus molestie. Aliquam erat volutpat. Nunc id dolor sapien. Quisque sit amet aliquet erat, vel feugiat enim. Sed ac magna quis augue accumsan bibendum et ut urna. Donec ultricies tincidunt velit, laoreet vehicula nisl aliquam ac. Phasellus iaculis condimentum nisl, at lobortis dui vehicula lacinia. Ut laoreet efficitur enim. Ut at ex odio.', 18, '$209.90', 0),
(74, 'Garden set 4', 'Garden', 'Etiam lacinia blandit egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus vel urna at massa elementum iaculis. Maecenas quis maximus tellus. Vestibulum eu ligula sodales, porta metus sed, tincidunt arcu. Cras vitae sem id felis iaculis sodales. Mauris fringilla, augue ut bibendum rutrum, ligula ex feugiat tortor, sed ornare lorem dui sed turpis. Donec posuere eget odio at varius. Duis volutpat venenatis nisl, et pulvinar mauris commodo vel. Aliquam non nibh sed metus porta dapibus. Nullam dapibus leo eu lobortis interdum.', 18, '$279.90', 0),
(75, 'Garden table 1', 'Garden', 'Suspendisse dolor nisl, bibendum nec scelerisque vitae, pretium et turpis. Duis imperdiet lobortis hendrerit. Praesent pulvinar mauris sit amet tristique sodales. Sed dictum tellus sit amet imperdiet tempor. Quisque auctor ut turpis vitae mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean scelerisque neque lacus. Duis consequat velit posuere lorem suscipit, at tempus augue eleifend. Ut vehicula lobortis est, eleifend convallis leo tempus eget.', 19, '$119.90', 0),
(76, 'Garden table 2', 'Garden', 'Donec dignissim ut purus eget maximus. Vivamus quis condimentum felis, vel ullamcorper arcu. Ut molestie ultrices velit quis interdum. Cras viverra ante non hendrerit interdum. Nam lacinia lectus a lacus consectetur, nec accumsan diam viverra. Sed non leo a metus scelerisque fermentum sed sollicitudin urna. Nullam a diam volutpat, blandit magna ac, mattis libero. Curabitur non hendrerit ligula. Aenean eu diam nec nisi hendrerit egestas. Nulla id justo eleifend, porta felis in, molestie ante. In fermentum lorem a neque luctus, nec interdum massa pellentesque. Curabitur fringilla felis sit amet erat fermentum, sed aliquet lectus ultrices. Aliquam ut lacus sed diam laoreet sagittis.', 19, '$159.90', 0),
(77, 'Garden table 3', 'Garden', 'Vestibulum id leo nisl. Pellentesque eget odio venenatis, posuere turpis convallis, semper mauris. Vivamus efficitur neque diam, quis pellentesque nisl euismod in. Aliquam vitae magna posuere odio ultrices ultricies. Vestibulum sollicitudin faucibus viverra. Duis sapien augue, blandit eu cursus eu, finibus a quam. Maecenas hendrerit, massa ac vulputate venenatis, erat nulla bibendum purus, sed tempus ex neque eget magna. Integer finibus erat vitae turpis gravida lobortis. Pellentesque porta arcu non rhoncus pulvinar. Ut feugiat facilisis posuere. Nam vel scelerisque orci.', 19, '$129.90', 0),
(78, 'Garden table 4', 'Garden', 'Donec dignissim ut purus eget maximus. Vivamus quis condimentum felis, vel ullamcorper arcu. Ut molestie ultrices velit quis interdum. Cras viverra ante non hendrerit interdum. Nam lacinia lectus a lacus consectetur, nec accumsan diam viverra. Sed non leo a metus scelerisque fermentum sed sollicitudin urna. Nullam a diam volutpat, blandit magna ac, mattis libero. Curabitur non hendrerit ligula. Aenean eu diam nec nisi hendrerit egestas. Nulla id justo eleifend, porta felis in, molestie ante. In fermentum lorem a neque luctus, nec interdum massa pellentesque. Curabitur fringilla felis sit amet erat fermentum, sed aliquet lectus ultrices. Aliquam ut lacus sed diam laoreet sagittis.', 19, '$179.90', 0),
(79, 'Outdoor chair 1', 'Garden', 'Phasellus sed felis urna. Donec quis mauris nec quam sagittis volutpat. Suspendisse consectetur augue in ex dictum sagittis. Donec vitae egestas urna, non condimentum nisl. In hac habitasse platea dictumst. Proin mollis suscipit condimentum. Sed eget enim et orci cursus convallis quis eu massa. Integer mattis condimentum magna et dapibus. Donec vehicula purus eu leo malesuada, quis tristique mi dapibus. Nulla libero lorem, egestas non tincidunt ut, congue sit amet mauris. Fusce aliquet eu sem eu tempus. Donec id lectus id augue congue pellentesque. Suspendisse vitae urna eu ipsum consectetur commodo vel eu massa.', 20, '$139.90', 0),
(80, 'Outdoor chair 2', 'Garden', 'Aenean dictum convallis leo vitae maximus. Suspendisse consequat condimentum leo tempor vulputate. Duis molestie tellus eu eros facilisis ornare. Fusce in erat vitae quam euismod volutpat sit amet eu metus. Vestibulum non dolor non massa convallis eleifend. Fusce viverra auctor volutpat. Quisque vel leo massa. Cras blandit metus in dolor porta imperdiet. Quisque semper velit vitae malesuada rutrum. Suspendisse a vulputate massa. Duis id bibendum est.', 20, '$219.90', 0),
(81, 'Outdoor chair 3', 'Garden', 'Maecenas quis egestas diam. Morbi porttitor eu diam sed pharetra. Ut congue risus non diam cursus, tincidunt tincidunt nisi porta. Curabitur ut varius ligula. Proin quis tempor felis. In vitae mauris sagittis, lobortis nisi at, euismod nisl. Phasellus a aliquet augue. In arcu dolor, pulvinar vel vestibulum quis, ornare nec nisl. Sed nec augue vel est efficitur pellentesque id ultricies velit. In vel tellus sed velit rutrum laoreet. In sapien purus, luctus ut ullamcorper ullamcorper, tincidunt at nisl. Sed et lectus aliquam, scelerisque lorem sed, pulvinar lorem. Praesent gravida pulvinar venenatis.', 20, '$159.90', 0),
(82, 'Outdoor chair 4', 'Garden', 'Proin nec malesuada dolor, at imperdiet lacus. Suspendisse mattis mi pharetra pellentesque molestie. Proin malesuada dignissim arcu vel pharetra. Praesent ut dui quis metus rhoncus luctus ut vitae lacus. Mauris ornare, augue et varius sagittis, sapien diam rutrum orci, quis faucibus nulla diam vitae justo. Donec sodales, sem non scelerisque auctor, risus lectus ultricies odio, id vulputate neque libero eu tortor. Sed auctor neque sed velit vestibulum interdum. Ut quam quam, eleifend vel hendrerit sed, pharetra at dui. Vivamus sed justo vel ipsum blandit tincidunt. Aliquam lacus dui, convallis finibus erat vel, dapibus malesuada quam. Vestibulum pharetra enim in scelerisque consequat.', 20, '$149.90', 0),
(83, 'Hammock 1', 'Garden', 'Curabitur non mattis sapien. Nunc non urna ut ligula auctor aliquet. Nullam non elit augue. Sed accumsan imperdiet turpis sit amet ullamcorper. Suspendisse tempus, sem vel euismod accumsan, arcu magna dignissim ante, a dapibus odio orci quis tortor. Sed euismod vulputate dictum. Vivamus et libero in tortor congue tincidunt. Curabitur mattis turpis porta, bibendum velit eget, sollicitudin elit. Etiam at ex sollicitudin, tincidunt lorem at, blandit turpis. Etiam imperdiet felis eu ultrices tincidunt. Maecenas finibus lacus et libero facilisis gravida. Nunc in purus ante.', 21, '$219.90', 0),
(84, 'Hammock 2', 'Garden', 'Cras sodales maximus lectus id tincidunt. Vivamus velit lectus, commodo vitae tempor nec, fringilla nec leo. Ut dui risus, mollis et risus id, rutrum fermentum enim. Mauris ut orci turpis. Duis efficitur sapien mauris, id laoreet sem laoreet sed. Etiam ac pretium mi. Proin a placerat leo. Nulla ut mi et arcu sagittis accumsan. Suspendisse efficitur mollis sollicitudin. Donec vitae velit at nisi lacinia tempor. Nulla ac volutpat augue, eu blandit ligula.', 21, '$189.90', 0),
(85, 'Hammock 3', 'Garden', 'Cras tristique, leo vel ornare faucibus, libero elit volutpat nulla, non pretium lorem magna id est. Mauris eu nisl sit amet odio suscipit semper vitae ac nulla. Nullam ac tincidunt justo, eu cursus turpis. Ut massa dolor, consectetur sed odio non, consectetur euismod ipsum. Nullam hendrerit, magna eu commodo tincidunt, nibh eros gravida massa, quis luctus nisi massa vitae lorem. Nullam non imperdiet leo, a fringilla nulla. Fusce ac vehicula arcu, nec volutpat metus. Nam vel magna dictum, pellentesque erat non, finibus arcu. Sed quis mauris lectus. Suspendisse potenti. Pellentesque facilisis varius dolor, sit amet porttitor leo semper vel. In leo nunc, pellentesque feugiat eros vitae, tempus lobortis magna.', 21, '$199.90', 0),
(86, 'Hammock 4', 'Garden', 'Integer varius suscipit sem, et hendrerit massa blandit nec. Nullam eget dignissim lectus. Ut sed pulvinar ex, eu viverra nibh. Quisque quis nunc mi. Sed non egestas sapien, a vulputate metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat magna ut mauris rhoncus, vitae sodales nibh aliquet. Integer justo massa, scelerisque tristique urna vel, posuere sodales lectus. Sed eget tincidunt nibh, a volutpat arcu. Suspendisse at fermentum orci, id interdum risus. Praesent sollicitudin id eros scelerisque semper. Proin ultrices dolor orci, eu convallis purus laoreet eget. Sed dictum massa eu velit tempus, nec volutpat ex fermentum. Nulla mattis, augue in semper fermentum, ipsum turpis vestibulum nibh, in lobortis tortor elit vel ante.', 21, '$179.90', 0),
(87, 'Hammock 5', 'Garden', 'Proin vel viverra sapien. Maecenas ultrices nibh luctus dapibus lobortis. Morbi viverra urna ut purus volutpat tristique. Morbi maximus volutpat augue nec pellentesque. Fusce augue magna, cursus nec turpis eget, gravida porttitor elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ut suscipit massa, non iaculis lorem. Curabitur eget velit dapibus, venenatis metus a, mollis arcu.proba', 21, '$129.90', 0);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'user'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `idStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `username`, `password`, `idStatus`) VALUES
(3, 'Bela', 'Stojanovic', 'bela@gmail.com', 'Bela17', '*749C7B22BA7C8D92957B00A02F71E53C3B875754', 1),
(5, 'Milos', 'Stojanovic', 'milos@gmail.com', 'Milos31', '*4EDC23287149D34E6B837BD9F1EED31F94C8521F', 1),
(6, 'Kristina', 'Paunic', 'paunickristina@gmail.com', 'kristina', '*1D0B84B61EF7A68486081BDE04B19D64C84F04AC', 2),
(7, 'Luna', 'Paunic', 'luna@gmail.com', 'Luna31', '*3D717512D5F2C876CBDBE20BE2EC6B8E63DC0D20', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_product_idProduct_id_idx` (`idProduct`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gallery_product_idProduct_id_idx` (`idProduct`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category_idCategory_id_idx` (`idCategory`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_status_idStatus_id_idx` (`idStatus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_product_idProduct_id` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `fk_gallery_product_idProduct_id` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category_idCategory_id` FOREIGN KEY (`idCategory`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_status_idStatus_id` FOREIGN KEY (`idStatus`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
