-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 05 Feb 2021 pada 11.23
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_backward`
--
CREATE DATABASE IF NOT EXISTS `ai_backward` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ai_backward`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `base_knowledge`
--

CREATE TABLE `base_knowledge` (
  `id` int(11) NOT NULL,
  `kode_penyakit` varchar(100) NOT NULL,
  `daftar_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `base_knowledge`
--

INSERT INTO `base_knowledge` (`id`, `kode_penyakit`, `daftar_gejala`) VALUES
(1, 'P1', 'G01 G02 G03 G04 G05 G06 G07'),
(2, 'P2', 'G01 G06 G08 G09 G10'),
(3, 'P3', 'G15 G16 G17'),
(4, 'P4', 'G01 G18 G19 G20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode` varchar(5) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode`, `nama_gejala`) VALUES
('G01', 'Sakit kepala'),
('G02', 'Pusing'),
('G03', 'Migran'),
('G04', 'Pendarahan dari hidung'),
('G05', 'Wajah kemerahan'),
('G06', 'Mudah Lelah'),
('G07', 'Penglihatan kabur'),
('G08', 'Mual berlebihan'),
('G09', 'Berkeringat'),
('G10', 'Cemas'),
('G11', 'Tegang'),
('G12', 'Nyeri pada bagian tubuh'),
('G13', 'Denyut jantung tidak teratur'),
('G14', 'Pembengkakan pada kaki dan perut'),
('G15', 'Cepat haus'),
('G16', 'Sering kencing'),
('G17', 'Penurunan berat badan'),
('G18', 'Berat badan berlebihan'),
('G19', 'Mengalami aterosklerosis seacara spontan'),
('G20', 'Kurang aktivitas'),
('G21', 'Mudah mengantuk'),
('G22', 'Kaki bengkak'),
('G23', 'Rasa sakit atau pegal pada tengkuk kepala'),
('G24', 'Pegal sampai ke pundak'),
('G25', 'Selulit'),
('G26', 'Sakit pada lutut'),
('G27', 'Varices'),
('G28', 'Sulit bernafas'),
('G29', 'Sendi Terasa nyeri'),
('G30', 'Sendi meradang'),
('G31', 'Sendi bengkak'),
('G32', 'Sendi panas'),
('G33', 'Sendi kaku'),
('G34', 'Kaki keseleo'),
('G35', 'Benjolan disekitar sendi yang meradang'),
('G36', 'Tidak keluar urin'),
('G37', 'Nafsu makan menurun'),
('G38', 'merasa anemia'),
('G39', 'Proporsi lemak bertambah'),
('G40', 'Sakit pada lambung'),
('G41', 'Sakit pada usus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode` varchar(5) NOT NULL,
  `nama_penyakit` varchar(200) NOT NULL,
  `keterangan` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode`, `nama_penyakit`, `keterangan`) VALUES
('P1', 'Hipertensi', 'Hipertensi primer\r\n\r\nHipertensi primer menyerang 90% penderita hipertensi. Penyebabnya tidak diketahui dengan pasti dan cenderung terjadi bertahap selama bertahun-tahun. Faktor gaya hidup dan genetik diduga memiliki peranan penting.\r\n\r\nHipertensi sekunder\r\n\r\nHipertensi yang diketahui penyebabnya, terjadi pada 5-10% penderita hipertensi. Biasanya muncul tiba-tiba dan menyebabkan tekanan darah yang lebih tinggi daripada hipertensi primer.'),
('P2', 'Jantung', '<span>Penyakit jantung adalah kondisi ketika jantung mengalami gangguan. Beberapa jenis penyakit jantung, antara lain:</span>\r\n<ul>\r\n<li>Penyakit jantung koroner, merupakan suatu penyakit jantung yang terjadi akibat penyempitan pembuluh darah di jantung.</li>\r\n<li>Penyakit jantung bawaan, merupakan suatu masalah jantung yang ditemukan sejak bayi, yang paling umum ditemukan adalah kebocoran katup jantung.</li>\r\n<li>Infeksi jantung (endokarditis), merupakan suatu infeksi pada lapisan dalam jantung.</li>\r\n<li>Gagal jantung, merupakan suatu kegagalan otot jantung untuk memompakan darah secara memadai ke seluruh tubuh.</li>\r\n</ul>'),
('P3', 'Diabetes Militus', 'Diabetes mellitus merupakan penyakit kronis yang disebabkan oleh gagalnya organ pankreas memproduksi jumlah hormon insulin secara memadai sehingga menyebabkan peningkatan kadar glukosa dalam darah. DM merupakan salah satu penyakit tidak menular dan merupakan salah satu masalah kesehatan masyarakat yang penting.'),
('P4', 'Hiperklosterolemia', 'Hiperkolesterolemia adalah kondisi berbahaya yang ditandai dengan tingginya kadar kolesterol dalam darah. Bila tidak ditangani, kolesterol dapat menumpuk serta mempersempit pembuluh darah. Akibatnya, penderita berisiko terserang penyakit jantung koroner.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `base_knowledge`
--
ALTER TABLE `base_knowledge`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `base_knowledge`
--
ALTER TABLE `base_knowledge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `db_anak`
--
CREATE DATABASE IF NOT EXISTS `db_anak` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_anak`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1),
(3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala_1`
--

CREATE TABLE `tb_gejala_1` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL,
  `id_penyakit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala_1`
--

INSERT INTO `tb_gejala_1` (`id`, `kode`, `gejala`, `id_penyakit`) VALUES
(1, 'G001', 'Dermatis', 1),
(2, 'G002', 'Kudis', 3),
(3, 'G003', 'Panu\r\n', 3),
(4, 'G004', 'Herpes\r\n', 3),
(5, 'G005', 'Campak\r\n', 3),
(6, 'G006', 'Vitiligo\r\n', 2),
(7, 'G007', 'Pemfigus\r\n', 2),
(8, 'G008', 'Psoriasis\r\n', 2),
(9, 'G009', 'Skleroderma\r\n', 2),
(10, 'G010', 'Discoid lupus erythematosus', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(11) NOT NULL,
  `penyakit` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `solusi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `penyakit`, `info`, `solusi`) VALUES
(1, 'Kulit Peradangan', 'Peradangan pada kulit disebut dermatitis. Kondisi ini terjadi ketika kulit bersentuhan dengan bahan yang bersifat iritatif atau dengan alergen (zat atau benda yang menyebabkan reaksi alergi)', 'Krim hidrokortison umum digunakan untuk meredakan gejala peradangan'),
(2, 'kelainan autoimun', 'Gangguan autoimun terjadi ketika sistem kekebalan tubuh menyerang dan menghancurkan jaringan tubuh yang sehat', 'dianjurkan mengonsumsi diet dengan gizi seimbang, melakukan olahraga secara rutin, serta mengelola stres dengan lebih sehat. Pola hidup lebih sehat akan sangat membantu menjaga kondisi kesehatan tubuh secara keseluruhan.'),
(3, 'Penyakit infeksi', 'Infeksi kulit adalah gangguan pada kulit yang dapat disebabkan oleh bakteri, virus, jamur, atau parasit.', 'menggunakan kompres dingin ke kulit untuk mengurangi gatal dan peradangan mengonsumsi antihistamin yang dijual bebas untuk mengurangi rasa gatal menggunakan krim dan salep topikal untuk mengurangi gatal dan rasa tidak nyaman.\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_gejala_1`
--
ALTER TABLE `tb_gejala_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_gejala_1`
--
ALTER TABLE `tb_gejala_1`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `db_foward_chaining_gigi`
--
CREATE DATABASE IF NOT EXISTS `db_foward_chaining_gigi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_foward_chaining_gigi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kesimpulan`
--

CREATE TABLE `tb_kesimpulan` (
  `no` int(11) NOT NULL,
  `kode_penyakit` varchar(100) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `fakta` varchar(255) NOT NULL,
  `solusi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kesimpulan`
--

INSERT INTO `tb_kesimpulan` (`no`, `kode_penyakit`, `nama_penyakit`, `fakta`, `solusi`) VALUES
(1, 'PD01', 'Gingivitis (Radang gusi)', 'Bau mulut\\nGusi bengkak, merah dan berdarah\\nPembesaran limfoid di kepala, leher, atau\r\nRahang\\nDemam\\nNyeri gusi', 'Pembersihan karang gigi (scaling) dan perawatan saluran akar gigi (root planing) dengan menggunakan laser atau gelombang suara.\\nPenambalan atau penggantian gigi yang berlubang atau rusak, bila kondisi tersebut terkait dengan gingivitis.'),
(2, 'PD02', 'Karies Gigi (gigi berlubang)', 'Sakit gigi\\nNyeri ringan hingga tajam saat mengonsumsi makanan manis,\\nNoda berwarna cokelat, hitam atau putih pada permukaan gigi\\nNyeri saat menggigit makanan\r\n\r\n', 'Pembersihan di Dokter Gigi\\nTerapi Fluoride\\nPenambalan Gigi\\nPerbaikan Saluran Akar Gigi\\nPencabutan Gigi'),
(4, 'PD03', 'Karang Gigi', 'Bau Mulut\\nGusi berdarah dan kemerahan\\nGusi membengkak dan atau bernanah\\nGusi melorot atau gigi tampak menjadi Panjang\\nGigi goyang dan sensitive\\nGigi menjadi meregang\\nGigi menjadi linu padahal tidak ada yang berlubang', 'Rutin sikat gigi. Sikatlah gigi secara teratur sebanyak 2 kali sehari selama 2 menit, dengan cara menyikat gigi yang benar\\nGunakan benang gigi dan obat kumur\\nKurangi konsumsi gula\\nMinum air putih yang cukup\\nHindari merokok dan minuman beralkohol.'),
(5, 'PD04', 'Stomatitis', 'Hilangnya nafsu makan\\nTerdapat luka yang cukup besar dimulut\\nLuka biasanya terjadi beberapa kali pada area yang sama\\nLuka menyebar ke bagian luar bibir\\nTidak dapat makan dan minum\r\n', 'Umumnya, sariawan tidak perlu diobati dan akan sembuh dengan sendirinya dalam 1–2 minggu. Anda bisa melakukan penanganan secara mandiri di rumah untuk meredakan nyeri, misalnya dengan mengompres bagian yang terasa sakit dengan es batu.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `kode_penyakit` varchar(10) NOT NULL,
  `penyakit` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`kode_penyakit`, `penyakit`) VALUES
('PD01', 'Gingivitis (Radang gusi)'),
('PD02', 'Karies Gigi (gigi berlubang)'),
('PD03', 'Karang Gigi'),
('PD04', 'Stomatitis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(50) NOT NULL,
  `isi_pertanyaan` varchar(250) NOT NULL,
  `ifyes` varchar(100) NOT NULL,
  `ifno` varchar(100) NOT NULL,
  `last_rule` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `isi_pertanyaan`, `ifyes`, `ifno`, `last_rule`) VALUES
('GD01&GD02', 'Apakah Anda Merasa Bau mulut Dan Apakah Gusi anda bengkak, merah dan berdarah ? ? ', 'GD03', 'GD07', 'no'),
('GD01&GD11', 'Apakah Anda Merasa Bau mulut Dan Apakah gusi anda berdarah dan kemerahan ?', 'GD12', 'GD17', 'no'),
('GD03', 'Apakaah anda merasa Gingival berkaratin, gaung luka diantara\r\ngigi dan gusi ?\r\n', 'GD04', 'GD07', 'no'),
('GD04', 'Apakah Anda merasa Pembesaran limfoid di kepala, leher, atau\r\nRahang ?', 'GD05', 'GD07', 'no'),
('GD05', 'Apakah Anda Demam ? ', 'GD06', 'GD07', 'no'),
('GD06', 'Apakah anda merasa Nyeri pada gusi ?', 'PD01', 'GD07', 'no'),
('GD07', 'Apakah Anda Sakit gigi ?', 'GD08', 'GD01&GD11', 'no'),
('GD08', 'Apakah Anda Merasa Nyeri ringan hingga tajam saat mengonsumsi makanan manis ?', 'GD09', 'GD01&GD11', 'no'),
('GD09', 'Apakah Permukaan Gigi anda ada noda berwarna cokelat,hitam atau putih ?', 'GD10', 'GD01&GD11', 'no'),
('GD10', 'Apakah anda Nyeri saat menggigit makanan ?', 'PD02', 'GD01&GD11', 'no'),
('GD12', 'Apakah Gusi anda membengkak atau bernanah ?', 'GD13', 'GD17', 'no'),
('GD13', 'Apakah Gusi anda melorot atau gigi tampak menjadi Panjang ?', 'GD14', 'GD17', 'no'),
('GD14', 'Apakah Gigi anda goyang dan sensitive', 'GD15', 'GD17', 'no'),
('GD15', 'Apakah Gigi anda menjadi meregang (timbul celah-celah diantara gigi) ?', 'GD16', 'GD17', 'no'),
('GD16', 'Apakah Gigi anda menjadi linu padahal tidak ada yang berlubang ?', 'PD03', 'GD17', 'no'),
('GD17', 'Apakah anda kehilangan nafsu makan ?', 'GD18', 'GD01&GD02', 'no'),
('GD18', 'Apakah Terdapat luka yang cukup besar dimulut anda ?', 'GD19', 'GD01&GD02', 'no'),
('GD19', 'Apakah terdapat Luka biasanya terjadi beberapa kali pada area yang sama ?\r\n', 'GD20', 'GD01&GD02', 'no'),
('GD20', 'Apakah terdapat Luka menyebar ke bagian luar bibir ?', 'GD21', 'GD01&GD02', 'no'),
('GD21', 'Apakah anda Tidak dapat makan dan minum ?', 'PD04', 'GD01&GD02', 'no'),
('PD01', '', 'PD01', 'PD01', 'yes'),
('PD02', '', 'PD02', 'PD02', 'yes'),
('PD03', '', 'PD03', 'PD03', 'yes'),
('PD04', '', 'PD04', 'PD04', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_backward\",\"table\":\"gejala\"},{\"db\":\"db_backward\",\"table\":\"basispengetahuan\"},{\"db\":\"db_foward_chaining\",\"table\":\"rule_temporary\"},{\"db\":\"db_foward_chaining_gigi\",\"table\":\"tb_kesimpulan\"},{\"db\":\"db_foward_chaining_gigi\",\"table\":\"tb_penyakit\"},{\"db\":\"db_foward_chaining_gigi\",\"table\":\"tb_pertanyaan\"},{\"db\":\"db_anak\",\"table\":\"tb_gejala_1\"},{\"db\":\"db_anak\",\"table\":\"tb_gejala\"},{\"db\":\"db_anak\",\"table\":\"tb_penyakit\"},{\"db\":\"ai_backward\",\"table\":\"base_knowledge\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-02-05 09:32:27', '{\"lang\":\"id\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
