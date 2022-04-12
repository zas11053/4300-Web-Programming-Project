-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 09:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatelist`
--

-- --------------------------------------------------------

--
-- Table structure for table `fav`
--

CREATE TABLE `fav` (
  `favID` int(11) NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `usersIDS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fav`
--

INSERT INTO `fav` (`favID`, `postID`, `usersIDS`) VALUES
(16, 48, 1),
(21, 46, 2),
(22, 45, 2),
(23, 44, 2),
(24, 43, 2),
(25, 42, 2),
(26, 39, 2),
(27, 19, 2),
(28, 17, 2),
(31, 48, 2),
(32, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `imgID` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `img_dir` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`imgID`, `usersID`, `postID`, `img_dir`) VALUES
(6, 1, 4, './uploads/3_0_1790.jpg'),
(7, 1, 4, './uploads/3_0_1790.jpg'),
(8, 2, 5, './uploads/3_0_1790.jpg'),
(9, 1, 6, './uploads/3_0_1790.jpg'),
(10, 1, 7, './uploads/3_0_1790.jpg'),
(11, 1, 8, './uploads/3_0_1790.jpg'),
(12, 1, 9, './uploads/3_0_1790.jpg'),
(13, 1, 10, './uploads/3_0_1790.jpg'),
(14, 1, 11, './uploads/3_0_1790.jpg'),
(15, 1, 12, './uploads/3_0_1790.jpg'),
(16, 1, 13, './uploads/3_0_1790.jpg'),
(17, 1, 14, './uploads/3_0_1790.jpg'),
(18, 1, 15, './uploads/3_0_1790.jpg'),
(19, 1, 16, './uploads/3_0_1790.jpg'),
(20, 1, 17, './uploads/3_0_1790.jpg'),
(21, 1, 18, './uploads/18_0_1790.jpg'),
(22, 1, 19, './uploads/19_0_1790.jpg'),
(23, 1, 20, './uploads/20_0_aflawlesssilence.JPG'),
(24, 1, 21, './uploads/21_0_tinaGradPhoto_1.jpg'),
(25, 1, 22, './uploads/22_0_aflawlesssilence.JPG'),
(26, 1, 23, './uploads/23_0_odinkey..PNG'),
(27, 1, 23, './uploads/23_1_oracle_commandTwice.JPG'),
(28, 1, 23, './uploads/23_2_shiba inu.jpg'),
(29, 1, 24, './uploads/24_0_1790.jpg'),
(30, 1, 25, './uploads/24_0_1790.jpg'),
(39, 1, 29, './uploads/29_0_1790.jpg'),
(40, 1, 29, './uploads/29_1_aflawlesssilence.JPG'),
(41, 1, 29, './uploads/29_2_color.JPG'),
(42, 1, 29, './uploads/29_3_cryingbear.png'),
(43, 1, 30, './uploads/30_0_1790.jpg'),
(44, 1, 30, './uploads/30_1_aflawlesssilence.JPG'),
(45, 1, 30, './uploads/30_2_color.JPG'),
(46, 1, 30, './uploads/30_3_cryingbear.png'),
(55, 1, 33, './uploads/33_0_1790.jpg'),
(56, 1, 34, './uploads/34_0_1790.jpg'),
(57, 1, 34, './uploads/34_1_aflawlesssilence.JPG'),
(58, 1, 34, './uploads/34_2_color.JPG'),
(59, 1, 34, './uploads/34_3_cryingbear.png'),
(60, 1, 35, './uploads/35_0_1790.jpg'),
(61, 1, 35, './uploads/35_1_aflawlesssilence.JPG'),
(62, 1, 35, './uploads/35_2_color.JPG'),
(63, 1, 35, './uploads/35_3_cryingbear.png'),
(64, 1, 36, './uploads/36_0_1790.jpg'),
(65, 1, 36, './uploads/36_1_aflawlesssilence.JPG'),
(66, 1, 36, './uploads/36_2_color.JPG'),
(67, 1, 36, './uploads/36_3_cryingbear.png'),
(68, 1, 37, './uploads/37_0_1790.jpg'),
(69, 1, 37, './uploads/37_1_aflawlesssilence.JPG'),
(70, 1, 37, './uploads/37_2_color.JPG'),
(71, 1, 37, './uploads/37_3_cryingbear.png'),
(72, 1, 38, './uploads/38_0_1790.jpg'),
(73, 1, 38, './uploads/38_1_aflawlesssilence.JPG'),
(74, 1, 38, './uploads/38_2_color.JPG'),
(75, 1, 38, './uploads/38_3_cryingbear.png'),
(76, 1, 39, './uploads/39_0_1790.jpg'),
(77, 1, 39, './uploads/39_1_aflawlesssilence.JPG'),
(78, 1, 39, './uploads/39_2_color.JPG'),
(79, 1, 39, './uploads/39_3_cryingbear.png'),
(80, 1, 40, './uploads/40_0_1790.jpg'),
(81, 1, 40, './uploads/40_1_aflawlesssilence.JPG'),
(82, 1, 40, './uploads/40_2_color.JPG'),
(83, 1, 40, './uploads/40_3_cryingbear.png'),
(84, 1, 41, './uploads/41_0_1790.jpg'),
(85, 1, 41, './uploads/41_1_aflawlesssilence.JPG'),
(86, 1, 41, './uploads/41_2_color.JPG'),
(87, 1, 41, './uploads/41_3_cryingbear.png'),
(88, 1, 42, './uploads/42_0_1790.jpg'),
(89, 1, 42, './uploads/42_1_aflawlesssilence.JPG'),
(90, 1, 42, './uploads/42_2_color.JPG'),
(91, 1, 42, './uploads/42_3_cryingbear.png'),
(92, 1, 43, './uploads/43_0_1790.jpg'),
(93, 1, 43, './uploads/43_1_aflawlesssilence.JPG'),
(94, 1, 43, './uploads/43_2_color.JPG'),
(95, 1, 43, './uploads/43_3_cryingbear.png'),
(96, 1, 44, './uploads/44_0_1790.jpg'),
(97, 1, 44, './uploads/44_1_aflawlesssilence.JPG'),
(98, 1, 44, './uploads/44_2_color.JPG'),
(99, 1, 44, './uploads/44_3_cryingbear.png'),
(100, 1, 45, './uploads/45_0_1790.jpg'),
(101, 1, 45, './uploads/45_1_aflawlesssilence.JPG'),
(102, 1, 45, './uploads/45_2_color.JPG'),
(103, 1, 45, './uploads/45_3_cryingbear.png'),
(104, 1, 46, './uploads/46_0_1790.jpg'),
(105, 1, 46, './uploads/46_1_aflawlesssilence.JPG'),
(106, 1, 46, './uploads/46_2_color.JPG'),
(107, 1, 46, './uploads/46_3_cryingbear.png'),
(112, 1, 48, './uploads/48_0_DSC_0032.JPG'),
(113, 1, 48, './uploads/48_1_DSC_0033.JPG'),
(114, 1, 48, './uploads/48_2_DSC_0034.JPG'),
(115, 1, 48, './uploads/48_3_DSC_0035.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `location` longtext NOT NULL,
  `type` text NOT NULL,
  `description` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `savedAmount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `usersID`, `title`, `location`, `type`, `description`, `date`, `savedAmount`) VALUES
