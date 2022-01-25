-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 12:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simdesa_db`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_berita`
-- (See below for the actual view)
--
CREATE TABLE `detail_berita` (
`id_berita` int(11)
,`judul` varchar(50)
,`isi` text
,`tgl_berita` datetime
,`rubrik` varchar(10)
,`cover_file` varchar(100)
,`status` int(1)
,`nik` varchar(16)
,`nama` varchar(60)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `detail_kegiatan` (
`id_kegiatan` int(11)
,`bidang` varchar(50)
,`nama` varchar(50)
,`tgl_mulai` date
,`tgl_selesai` date
,`output` varchar(50)
,`kendala` varchar(255)
,`saran` varchar(255)
,`ketua_pelaksana` varchar(50)
,`catatan` varchar(100)
,`status` int(1)
,`lampiran_file` varchar(100)
,`id_pengaduan` int(11)
,`kode` varchar(4)
,`dana` varchar(50)
,`pelapor` varchar(60)
,`kode_kegiatan` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_pengaduan`
-- (See below for the actual view)
--
CREATE TABLE `detail_pengaduan` (
`id_pengaduan` int(11)
,`judul` varchar(100)
,`bidang` varchar(20)
,`lokasi` varchar(25)
,`kategori` varchar(20)
,`uraian` text
,`tgl_pengaduan` datetime
,`status` int(1)
,`lampiran_file` varchar(100)
,`nik` varchar(16)
,`nama` varchar(60)
,`no_telp` varchar(15)
,`email` varchar(40)
,`rw` int(1)
,`rt` int(1)
,`ttd_file` varchar(200)
,`qrcode_file` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_tanggapan_berita`
-- (See below for the actual view)
--
CREATE TABLE `detail_tanggapan_berita` (
`id_tan` int(11)
,`tanggapan` varchar(255)
,`nik` varchar(16)
,`id_berita` int(11)
,`waktu` timestamp
,`nama` varchar(60)
,`foto_file` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_tanggapan_pengaduan`
-- (See below for the actual view)
--
CREATE TABLE `detail_tanggapan_pengaduan` (
`id_tanggapan` int(11)
,`tanggapan` varchar(255)
,`nik` varchar(16)
,`id_pengaduan` int(11)
,`waktu` timestamp
,`nama` varchar(60)
,`foto_file` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_umkm`
-- (See below for the actual view)
--
CREATE TABLE `detail_umkm` (
`id_umkm` int(11)
,`nama` varchar(50)
,`bidang` varchar(20)
,`nik_pemilik` varchar(20)
,`no_telp` varchar(15)
,`alamat` varchar(100)
,`tgl_berdiri` date
,`deskripsi` text
,`logo_file` varchar(100)
,`status` int(11)
,`pemilik` varchar(60)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `tgl_berita` datetime NOT NULL DEFAULT current_timestamp(),
  `rubrik` varchar(10) NOT NULL,
  `cover_file` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `nik` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `judul`, `isi`, `tgl_berita`, `rubrik`, `cover_file`, `status`, `nik`) VALUES
(3, 'Ruwah Desa Pagerngumbuk', '<p>Ini adalah acara Ulang Tahun Desa&nbsp;Pagerngumbuk</p>\r\n\r\n<p><img alt=\"\" src=\"/webdesa/assets/img/surat/images/banner%20(6).jpg\" style=\"height:780px; width:780px\" /></p>\r\n', '2020-06-14 20:54:29', 'umum', './assets/img/berita/123456-1592142869-cover_file.jpg', -1, '123456'),
(6, 'Jual Ikan', '<p><img alt=\"\" src=\"/webdesa/assets/img/surat/images/mujair.jpeg\" style=\"height:461px; width:673px\" /></p>\r\n', '2020-06-14 22:17:22', 'umkm', './assets/img/berita/123456-1592147842-cover_file.jpg', 1, '123456'),
(7, 'Ruwah Desa', '<p>Tes</p>\r\n', '2020-07-07 20:19:10', 'umum', './assets/img/berita/123456-1594204004-cover_file.jpg', 1, '123456'),
(8, 'Ruwah Desa', 'Perayaan Ruwah Desa', '2020-07-07 20:26:15', 'umum', '', -1, '123456'),
(9, 'Ruwah Deso', '<h2>Kegiatan Tradisi Ruwah Deso di Desa Pagerngumbuk</h2>\r\n\r\n<p><img alt=\"\" src=\"/assets/img/images/banner%20(3).jpg\" style=\"height:333px; width:333px\" />&nbsp;<img alt=\"\" src=\"/assets/img/images/banner%20(9).jpg\" style=\"height:328px; width:328px\" /></p>\r\n', '2020-11-06 10:10:46', 'umum', './assets/img/berita/16515020-1604632246-cover_file.jpg', -1, '16515020'),
(16, 'Ini Judul ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis hendrerit metus sit amet ante condimentum vehicula. Etiam quis augue orci. Sed mattis viverra nibh eu maximus. Quisque eget condimentum orci. Donec magna urna, rutrum et convallis in, convallis quis arcu. Praesent feugiat varius efficitur. Nam commodo neque consectetur velit accumsan, vel lobortis dolor tincidunt.</p>\r\n\r\n<p>Cras sed porta nulla. Sed in tincidunt felis, eu pulvinar magna. Fusce luctus sit amet purus vel venenatis. Pellentesque ultricies condimentum urna, ac semper risus ullamcorper consectetur. Ut ornare mattis lectus quis laoreet. Nulla egestas arcu vitae tincidunt vulputate. Sed aliquet eleifend faucibus. Vestibulum ipsum quam, ultricies sagittis nulla a, pellentesque finibus lectus. Vestibulum suscipit elit ut nisl porta, nec cursus metus ultrices. Nam lectus risus, rhoncus a sapien at, lacinia elementum purus. Cras risus lectus, molestie ut consectetur sit amet, molestie quis tellus.</p>\r\n', '2022-01-11 21:33:56', 'umum', './assets/img/berita/3578072909010004-1641911636-cover_file.j', -1, '3578072909010004'),
(17, 'Ini Judul 2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis hendrerit metus sit amet ante condimentum vehicula. Etiam quis augue orci. Sed mattis viverra nibh eu maximus. Quisque eget condimentum orci. Donec magna urna, rutrum et convallis in, convallis quis arcu. Praesent feugiat varius efficitur. Nam commodo neque consectetur velit accumsan, vel lobortis dolor tincidunt.</p>\r\n\r\n<p>Cras sed porta nulla. Sed in tincidunt felis, eu pulvinar magna. Fusce luctus sit amet purus vel venenatis. Pellentesque ultricies condimentum urna, ac semper risus ullamcorper consectetur. Ut ornare mattis lectus quis laoreet. Nulla egestas arcu vitae tincidunt vulputate. Sed aliquet eleifend faucibus. Vestibulum ipsum quam, ultricies sagittis nulla a, pellentesque finibus lectus. Vestibulum suscipit elit ut nisl porta, nec cursus metus ultrices. Nam lectus risus, rhoncus a sapien at, lacinia elementum purus. Cras risus lectus, molestie ut consectetur sit amet, molestie quis tellus.zzzzzzzzzzz</p>\r\n', '2022-01-11 21:35:33', 'umum', './assets/img/berita/123456-1641911733-cover_file.jpg', 1, '123456'),
(18, 'Ini Judul 3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis hendrerit metus sit amet ante condimentum vehicula. Etiam quis augue orci. Sed mattis viverra nibh eu maximus. Quisque eget condimentum orci. Donec magna urna, rutrum et convallis in, convallis quis arcu. Praesent feugiat varius efficitur. Nam commodo neque consectetur velit accumsan, vel lobortis dolor tincidunt.</p>\r\n\r\n<p>Cras sed porta nulla. Sed in tincidunt felis, eu pulvinar magna. Fusce luctus sit amet purus vel venenatis. Pellentesque ultricies condimentum urna, ac semper risus ullamcorper consectetur. Ut ornare mattis lectus quis laoreet. Nulla egestas arcu vitae tincidunt vulputate. Sed aliquet eleifend faucibus. Vestibulum ipsum quam, ultricies sagittis nulla a, pellentesque finibus lectus. Vestibulum suscipit elit ut nisl porta, nec cursus metus ultrices. Nam lectus risus, rhoncus a sapien at, lacinia elementum purus. Cras risus lectus, molestie ut consectetur sit amet, molestie quis tellus.wwwwwwwwwwwwww</p>\r\n', '2022-01-11 21:38:03', 'umum', './assets/img/berita/123456-1641911883-cover_file.jpg', 1, '123456'),
(19, 'Ini Judul 4', '<blockquote>\r\n<p><a href=\"https://www.kompas.com/tag/umkm-artinya\" target=\"_self\">UMKM artinya</a>&nbsp;sebagai bisnis yang dijalankan individu, rumah tangga, atau badan usaha ukuran kecil. Penggolongan UMKM lazimnya dilakukan dengan batasan omzet per tahun, jumlah kekayaan atau aset, serta jumlah karyawan.</p>\r\n</blockquote>\r\n\r\n<p>Sedangkan usaha yang tak masuk sebagai UMKM dikategorikan sebagai usaha besar, yakni usaha ekonomi produktif yang dilakukan oleh badan usaha dengan jumlah kekayaan bersih atau hasil penjualan tahunan lebih besar dari usaha menengah, yang meliputi usaha nasional milik negara atau swasta, usaha patungan, dan usaha asing yang melakukan kegiatan ekonomi di Indonesia.</p>\r\n', '2022-01-12 10:17:06', 'umkm', './assets/img/berita/3578072909010004-1641957426-cover_file.jpg', 1, '3578072909010004'),
(20, 'Contoh Berita', '<p>Contoh Berita Untuk Desa Sidomuyo</p>\r\n', '2022-01-12 13:19:01', 'umum', './assets/img/berita/3578072909010004-1641968341-cover_file.jpg', -1, '3578072909010004');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biodata`
--

CREATE TABLE `tbl_biodata` (
  `id` int(11) NOT NULL,
  `id_biodata` varchar(20) NOT NULL,
  `nama_kepala` varchar(60) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `anggota` text NOT NULL,
  `tgl_buat` datetime NOT NULL DEFAULT current_timestamp(),
  `catatan` varchar(255) DEFAULT NULL,
  `pengantar_file` varchar(100) NOT NULL,
  `akta_lahir_file` varchar(100) NOT NULL,
  `ijazah_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `ktp_file` varchar(100) NOT NULL,
  `akta_kawin_file` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `nik` varchar(16) NOT NULL,
  `ttd_file` varchar(255) NOT NULL,
  `qrcode_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_biodata`
--

INSERT INTO `tbl_biodata` (`id`, `id_biodata`, `nama_kepala`, `alamat`, `anggota`, `tgl_buat`, `catatan`, `pengantar_file`, `akta_lahir_file`, `ijazah_file`, `kk_file`, `ktp_file`, `akta_kawin_file`, `status`, `nik`, `ttd_file`, `qrcode_file`) VALUES
(1, 'IV/29/08/2020', 'saye', 'kat sana', '[{\"nama\":\"a\",\"nik\":\"a\",\"jk\":\"L\",\"tempat\":\"a\",\"tgl\":\"2019-11-30\",\"hubungan\":\"a\",\"pendidikan\":\"sd\",\"go', '2020-06-14 00:06:51', NULL, './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', -1, '123456', '', ''),
(2, '2/IV/18/6/2020', 'Opah', 'Kampong Durian Runtuh RT05/RW03', '[{\"nama\":\"Agus\",\"nik\":\"13235\",\"jk\":\"L\",\"tempat\":\"Sidoarjo\",\"tgl\":\"1979-11-30\",\"hubungan\":\"Kepala Keluarga\",\"pendidikan\":\"S1\",\"goldar\":\"a\",\"kawin\":\"Sudah\",\"agama\":\"islam\",\"pekerjaan\":\"petani\",\"ayah\":\"Gatoto\",\"ibu\":\"Jeni\"},{\"nama\":\"Siti\",\"nik\":\"1525346\",\"jk\":\"P\",\"tempat\":\"Malang\",\"tgl\":\"1980-07-26\",\"hubungan\":\"Istri\",\"pendidikan\":\"slta\",\"goldar\":\"o\",\"kawin\":\"sudah\",\"agama\":\"kristen\",\"pekerjaan\":\"swasta\",\"ayah\":\"Baron\",\"ibu\":\"Baikah\"},{\"nama\":\"Broto\",\"nik\":\"1457667\",\"jk\":\"L\",\"tempat\":\"Sidoarjo\",\"tgl\":\"2012-05-25\",\"hubungan\":\"Anak\",\"pendidikan\":\"d1\",\"goldar\":\"b\",\"kawin\":\"belum\",\"agama\":\"hindu\",\"pekerjaan\":\"swasta\",\"ayah\":\"Agus\",\"ibu\":\"Siti\"}]', '2020-06-18 19:54:48', NULL, './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', './assets/img/surat/b', 2, '123456', './assets/img/sign/5fd600461f7b4.png', ''),
(3, '3/IV/20/2/2021', 'Poy', 'Ds. Sumbersari', '[{\"nama\":\"Foy\",\"nik\":10238123,\"jk\":\"L\",\"tempat\":\"SIni\",\"tgl\":\"2018-11-29\",\"hubungan\":\"Anak Kandung\",\"pendidikan\":\"s1\",\"goldar\":\"a\",\"kawin\":\"belum\",\"agama\":\"islam\",\"pekerjaan\":\"petani\",\"ayah\":\"Poy\",\"ibu\":\"Fuy\"}]', '2021-02-20 11:41:01', NULL, './assets/img/surat/biodata/-1613796059-pengantar_file.jpg', './assets/img/surat/biodata/-1613796059-akta_lahir_file.jpg', './assets/img/surat/biodata/-1613796060-ijazah_file.jpg', './assets/img/surat/biodata/-1613796060-kk_file.jpg', './assets/img/surat/biodata/-1613796060-ktp_file.jpg', './assets/img/surat/biodata/-1613796060-akta_kawin_file.jpg', 2, '222222', './assets/img/sign/60309a861c42c.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bumdes`
--

CREATE TABLE `tbl_bumdes` (
  `id_bumdes` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `ketua` varchar(50) NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `deskripsi` text NOT NULL,
  `logo_file` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bumdes`
--

INSERT INTO `tbl_bumdes` (`id_bumdes`, `nama`, `bidang`, `ketua`, `tgl_berdiri`, `no_telp`, `deskripsi`, `logo_file`, `status`) VALUES
(1, 'Makmur Jaya', 'perdagangan', 'Saaye', '2016-11-30', '085832749723', '<p>lorem ipsum</p>\r\n', 'http://localhost/webdesa-master/assets/img/bumdes/123456-1643138226-logo_file.jpg', 0),
(2, 'Kelompok Tani Sekar Mulyo', 'perdagangan', 'Bisyri', '2022-01-01', '085134324234234', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc mattis massa quis velit gravida ultrices. Suspendisse potenti. Etiam leo felis, scelerisque condimentum efficitur eget, cursus ac lacus. Sed at sapien sem. Suspendisse potenti. Cras id tortor sit amet leo placerat pretium. Quisque viverra purus nisl.</p>\r\n\r\n<p>Aenean aliquam ipsum dolor, at efficitur diam ullamcorper vitae. Pellentesque sed ipsum id nibh maximus commodo. Pellentesque tortor urna, porttitor pharetra lobortis non, viverra eget orci. Nullam pretium aliquet nibh a mollis. Etiam tempus velit vel odio egestas faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque pulvinar lectus vitae sodales hendrerit. Donec tincidunt euismod nulla ac euismod. Mauris dignissim magna odio, eu pharetra diam accumsan sit amet. Praesent eros nunc, sodales ac sapien non, consequat suscipit enim. Ut maximus, velit id molestie fermentum, justo nibh condimentum erat, tincidunt gravida ante orci vitae mi. Quisque iaculis ac mi vitae imperdiet.</p>\r\n\r\n<p>Aliquam ultrices tristique enim a ullamcorper. Proin nec felis tellus. Aenean non tincidunt nisi. Nulla facilisi. Curabitur in ante rutrum, varius eros non, consectetur ligula. Etiam fringilla tincidunt nisl, sed pulvinar odio dictum quis. Aliquam laoreet vehicula sollicitudin.</p>\r\n\r\n<p>Fusce ultricies nulla ligula, nec vehicula libero accumsan aliquet. Phasellus malesuada posuere diam ut vehicula. Etiam accumsan varius ante, et iaculis ipsum volutpat et. Donec justo dolor, sodales eu neque a, sagittis commodo nisl. Aliquam sem lectus, mattis eu blandit quis, feugiat tempor mi. Fusce varius, risus sed consectetur consequat, felis metus placerat urna, vel porttitor enim erat in augue. Proin euismod lacinia mollis. Nam eget justo fermentum, porta velit id, aliquet magna. Proin eu urna turpis. Maecenas leo eros, dictum et nisl non, ornare porttitor justo. Etiam lobortis lectus in fermentum imperdiet. In et tincidunt purus, id dapibus nulla. Donec ornare mauris massa, bibendum commodo justo consectetur id. Integer sit amet risus est. Aenean sapien massa, sodales vel pretium et, rutrum eget nibh.</p>\r\n\r\n<p>Vivamus turpis mauris, consectetur ac congue eu, pretium nec risus. Maecenas efficitur pellentesque nunc at aliquet. Nam mattis risus ut sagittis ultricies. Suspendisse pretium sit amet magna ac fermentum. Praesent lobortis posuere tortor, at blandit dui tincidunt ut. Integer metus velit, ullamcorper nec justo et, imperdiet suscipit leo. Donec nec placerat sapien. Praesent id consectetur mi. Morbi pulvinar diam orci. Nullam vulputate risus eu suscipit iaculis. Maecenas cursus justo et ante efficitur, eget dictum nulla efficitur. Aliquam hendrerit condimentum metus et efficitur. Donec cursus nunc est, a maximus est semper eu. Aliquam volutpat eleifend nisl vitae fringilla. Cras sit amet odio volutpat, lacinia ex lacinia, egestas sapien.</p>\r\n', 'http://localhost/webdesa-master/assets/img/bumdes/default.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dana`
--

CREATE TABLE `tbl_dana` (
  `kode` varchar(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tahun` varchar(9) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dana`
--

INSERT INTO `tbl_dana` (`kode`, `nama`, `jumlah`, `tahun`, `status`) VALUES
('1238', 'Pajak Bagi Hasil', 300000000, '2020', 1),
('1291', 'BK Kabupaten', 4500000, '2020', 1),
('3172', 'Pendapatan Asli Desa', 90000000, '2020', 1),
('6311', 'Anggaran Dana Desa (ADD)', 450000000, '2020', 1),
('6312', 'Penyaluran Dana Desa (DDS)', 900000000, '2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_domisili`
--

CREATE TABLE `tbl_domisili` (
  `id` int(11) NOT NULL,
  `id_domisili` varchar(20) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `nama_usaha` varchar(60) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_buat` datetime NOT NULL DEFAULT current_timestamp(),
  `catatan` varchar(255) DEFAULT NULL,
  `pengantar_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `ktp_file` varchar(100) NOT NULL,
  `akta_usaha_file` varchar(100) NOT NULL,
  `pernyataan_file` varchar(100) NOT NULL,
  `perjanjian_file` varchar(100) NOT NULL,
  `kepemilikan_file` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `nik` varchar(16) NOT NULL,
  `ttd_file` varchar(255) NOT NULL,
  `qrcode_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_domisili`
--

INSERT INTO `tbl_domisili` (`id`, `id_domisili`, `jenis`, `nama_usaha`, `alamat`, `tgl_buat`, `catatan`, `pengantar_file`, `kk_file`, `ktp_file`, `akta_usaha_file`, `pernyataan_file`, `perjanjian_file`, `kepemilikan_file`, `status`, `nik`, `ttd_file`, `qrcode_file`) VALUES
(1, '1/VI/10/6/2020', 'usahaa', 'Makmur', 'kat sane', '2020-06-10 19:26:06', NULL, './assets/img/surat/d', './assets/img/surat/domisili/123456-15925', './assets/img/surat/domisili/123456-15925', '123456-1591791966-akta_usaha_file.png', '123456-1591791966-pernyataan_file.png', '123456-1591791966-perjanjian_file.png', '123456-1591791966-kepemilikan_file.jpg', 2, '123456', './assets/img/sign/5fd71cf4ec958.png', ''),
(2, '2VI19/6/2020', 'tinggal', '', '', '2020-06-19 18:50:51', NULL, './assets/img/surat/domisili/165150201111134-1592567451-pengantar_file.jpg', '', '', '', '', '', '', 0, '165150201111134', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `hst` int(11) NOT NULL,
  `tipe` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`kode`, `uraian`, `satuan`, `hst`, `tipe`) VALUES
(1111, 'Semen', 'Karung 5kg', 25000, 1),
(1112, 'Paku', 'Kg', 2000, 1),
(1113, 'Cat Tembok', 'Kaleng 1liter', 20000, 1),
(1114, 'Pasir', 'Truk 1 Ton', 400000, 1),
(1115, 'Mesin Potong Rumput', 'pcs', 60000, 2),
(1116, 'Test Item', 'pcs', 10000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_fisik`
--

CREATE TABLE `tbl_item_fisik` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(50) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `nilai` int(11) NOT NULL,
  `ket` varchar(50) NOT NULL,
  `id_kegiatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_keuangan`
--

CREATE TABLE `tbl_item_keuangan` (
  `id` int(11) NOT NULL,
  `kode` varchar(15) NOT NULL,
  `uraian` varchar(50) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tipe` int(11) NOT NULL,
  `realisasi` int(11) NOT NULL,
  `prosentase` varchar(5) NOT NULL DEFAULT '0',
  `id_kegiatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kegiatan`
--

CREATE TABLE `tbl_kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `kode_kegiatan` varchar(15) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `output` varchar(50) NOT NULL,
  `kendala` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `ketua_pelaksana` varchar(50) NOT NULL,
  `catatan` varchar(100) NOT NULL DEFAULT '-',
  `status` int(1) NOT NULL DEFAULT 0,
  `lampiran_file` varchar(100) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `kode` varchar(4) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelahiran`
--

CREATE TABLE `tbl_kelahiran` (
  `id` int(11) NOT NULL,
  `id_kelahiran` varchar(20) NOT NULL,
  `hubungan` varchar(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `anak` varchar(60) NOT NULL,
  `ayah` varchar(60) NOT NULL,
  `ibu` varchar(60) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `rt` int(1) NOT NULL,
  `rw` int(1) NOT NULL,
  `tgl_buat` datetime NOT NULL DEFAULT current_timestamp(),
  `catatan` varchar(255) DEFAULT NULL,
  `pengantar_file` varchar(100) NOT NULL,
  `ket_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `ktp_file` varchar(100) NOT NULL,
  `buku_file` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `ttd_file` varchar(255) NOT NULL,
  `qrcode_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelahiran`
--

INSERT INTO `tbl_kelahiran` (`id`, `id_kelahiran`, `hubungan`, `tgl_lahir`, `tempat_lahir`, `jk`, `status`, `anak`, `ayah`, `ibu`, `alamat`, `rt`, `rw`, `tgl_buat`, `catatan`, `pengantar_file`, `ket_file`, `kk_file`, `ktp_file`, `buku_file`, `nik`, `ttd_file`, `qrcode_file`) VALUES
(2, '2/I/16/6/2020', 'tetangga', '2015-03-12', 'Malang', 'L', 2, 'Ijam', 'Ajim', 'Jami', '', 8, 3, '2020-06-17 01:01:20', NULL, '', '', '', '', '', '123456', './assets/img/sign/601cb624ce347.png', ''),
(3, '2/I/8/7/2020', 'anak', '2017-10-28', 'Sidoarjo', 'L', 2, 'Bestari', 'Khaf', 'Rayu', '', 6, 3, '2020-07-08 16:23:38', 'foto ktp buram', './assets/img/surat/kelahiran/123456-1594200218-pengantar_file.jpg', './assets/img/surat/kelahiran/123456-1594200218-ket_file.jpg', './assets/img/surat/kelahiran/123456-1594200218-kk_file.jpg', './assets/img/surat/kelahiran/123456-1594200218-ktp_file.jpg', './assets/img/surat/kelahiran/123456-1594200218-buku_file.jpg', '123456', './assets/img/sign/5fbb6d9051c4c.png', ''),
(5, '4/I/6/11/2020', 'tetangga', '2020-11-06', 'Malang', 'L', 2, 'Indra', 'Budi', 'Dewi', '', 6, 2, '2020-11-06 14:20:56', 'Foto kk buram', './assets/img/surat/kelahiran/16515020-1604647256-pengantar_file.jpg', './assets/img/surat/kelahiran/16515020-1604647256-ket_file.jpg', './assets/img/surat/kelahiran/16515020-1604647256-kk_file.jpg', './assets/img/surat/kelahiran/16515020-1604647256-ktp_file.jpg', './assets/img/surat/kelahiran/16515020-1604647256-buku_file.jpg', '16515020', './assets/img/sign/60348671ec322.png', './assets/img/qrcode/1614055026.png'),
(6, '4/I/20/2/2021', 'anak', '2020-10-29', 'Yorkshire', 'P', 2, 'Kinasih', 'Firza', 'Fira', '', 4, 3, '2021-02-20 11:20:45', NULL, './assets/img/surat/kelahiran/222222-1613794844-pengantar_file.jpg', './assets/img/surat/kelahiran/222222-1613794844-ket_file.jpg', './assets/img/surat/kelahiran/222222-1613794845-kk_file.jpg', './assets/img/surat/kelahiran/222222-1613794845-ktp_file.jpg', './assets/img/surat/kelahiran/222222-1613794845-buku_file.jpg', '222222', './assets/img/sign/61e37cf79dc87.png', './assets/img/qrcode/1642298615.png'),
(8, '8/I/7/3/2021', 'anak', '2020-10-30', 'London', 'L', 0, 'Kenzo', 'Kendo', 'Kendi', '', 4, 2, '2021-03-07 13:36:45', NULL, './assets/img/surat/kelahiran/222222-1615099005-pengantar_file.jpg', './assets/img/surat/kelahiran/222222-1615099005-ket_file.jpg', './assets/img/surat/kelahiran/222222-1615099005-kk_file.jpg', './assets/img/surat/kelahiran/222222-1615099005-ktp_file.jpg', './assets/img/surat/kelahiran/222222-1615099005-buku_file.jpg', '222222', '', ''),
(9, '472.11/1/438.7.9.14/', 'anak', '2001-09-29', 'Surabaya', 'L', 2, 'M Halvi Rahman', 'Adam', 'Hawa', '', 1, 1, '2022-01-04 18:19:06', NULL, '', './assets/img/surat/kelahiran/3578072909010004-1641295146-ket_file.png', './assets/img/surat/kelahiran/3578072909010004-1641295146-kk_file.png', './assets/img/surat/kelahiran/3578072909010004-1641295146-ktp_file.jpg', './assets/img/surat/kelahiran/3578072909010004-1641295146-buku_file.png', '3578072909010004', '', ''),
(10, '472.11/1/438.7.9.14/', 'anak', '2001-04-12', 'Tulungagung', 'L', 2, 'Ahmad Fauzi', 'Naufal Hayyu', 'Sri Hartanti', '', 3, 1, '2022-01-12 07:40:17', NULL, '', './assets/img/surat/kelahiran/123456-1641948017-ket_file.jpg', './assets/img/surat/kelahiran/123456-1641948017-kk_file.jpg', './assets/img/surat/kelahiran/123456-1641948017-ktp_file.jpg', './assets/img/surat/kelahiran/123456-1641948017-buku_file.jpg', '123456', './assets/img/sign/61de23d21d007.png', './assets/img/qrcode/1641948114.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kematian`
--

CREATE TABLE `tbl_kematian` (
  `id` int(11) NOT NULL,
  `id_kematian` varchar(20) NOT NULL,
  `hubungan` varchar(15) NOT NULL,
  `nik_alm` varchar(16) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(1) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status_kawin` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `kwn` varchar(3) NOT NULL DEFAULT 'wni',
  `tgl_meninggal` date NOT NULL,
  `tempat_meninggal` varchar(20) NOT NULL,
  `penyebab` varchar(20) NOT NULL,
  `penentu` varchar(20) NOT NULL,
  `kota_meninggal` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_buat` datetime NOT NULL DEFAULT current_timestamp(),
  `catatan` varchar(255) DEFAULT NULL,
  `pernyataan_file` varchar(100) NOT NULL,
  `ktp_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `ktp_alm_file` varchar(100) NOT NULL,
  `kk_alm_file` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `nik` varchar(16) NOT NULL,
  `ttd_file` varchar(255) NOT NULL,
  `qrcode_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kematian`
--

INSERT INTO `tbl_kematian` (`id`, `id_kematian`, `hubungan`, `nik_alm`, `nama`, `tgl_lahir`, `jk`, `agama`, `status_kawin`, `pekerjaan`, `kwn`, `tgl_meninggal`, `tempat_meninggal`, `penyebab`, `penentu`, `kota_meninggal`, `alamat`, `tgl_buat`, `catatan`, `pernyataan_file`, `ktp_file`, `kk_file`, `ktp_alm_file`, `kk_alm_file`, `status`, `nik`, `ttd_file`, `qrcode_file`) VALUES
(1, '2/II/17/6/2020', 'saudara', '9279821749', 'axes', '2015-12-30', 'L', 'islam', 'belum', 'petani', 'wna', '2020-06-01', 'rumah sakit', 'sakit', 'dokter', 'durian runtuh', 'Ds. Candinegoro RT07, RW02, Wonoayu, Sidoarjo', '2020-06-08 23:55:23', NULL, './assets/img/surat/kematian/-1592419927-', '123456-1591635323-kt', '123456-1591635323-kk', '123456-1591635323-kt', '123456-1591635323-kk', 2, '123456', './assets/img/sign/5fd5dd7197ff8.png', ''),
(2, '2/II/20/2/2021', 'tetangga', '893423984932472', 'Kao', '2017-11-30', 'P', 'islam', 'cerai_mati', 'pns', 'wni', '2020-11-30', 'Rumah', 'Diabetes', 'Dokter', '', 'desa warugunung rt 04 rw 03', '2021-02-20 11:28:58', NULL, './assets/img/surat/kematian/222222-1613795337-pernyataan_file.jpg', './assets/img/surat/kematian/222222-1613795337-ktp_file.jpg', './assets/img/surat/kematian/222222-1613795337-kk_file.jpg', './assets/img/surat/kematian/222222-1613795338-ktp_alm_file.jpg', './assets/img/surat/kematian/222222-1613795337-kk_alm_file.jpg', 0, '222222', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengaduan`
--

CREATE TABLE `tbl_pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `uraian` text NOT NULL,
  `lokasi` varchar(25) NOT NULL,
  `tgl_pengaduan` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 0,
  `lampiran_file` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `ttd_file` varchar(200) NOT NULL,
  `qrcode_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengaduan`
--

INSERT INTO `tbl_pengaduan` (`id_pengaduan`, `judul`, `bidang`, `kategori`, `uraian`, `lokasi`, `tgl_pengaduan`, `status`, `lampiran_file`, `nik`, `ttd_file`, `qrcode_file`) VALUES
(1, 'Bangun Pos', 'infrastruktur', 'anggaran', 'Mohon segera dibangun', 'RT 06 RW 02', '2020-11-06 14:30:14', 2, './assets/img/pengaduan/16515020-1604647813-lampiran_file.jpg', '16515020', './assets/img/pengaduan/5fc78c9dcef91.png', ''),
(7, 'Balap Liar', 'kasus', 'non-anggaran', 'Mohon segera ditertibkan', 'Jalan Raya RT06/RW02', '2020-07-05 02:07:15', 1, './assets/img/pengaduan/default.jpg', '123456', './assets/img/sign/5fb912abeb9e6.png', ''),
(9, 'Bangun Pos', 'infrastruktur', 'anggaran', 'Mohon segera dibangun', 'RT 06 RW 02', '2020-11-06 14:30:14', 2, './assets/img/pengaduan/16515020-1604647813-lampiran_file.jpg', '16515020', './assets/img/pengaduan/5fc78c9dcef91.png', ''),
(10, 'Perbaikan Pinggiran Kali & Jembatan', 'infrastruktur', 'anggaran', 'Mohon seger diperbaiki karena sungai sering meluap jika terjadi hujan lebat', 'RT 01 RW 01', '2020-12-02 19:46:22', 2, './assets/img/pengaduan/123456-1606913181-lampiran_file.jpg', '123456', './assets/img/pengaduan/5fc78c9dcef91.png', ''),
(11, 'Perbaikan Irigasi', 'infrastruktur', 'anggaran', 'Mohon segera diperbaiki, karena sering meluap', 'RT 06 RW 02', '2020-12-02 19:51:31', 3, './assets/img/pengaduan/123456-1606913491-lampiran_file.png', '123456', './assets/img/pengaduan/5fc78dd3c13e5.png', ''),
(28, 'Contoh Pengaduan', 'pendidikan', 'non-anggaran', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis hendrerit metus sit amet ante condimentum vehicula. Etiam quis augue orci. Sed mattis viverra nibh eu maximus. Quisque eget condimentum orci. Donec magna urna, rutrum et convallis in, convallis quis arcu. Praesent feugiat varius efficitur. Nam commodo neque consectetur velit accumsan, vel lobortis dolor tincidunt.', 'Sidomulyo', '2022-01-12 07:28:29', 2, './assets/img/pengaduan/3578072909010004-1641947309-lampiran_', '3578072909010004', './assets/img/pengaduan/61de20ad8c880.png', './assets/img/qrcode/1641947309.png'),
(29, 'Contoh Judul Pengaduan', 'kesehatan', 'non-anggaran', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis hendrerit metus sit amet ante condimentum vehicula. Etiam quis augue orci. Sed mattis viverra nibh eu maximus. Quisque eget condimentum orci. Donec magna urna, rutrum et convallis in, convallis quis arcu. Praesent feugiat varius efficitur. Nam commodo neque consectetur velit accumsan, vel lobortis dolor tincidunt.\r\n\r\nCras sed porta nulla. Sed in tincidunt felis, eu pulvinar magna. Fusce luctus sit amet purus vel venenatis. Pellentesque ultricies condimentum urna, ac semper risus ullamcorper consectetur. Ut ornare mattis lectus quis laoreet. Nulla egestas arcu vitae tincidunt vulputate. Sed aliquet eleifend faucibus. Vestibulum ipsum quam, ultricies sagittis nulla a, pellentesque finibus lectus. Vestibulum suscipit elit ut nisl porta, nec cursus metus ultrices. Nam lectus risus, rhoncus a sapien at, lacinia elementum purus. Cras risus lectus, molestie ut consectetur sit amet, molestie quis tellus.', 'Desa Sidomulyo', '2022-01-12 08:48:43', 1, './assets/img/pengaduan/123456-1641952123-lampiran_file.jpg', '123456', './assets/img/pengaduan/61de337b02cb4.png', './assets/img/qrcode/1641952123.png'),
(30, 'Contoh', 'administrasi', 'anggaran', 'Contoh ', 'Sidomulyo', '2022-01-12 09:05:22', 0, './assets/img/pengaduan/3578072909010004-1641953122-lampiran_', '3578072909010004', './assets/img/pengaduan/61de37629856c.png', './assets/img/qrcode/1641953122.png'),
(31, 'Contoh Judul Pengaduan 2', 'administrasi', 'anggaran', 'qqqqqqqdddddddddddddddddddddd', 'Desa Sidomulyo', '2022-01-12 09:13:32', 1, './assets/img/pengaduan/3578072909010004-1641953612-lampiran_file.jpg', '3578072909010004', './assets/img/pengaduan/61de394cdb0a6.png', './assets/img/qrcode/1641953612.png'),
(32, 'Saluran Air Got mampet', 'infrastruktur', 'non-anggaran', 'Mari kita bersama sama gotong royong membersihkan got di depan rumah baca ', 'Depan Rumah Baca', '2022-01-26 02:19:45', 0, './assets/img/pengaduan/default.jpg', '3578072909010004', './assets/img/pengaduan/61f04d50dfda2.png', './assets/img/qrcode/1643138384.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_potensi`
--

CREATE TABLE `tbl_potensi` (
  `id_potensi` int(11) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `omzet` int(11) NOT NULL,
  `waktu_awal` int(2) NOT NULL,
  `waktu_akhir` int(2) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `orang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_potensi`
--

INSERT INTO `tbl_potensi` (`id_potensi`, `bidang`, `omzet`, `waktu_awal`, `waktu_akhir`, `tahun`, `orang`) VALUES
(1, 'agribisnis', 2000000, 2, 3, '2020', 10),
(2, 'kuliner', 1500000, 1, 1, '2020', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sign`
--

CREATE TABLE `tbl_sign` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `qrcode` varchar(200) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `tabel` varchar(255) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sign`
--

INSERT INTO `tbl_sign` (`id`, `nik`, `nama`, `gambar`, `qrcode`, `id_surat`, `tabel`, `cdate`) VALUES
(1, '123456', 'Admin', './assets/img/sign/5fb912abeb9e6.png', '', 3, 'tbl_kelahiran', '2020-11-22 15:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tanggapan_berita`
--

CREATE TABLE `tbl_tanggapan_berita` (
  `id_tan` int(11) NOT NULL,
  `tanggapan` varchar(255) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tanggapan_berita`
--

INSERT INTO `tbl_tanggapan_berita` (`id_tan`, `tanggapan`, `nik`, `id_berita`, `waktu`) VALUES
(1, 'Keren', '16515020', 9, '2020-11-06 03:16:06'),
(2, 'kirim 1 kilo', '222222', 6, '2021-02-20 03:26:32'),
(3, 'oke', '222222', 6, '2021-02-20 03:29:16'),
(4, 'halo halo\r\n', '222222', 7, '2021-02-20 10:17:35'),
(5, '@Kepala Desa yekk typo', '222222', 7, '2021-02-20 10:18:13'),
(6, 'Akan segera kami periksa', '222222', 10, '2021-03-07 10:44:05'),
(7, 'Nothing', '123456', 11, '2022-01-04 01:37:15'),
(8, 'pokja lorem ipsum', '123456', 11, '2022-01-05 03:38:30'),
(9, 'Keren bos\r\n', '123', 14, '2022-01-10 06:40:37'),
(10, '@Admin keren', '16515020', 11, '2022-01-10 07:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tanggapan_pengaduan`
--

CREATE TABLE `tbl_tanggapan_pengaduan` (
  `id_tanggapan` int(11) NOT NULL,
  `tanggapan` varchar(255) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tanggapan_pengaduan`
--

INSERT INTO `tbl_tanggapan_pengaduan` (`id_tanggapan`, `tanggapan`, `nik`, `id_pengaduan`, `waktu`) VALUES
(1, 'Mantap', '123456', 7, '2020-09-17 08:59:48'),
(2, 'Jos', '123456', 7, '2020-09-17 10:26:34'),
(3, 'dari admin', '123456', 5, '2020-09-17 10:59:24'),
(4, 'tes', '123456', 3, '2020-09-21 06:25:40'),
(5, 'Mantap', '123456', 8, '2020-11-06 02:50:53'),
(6, 'Akan segera kami tindak', '123456', 7, '2020-12-02 03:34:57'),
(7, 'Komentar 1', '123456', 10, '2021-01-27 06:36:14'),
(8, 'Oke', '222222', 7, '2021-02-20 03:25:37'),
(9, 'Anjay', '3578072909010004', 7, '2022-01-04 11:25:14'),
(10, 'j', '123456', 7, '2022-01-05 13:36:38'),
(11, 'Keren\r\n', '3578072909010004', 17, '2022-01-10 05:04:51'),
(12, 'Bagus', '123456', 28, '2022-01-12 00:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tdk_mampu`
--

CREATE TABLE `tbl_tdk_mampu` (
  `id` int(11) NOT NULL,
  `id_tdk_mampu` varchar(15) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `nama_terkait` varchar(60) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `alamat` varchar(100) NOT NULL,
  `tgl_buat` datetime NOT NULL DEFAULT current_timestamp(),
  `catatan` varchar(255) DEFAULT NULL,
  `pengantar_file` varchar(100) NOT NULL,
  `pernyataan_file` varchar(100) NOT NULL,
  `ktp_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `ttd_file` varchar(255) NOT NULL,
  `qrcode_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tdk_mampu`
--

INSERT INTO `tbl_tdk_mampu` (`id`, `id_tdk_mampu`, `jenis`, `nama_terkait`, `pekerjaan`, `status`, `alamat`, `tgl_buat`, `catatan`, `pengantar_file`, `pernyataan_file`, `ktp_file`, `kk_file`, `tujuan`, `nik`, `ttd_file`, `qrcode_file`) VALUES
(1, '2/III/17/6/2020', 'sekolah', 'Mino', 'pns', 2, 'ada di sana', '2020-06-09 02:43:38', NULL, '123456-1591645417-pe', '', '123456-1591645418-kt', '123456-1591645418-kk', 'Pembayaran SPP-Januari', '123456', './assets/img/sign/5fd5f8b459cb5.png', ''),
(5, '3/III/17/6/2020', 'rumah_sakit', 'x', 'swasta', 0, 'z', '2020-06-18 02:30:53', NULL, './assets/img/surat/tidak_mampu/165150201111134-1592422253-pengantar_file.png', '', '', '', 'y', '165150201111134', '', ''),
(6, '3/III/20/2/2021', 'sekolah', 'Sap', 'petani', 0, 'Ds. Pagerjajar', '2021-02-20 11:34:26', NULL, './assets/img/surat/tidak_mampu/222222-1613795665-pengantar_file.jpg', './assets/img/surat/tidak_mampu/222222-1613795665-pernyataan_file.jpg', './assets/img/surat/tidak_mampu/222222-1613795666-ktp_file.jpg', './assets/img/surat/tidak_mampu/222222-1613795666-kk_file.jpg', 'Bayar SPP', '222222', '', ''),
(7, '401/1/438.7.9.1', 'sekolah', 'Naufal', 'petani', 2, 'Jember', '2022-01-10 02:15:07', NULL, './assets/img/surat/tidak_mampu/123456-1641755707-pengantar_file.png', './assets/img/surat/tidak_mampu/123456-1641755707-pernyataan_file.png', './assets/img/surat/tidak_mampu/123456-1641755707-ktp_file.png', './assets/img/surat/tidak_mampu/123456-1641755707-kk_file.png', 'UIN', '123456', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_umkm`
--

CREATE TABLE `tbl_umkm` (
  `id_umkm` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `nik_pemilik` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `deskripsi` text NOT NULL,
  `logo_file` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_umkm`
--

INSERT INTO `tbl_umkm` (`id_umkm`, `nama`, `bidang`, `nik_pemilik`, `no_telp`, `alamat`, `tgl_berdiri`, `deskripsi`, `logo_file`, `status`) VALUES
(1, 'Toko Mantap Jiwa', 'kelontong', '165150201111134', '085832749723', 'RT06/RW02', '2014-09-27', '', 'http://localhost/webdesa/assets/img/umkm/123456-1593069339-logo_file.jpg', -1),
(4, 'Toko Bismillah', 'kuliner', '3578072909010004', '085134324234234', 'Ds. Sidomulyo', '2018-06-12', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis lorem in mollis mattis. Nunc viverra risus vel cursus interdum. Nulla sed enim in lacus placerat facilisis sed ut dui. Nam ante leo, pellentesque vitae est in, semper porta dolor. Nulla ac mauris sit amet risus condimentum facilisis quis vitae erat. Ut quis quam molestie, ultricies odio non, faucibus lectus. In hac habitasse platea dictumst. Ut a ante nec tellus molestie sodales sed at quam. Aenean lobortis pulvinar feugiat.</p>\r\n\r\n<p>Aenean volutpat commodo nisi, in vulputate dui faucibus nec. Suspendisse sit amet vestibulum urna. In nulla augue, commodo et dignissim in, elementum vel elit. Duis iaculis leo nec massa rhoncus, id facilisis nisl placerat. Morbi ante quam, vehicula nec urna non, condimentum elementum felis. In posuere, felis in placerat facilisis, mi turpis congue leo, vitae facilisis velit augue ac odio. Praesent interdum ultrices lacus in eleifend. Fusce tempus scelerisque arcu, eu pulvinar risus. Aenean maximus hendrerit ipsum, nec iaculis justo ultricies fringilla. Ut egestas eros suscipit erat luctus condimentum. Proin tempus luctus urna ut convallis.</p>\r\n\r\n<p>Nunc pellentesque eget velit et semper. Integer feugiat, nisi dictum congue molestie, est turpis cursus magna, non pellentesque ligula purus eget sem. Duis sit amet tempus erat. Fusce convallis laoreet blandit. In posuere mauris ac fermentum mollis. Integer congue sollicitudin nisi, et posuere quam. Ut imperdiet dictum fermentum. Vivamus orci mi, iaculis eu leo et, mattis varius libero.</p>\r\n\r\n<p>Fusce augue mauris, ornare eget imperdiet eget, mattis a diam. Cras finibus varius dapibus. Maecenas commodo augue eu sapien scelerisque condimentum. Mauris iaculis commodo sapien, quis placerat risus laoreet quis. Suspendisse tellus nibh, tincidunt ut consequat ut, fermentum sodales sapien. Nunc tristique finibus libero, at lobortis turpis dictum eu. In tempor sem id nulla consequat, nec vehicula neque dictum. Curabitur ut elit quis velit suscipit bibendum id sit amet purus. Integer egestas eleifend ultrices. Nullam ullamcorper tellus lacus, ut ultrices augue ultrices in. Praesent suscipit nunc ac feugiat rhoncus. In hac habitasse platea dictumst.</p>\r\n\r\n<p>Maecenas viverra sem eu velit commodo, et posuere justo malesuada. Aenean faucibus eu eros eu ultrices. Suspendisse dignissim est semper erat fermentum rhoncus. Fusce id tempus tellus. Nulla gravida, ex vel maximus sodales, urna erat iaculis nisl, in fringilla purus est eget ipsum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi semper nibh quis sollicitudin sollicitudin.</p>\r\n\r\n<p>In hac habitasse platea dictumst. Fusce aliquet ligula quis nisi lobortis, eget imperdiet nisi cursus. Duis neque lorem, consequat vel blandit et, finibus sit amet elit. Nulla sodales posuere est, ut malesuada nisl finibus non. Vivamus gravida condimentum mauris, malesuada lacinia lectus viverra vel. Suspendisse purus ante, accumsan nec orci at, dignissim consequat sapien. Mauris molestie nec sem vel ornare. Cras vestibulum tortor vel tortor volutpat posuere. Nulla vitae varius lacus, at tincidunt metus. Praesent nec elit augue.</p>\r\n\r\n<p>Cras aliquet justo vel purus ornare, nec tristique eros aliquet. Quisque tincidunt urna nec lectus imperdiet venenatis. Vestibulum ultricies accumsan nibh vitae mattis. Phasellus vitae enim dolor. Quisque justo quam, finibus sit amet massa sit amet, ornare cursus lectus. Vivamus varius egestas risus, ac rutrum lorem mattis non. In porttitor massa ullamcorper mattis egestas. Curabitur ullamcorper gravida sem, vel varius quam aliquam at. Aenean vulputate lacinia massa ac viverra.</p>\r\n\r\n<p>Nullam elementum massa at lacinia ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id pulvinar nulla. Sed at turpis mattis, venenatis dui ac, eleifend ex. Phasellus quis cursus felis. Praesent dictum ex ac luctus luctus. Mauris lobortis sem auctor, dictum quam ut, aliquam ante. Pellentesque consectetur iaculis ipsum, sit amet pretium odio congue sagittis. Phasellus tincidunt lacinia sem, sed molestie orci aliquam nec. In id erat quis neque elementum malesuada. Nulla sed diam ex. Morbi at scelerisque neque. Aliquam pharetra metus a neque euismod sagittis.</p>\r\n\r\n<p>Nunc purus odio, blandit a convallis vel, bibendum eget sapien. Vestibulum vel neque gravida, fringilla felis vitae, fringilla ligula. Sed blandit maximus turpis, rutrum malesuada urna aliquet ut. In vitae tellus scelerisque, maximus ex vel, tempus ex. Proin et luctus risus, ac luctus ipsum. Maecenas congue finibus aliquam. Vivamus iaculis erat ipsum, et volutpat nisl commodo in. Nunc elit metus, molestie posuere tellus nec, imperdiet ornare ex. Vestibulum feugiat neque tristique velit pellentesque congue. Sed consequat dictum ante, non dapibus eros. Proin vel efficitur risus, nec eleifend dolor.</p>\r\n\r\n<p>Vivamus mollis lacus massa, quis iaculis diam faucibus sed. Nulla consectetur ipsum viverra magna ultrices, at vehicula massa suscipit. Nam in libero vel ipsum rutrum varius. Cras feugiat maximus lacus, non rutrum odio porta vitae. Vivamus tincidunt dignissim eros eget blandit. Mauris molestie euismod ex, non rutrum risus egestas ut. Nullam at dui mattis, eleifend dolor vel, lacinia erat. Curabitur posuere pellentesque erat, vel rhoncus lorem varius sit amet. Integer iaculis malesuada porta. Donec sagittis varius elit sed placerat. Vestibulum non elementum justo, vitae volutpat sem. Etiam mollis at dolor ac porttitor. Donec tempor ornare lacus ac vulputate. Vivamus bibendum placerat consectetur.</p>\r\n\r\n<p>Phasellus condimentum nisi eget ultricies dignissim. Praesent interdum id lorem sit amet scelerisque. Proin nec rutrum quam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam ut augue nec dui pharetra mattis ac sit amet mauris. Maecenas efficitur enim sed bibendum luctus. Nam pharetra enim a mi congue hendrerit.</p>\r\n\r\n<p>Donec lacinia neque sed cursus efficitur. Vestibulum aliquet euismod ex, quis condimentum dolor fermentum non. Vivamus sodales turpis ut risus sollicitudin bibendum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed convallis vulputate semper. Sed eu nisl quis ante dignissim ultrices. Maecenas dignissim tincidunt porttitor. In a placerat leo. Nulla pharetra condimentum elementum. Pellentesque id fringilla nisl. Maecenas tincidunt ante eros. Vestibulum consectetur ipsum odio, ut accumsan nibh efficitur in.</p>\r\n\r\n<p>In ac varius dui. Integer ut luctus augue. Nulla nunc mi, convallis et elit sed, porta suscipit lectus. Cras luctus dolor sapien, vitae dignissim nunc porttitor in. Donec laoreet ut magna in dignissim. Donec finibus tincidunt lacus, in tempor nisl hendrerit in. Duis feugiat leo ut urna varius, at tincidunt urna blandit. Duis odio sapien, tempor sed semper non, varius.</p>\r\n', 'http://localhost/webdesa-master/assets/img/umkm/123456-1643138161-logo_file.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_umum`
--

CREATE TABLE `tbl_umum` (
  `id` int(11) NOT NULL,
  `id_umum` varchar(20) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `tgl_buat` datetime NOT NULL DEFAULT current_timestamp(),
  `catatan` varchar(255) DEFAULT NULL,
  `pengantar_file` varchar(100) NOT NULL,
  `ktp_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `nik` varchar(16) NOT NULL,
  `ttd_file` varchar(255) NOT NULL,
  `qrcode_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_umum`
--

INSERT INTO `tbl_umum` (`id`, `id_umum`, `tujuan`, `tgl_buat`, `catatan`, `pengantar_file`, `ktp_file`, `kk_file`, `status`, `nik`, `ttd_file`, `qrcode_file`) VALUES
(6, '1/V/20/2/2021', 'kehilangan KTP', '2021-02-20 13:40:06', NULL, './assets/img/surat/umum/222222-1613803205-pengantar_file.jpg', './assets/img/surat/umum/222222-1613803206-ktp_file.jpg', './assets/img/surat/umum/222222-1613803206-kk_file.jpg', 1, '222222', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warga`
--

CREATE TABLE `tbl_warga` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `rt` int(1) NOT NULL,
  `rw` int(1) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `goldar` varchar(3) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `kawin` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `role` int(2) NOT NULL DEFAULT 0,
  `ktp_file` varchar(100) NOT NULL,
  `kk_file` varchar(100) NOT NULL,
  `foto_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_warga`
--

INSERT INTO `tbl_warga` (`nik`, `nama`, `email`, `pass`, `tempat_lahir`, `tgl_lahir`, `no_telp`, `alamat`, `rt`, `rw`, `jk`, `goldar`, `agama`, `pendidikan`, `pekerjaan`, `kawin`, `status`, `role`, `ktp_file`, `kk_file`, `foto_file`) VALUES
('123', 'Bisyri S', 'bisyris@gmail.com', '$2y$10$rq7N2ZSz6IfR7Rvoqf1gA.qtFwB0LFBTMrKfaAO7XviQC40fXKd/W', 'Malang', '2005-07-06', '02387597834', '', 2, 1, 'l', 'o', 'islam', 's1', 'pelajar', '', 1, 3, './assets/img/warga/ktp/123-1641793164-ktp_file.jpeg', './assets/img/warga/kk/123-1641793164-kk_file.jpeg', './assets/img/warga/foto/123-1641793164-foto_file.png'),
('123123', 'Naufal Hayyu Triwardana', 'naufalhayyu@gmail.com', '$2y$10$85p1ValUv/5GUK1r7qwqd.dNjKG7v4nM8v283e0biTd40C44UpdVa', 'Malang', '2022-01-11', '0856464336222', '', 1, 0, 'l', 'o', 'islam', 'sd', 'petani', 'belum', 1, 0, './assets/img/warga/ktp/123123-1641912172-ktp_file.jpg', './assets/img/warga/kk/123123-1641912172-kk_file.jpg', './assets/img/warga/foto/123123-1641912172-foto_file.png'),
('123456', 'Admin', 'admin2@gmail.com', '$2y$10$1E9TplgvnUlnGQqIHl4jMuI/hJP4bmLFr8OGI3KW.Ule8WHfuXucG', 'Malang', '1998-08-29', '0856464336512', '', 4, 2, 'l', 'b', 'islam', 's1', 'pelajar', 'belum', 1, 2, './assets/img/warga/ktp/123456-1613817183-ktp_file.png', '1591623610-kk.png', './assets/img/warga/foto/123456-1613817305-foto_file.png'),
('16515020', 'Ini User', 'iniuser@gmail.com', '$2y$10$i/xF1dJ7Fg3vKEhW4DSmYuHhTqWtsrnIWL40AF1QD/kImuSQD4IN.', 'Surabaya', '2015-01-06', '085230839313', '', 4, 2, 'l', 'ab', 'islam', 'slta', 'swasta', 'belum', 1, 0, './assets/img/warga/ktp/16515020-1641791834-ktp_file.png', './assets/img/warga/kk/16515020-1641791834-kk_file.jpg', './assets/img/warga/foto/16515020-1641791834-foto_file.png'),
('165150201111134', 'User 2', 'user2@gmail.com', '$2y$10$41B81e5tXWar7GnNSQUo5eLex3z.SOPuesbddFRPBU.Zr2XSWBBC2', 'Malang', '2007-02-12', '08593753289', '', 4, 3, 'l', 'o', 'kristen', 's1', 'wiraswasta', 'belum', 0, 0, './assets/img/warga/ktp/165150201111134-1592312875-ktp_file.jpg', './assets/img/warga/kk/165150201111134-1592312875-kk_file.png', './assets/img/warga/foto/165150201111134-1592312875-foto_file.png'),
('215123551464646', 'User 3', 'khaf2@gmail.com', '$2y$10$xsEjU/NXze9ekJwgBoluGeNKZw2adPiYULq4bPE3Z5zXhsjE3E/I6', 'Tokyo', '2008-03-11', '0856672483', '', 5, 1, 'l', 'o', 'kristen', 's2', 'pns', 'sudah', 0, 0, '', '', ''),
('222222', 'Kepala Desa', 'kepala@gmail.com', '$2y$10$99ZkSVB4jG3nD1bIbF6J2uF.cM87uoal1lL3.fagPfqy5WbzLPQt6', 'Batu', '2021-02-20', '08583924111', '', 2, 0, 'l', 'a', 'islam', 'sd', 'pns', '', -1, 0, './assets/img/warga/ktp/default.jpg', '', './assets/img/warga/foto/222222-1614051018-foto_file.png'),
('29481284021', 'Anselma', 'ansel@gmail.com', '$2y$10$D1kmRrXAE7lj8ym9dSa7B.GjqfZBaFMO0gEuMUBd2X20oQpjxFQfa', 'Jakarta', '1996-08-03', '087647385687', '', 3, 2, 'p', 'ab', 'hindu', 's1', 'swasta', 'belum', -1, 2, '', '', ''),
('3578072909010004', 'M Halvi Rahman', 'halvi.rahman@gmail.com', '$2y$10$GMqQVLXAal.AMF1W1/suPOZUhtkNMN3RKaR96UhY912EnLHRrcyqW', 'Surabaya', '2001-09-29', '085748905910', '', 1, 3, 'l', 'a', 'islam', 'slta', 'pelajar', 'belum', 1, 2, './assets/img/warga/ktp/3578072909010004-1641295008-ktp_file.jpg', './assets/img/warga/kk/3578072909010004-1641295008-kk_file.jpeg', './assets/img/warga/foto/3578072909010004-1641910064-foto_file.jpg');

-- --------------------------------------------------------

--
-- Structure for view `detail_berita`
--
DROP TABLE IF EXISTS `detail_berita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_berita`  AS SELECT `b`.`id_berita` AS `id_berita`, `b`.`judul` AS `judul`, `b`.`isi` AS `isi`, `b`.`tgl_berita` AS `tgl_berita`, `b`.`rubrik` AS `rubrik`, `b`.`cover_file` AS `cover_file`, `b`.`status` AS `status`, `b`.`nik` AS `nik`, `w`.`nama` AS `nama` FROM (`tbl_berita` `b` join `tbl_warga` `w` on(`b`.`nik` = `w`.`nik`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_kegiatan`
--
DROP TABLE IF EXISTS `detail_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_kegiatan`  AS SELECT `k`.`id_kegiatan` AS `id_kegiatan`, `k`.`bidang` AS `bidang`, `k`.`nama` AS `nama`, `k`.`tgl_mulai` AS `tgl_mulai`, `k`.`tgl_selesai` AS `tgl_selesai`, `k`.`output` AS `output`, `k`.`kendala` AS `kendala`, `k`.`saran` AS `saran`, `k`.`ketua_pelaksana` AS `ketua_pelaksana`, `k`.`catatan` AS `catatan`, `k`.`status` AS `status`, `k`.`lampiran_file` AS `lampiran_file`, `k`.`id_pengaduan` AS `id_pengaduan`, `k`.`kode` AS `kode`, `d`.`nama` AS `dana`, `p`.`nama` AS `pelapor`, `k`.`kode_kegiatan` AS `kode_kegiatan` FROM ((`tbl_kegiatan` `k` join `tbl_dana` `d` on(`k`.`kode` = `d`.`kode`)) join `detail_pengaduan` `p` on(`k`.`id_pengaduan` = `p`.`id_pengaduan`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_pengaduan`
--
DROP TABLE IF EXISTS `detail_pengaduan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_pengaduan`  AS SELECT `p`.`id_pengaduan` AS `id_pengaduan`, `p`.`judul` AS `judul`, `p`.`bidang` AS `bidang`, `p`.`lokasi` AS `lokasi`, `p`.`kategori` AS `kategori`, `p`.`uraian` AS `uraian`, `p`.`tgl_pengaduan` AS `tgl_pengaduan`, `p`.`status` AS `status`, `p`.`lampiran_file` AS `lampiran_file`, `p`.`nik` AS `nik`, `w`.`nama` AS `nama`, `w`.`no_telp` AS `no_telp`, `w`.`email` AS `email`, `w`.`rw` AS `rw`, `w`.`rt` AS `rt`, `p`.`ttd_file` AS `ttd_file`, `p`.`qrcode_file` AS `qrcode_file` FROM (`tbl_pengaduan` `p` join `tbl_warga` `w` on(`p`.`nik` = `w`.`nik`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_tanggapan_berita`
--
DROP TABLE IF EXISTS `detail_tanggapan_berita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_tanggapan_berita`  AS SELECT `t`.`id_tan` AS `id_tan`, `t`.`tanggapan` AS `tanggapan`, `t`.`nik` AS `nik`, `t`.`id_berita` AS `id_berita`, `t`.`waktu` AS `waktu`, `w`.`nama` AS `nama`, `w`.`foto_file` AS `foto_file` FROM ((`tbl_berita` `p` join `tbl_tanggapan_berita` `t` on(`p`.`id_berita` = `t`.`id_berita`)) join `tbl_warga` `w` on(`w`.`nik` = `t`.`nik`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_tanggapan_pengaduan`
--
DROP TABLE IF EXISTS `detail_tanggapan_pengaduan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_tanggapan_pengaduan`  AS SELECT `t`.`id_tanggapan` AS `id_tanggapan`, `t`.`tanggapan` AS `tanggapan`, `t`.`nik` AS `nik`, `t`.`id_pengaduan` AS `id_pengaduan`, `t`.`waktu` AS `waktu`, `w`.`nama` AS `nama`, `w`.`foto_file` AS `foto_file` FROM ((`tbl_pengaduan` `p` join `tbl_tanggapan_pengaduan` `t` on(`p`.`id_pengaduan` = `t`.`id_pengaduan`)) join `tbl_warga` `w` on(`w`.`nik` = `t`.`nik`)) ;

-- --------------------------------------------------------

--
-- Structure for view `detail_umkm`
--
DROP TABLE IF EXISTS `detail_umkm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_umkm`  AS SELECT `u`.`id_umkm` AS `id_umkm`, `u`.`nama` AS `nama`, `u`.`bidang` AS `bidang`, `u`.`nik_pemilik` AS `nik_pemilik`, `u`.`no_telp` AS `no_telp`, `u`.`alamat` AS `alamat`, `u`.`tgl_berdiri` AS `tgl_berdiri`, `u`.`deskripsi` AS `deskripsi`, `u`.`logo_file` AS `logo_file`, `u`.`status` AS `status`, `w`.`nama` AS `pemilik` FROM (`tbl_umkm` `u` join `tbl_warga` `w` on(`u`.`nik_pemilik` = `w`.`nik`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_biodata`
--
ALTER TABLE `tbl_biodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_bumdes`
--
ALTER TABLE `tbl_bumdes`
  ADD PRIMARY KEY (`id_bumdes`);

--
-- Indexes for table `tbl_dana`
--
ALTER TABLE `tbl_dana`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_domisili`
--
ALTER TABLE `tbl_domisili`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_item_fisik`
--
ALTER TABLE `tbl_item_fisik`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `id_kegiatan` (`id_kegiatan`);

--
-- Indexes for table `tbl_item_keuangan`
--
ALTER TABLE `tbl_item_keuangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kegiatan` (`id_kegiatan`);

--
-- Indexes for table `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_kematian`
--
ALTER TABLE `tbl_kematian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_potensi`
--
ALTER TABLE `tbl_potensi`
  ADD PRIMARY KEY (`id_potensi`);

--
-- Indexes for table `tbl_sign`
--
ALTER TABLE `tbl_sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tanggapan_berita`
--
ALTER TABLE `tbl_tanggapan_berita`
  ADD PRIMARY KEY (`id_tan`);

--
-- Indexes for table `tbl_tanggapan_pengaduan`
--
ALTER TABLE `tbl_tanggapan_pengaduan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- Indexes for table `tbl_tdk_mampu`
--
ALTER TABLE `tbl_tdk_mampu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_umkm`
--
ALTER TABLE `tbl_umkm`
  ADD PRIMARY KEY (`id_umkm`),
  ADD KEY `no_telp` (`no_telp`),
  ADD KEY `nik_pemilik` (`nik_pemilik`);

--
-- Indexes for table `tbl_umum`
--
ALTER TABLE `tbl_umum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tbl_warga`
--
ALTER TABLE `tbl_warga`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_biodata`
--
ALTER TABLE `tbl_biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_bumdes`
--
ALTER TABLE `tbl_bumdes`
  MODIFY `id_bumdes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_domisili`
--
ALTER TABLE `tbl_domisili`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `tbl_item_fisik`
--
ALTER TABLE `tbl_item_fisik`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_item_keuangan`
--
ALTER TABLE `tbl_item_keuangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_kematian`
--
ALTER TABLE `tbl_kematian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_potensi`
--
ALTER TABLE `tbl_potensi`
  MODIFY `id_potensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sign`
--
ALTER TABLE `tbl_sign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tanggapan_berita`
--
ALTER TABLE `tbl_tanggapan_berita`
  MODIFY `id_tan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tanggapan_pengaduan`
--
ALTER TABLE `tbl_tanggapan_pengaduan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_tdk_mampu`
--
ALTER TABLE `tbl_tdk_mampu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_umkm`
--
ALTER TABLE `tbl_umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_umum`
--
ALTER TABLE `tbl_umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD CONSTRAINT `tbl_berita_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_biodata`
--
ALTER TABLE `tbl_biodata`
  ADD CONSTRAINT `tbl_biodata_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_domisili`
--
ALTER TABLE `tbl_domisili`
  ADD CONSTRAINT `tbl_domisili_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_item_fisik`
--
ALTER TABLE `tbl_item_fisik`
  ADD CONSTRAINT `tbl_item_fisik_ibfk_1` FOREIGN KEY (`id_kegiatan`) REFERENCES `tbl_kegiatan` (`id_kegiatan`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_item_keuangan`
--
ALTER TABLE `tbl_item_keuangan`
  ADD CONSTRAINT `tbl_item_keuangan_ibfk_1` FOREIGN KEY (`id_kegiatan`) REFERENCES `tbl_kegiatan` (`id_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  ADD CONSTRAINT `tbl_kegiatan_ibfk_1` FOREIGN KEY (`id_pengaduan`) REFERENCES `tbl_pengaduan` (`id_pengaduan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kegiatan_ibfk_2` FOREIGN KEY (`kode`) REFERENCES `tbl_dana` (`kode`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  ADD CONSTRAINT `tbl_kelahiran_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_kematian`
--
ALTER TABLE `tbl_kematian`
  ADD CONSTRAINT `tbl_kematian_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  ADD CONSTRAINT `tbl_pengaduan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_tdk_mampu`
--
ALTER TABLE `tbl_tdk_mampu`
  ADD CONSTRAINT `tbl_tdk_mampu_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_umkm`
--
ALTER TABLE `tbl_umkm`
  ADD CONSTRAINT `tbl_umkm_ibfk_1` FOREIGN KEY (`nik_pemilik`) REFERENCES `tbl_warga` (`nik`);

--
-- Constraints for table `tbl_umum`
--
ALTER TABLE `tbl_umum`
  ADD CONSTRAINT `tbl_umum_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tbl_warga` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
