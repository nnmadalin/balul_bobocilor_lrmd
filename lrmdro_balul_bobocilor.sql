-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2023 at 02:27 PM
-- Server version: 10.3.39-MariaDB-log
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrmdro_balul_bobocilor`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication_codes`
--

CREATE TABLE `authentication_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authentication_codes`
--

INSERT INTO `authentication_codes` (`id`, `code`, `is_used`) VALUES
(20, '9y6567sw59', 1),
(19, 'tmycwngaff', 1),
(18, 'vsswpj4axp', 1),
(17, '11joe5k6o5', 1),
(16, 'zgjuvxej25', 1),
(15, 'g2sj70300x', 1),
(14, 'ov5ov2mb3d', 1),
(13, 'mmhbqfuzvn', 1),
(12, 'y7khmtbvzq', 1),
(11, 'm47wx2xocg', 1),
(10, 'm9uq0lyswa', 1),
(9, 'zstblog7xg', 1),
(8, 'oduccby5pi', 1),
(7, '5g4hxfrrud', 1),
(6, 'bu4ux4yzqn', 1),
(5, '48s7svqrmg', 1),
(4, 'l9knuuygq4', 1),
(3, 'yab1ho7lqb', 1),
(2, '9uu0iemzlm', 1),
(1, 'ifq4yqv0vj', 1),
(21, 'i7dmzws2hj', 1),
(22, 'peogp6c8he', 1),
(23, 'lgmuplwc2o', 1),
(24, 'fviptrdq1l', 1),
(25, '2aox3d6zn9', 1),
(26, 'xbemgaoa21', 1),
(27, 'kfvxno8906', 1),
(28, 'y0ax04u6x3', 1),
(29, '7ot7xjyjy1', 1),
(30, 'cisgceam5d', 1),
(31, '6e2gvnenvd', 1),
(32, '4cr9ifla8z', 1),
(33, '88je2n46h4', 1),
(34, 'svwdz1uegx', 1),
(35, '2ln7rpw4il', 1),
(36, 've7tmwu7b4', 1),
(37, 'n5z0lft90r', 1),
(38, 'gwfyjwlgom', 1),
(39, '5n9id7w493', 1),
(40, 'bsmvkv2toi', 1),
(41, 'w3l4vn8pif', 1),
(42, 'vwi21wu74b', 1),
(43, 'bp4dectfq6', 1),
(44, '2c5jhp750j', 1),
(45, 'b11od50gg4', 1),
(46, 'tjf9bcnees', 1),
(47, 'u9ezi0cs7z', 1),
(48, 'u2pxmpljbh', 1),
(49, 'lu5i2hzggo', 1),
(50, '5bdcno7977', 1),
(51, 'r79kyn9s42', 1),
(52, 'vbav8scnv2', 1),
(53, 'ribc2m1h0o', 1),
(54, '7upb3igxsj', 1),
(55, 'hllmm2o60b', 1),
(56, 'hx89ag4rtw', 1),
(57, 'bqxds7opu2', 1),
(58, 'ewjfkncxto', 1),
(59, 'rnpt74z1my', 1),
(60, 'sam0e2iaq6', 1),
(61, 'c094rigs54', 1),
(62, 't4b8c8fh2k', 1),
(63, 'ewwiyhwydy', 1),
(64, 'gs2rwxrz7t', 1),
(65, '78158iibb4', 1),
(66, 'jtu3tmlsmm', 1),
(67, '2e2pusn38h', 1),
(68, 'gqg44m2lxz', 1),
(69, 'feoprdvxuh', 1),
(70, 'hg48f2zudd', 1),
(71, 'gderxti96g', 1),
(72, '4wnnuwa2up', 1),
(73, 'f8ouhs8le1', 1),
(74, 'gim7kxuwv3', 1),
(75, 'fiz3bgpzcn', 1),
(76, 'g2elw4ahx1', 1),
(77, 'ddfld495qe', 1),
(78, 'cbkapuhxxh', 1),
(79, 'ngqo9yvxyl', 1),
(80, 'wn131fp7xq', 1),
(81, 'nowwrjtmu3', 1),
(82, '0mehljd2fh', 1),
(83, 'e0k4y2y6im', 1),
(84, 'jttgyxk9kk', 1),
(85, 'm9bst10emu', 1),
(86, 'b84u0a6xuc', 1),
(87, '4qcg9ahsm8', 1),
(88, 'n83ps88fef', 1),
(89, 'k7bczra5br', 1),
(90, 'kgqc7ocd1p', 1),
(91, 'rkmvmeaqo7', 1),
(92, 'o8tc8ik5up', 1),
(93, 'j64pw9c9ue', 1),
(94, '86wkzph7wo', 1),
(95, '3uuiv8cuja', 1),
(96, 'p8b0s52yc1', 1),
(97, 'vvm9yflodx', 1),
(98, 'vgoz5ka865', 1),
(99, '4tyvig6v6d', 1),
(100, 'xx8r9ovjlj', 1),
(101, '78vfhkrxg6', 1),
(102, 'vsxrj9g6oj', 1),
(103, 'k6wkd3d4vl', 1),
(104, 'a85af375nn', 1),
(105, '424ci0yvmj', 1),
(106, '7linmv0pap', 1),
(107, '8js50qe26v', 1),
(108, 'zv9n12rxcu', 1),
(109, '61wmmhanjc', 1),
(110, 'nsyfroljdf', 1),
(111, 't1ibjm00sf', 1),
(112, 'is5r4akbe6', 1),
(113, 'rcej6xgt2d', 1),
(114, '839eaqzy2z', 1),
(115, 'dva0khxvob', 1),
(116, 'xy842uhzi2', 1),
(117, 'brliwzw6sk', 1),
(118, 'uvoex10k0m', 1),
(119, 'awigy2vbkg', 1),
(120, 'f1gegtz1v4', 1),
(121, 'f9il8wablm', 1),
(122, 'ibpnfau0rw', 1),
(123, '3qb5a4g0ch', 1),
(124, '7ivr4jbtsr', 1),
(125, '4rmfvzj203', 1),
(126, 'my433wnft2', 1),
(127, '6iuytuo8qs', 1),
(128, 'lbxwo9thkf', 1),
(129, 'k700qq0dmt', 1),
(130, 'z8dr85f68y', 1),
(131, 'inosirnici', 1),
(132, '0zo273m7ot', 1),
(133, '4rb2ww8m4b', 1),
(134, 'h3giq7hn1d', 1),
(135, 'vah7nshme7', 1),
(136, '1chlh47i1e', 1),
(137, 'hsqtmp2x0e', 1),
(138, 'ldaxmgvm3n', 1),
(139, '7hy9w70c6c', 1),
(140, 'qeonqcaml1', 1),
(141, '4h3bgkfvig', 1),
(142, '53nuhalb4c', 1),
(143, 'qleytwpe4e', 1),
(144, '58rb49b2d3', 1),
(145, 'h5tsgid4b9', 1),
(146, '4axo23wkro', 1),
(147, 'c0syxyu0ry', 1),
(148, 'wvncgj6935', 1),
(149, '3dpdqgdd42', 1),
(150, 'hd02cii948', 1),
(151, 'on8m08pm7a', 1),
(152, 'szmh7sxgin', 1),
(153, '8d1rc3o3rb', 1),
(154, '4j4jjz2zvs', 1),
(155, '3xvmuw5ov4', 1),
(156, 'muc0hrbwme', 1),
(157, 'hyd4639myq', 1),
(158, 'rawn0o29qu', 1),
(159, 'njkvs4zzs4', 1),
(160, '8ohklv4qvm', 1),
(161, 'idwz4x8jtw', 1),
(162, '2psjrmkts3', 1),
(163, 'j5axc9b65c', 1),
(164, '0048rylz57', 1),
(165, 'xtsx4lhp1l', 1),
(166, 'kbbxeo2pwz', 1),
(167, 'roma7jj88t', 1),
(168, 'bi65dnhzc5', 1),
(169, '7lvjtlogto', 1),
(170, 'wpx94czsei', 1),
(171, 'c4g8z9y5rf', 1),
(172, 'grglce2z0f', 1),
(173, 'yi0wn07cm9', 1),
(174, 'p86yzgyx31', 1),
(175, 'm0vnoortf1', 1),
(176, 's8y33uja61', 1),
(177, 'bac21u8s3g', 1),
(178, '08ff7y1kql', 1),
(179, '72g8qy0rcy', 1),
(180, 'o8cv95f85i', 1),
(181, 'v63yimyp26', 1),
(182, 'zyrf7qtjkn', 1),
(183, 'rd9u4l32t2', 1),
(184, 'qce3pf2w2g', 1),
(185, 'lz0acudzon', 1),
(186, 'zvq6u8irbi', 1),
(187, 'ilqyzz78qz', 1),
(188, 'za1aw9nu31', 1),
(189, 'jdpv0un4vi', 1),
(190, 'gjt9pp3q4q', 1),
(191, '8ujwhvd5xw', 1),
(192, 'mpszi6sqpn', 1),
(193, 'pli75untqv', 1),
(194, 'su6bn93usb', 1),
(195, 'c3p5zfpwcx', 1),
(196, 'q0yhfgqi2a', 1),
(197, 'b05m3y5wfs', 1),
(198, 'po35akv7f0', 1),
(199, '1k1oq6tatu', 1),
(200, '937j1u67jz', 1),
(201, 're7l2tj9zv', 1),
(202, '0k68v05iw9', 1),
(203, '27e53jirl9', 1),
(204, 'hvwxnn2jd0', 1),
(205, 'n8y9gvg4zv', 1),
(206, 'wegp7soogg', 1),
(207, 'eydf4fo6i6', 1),
(208, 'kz3djlzhgl', 1),
(209, 'hxqt4drj02', 1),
(210, 'kzzai3vp9h', 1),
(211, 'twzqxg6k3p', 1),
(212, 'kfkn53m50t', 1),
(213, 'nm2h55jmg1', 1),
(214, 'nmrgskrr19', 1),
(215, '0tjj82vo8q', 1),
(216, 'jupbkdis3z', 1),
(217, 'clmoecr5xb', 1),
(218, 'r6r82szrhi', 1),
(219, 'ancstjxj5f', 1),
(220, 'uplkc7conx', 1),
(221, 'd12hergjvo', 1),
(222, 'pa1o9cpfpc', 1),
(223, 'yyq90xd9iz', 1),
(224, 'hq7euhfqtb', 1),
(225, 'ew1yt8zna4', 1),
(226, 'kcpd1qhl6l', 1),
(227, 'ymegh7oumc', 1),
(228, 'wawhytj0m5', 1),
(229, 'r1k2yzgsp3', 1),
(230, '9po5t62syu', 1),
(231, '1cb5mvy43p', 1),
(232, 'ml1k4zfo1g', 1),
(233, '22p9ujit7k', 1),
(234, 'klsx92talx', 1),
(235, 'vb3o64kkl2', 1),
(236, 'lhubqzh15d', 1),
(237, 'qn1benx3tv', 1),
(238, '86mtpdkure', 1),
(239, 'i385ccekwc', 1),
(240, 'jmg0y5ywah', 1),
(241, 'jwx6g4iuf4', 1),
(242, 'sfapbsxcnq', 1),
(243, 'hkbvchvdi4', 1),
(244, 'y7ngk4cwha', 1),
(245, '5o5r9z3ar7', 1),
(246, 'j121yvnrkb', 1),
(247, 'zsieocit3t', 1),
(248, 'dz80kbtb1j', 1),
(249, 'dylj7b78u5', 1),
(250, 'aem96qioh6', 1),
(251, 'd301114gv0', 1),
(252, '10a87w2sb2', 1),
(253, '6eqipc8uzx', 1),
(254, 'eqx5d34xph', 1),
(255, '64iigz0531', 1),
(256, 'cdjysnx2in', 1),
(257, 'slcluectqb', 1),
(258, 'wfxy31slk5', 1),
(259, '5ph2k83l2j', 1),
(260, '0tvvsfrq2k', 1),
(261, '2q479u6ox8', 1),
(262, 'hv6usterv5', 1),
(263, '3s4gv6fpou', 1),
(264, '2wlamvabuq', 1),
(265, '1g57gsoxiq', 1),
(266, 'rhvdrwrl3v', 1),
(267, 'hty46a30rr', 1),
(268, 'luxy5y9thv', 1),
(269, 'm3i4dv5u92', 1),
(270, 'ply5p22ezs', 1),
(271, 'vzqzbjyjff', 1),
(272, '19lmgjpr0z', 1),
(273, 'p8pp644vwu', 1),
(274, '158ipa3i47', 1),
(275, 'dgx39wf0sh', 1),
(276, 'piu3eetqag', 1),
(277, 'sqi17wdxq0', 1),
(278, 'i19rf4e4ll', 1),
(279, 'gskbcknmcm', 1),
(280, 'l1qjmr7zui', 1),
(281, '7vsh9gv9zo', 1),
(282, 'x4q6f4le7x', 1),
(283, 'g80myxwckb', 1),
(284, 'wsmmiar3q7', 1),
(285, '7qpdb9u021', 1),
(286, '7fz1555bwv', 1),
(287, 'ekbtt8wyxk', 1),
(288, 'ehhv3ice2w', 1),
(289, 'vmpnawj64b', 1),
(290, 'nglqt4gas3', 1),
(291, 'zy9s0psb6s', 1),
(292, 'd64lwk6zm8', 1),
(293, 'p4k2hw4j3x', 1),
(294, 'j1a5vjyme0', 1),
(295, 'epo57ras3l', 1),
(296, 'p5hdj3yfcz', 1),
(297, 'gcszyngo59', 1),
(298, '3edd1eq8fm', 1),
(299, '88r0m162dt', 1),
(300, 'vvb0wlt0xb', 1);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `team1` int(11) NOT NULL DEFAULT 0,
  `team2` int(11) NOT NULL DEFAULT 0,
  `team3` int(11) NOT NULL DEFAULT 0,
  `team4` int(11) NOT NULL DEFAULT 0,
  `team5` int(11) NOT NULL DEFAULT 0,
  `team6` int(11) NOT NULL DEFAULT 0,
  `team7` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`team1`, `team2`, `team3`, `team4`, `team5`, `team6`, `team7`) VALUES
(15, 50, 53, 26, 29, 4, 77);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication_codes`
--
ALTER TABLE `authentication_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`team1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentication_codes`
--
ALTER TABLE `authentication_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
