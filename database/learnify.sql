-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 21 déc. 2022 à 10:58
-- Version du serveur :  10.4.24-MariaDB
-- Version de PHP :  7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `learnify`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(64) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(0, 'admin', '$2y$10$EX0L5MeIQldpkCuTZW.mjujTaj.Yy20IW0GOluecU/c.es.9r6E5.', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `guru`
--

CREATE TABLE `guru` (
  `nip` int(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_guru` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_mapel` varchar(64) NOT NULL,
  `PDF` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `guru`
--

INSERT INTO `guru` (`nip`, `email`, `nama_guru`, `password`, `nama_mapel`, `PDF`) VALUES
(1234567, 'hassenhamdi@gmail.com', 'Hamdi Hassen', '$2y$10$oruPUmD3qzXHioCQVAEQA.34S/5mm8LP5b55JAkLLuNwGpQUScEOG', 'Mathematics', ''),
(214748364, 'Dummy@gmail.com', 'Ahmad Saugi', '', 'Pendidikan Agama Islam', ''),
(214748365, 'zaidanline67@gmail.com', 'Saauky', '$2y$10$3qQ2TYrtQHy44LblPMexnu4ZQrCWD.dYh20P.sOL5cyo6Z48fJQEq', 'Matematika', ''),
(1819107728, 'imas@gmail.com', 'Imas Kartika', '$2y$10$wCSBYTaCpSJaEX/1VUo1p.YU88vbgr7PeW.j1OkmD2xnKjIbB7SD6', 'Matematika', '');

-- --------------------------------------------------------

--
-- Structure de la table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(255) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `nama_siswa` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `nama_guru` varchar(128) NOT NULL,
  `nama_mapel` varchar(128) NOT NULL,
  `video` varchar(255) NOT NULL,
  `deskripsi` varchar(1024) NOT NULL,
  `kelas` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `materi`
--

INSERT INTO `materi` (`id`, `nama_guru`, `nama_mapel`, `video`, `deskripsi`, `kelas`) VALUES
(38, 'Hamdi Hassen', 'Mathematics', 'Matematika_-_Dummy_-_1.mp4', 'Who\'s ever heard of the word algebra? This is a branch of mathematics in problem solving using letters to represent numbers. Derived from Arabic, al-jabr which means completion. Do you know who invented it? He is a scholar named Al-Khwarizmi. Now, let\'s look at the definitions and forms of algebra in more depth, okay?', '1'),
(42, 'Karim Ben Abdallah', 'Mathematics', 'matematika.mp4', 'In mathematics and computer science, Boolean Algebra is an algebraic structure that \"covers the gist\"; logical operations AND, OR, NOR, and NAND and also set theory for union, intersection and complement operations. The naming of Boolean Algebra itself comes from the name of an English mathematician, named George Boole.', '1'),
(43, 'Saauky', 'Matematika', 'Matematika_-_Dummy_-_2.mp4', 'Aljabar linear adalah bidang studi matematika yang mempelajari sistem persamaan linear dan solusinya, vektor, serta transformasi linear. Matriks dan operasinya juga merupakan hal yang berkaitan erat dengan bidang aljabar linear.', 'XI'),
(44, 'Saauky', 'Matematika', 'Matematika_-_Dummy_3.mp4', 'Vektor merupakan kajian aljabar yang biasanya digunakan untuk memecahkan permasalahan fisika seperti gerak, gaya, dan sebagainya. ... Sebuah vektor bisa dinyatakan dalam bentuk geometri yang digambarkan sebagai sebuah ruas garis dengan arah tertentu dimana salah satunya merupakan pangkal dan satunya lagi merupakan ujung.', 'XI'),
(45, 'Saauky', 'Matematika', 'Matematika_-_Dummy_4.mp4', 'Vektor dalam matematika dan fisika adalah objek geometri yang memiliki besar dan arah. Vektor jika dilambangkan dengan tanda panah. Besar vektor proporsional dengan panjang panah dan arahnya bertepatan dengan arah panah. Vektor dapat melambangkan perpindahan dari titik A ke B. Vektor sering ditandai sebagai', 'XII'),
(46, 'Saauky', 'Matematika', 'Matematika_-_Dummy_5.mp4', 'Pecahan, atau disebut fraksi adalah istilah dalam matematika yang terdiri dari pembilang dan penyebut. Hakikat transaksi dalam bilangan pecahan adalah bagaimana cara menyederhanakan pembilang dan penyebut.', 'XII'),
(47, 'Sami Trabelsi', 'Computer Science', 'computer.mp4', 'Computer Science is the study of computers and computational systems. Unlike electrical and computer engineers, computer scientists deal mostly with software and software systems; this includes their theory, design, development, and application.', '1'),
(50, 'Amine Belkahla', 'Computer Science', 'computerr.mp4', 'Computer science is a relatively unforgiving field; especially when it comes to programming. As you\'re creating a program, you\'ll need to pay extremely close attention to detail, because any little mistakes you make can cause the program to fail.', '1'),
(51, 'Zaaidan', 'IPA', 'IPA_-_Dummy_3.mp4', 'Peleburan adalah proses reduksi bijih sehingga menjadi logam unsur yang dapat digunakan berbagai macam zat seperti karbid, hidrogen, logam aktif atau dengan cara elektrolisis. Pemilihan zat pereduksi ini tergantung dari kereaktifan masing-masing zat.', 'XI'),
(52, 'Zaaidan', 'IPA', 'IPA_-_Dummy_4.mp4', 'Pencairan, pelelehan atau Peleburan adalah proses yang menghasilkan perubahan fase zat dari padat ke cair. Energi internal dari zat padat meningkat mencapai temperatur tertentu saat zat ini berubah menjadi cair.Benda yang telah mencair sepenuhnya disebut benda cair.', 'XI'),
(53, 'Zaaidan', 'IPA', 'IPA_-_Dummy_5.mp4', 'Dalam ilmu fisika dan kimia, pembekuan adalah proses di mana cairan berubah menjadi padatan. Titik beku adalah temperatur di mana hal ini terjadi. Peleburan, adalah proses kebalikan dari pembekuan di mana padatan berubah manjadi cairan. Pada sebagian besar zat, titik beku dan titik lebur biasanya sama.', 'XII'),
(54, 'Zaaidan', 'IPA', 'IPA_-_Dummy_6.mp4', 'Teknologi pembekuan makanan adalah teknologi mengawetkan makanan dengan menurunkan temperaturnya hingga di bawah titik beku air.', 'XII'),
(55, 'Sonia Wesleti', 'English', 'Inggris_-_Dummy_1.mp4', 'English is a Germanic language that was first spoken in England in the Early Middle Ages and is today the most commonly spoken language worldwide.[4] English is spoken as the first language by the majority of the population in many countries, including the United Kingdom, Ireland, the United States, Canada, Australia, New Zealand, and a number of Caribbean countries; as well as being the official language of nearly 60 sovereign countries. English is the third most widely spoken mother tongue worldwide, after Mandarin and Spanish.[5] English is also used as a second and official language by the European Union, Commonwealth of Nations, and the United Nations, as well as various other organizations.', '2'),
(56, 'Kamel Somia', 'English', 'english.mp4', 'English first developed in the Anglo-Saxon Kingdom of England and in the area that now forms southeastern Scotland. After the spread of British influence in the 17th and 20th centuries through the British Empire, English became widespread throughout the world. In addition, the widespread use of English is also due to the spread of American culture and technology that dominated throughout the 20th century. These things have caused English today to become the main language and is unofficially (de facto) considered a lingua franca in many parts of the world.', '2'),
(57, 'Khaairan', 'Bahasa Inggris', 'Inggris_-_Dummy_3.mp4', 'Menurut sejarahnya, bahasa Inggris berasal dari peleburan beragam dialek terkait, yang saat ini secara kolektif dikenal sebagai bahasa Inggris Kuno, yang dibawa ke pantai timur Pulau Britania oleh pendatang Jermanik (Anglo-Saxons) pada abad ke-5; kata English\' berasal dari nama Angles.[12] Suku Anglo-Saxons ini sendiri berasal dari wilayah Angeln (saat ini Schleswig-Holstein, Jerman). Bahasa Inggris awal juga dipengaruhi oleh bahasa Norse Kuno setelah Viking menaklukkan Inggris pada abad ke-9 dan ke-10.', 'XI'),
(58, 'Khaairan', 'Bahasa Inggris', 'Inggris_-_Dummy_4.mp4', 'Penaklukan Normandia terhadap Inggris pada abad ke-11 menyebabkan bahasa Inggris juga mendapat pengaruh dari bahasa Prancis Norman, dan kosakata serta ejaan dalam bahasa Inggris mulai dipengaruhi oleh bahasa Latin Romawi (meskipun bahasa Inggris sendiri bukanlah rumpun bahasa Romawi),[13][14] yang kemudian dikenal dengan bahasa Inggris Pertengahan. Pergeseran Vokal yang dimulai di Inggris bagian selatan pada abad ke-15 adalah salah satu peristiwa bersejarah yang menandai peralihan bahasa Inggris Pertengahan menjadi bahasa Inggris Modern.', 'XI'),
(59, 'Khaairan', 'Bahasa Inggris', 'Inggris_-_Dummy_5.mp4', 'Selain Anglo-Saxons dan Prancis Norman, sejumlah besar kata dalam bahasa Inggris juga berakar dari bahasa Latin, karena Latin adalah lingua franca Gereja Kristen dan bahasa utama di kalangan intelektual Eropa,[15] dan telah menjadi dasar kosakata bagi bahasa Inggris modern.', 'XII'),
(60, 'Khaairan', 'Bahasa Inggris', 'Inggris_-_Dummy_6.mp4', 'Karena telah mengalami perpaduan beragam kata dari berbagai bahasa di sepanjang sejarah, bahasa Inggris modern memiliki kosakata yang sangat banyak, dengan pengejaan yang kompleks dan tidak teratur (irregular), khususnya vokal. Bahasa Inggris modern tidak hanya merupakan perpaduan dari bahasa-bahasa Eropa, tetapi juga dari berbagai bahasa di seluruh dunia. Oxford English Dictionary memuat daftar lebih dari 250.000 kata berbeda, tidak termasuk istilah-istilah teknis, sains, dan bahasa gaul yang jumlahnya juga sangat banyak.[16][17]', 'XII'),
(61, 'Kaouthar Abid', 'French', 'french.mp4', 'French is a Romance language of the Indo-European family. It descended from the Vulgar Latin of the Roman Empire, as did all Romance languages.', '2'),
(62, 'Karima Amara', 'French', 'Indonesia_-_Dummy_1.mp4', 'French (français) belongs to the Romance branch of the Indo-European language family. Like all Romance languages, it developed from Vulgar Latin spoken by the Roman invaders. Before the Roman invasion of what is France today, the territory was inhabited by a Celtic people whom the Romans called Gauls. The language of the Gauls had little impact on French.', '2'),
(63, 'Khairi Firdaus', 'Bahasa Indonesia', 'Indonesia_-_Dummy_3.mp4', 'Meskipun dipahami dan dituturkan oleh lebih dari 90% warga Indonesia, bahasa Indonesia bukanlah bahasa ibu bagi kebanyakan penuturnya. Sebagian besar warga Indonesia menggunakan salah satu dari 748 bahasa yang ada di Indonesia sebagai bahasa ibu.[7] Istilah &quot;bahasa Indonesia&quot; paling umum dikaitkan dengan bahasa baku yang digunakan dalam situasi formal.[4] Ragam bahasa baku tersebut berhubungan diglosik dengan bentuk-bentuk bahasa Melayu vernacular yang digunakan sebagai peranti komunikasi sehari-hari.[4] Artinya, penutur bahasa Indonesia kerap kali menggunakan versi sehari-hari (colloquial) dan/atau mencampuradukkan dengan dialek Melayu lainnya atau bahasa ibunya. Meskipun demikian, bahasa Indonesia digunakan sangat luas di perguruan-perguruan, di media massa, sastra, perangkat lunak, surat-menyurat resmi, dan berbagai forum publik lainnya,[8] sehingga dapatlah dikatakan bahwa bahasa Indonesia digunakan oleh semua warga Indonesia.', 'XI'),
(64, 'Khairi Firdaus', 'Bahasa Indonesia', 'Indonesia_-_Dummy_4.mp4', 'Aksara pertama dalam bahasa Melayu atau Jawi ditemukan di pesisir tenggara Pulau Sumatra, menunjukkan bahwa bahasa ini menyebar ke berbagai tempat di Nusantara dari wilayah ini, berkat penggunaannya oleh Kerajaan Sriwijaya yang menguasai jalur perdagangan. Istilah Melayu atau sebutan bagi wilayahnya sebagai Malaya sendiri berasal dari Kerajaan Malayu yang bertempat di Batang Hari, Jambi.', 'XI'),
(65, 'Khairi Firdaus', 'Bahasa Indonesia', 'Indonesia_-_Dummy_5.mp4', 'stilah Melayu atau Malayu berasal dari Kerajaan Malayu, sebuah kerajaan Hindu-Buddha pada abad ke-7 di hulu sungai Batanghari, Jambi di pulau Sumatra, jadi secara geografis semula hanya mengacu kepada wilayah kerajaan tersebut yang merupakan sebagian dari wilayah pulau Sumatra. Dalam perkembangannya, pemakaian istilah Melayu mencakup wilayah geografis yang lebih luas dari wilayah Kerajaan Malayu tersebut, mencakup negeri-negeri di pulau Sumatra sehingga pulau tersebut disebut juga Bumi Melayu seperti disebutkan dalam Kakawin Nagarakretagama.', 'XII'),
(67, 'Khairi Firdaus', 'Bahasa Indonesia', 'Indonesia_-_Dummy_6.mp4', 'Ibu kota Kerajaan Melayu semakin mundur ke pedalaman karena serangan Sriwijaya dan masyarakatnya diaspora keluar Bumi Melayu, belakangan masyarakat pendukungnya yang mundur ke pedalaman berasimilasi ke dalam masyarakat Minangkabau menjadi klan Malayu (suku Melayu Minangkabau) yang merupakan salah satu marga di Sumatra Barat. Sriwijaya berpengaruh luas hingga ke Filipina membawa penyebaran Bahasa Melayu semakin meluas, tampak dalam prasasti Keping Tembaga Laguna.\r\n\r\nBahasa Melayu kuno yang berkembang di Bumi Melayu tersebut berlogat &quot;o&quot; seperti Melayu Jambi, Minangkabau, Kerinci, Palembang dan Bengkulu. Semenanjung Malaka dalam Nagarakretagama disebut Hujung Medini artinya Semenanjung Medini.', 'XII'),
(69, 'Ahmad Said', 'Economy', 'eco.mp4', 'An economy is a complex system of interrelated production, consumption, and exchange activities that ultimately determines how resources are allocated among all the participants. The production, consumption, and distribution of goods and services combine to fulfill the needs of those living and operating within the economy.', '3'),
(70, 'Ali Beltaifa', 'Economy', 'economy.mp4', 'An economy is a system of inter-related production and consumption activities that ultimately determine the allocation of resources within a group.', '3'),
(71, 'Ahmad Saugi', 'Pendidikan Agama Islam', 'Agama_Islam_-_Dummy_-_3.mp4', 'Islam dapat juga disebut dengan iman, millah, dan syariah dalam pengertiannya sebagai aturan yang diturunkan oleh Allah melalui para utusan yang mencakup kepercayaan, keyakinan, adab, akhlak, perintah, dan larangan.[9] Agama Islam berdasarkan kewajiban untuk berserah diri dan menunaikan ajarannya disebut islam; jika dilihat berdasarkan kepercayaan terhadap Allah dan yang Dia turunkan, maka disebut iman; karena Islam itu diktatif dan terdokumentasikan, maka disebut millah; dan karena sumber hukumnya adalah Allah, maka disebut syariah.[9]', 'XI'),
(72, 'Ahmad Saugi', 'Pendidikan Agama Islam', 'Agama_Islam_-_Dummy_-_4.mp4', 'Allah, menurut ajaran Islam, adalah satu-satunya Tuhan yang berhak disembah, memiliki nama-nama terbaik, dan memiliki sifat dan karakter tertinggi.[11] Ajaran monoteisme Islam disebut tauhid, yang didefinisikan sebagai pengesaan Allah dalam hal-hal yang menjadi kekhususan Tuhan dan yang Dia wajibkan.[12] Pengesaan Allah dalam hal-hal kekhususan Tuhan dibagi menjadi dua bahasan: tauhid rububiyah dan tauhid asma\' wash-shifat, sedangkan pengesaan Allah dalam hal-hal yang Dia wajibkan dibahas dalam tauhid uluhiyah.[13]', 'XI'),
(73, 'Ahmad Saugi', 'Pendidikan Agama Islam', 'Agama_Islam_-_Dummy_-_4.mp4', 'Dalam tauhid rububiyah, Allah diakui sebagai satu-satunya Rabb (Yang Menguasai), sehingga semua selain Allah adalah ‘abd (hamba/budak/yang dikuasai).[14] Allah adalah Rabb Yang Berkuasa dalam penciptaan, pengurusan, dan kerajaan alam semesta.[15] Allah sebagai satu-satunya Pencipta adalah juga Yang Memberi rezeki, Yang Menghidupkan, Yang Mematikan, serta Yang Memberi kebaikan dan keburukan.[16] Allah yang mengurus segala sesuatu; semua urusan yang Dia tangani adalah kebaikan; dan Allah Mahakuasa terhadap apa yang Dia kehendaki.[16] Dalilnya adalah ayat dalam Alquran, “Segala penciptaan dan urusan menjadi hak-Nya.”[Al-A\'raf:54][15]', 'XII'),
(76, 'Ahmad Saugi', 'Pendidikan Agama Islam', 'Agama_Islam_-_Dummy_-_6.mp4', 'Islam adalah salah satu agama dari kelompok agama yang diterima oleh seorang nabi yang mengajarkan monoteisme tanpa kompromi, iman terhadap wahyu, iman terhadap akhir zaman, dan tanggung jawab. Bersama para pengikut Yudaisme dan Kekristenan, seluruh muslim–pengikut ajaran Islam–adalah anak turun Ibrahim.', 'XII'),
(77, 'Saauky', 'Matematika', 'Agama_Islam_-_Dummy_-_6.mp4', 'Test', 'X'),
(81, 'Hamdi Hassen', 'Mathematics', 'Shortest_Video_on_Youtube3.mp4', 'https://drive.google.com/file/d/1wTvYNFg0Cx2zdHOtXAbDsBdlfEFs2s4Y/view', '1');

-- --------------------------------------------------------

--
-- Structure de la table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `password`, `email`, `image`, `is_active`, `date_created`) VALUES
(39, 'Syaauqi Zaaidan', '$2y$10$djI2M/FQH2k3H7b6tLK5X.MZG1R.wrARoR6NerH3tsScNnsNCnexa', 'zaidanline67@gmail.com', '73349393_156861225523800_2119508204152772215_n_(1)6.jpg', 1, 1586163321),
(47, 'Zorgati Rihem', '$2y$10$JdNI7T.GyDUP2hOydo3x.u/vBpNyBMvXA4tjMx9fe7amzr6JXKoIK', 'zorgatirihem@gmail.com', 'default.jpg', 1, 2022),
(48, 'karimaa', '$2y$10$EtiYjMIW1x8JBPeqvKNJW.aGYhnNqXc7ebCAClwViVkNILk3QrZMm', 'karimaaaa@gmail.com', 'default.jpg', 1, 2022),
(49, 'ameni', '$2y$10$PV59pzk/K6t.8/0PKXDmzODqlZvGmsJkbZfOMlvEqDZEefaBL6mue', 'ameni@gmail.com', 'default.jpg', 1, 2022);

-- --------------------------------------------------------

--
-- Structure de la table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Index pour la table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2017 at 07:27 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-kuiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `qno` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  `correct_answer` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `qno`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correct_answer`) VALUES
(9, 5, 'What is a correct way to add a comment in PHP?', '&lt;!--&hellip;--&gt;', '/*&hellip;*/', '*\\..\\*', '&lt;comment&gt;&hellip;&lt;/comment&gt;', 'b'),
(8, 3, 'The PHP syntax is most similar to:', 'Perl and C', 'VBscript', 'Javascript', 'none of these', 'a'),
(7, 2, 'How do you write "Hello World" in PHP?', 'echo "Hello World";', 'Document.Write("Hello World");', '"Hello World";', 'none of these', 'a'),
(6, 1, 'What does PHP stand for?', 'Personal Hypertext Processor\r\n', 'Private Home Page', 'Personal Home Page', 'PHP: Hypertext Preprocessor', 'd'),
(5, 4, 'How do you get information from a form that is submitted using the &quot;get&quot; method?', '$_GET[];', 'Request.Form;', 'Request.QueryString;', 'none of these', 'a'),
(10, 6, 'When using the POST method, variables are displayed in the URL:', 'True', 'False', 'Can\'t say', 'none of these', 'b'),
(11, 7, ' Which of the following function is used to get the size of a file?', 'fopen()', 'fread()', 'fsize()', 'filesize()', 'd'),
(12, 8, 'Which of the following is used to delete a cookie?', 'setcookie()', '$_COOKIE variable', 'isset() function', 'none of the above', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `played_on` varchar(225) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `played_on`, `score`) VALUES
(78, 'hemant@vv.com', '2017-07-31 06:52:45', 0),
(68, 'admin@gmail.com', '2017-07-31 05:01:43', 0),
(77, 'root@gmail.com', '2017-07-31 06:52:09', 1),
(70, 'anirban@gmail.com', '2017-07-31 05:58:32', 3),
(76, 'john@gmail.com', '2017-07-31 06:51:41', 1),
(72, 'local@gmail.com', '2017-07-31 06:01:27', 3),
(75, 'dfgh@fgg.nn', '2017-07-31 06:43:01', 0),
(74, 'vishal@gmail.com', '2017-07-31 06:35:35', 6),
(79, 'rupesh@dffd.cvvc', '2017-07-31 06:53:37', 5),
(80, 'hello@gmail.com', '2017-07-31 06:58:18', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