(4, 1, 'Working', 'Home', 'home2', '<p>Hello. <strong>Testinging 1 </strong>2 3</p>\r\n', '2022-04-08 17:32:12', 0),
(5, 2, 'updated chinese text', 'HOME', 'casual', '<p>明帽冷北参客拶動展記印同。公者論情激探質差所同治意元速純能日。昨一題囲徐系乳金終償寒企中州。縄歩辺画聞年秋新読別機能校改座。行与音庁悲属舌生面問環原。敬対第暗質測算拳母上転働県国極。発否名毎針必情止毎巨金味止多初用近修通検。暴工報組政蔵程大税割改常。井全氏屋転楽無天改成介抜瞬。生政助右校馬局調況並運郵来術付意乗油。</p>\r\n\r\n<p>岡確率使図手仕葉学色最決一強属行。予民紙労押社真居勢応進塗告上始線座無信。秀始有積角大体資作教加図襲験得各容葉。火読裁謙罫債試続火負年保。大各後委頃軍崎点在車来芸表科月育国。接辺経同題覧所色図針費流他周意訃介。存危止自寧憲題時民全容関人学。仕優聞稿待鎮三女程本活報細水啓乾人。色海次育洲経入見発中体逆考信家愛万豊奪推。</p>\r\n\r\n<p>撲理党被揚挙森難青張治定店階決。発新問色問流聞作予情町愛。権分速応択奈掲間歳女診集業歴勝譲。述水初照発必栃棋済徳程応取研件久極習団。欲繰記空財降面置州中真般亀稿経要校断問。真更鈴健沼練込関氏料意程庭営調化稿掲線現。並況際児反国聞質平断化写購県読商。飯部球果種旅掲情広場担田職寄遠。業転点動目細注生聞堂帯意演書対。</p>\r\n\r\n<p>第手長際玉栄問個本士由値能自札。全接消次結阪期競微勝婦証化能析真場。雪原酒謎企京用用学組企対第深。去雅意政応見繰広平新登小。惑事会発前暮万標玲善探置競。放写覧宅三敗運精最長前回不然耳朝案問行。医塗全容悩自転味円情張庫済米集作呼話。一編府卓深民掲断止終様転卓報祭都文。紙浴後復報敵荷恒加惑紙究意更。</p>\r\n\r\n<p>乳本尾測営問氏違各天通会。履号心強意生回陰全式負発登画笑見接争。在声建沿面化始難粋給必井売執備野。崎終因千行討微役育復国督況。明海裁由生米従題今消浦企十係至面提合載情。係集議百手待冬験変事真部育民記。外河苦画由著全映父転比選英稿書米選在空毎。繁民倍活方物踏演展被規世断勝改記議住稿紹。後受陶態毎士初子球広南金年番納禁。</p>\r\n\r\n<p>能基続京着藤拒担間盗上続。決辞込急円削題経更選総士。策日催東時激形紅紋給料透在田新藤。違海至泉支大新灰総修長直分調静。保重応額図食並展産消訓王協業使文討発奨。春機開家情性渡間御規疑坂政応懐盗考中負。求車組性状体母図橋真属姫未声売害支運。果台画子田両験価能郎陽夜記除真江戸信。京文棋町務万税覚易使銀服証助入授消分。</p>\r\n\r\n<p>受告敵土米冠限技選動斎緊断。断要続情分向険安型短層相探。連等疑社期東勝爆華廃最情奪育理治自。状問豊用券都校準伝業側性決真城共。算検業星活久掲締能自余無思違辰必。案時情花康年続公現出事世活海。油賞南管説本担盗遊盤風数送米転込。未例大教和稿山藤比検供析屋用館施見区訃新。禁配与加議和遂府道上理全退平月総不索走。</p>\r\n\r\n<p>防典釈英子部窓玲江対集者治掲図保設新式負。完無題語世鈴速競止容介基席無代出策独防。向案毎付付表職織大来討紙計王。善澤明離先国進粒著阪市特対引。法一掲相細検権聞差争目改。民市筋去経新記歩料呉国続。着内禁稿暮任作問育典若技。歩手掲近愛事約嘘際記奇機世最。済立毎対地過速年運作街描東至掲。安求本為基土覧一情教進動夢写岡相入態。</p>\r\n\r\n<p>村監関真北容報際雪市新蔵島力同飛仲食。基気載年掲独平闘時算載求読億。型佐頂山藍連森持問先冬描者。真視園南出新通室杯失使作模適佐旧小善。寄逢兵分時塩庁都信効真行舶門大広来。祭規人穀炎退氏父最右鼓読。見守県系禁表攻文連禁提盗。留能高合浩国平名問入大上必齢指山晴。止総小提方著通著療芸趣氏文芸刊水取。天同化症手売車八代到点載。</p>\r\n\r\n<p>断問陸無責山開図込裁線書気直事。渡略北値髷他選接水川倍必府催抗崎代。政提情例九取都離販姉指介。東実対情車次内去変替調導止枚彼無覧。裕社情難制応転号組真常調排扱新政。間題苦本九黒響会重物応法経烈運朝高成。体促計阪直刊米対岳想様世済碁治視訳提。当覧車挑韓表優明金制損死説紙離。打働犬張富活新男以読行東国俳上的厳岡。</p>\r\n', '2022-04-08 17:32:12', 0),
(6, 1, 'hello 4', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina&nbsp;</p>\r\n', '2022-04-08 17:32:12', 0),
(7, 1, 'hello 4', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina 5</p>\r\n', '2022-04-08 17:32:12', 0),
(8, 1, 'hello 4 for real', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina 5</p>\r\n', '2022-04-08 17:32:12', 0),
(9, 1, 'hello 4 for real', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina 5 whas us&nbsp;</p>\r\n', '2022-04-08 17:32:12', 0),
(10, 1, 'bye for real', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(11, 1, 'love you', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(12, 1, '9', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(13, 1, '8', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(14, 1, '7', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(15, 1, '6', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(16, 1, '5', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(17, 1, '4', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12', 0),
(18, 1, 'hello', 'd', 'home', '<p>dddddddddddd<s>dddddddddddd</s></p>\r\n', '2022-04-08 19:36:19', 0),
(19, 1, 's', 's', 'casual', '<p>s</p>\r\n', '2022-04-08 19:38:54', 0),
(20, 1, 'hello', 'stil', 'casual', '<p>still work</p>\r\n', '2022-04-08 19:43:00', 0),
(21, 1, 'is there pic', 'hi', 'casual', '<p>e</p>\r\n', '2022-04-09 04:25:50', 0),
(22, 1, 's', 's', 'fancy', '<p>s</p>\r\n', '2022-04-09 04:40:52', 0),
(23, 1, 'multi pic check', 's', 'casual', '<p>s</p>\r\n', '2022-04-09 05:01:24', 0),
(24, 1, 's', 's', 'fancy', '<p>s</p>\r\n', '2022-04-09 05:59:45', 0),
(25, 1, 'hello', 'h', 'casual', '<p>q</p>\r\n', '2022-04-09 06:20:41', 0),
(29, 1, 'hello', 'w', 'casual', '<p>ww</p>\r\n', '2022-04-10 06:36:34', 0),
(30, 1, 'hello', 'w', 'casual', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n', '2022-04-10 06:40:35', 0),
(33, 1, 'home2?', 's', 'home', '<p>s</p>\r\n', '2022-04-10 21:47:58', 0),
(34, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:43:20', 0),
(35, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:44:22', 0),
(36, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:45:48', 0),
(37, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:46:29', 0),
(38, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:48:29', 0),
(39, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:48:41', 0),
(40, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:20', 0),
(41, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:26', 0),
(42, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:30', 0),
(43, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:54', 0),
(44, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:50:04', 0),
(45, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:50:10', 0),
(46, 1, 'VIEW PAGE ', 'wymong', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:50:29', 0),
(48, 1, 'South Carolina Vaca', 'South Carolina , Myrtle Beach  ', 'casual', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Viverra nibh cras pulvinar mattis nunc sed. Tincidunt dui ut ornare lectus sit amet. Ac turpis egestas sed tempus. Gravida rutrum quisque non tellus orci. Purus sit amet luctus venenatis. Semper auctor neque vitae tempus quam pellentesque. Venenatis cras sed felis eget. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Integer quis auctor elit sed. Nunc mi ipsum faucibus vitae aliquet nec. Orci eu lobortis elementum nibh tellus molestie nunc.</p>\r\n\r\n<p>Orci ac auctor augue mauris augue neque gravida in. Condimentum id venenatis a condimentum vitae sapien pellentesque. Ultrices neque ornare aenean euismod elementum nisi. Neque sodales ut etiam sit amet nisl. Felis imperdiet proin fermentum leo vel orci porta non. Porttitor massa id neque aliquam vestibulum morbi. Aliquam ultrices sagittis orci a scelerisque purus semper eget. Ut lectus arcu bibendum at varius vel pharetra vel turpis. Pellentesque massa placerat duis ultricies lacus. Nulla porttitor massa id neque aliquam vestibulum. Ut etiam sit amet nisl purus in mollis nunc. Id cursus metus aliquam eleifend. Est ullamcorper eget nulla facilisi etiam dignissim diam quis. Duis ut diam quam nulla porttitor massa id neque. Dolor sit amet consectetur adipiscing elit duis tristique. Laoreet non curabitur gravida arcu ac. In est ante in nibh mauris cursus mattis molestie a. Risus feugiat in ante metus dictum at.</p>\r\n\r\n<p>Proin sed libero enim sed faucibus turpis in eu mi. Odio facilisis mauris sit amet massa vitae tortor. Pretium viverra suspendisse potenti nullam ac tortor. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Viverra nibh cras pulvinar mattis nunc sed blandit libero volutpat. Libero nunc consequat interdum varius sit amet mattis vulputate. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Donec et odio pellentesque diam volutpat commodo sed. A condimentum vitae sapien pellentesque. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Egestas quis ipsum suspendisse ultrices gravida. Volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim. Nec feugiat nisl pretium fusce id velit. Dui accumsan sit amet nulla facilisi morbi tempus. Proin libero nunc consequat interdum.</p>\r\n\r\n<p>Risus viverra adipiscing at in tellus integer feugiat. Sem integer vitae justo eget magna fermentum iaculis eu non. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque. Donec et odio pellentesque diam volutpat. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Sed lectus vestibulum mattis ullamcorper. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Pharetra massa massa ultricies mi quis hendrerit. In pellentesque massa placerat duis ultricies lacus. Sociis natoque penatibus et magnis dis parturient. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra. In vitae turpis massa sed elementum tempus. Turpis egestas pretium aenean pharetra magna.</p>\r\n\r\n<p>Mauris rhoncus aenean vel elit scelerisque mauris. Sed vulputate odio ut enim blandit volutpat maecenas volutpat. Proin nibh nisl condimentum id venenatis a. Pretium viverra suspendisse potenti nullam ac tortor vitae. In fermentum et sollicitudin ac. Ullamcorper morbi tincidunt ornare massa. Dictumst vestibulum rhoncus est pellentesque elit. Consectetur a erat nam at. Facilisi etiam dignissim diam quis enim lobortis. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin. Quis vel eros donec ac.</p>\r\n', '2022-04-12 01:02:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `usersName` varchar(255) NOT NULL,
  `usersUID` varchar(255) NOT NULL,
  `usersPWD` varchar(255) NOT NULL,
  `securityQuestion1` varchar(255) DEFAULT NULL,
  `securityQuestion2` varchar(255) DEFAULT NULL,
  `securityQuestion3` varchar(255) DEFAULT NULL,
  `pfp_img_dir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `usersName`, `usersUID`, `usersPWD`, `securityQuestion1`, `securityQuestion2`, `securityQuestion3`, `pfp_img_dir`) VALUES
(1, 'Tina Liu', 'MochaBear', '$2y$10$.l8tQuIYacdXxlNegiKBuuiByTI9CshRvLHvJgiRtYuKvtWWEz6zG', '123', '123', '123', './uploads/1_pfp.jpg'),
(2, 'Tina Liu', 'Tina', '$2y$10$Gjz3nWB4w40q44/D9MLobOlwM9jKG8hckwlYYQicWVHitW3DXLXqe', '123', '123', '123', './uploads/3_0_1790.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fav`
--
ALTER TABLE `fav`
  ADD PRIMARY KEY (`favID`);

--
-- Indexes for table `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`imgID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fav`
--
ALTER TABLE `fav`
  MODIFY `favID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `imgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
