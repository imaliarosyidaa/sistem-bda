-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2024 at 10:03 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bda`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `akun` text NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `kode`, `akun`, `flag`) VALUES
(1, '522151', 'Belanja Jasa Profesi', 1),
(2, '524111', 'Belanja Perjalanan Dinas Biasa', 1),
(3, '521211', 'Belanja Bahan', 1),
(4, '521811', 'Belanja Barang Persediaan Barang Konsumsi', 1),
(5, '524114', 'Belanja Perjalanan Dinas Paket Meeting Dalam Kota', 1),
(6, '524113', 'Belanja Perjalanan Dinas Dalam Kota', 1),
(7, '522131', 'Belanja Jasa Konsultan', 1),
(8, '521213', 'Belanja Honor Output Kegiatan', 1),
(9, '521219', 'Belanja Barang Non Operasional Lainnya', 1),
(10, '522119', 'Belanja Langganan Daya dan Jasa Lainnya', 1),
(11, '522191', 'Belanja Jasa Lainnya', 1),
(12, '511111', 'Belanja Gaji Pokok PNS', 1),
(13, '511119', 'Belanja Pembulatan Gaji PNS', 1),
(14, '511121', 'Belanja Tunjangan Suami/Istri PPPK', 1),
(15, '511122', 'Belanja Tunjangan Anak PNS', 1),
(16, '511123', 'Belanja Tunjangan Struktural PNS', 1),
(17, '511124', 'Belanja Tunjangan Fungsional PNS', 1),
(18, '511125', 'Belanja Tunjangan PPh PNS', 1),
(19, '511126', 'Belanja Tunjangan Beras PNS', 1),
(20, '511129', 'Belanja Uang Makan PNS', 1),
(21, '511151', 'Belanja Tunjangan Umum PNS', 1),
(22, '511611', 'Belanja Gaji Pokok PPPK', 1),
(23, '511619', 'Belanja Pembulatan Gaji PPPK', 1),
(24, '511621', 'Belanja Tunjangan Suami/Istri PPPK', 1),
(25, '511622', 'Belanja Tunjangan Anak PPPK', 1),
(26, '511624', 'Belanja Tunjangan Fungsional PPPK', 1),
(27, '511625', 'Belanja Tunjangan Beras PPPK', 1),
(28, '511628', 'Belanja Uang Makan PPPK', 1),
(29, '512211', 'Belanja Uang Lembur', 1),
(30, '512212', 'Belanja Uang Lembur PPPK', 1),
(31, '512411', 'Belanja Pegawai (Tunjangan Khusus/Kegiatan/Kinerja)', 1),
(32, '512414', 'Belanja Pegawai Tunjangan Khusus/Kegiatan/Kinerja PPPK', 1),
(33, '521111', 'Belanja Keperluan Perkantoran', 1),
(34, '521115', 'Belanja Honor Operasional Satuan Kerja', 1),
(35, '521119', 'Belanja Barang Operasional Lainnya', 1),
(36, '522111', 'Belanja Langganan Listrik', 1),
(37, '522112', 'Belanja Langganan Telepon', 1),
(38, '522113', 'Belanja Langganan Air', 1),
(39, '523111', 'Belanja Pemeliharaan Gedung dan Bangunan', 1),
(40, '523121', 'Belanja Pemeliharaan Peralatan dan Mesin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `kode` int(4) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `kode`, `kegiatan`, `flag`) VALUES
(1, 2896, 'Pengembangan dan Analisis Statistik', 1),
(2, 2897, 'Pelayanan dan Pengembangan Diseminasi Informasi Statistik', 1),
(3, 2898, 'Penyediaan dan Pengembangan Statistik Neraca Pengeluaran', 1),
(4, 2899, 'Penyediaan dan Pengembangan Statistik Neraca Produksi', 1),
(5, 2900, 'Pengembangan Metodologi Sensus dan Survei', 1),
(6, 2902, 'Penyediaan dan Pengembangan Statistik Distribusi', 1),
(7, 2903, 'Penyediaan dan Pengembangan Statistik Harga', 1),
(8, 2905, 'Penyediaan dan Pengembangan Statistik Kependudukan dan Ketenagakerjaan', 1),
(9, 2906, 'Penyediaan dan Pengembangan Statistik Kesejahteraan Rakyat', 1),
(10, 2907, 'Penyediaan dan Pengembangan Statistik Ketahanan Sosial', 1),
(11, 2908, 'Penyediaan dan Pengembangan Statistik Keuangan, Teknologi Informasi, dan Pariwisata', 1),
(12, 2909, 'Penyediaan dan Pengembangan Statistik Peternakan, Perikanan, dan Kehutanan', 1),
(13, 2910, 'Penyediaan dan Pengembangan Statistik Tanaman Pangan, Hortikultura, dan Perkebunan', 1),
(14, 2886, 'Dukungan Manajemen dan Pelaksanaan Tugas Teknis Lainnya BPS Provinsi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `komponen`
--

CREATE TABLE `komponen` (
  `id` int(11) NOT NULL,
  `kode` int(3) NOT NULL,
  `komponen` text NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komponen`
--

INSERT INTO `komponen` (`id`, `kode`, `komponen`, `flag`) VALUES
(1, 1, 'Gaji dan Tunjangan', 1),
(2, 2, 'Operasional dan Pemeliharaan Kantor', 1),
(3, 5, 'Dukungan Penyelenggaraan Tugas dan Fungsi Unit', 1),
(4, 51, 'Persiapan', 1),
(5, 52, 'Pengumpulan Data', 1),
(6, 53, 'Pengolahan dan Analisis', 1),
(7, 54, 'Diseminasi dan Evaluasi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kro`
--

CREATE TABLE `kro` (
  `id` int(11) NOT NULL,
  `kode` varchar(3) NOT NULL,
  `kro` varchar(100) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kro`
--

INSERT INTO `kro` (`id`, `kode`, `kro`, `flag`) VALUES
(1, 'BDB', 'Fasilitas dan Pembinaan Lembaga', 1),
(2, 'BMA', 'Data dan Informasi Publik', 1),
(3, 'EBA', 'Layanan Dukungan Manajemen Internal', 1),
(4, 'EBC', 'Layanan Manajemen SDM Internal', 1),
(5, 'EBD', 'Layanan Manajemen Kinerja Internal', 1),
(6, 'QMA', 'Data dan Informasi Publik', 1);

-- --------------------------------------------------------

--
-- Table structure for table `output`
--

CREATE TABLE `output` (
  `id` int(11) NOT NULL,
  `kegiatan` varchar(4) NOT NULL,
  `kro` varchar(3) NOT NULL,
  `ro` varchar(3) NOT NULL,
  `output` text NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `output`
--

INSERT INTO `output` (`id`, `kegiatan`, `kro`, `ro`, `output`, `flag`) VALUES
(1, '2896', 'BMA', '004', 'PUBLIKASI/LAPORAN ANALISIS DAN PENGEMBANGAN STATISTIK', 1),
(2, '2896', 'QMA', '006', 'Pemanfaatan Big Data untuk Statistik Resmi', 1),
(3, '2897', 'BMA', '004', 'LAPORAN DISEMINASI DAN METADATA STATISTIK', 1),
(4, '2897', 'BMA', '006', 'LAYANAN EDUKASI DAN PROMOSI STATISTIK', 1),
(5, '2897', 'QDB', '003', 'PENGUATAN PENYELENGGARAAN PEMBINAAN STATISTIK SEKTORAL', 1),
(6, '2898', 'BMA', '007', 'PUBLIKASI/LAPORAN STATISTIK NERACA PENGELUARAN', 1),
(7, '2899', 'BMA', '006', 'PUBLIKASI/LAPORAN NERACA PRODUKSI', 1),
(8, '2900', 'BMA', '005', 'DOKUMEN/LAPORAN PENGEMBANGAN METODOLOGI KEGIATAN STATISTIK', 1),
(9, '2901', 'CAN', '004', 'Pengembangan Infrastruktur dan Layanan Teknologi Informasi dan Komunikasi', 1),
(10, '2902', 'BMA', '004', 'PUBLIKASI/LAPORAN STATISTIK DISTRIBUSI', 1),
(11, '2902', 'BMA', '006', 'PUBLIKASI/LAPORAN SENSUS EKONOMI', 1),
(12, '2903', 'BMA', '009', 'PUBLIKASI/LAPORAN STATISTIK HARGA', 1),
(13, '2903', 'QMA', '006', 'PUBLIKASI/LAPORAN PENYUSUNAN INFLASI', 1),
(14, '2904', 'BMA', '006', 'PUBLIKASI/LAPORAN STATISTIK INDUSTRI PERTAMBANGAN DAN PENGGALIAN ENERGI DAN KONSTRUKSI', 1),
(15, '2905', 'BMA', '004', 'PUBLIKASI/LAPORAN SAKERNAS', 1),
(16, '2905', 'BMA', '005', 'PUBLIKASI/LAPORAN STATISTIK KEPENDUDUKAN DAN KETENAGAKERJAAN', 1),
(17, '2906', 'BMA', '003', 'PUBLIKASI/LAPORAN STATISTIK KESEJAHTERAAN RAKYAT', 1),
(18, '2906', 'BMA', '006', 'PUBLIKASI/LAPORAN SUSENAS', 1),
(19, '2907', 'BMA', '006', 'PUBLIKASI/LAPORAN STATISTIK KETAHANAN SOSIAL', 1),
(20, '2907', 'BMA', '008', 'PUBLIKASI/LAPORAN PENDATAAN PODES', 1),
(21, '2908', 'BMA', '004', 'PUBLIKASI/LAPORAN STATISTIK KEUANGAN TEKNOLOGI INFORMASI DAN PARIWISATA', 1),
(22, '2908', 'BMA', '009', 'PUBLIKASI/LAPORAN STATISTIK E-COMMERCE', 1),
(23, '2909', 'BMA', '005', 'PUBLIKASI/LAPORAN STATISTIK PETERNAKAN PERIKANAN DAN KEHUTANAN ', 1),
(24, '2910', 'BMA', '007', 'PUBLIKASI/ LAPORAN STATISTIK TANAMAN PANGAN', 1),
(25, '2886', 'EBA', '958', 'Layanan Hubungan Masyarakat dan Informasi', 1),
(26, '2886', 'EBA', '962', 'Layanan Umum', 1),
(27, '2886', 'EBA', '994', 'Layanan Perkantoran', 1),
(28, '2886', 'EBC', '954', 'Layanan Manajemen SDM', 1),
(29, '2886', 'EBD', '953', 'Layanan Pemantauan dan Evaluasi', 1),
(30, '2886', 'EBD', '955', 'Layanan Manajemen Keuangan', 1),
(31, '2886', 'EBD', '961', 'Layanan Reformasi Kinerja', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `niplama` int(11) NOT NULL,
  `nipbaru` varchar(20) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `wilayah` varchar(255) NOT NULL,
  `namawilayah` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `niplama`, `nipbaru`, `jabatan`, `wilayah`, `namawilayah`, `golongan`) VALUES
(1, 'Nurul Hasanudin, SST., M.Stat', 340015132, '197503121995121001', 'Kepala BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/d '),
(2, 'Bambang Supriono, S.Si., MM', 340011640, '196705111987031002', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(3, 'Rini Apsari, S.Si, M.Si', 340011838, '196603111988022001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(4, 'Dwino Daries, B.Eng, M.T.I', 340011998, '196904141988121001', 'Pranata Komputer Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(5, 'Klarawidya Puspita Rasman, SE., M.SE', 340012545, '196704301990032001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(6, 'Ahmad Azhari, S.Si.', 340012550, '196702221990031001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(7, 'Suryani Widarta, S.Si, ME', 340012645, '196812141991012001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(8, 'Qurratul Aini, S.Si., M.Sc', 340015140, '197311161995122001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(9, 'Ir. Dwi Paramita Dewi, ME', 340013621, '196702051993032001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(10, 'Heryanah, S.IP., MA., M.S.E', 320007100, '197711192002122005', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(11, 'Theresia Parwati, SST, M. I. Kom.', 340016177, '197812072000122001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(12, 'Feri Prasetyo Nugroho, S.Si., M.E.', 340015483, '197508271997121001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(13, 'Lilik Muslikhatin, M.Si.', 340015481, '197607141997122001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(14, 'Linda Kusumawardani, SST, M.E.', 340016936, '198103082003122003', 'Analis Anggaran Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(15, 'Els Arianti, S.Si, MAP', 340012646, '196804151991012001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(16, 'Ir. Endah Nurjati, MAP', 340012871, '196702031991032001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(17, 'Dwi Wahyuni, SST., SE., M.Si', 340016969, '198012202003122001', 'Statistisi Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(18, 'Ir. Siti Alifah, M.A.', 340014478, '196706101994022002', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'IV/a '),
(19, 'Dina Pratiwi, S.Si.', 340015944, '197811211999122002', 'Pranata Komputer Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(20, 'Nani Suciati, SE', 340012311, '196902011989032003', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(21, 'Tri Pramujiyanti, S.Si', 340015789, '197610251999012001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(22, 'Sushinta Purwandari, SST', 340012608, '196802081990032001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(23, 'Fina Sri Agustina, S.Si, M.S.E, M.E', 340051132, '198308022009022006', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(24, 'Hendra Setiawan, SST', 340015207, '197203081995121001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(25, 'Ratih Sari Dewi, SST, M.E.K.K', 340054258, '198901122010122005', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(26, 'Ardani Yustriana Dewi, SST., MT', 340019149, '198412272007012004', 'Pranata Komputer Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(27, 'Dra. Eriyani Murwati Dianingsih', 340014475, '196712261994022001', 'Analis Pengelolaan Keuangan APBN Ahli Madya BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(28, 'Solihatin, S.Si., MT.', 340051327, '197707132009022002', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(29, 'Dian Anggraini, SE', 340017263, '198205092003122001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(30, 'Mega Cahya Kristianti, SST', 340054181, '198808172010122004', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(31, 'Budi Utami, SST, M.Si', 340017406, '198205202004122001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(32, 'Yolanda Wilda Artati, SST', 340057720, '199412012017012002', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(33, 'Ruth Juliana Lumbantobing, S.E.', 340016892, '198002202002122001', 'Statistisi Mahir BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(34, 'Yulius Antokida, S.Si, M.Si', 340053780, '198107012010031002', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(35, 'Fakhriyanto, SST', 340057376, '199208042016021001', 'Pranata Komputer Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(36, 'Steffi Riahta Sembiring, SST, MEKK', 340054186, '198903152010122005', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(37, 'Nurhani Restu Umi, SST', 340055877, '199003092012112001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(38, 'Ronnie Antonia, SST', 340056437, '199008052013111001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(39, 'Ronaldo Halomoan, SST', 340056436, '199010132013111001', 'Pranata Komputer Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(40, 'Hastanti Sukoco Putri, SST, M.A', 340056302, '199011242013112001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(41, 'Dewi Saputri Ningsih, SST', 340056249, '199009292013112001', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(42, 'Noviana Rejeki, SST, M.Stat.', 340050182, '198611232009022005', 'Statistisi Ahli Muda BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(43, 'Ahmad Saefudin', 340012310, '196812281989031002', 'Statistisi Penyelia BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(44, 'Imam Pambudi, S.Kom.', 340054846, '198609052011011012', 'Statistisi Penyelia BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(45, 'Yekti Nur Anggityasto, S.Tr.Stat.', 340059032, '199605222019011002', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(46, 'Annisa Nur Fadhilah, SST, M.E', 340057290, '199308132016022001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(47, 'Asniar, SST', 340058163, '199504052018022001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(48, 'Sri Purwaningsih', 340014780, '196907301994032005', 'Statistisi Mahir BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(49, 'Anugrah Adi Dwi Yarto, SST', 340057293, '199312012016021001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(50, 'Wahyu Rahmaditama Putera, S.Tr.Stat.', 340059022, '199703232019011001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(51, 'Rosalinda Regita, S.Tr.Stat.', 340059752, '199706072019122001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(52, 'Sri Karina Putri Br. Karo-Karo, SST', 340058499, '199511072018022001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(53, 'Vanya Antania Anjani, SST', 340058016, '199505112017012002', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(54, 'Galuh Permata Sari, S.Tr.Stat.', 340058748, '199603022019012001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(55, 'Dimas Hafizh, SST', 340057907, '199501052017011001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(56, 'Zahra Zettira Permata, S.Tr.Stat.', 340059829, '199805292019122002', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(57, 'Ita Amaliah, SST, MBA', 340057714, '199409062017012001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(58, 'Hazanul Zikra, S.Tr.Stat.', 340060133, '199612202021041001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(59, 'Naufal Rasyid, S.Tr.Stat.', 340058881, '199704092019011002', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(60, 'Mutiara Virgia Leran Putri, SST', 340057718, '199409092017012001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(61, 'Vilda Tri Lestari Simbolon, S.Tr.Stat.', 340059799, '199701272019122001', 'Pranata Komputer Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(62, 'Stephen Christian Nugroho, SST', 340057745, '199410032017011001', 'Pranata Komputer Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(63, 'Febriana Susi Indahwati, S.Tr.Stat.', 340059520, '199702072019122001', 'Statistisi Ahli Pertama BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/a'),
(64, 'Marwan Wahyudin, SST', 340057126, '199304032014121001', 'Staf BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(65, 'Kadek Swarniati, SST', 340057716, '199404072017012001', 'Staf BPS Provinsi', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(66, 'Suryana, S.ST, M.Si', 340016278, '197804052000121007', 'Kepala Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'IV/b '),
(67, 'Nuri Nasriyah, SST, M.Ec.Dev', 340054124, '198711182010122008', 'Statistisi Ahli Muda Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(68, 'Aziz Kurniawan, S.Kom', 340014586, '197410191994031003', 'Pengelola Pengadaan Barang dan Jasa Ahli Muda Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(69, 'Biworo Prasongko, S.AP', 340014528, '197008151994031007', 'Analis Pengelolaan Keuangan APBN Ahli Muda Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(70, 'Kunradus, S.T.', 340055638, '198204192011011007', 'Pranata Komputer Mahir Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(71, 'Elly Juliana Sukariati Br. Lumbantobing, S.Psi', 340055320, '197712022011012007', 'Arsiparis Ahli Pertama Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(72, 'Nur Ike Saptarini, S.Psi., M.Psi.T.', 340054851, '198609182011012022', 'Analis SDM Aparatur Ahli Muda Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/d'),
(73, 'Trisnawati Wardah, S.E', 340051354, '198501152009022007', 'Analis Pengelolaan Keuangan APBN Ahli Pertama Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/c'),
(74, 'Febrianti Dwi Wigati, SST', 340057764, '199502042017012001', 'Analis SDM Aparatur Ahli Pertama Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(75, 'Amirah Fatinah, SST', 340058129, '199606252018022001', 'Arsiparis Ahli Pertama Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(76, 'Novi Fatheka Trisnawati, S.IKom', 340062288, '199311122023212035', 'Pranata Humas Ahli Pertama Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'IX'),
(77, 'Arisonaldi Sibagariang, SE', 340061195, '199107132022031005', 'Pengelola Pengadaan Barang dan Jasa Ahli Pertama Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/a'),
(78, 'Afiqi Ilman Pasha, S.Tr.Stat.', 340059965, '199809212021041001', 'Statistisi Ahli Pertama Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/a'),
(79, 'Wibowo Pujiharto, A.Md', 340053794, '198512022010031001', 'Pranata Komputer Mahir Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/a'),
(80, 'Ahmad Yunus, A.Md.', 340054842, '198512262011011003', 'Pranata Komputer Mahir Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/a'),
(81, 'Lilis Setioningsih, A.Md', 340062862, '198103202024212002', 'Arsiparis Terampil Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'VII'),
(82, 'Erikha Anindita Putri Hidayat, A.Md.Ak.', 340062266, '200105142023022002', 'Pranata Keuangan APBN Terampil Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'II/c '),
(83, 'Anisa Dianasari, SST', 340057906, '199501122017012001', 'Staf Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(84, 'Dwi Pudjiati, A.Md.', 340017176, '197112242003122002', 'Staf Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(85, 'Siti Nurjanah', 340014813, '197007191994032001', 'Staf Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(86, 'Kunto Sadewo', 340012353, '196911221989031003', 'Staf Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/b'),
(87, 'Saifullah', 340018921, '197902242006041018', 'Staf Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/a'),
(88, 'Suyono', 340018923, '197707202006041019', 'Staf Bagian Umum', '3100', 'BPS Provinsi DKI Jakarta', 'III/a'),
(89, 'Alfhonso Triantoro, SE, M.Si.', 340012955, '196910311991031002', 'Kepala BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'IV/b '),
(90, 'Azwir, S.Sos', 340015819, '197103041999031005', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/d'),
(91, 'Handoko, S.A.P', 340053613, '198503182010031001', 'Statistisi Penyelia BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/d'),
(92, 'Rizki Hadiman, SST, M.SE', 340057201, '199106142014121001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/d'),
(93, 'Loria Sara Paais, SST, M.E.K.K', 340055826, '198908072012112001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/d'),
(94, 'Diah Dwi Paryani, S.Sos', 340015091, '197411301995032001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/c'),
(95, 'Citra Baskoro, SST, M.S.E.', 340056802, '198911282014101002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/c'),
(96, 'Tri Utami, S.Tr.Stat.', 340059789, '199707202019122002', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/b'),
(97, 'Fauzan Jodie Aldrian, S.Tr.Stat.', 340058729, '199703022019011002', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/b'),
(98, 'Imelda Chintia, S.Tr.Stat.', 340058780, '199601082019012002', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/b'),
(99, 'Muhammad Taufan, SAB, M.Ec.Dev', 340051234, '198602192009021001', 'Kepala Subbagian Umum', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/c'),
(100, 'Hendrik, A.Md', 340051158, '198501082009021006', 'Pranata Keuangan APBN Mahir Subbagian Umum', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/b'),
(101, 'Muchamad Irvan', 340019341, '197111142007011001', 'Staf Subbagian Umum', '3101', 'BPS Kabupaten Kepulauan Seribu', 'III/a'),
(102, 'Akhmad Fikri, SST', 340012647, '196808031991011001', 'Kepala BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'IV/b '),
(103, 'Istiqamah Rani, SST., SE., M.Si', 340017817, '198307182006022002', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'IV/a '),
(104, 'Lisiana Imana Yesani, SST, M.Si.', 340015738, '197705211999012001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'IV/a '),
(105, 'Helmy Azhary, S.Si, MM.', 340015394, '197410311996121001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'IV/a '),
(106, 'Endah Saftarina Khairiyani, SST, M.Si.', 340019172, '198409252007012002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/d'),
(107, 'Dimas Furqon Prawimastoro, SST', 340056944, '199202042014101001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/d'),
(108, 'Ahmad Syakur, S.Si', 340053620, '198607032010031001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/d'),
(109, 'Mukhamad Anton Yuniarto, SST', 340015060, '197106011994121001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/d'),
(110, 'Arbani, SE', 340014579, '196911051994031010', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/d'),
(111, 'Trijoko Supriyadi', 340012616, '196703201990031001', 'Statistisi Penyelia BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/d'),
(112, 'Sosialistiono', 340012607, '196612021990031003', 'Statistisi Penyelia BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/d'),
(113, 'Adi Wijaya, SST', 340020311, '198505062008011003', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/c'),
(114, 'Giovanni Sandi Perdana Putra, SST', 340058269, '199511032018021001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/c'),
(115, 'Siti Zahrowati, S.Sos, M.M.', 340012375, '196712271989112001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/c'),
(116, 'Ahmad Za\'faroni M., A.Md.', 340054843, '198410202011011015', 'Statistisi Penyelia BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/c'),
(117, 'Bahrudin, SE', 340011561, '196707071986031001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/c'),
(118, 'Selamet Haryoko, SE', 340018922, '197707102006041032', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(119, 'Ghina Mobareka, S.Tr.Stat.', 340059537, '199710282019122002', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(120, 'Meylinda Halimah Putri, S.Tr.Stat.', 340059626, '199705232019122002', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(121, 'Saraswati, SST', 340057857, '199407142017012001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(122, 'Joshualdi Bernathsius, SST', 340058064, '199408312017011001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(123, 'Amarlia Putri Garini, SST', 340058126, '199511152018022001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(124, 'Agus Suharto', 340011866, '196708051988021001', 'Statistisi Mahir BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(125, 'Mohamad Idris, S.Kom.', 340054849, '198506192011011003', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(126, 'Hendi Irawan, S.Kom.', 340054845, '198208192011011004', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(127, 'Irwanto, S.Kom.', 340054847, '198104252011011004', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(128, 'Eva Fitriani', 340019344, '197908232007012001', 'Staf BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'III/a'),
(129, 'Katino', 340020491, '196706182007101002', 'Staf BPS Kabupaten/Kota', '3171', 'BPS Kota Jakarta Selatan', 'II/d '),
(130, 'Ratna Ayu Wulandari, SE', 340051278, '198603072009022009', 'Kepala Subbagian Umum', '3171', 'BPS Kota Jakarta Selatan', 'III/c'),
(131, 'Yogi Nur Yahya, A.P.Kb.N.', 340059931, '199904202019121001', 'Fungsional Umum Subbagian Umum', '3171', 'BPS Kota Jakarta Selatan', 'II/b '),
(132, 'Hasna Fahria Yasmin, S.Tr.Stat.', 340058762, '199606292019012002', 'Statistisi Ahli Pertama Subbagian Umum', '3171', 'BPS Kota Jakarta Selatan', 'III/b'),
(133, 'Amindeka Penawan, A.Md', 340062788, '199503232024211001', 'Pranata SDM Aparatur Terampil Subbagian Umum', '3171', 'BPS Kota Jakarta Selatan', 'VII'),
(134, 'Septiana Tri Setiowati, SST, M.Agb', 340016515, '197909282002122002', 'Kepala BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'IV/b '),
(135, 'Dahlia Triyanti, SE., M.Si', 340015945, '197712081999122001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'IV/a '),
(136, 'Taufik Hidayat, S.ST', 340016174, '197806212000121001', 'Statistisi Ahli Madya BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'IV/a '),
(137, 'Nuraliyah, S.Si.,SE.,M.Si.', 340015355, '197601071996122001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'IV/a '),
(138, 'Zen Abdul Rokhman', 340012376, '196705101989111001', 'Statistisi Penyelia BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/d'),
(139, 'Fauzia Miranti, SST', 340017360, '198210132004122001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/d'),
(140, 'Armadi Setiawan, S.Pi', 340017934, '197507112006041002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/d'),
(141, 'Fitriyani, S.Kom., M.Tr.A.P.', 340054844, '198606152011012022', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/c'),
(142, 'Nikodemus, A.Md.', 340054850, '198312032011011004', 'Statistisi Penyelia BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/c'),
(143, 'Rizki Oktavian Wardhana, A.Md.', 340054854, '198710202011011004', 'Statistisi Penyelia BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/c'),
(144, 'Pascoal Rocha Daconceicao', 340015120, '197203081995101001', 'Statistisi Mahir BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/c'),
(145, 'Nalyda Yola Althofia, SST, M.E.K.K.', 340057153, '199210272014122002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/c'),
(146, 'Heri. S', 340014986, '196707101994031006', 'Statistisi Mahir BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/c'),
(147, 'Rosdiana, S.Si, M.Stat.', 340059106, '199212022019032001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(148, 'Ade Yotifali, A.Md.', 340054840, '198107062011011011', 'Statistisi Mahir BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(149, 'Ragil Hermanto, SST', 340058012, '199406212017011001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(150, 'Rachmad Rizki Riyadi, S.Tr.Stat.', 340058919, '199602242019011001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(151, 'Putri Ageng Prasetianingtias, SST', 340058430, '199606232018022001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(152, 'Darmel Yendi, SE.', 340014590, '197211021994031003', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(153, 'Dessy Natalia, SST', 340057024, '199212292014122001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(154, 'Conni Setyorini, S.Tr.Stat', 340059458, '199610152019122001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/a'),
(155, 'Windri Wucika Bemi, S.Tr.Stat.', 340059812, '199603072019122001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/a'),
(156, 'Agus Salim', 340019343, '197810182007011003', 'Staf BPS Kabupaten/Kota', '3172', 'BPS Kota Jakarta Timur', 'III/a'),
(157, 'Ir. Tristiati, MA', 340014744, '196902121994032002', 'Kepala Subbagian Umum', '3172', 'BPS Kota Jakarta Timur', 'IV/a '),
(158, 'Mujiono', 340012362, '196904161989031003', 'Fungsional Umum Subbagian Umum', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(159, 'Alfarel Bayu Haditama, A.P.Kb.N.', 340059929, '199904142019121002', 'Fungsional Umum Subbagian Umum', '3172', 'BPS Kota Jakarta Timur', 'II/b '),
(160, 'Dian Tama, SST', 340057737, '199411232017012001', 'Statistisi Ahli Pertama Subbagian Umum', '3172', 'BPS Kota Jakarta Timur', 'III/b'),
(161, 'Khoiriyah Namira Istiqa, A.Md.Kom', 340062859, '200002212024212002', 'Pranata SDM Aparatur Terampil Subbagian Umum', '3172', 'BPS Kota Jakarta Timur', 'VII'),
(162, 'Undich Sadewo Sunu, M.Si.', 340016199, '197908082000121002', 'Kepala BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'IV/b '),
(163, 'Ir. Wawan Gunawan, M.A', 340013544, '196704241993011001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'IV/a '),
(164, 'Zuhaifah, S.ST, M.E', 340053316, '198509302009122004', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'IV/a '),
(165, 'Mediana Riris Maduma, SST., M.Si', 340016440, '198005252002122005', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'IV/a '),
(166, 'Sebha Happy Dwiyanti, S.Si., M.M.', 340015397, '197309091996122001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'IV/a '),
(167, 'Bambang Dwi Apriantara, SE', 340018028, '197804132006041001', 'Pranata Komputer Ahli Pertama BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/d'),
(168, 'Windy David Revildy, SST, M.Stat', 340055956, '198810302012111001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/d'),
(169, 'Ikah Atikah, SE', 340015084, '197107201995032001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/d'),
(170, 'Sugeng Rahardjo, S.Si', 340013354, '196809061992111001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/d'),
(171, 'Maria Rossellina Ginting, SE, MM', 340054536, '198409232011012016', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/d'),
(172, 'Siti Mawar Rini Wintang Murtiari, SST, M.T.I', 340056765, '199101222014102001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(173, 'Agus Sucipto, SE', 340014777, '197308011994031006', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(174, 'Eka Angkasa Puri, SST', 340056262, '199003272013112001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(175, 'Dwi Agus Pujilestari, SE', 340017694, '197808022005022002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(176, 'Monik Ajeng Puspitoarum Darso Waluyo, S.ST, MAP', 340053344, '198705282009122002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(177, 'Ridwan, S.Kom', 340054852, '198205132011011007', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(178, 'Mohamad Abdul Azis, S.AP, M.Tr.A.P.', 340054848, '198209242011011010', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(179, 'Arya Aji Kusuma, S.Tr.Stat.', 340058622, '199610092019011001', 'Pranata Komputer Ahli Pertama BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/b'),
(180, 'Devi Yanti, SST, M.Stat.', 340057338, '199312212016022001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/b'),
(181, 'Dini Mulyati, SE', 340017976, '197603072006042002', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/b'),
(182, 'Rika Dwi Puspita Sari, S.Tr.Stat.', 340059739, '199708192019122001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/b'),
(183, 'Rihadi Ariwibowo, S.Kom.', 340054853, '198905072011011007', 'Pranata Komputer Ahli Pertama BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/b'),
(184, 'Fatimah, SST', 340050090, '198601092009022006', 'Staf BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'III/d'),
(185, 'Hendra Irawan', 340019367, '197612072007011002', 'Staf BPS Kabupaten/Kota', '3173', 'BPS Kota Jakarta Pusat', 'II/d '),
(186, 'M. Burhanudin, S.E, M.Si', 340051212, '198609042009021003', 'Kepala Subbagian Umum', '3173', 'BPS Kota Jakarta Pusat', 'III/c'),
(187, 'Yunita Nurulita Permatasari, A.P.Kb.N.', 340059932, '200006282019122002', 'Fungsional Umum Subbagian Umum', '3173', 'BPS Kota Jakarta Pusat', 'II/b '),
(188, 'Siti Nurhaliza, A.Md', 340062295, '199707222023212014', 'Pustakawan Terampil Subbagian Umum', '3173', 'BPS Kota Jakarta Pusat', 'VII'),
(189, 'Muhammad Noval, SST, M.E.', 340016530, '198007182002121003', 'Kepala BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'IV/b '),
(190, 'Widiastuti, SST, MM', 340015482, '197702061997122001', 'Statistisi Ahli Madya BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'IV/a '),
(191, 'Resiwati Fajrina Mustiqa Zain, SST., M.Stat.', 340017806, '198305282006022001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'IV/a '),
(192, 'Mulyadi, SST', 340015205, '197410041995121002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/d'),
(193, 'Meilany Alce Harilama, SST', 340057131, '199205172014122002', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/d'),
(194, 'Arifaturrahmi, SST, M.E.K.K.', 340020178, '198602182008012002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/d'),
(195, 'Urip Kurniawan, SST', 340014570, '197501081994031002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/d'),
(196, 'Stephani Febryanna, SST., M.E.K.K.', 340055923, '198902132012112001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/d'),
(197, 'Ahmad Rifai', 340012880, '197006111991031005', 'Statistisi Penyelia BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/d'),
(198, 'Marlyne Brillianty Prabandari, SST', 340058006, '199503142017012001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/c'),
(199, 'Felasofa Rahmatanti, SST', 340056829, '199107182014102001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/c'),
(200, 'Nurul Hiqmah, SST, MDP', 340055878, '198912222012112001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/c'),
(201, 'Advendos Dame Christi Sigalingging, S.Si.', 340059083, '199112182019031001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(202, 'Desfira Ahya, S.Stat.', 340059066, '199512292019032001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(203, 'Diah Asrianda Puspa Negara, S.Tr.Stat', 340059478, '199802042019122003', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(204, 'Reymond Rompas, SST', 340058455, '199210022018021001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(205, 'Indra Gunawan, SST', 340058295, '199503162018021001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(206, 'Wanda Pribadi, SST', 340057944, '199505232017012001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(207, 'Ibnu Hartomo Widodo, A.Md', 340053614, '198612252010031001', 'Statistisi Mahir BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(208, 'Wawan Krisnawan', 340016315, '196807312001121001', 'Statistisi Mahir BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(209, 'Probo Kuncoro, A.Md.', 340016314, '197810182001121002', 'Statistisi Mahir BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(210, 'Jimmi Erikson P Hutasoit, S.Si.', 340059199, '199203202019031001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'III/a'),
(211, 'Heru Agung Santoso, SST., M.Stat', 340016562, '198005072002121004', 'Staf BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'IV/b '),
(212, 'Zulpan Effendi', 340019366, '197012202007011002', 'Staf BPS Kabupaten/Kota', '3174', 'BPS Kota Jakarta Barat', 'II/d '),
(213, 'Wahid Riyanto, SE', 340051370, '198511112009021002', 'Kepala Subbagian Umum', '3174', 'BPS Kota Jakarta Barat', 'III/d'),
(214, 'Naura Nadifa, S.Tr.Stat.', 340058882, '199509272019012002', 'Statistisi Ahli Pertama Subbagian Umum', '3174', 'BPS Kota Jakarta Barat', 'III/b'),
(215, 'Chris Sumurung Parasian', 340018101, '197912312006041007', 'Staf Subbagian Umum', '3174', 'BPS Kota Jakarta Barat', 'III/a'),
(216, 'Favten Ari Pujiastuti, S.Si., SST, ME.', 340016119, '197804112000122002', 'Kepala BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'IV/b '),
(217, 'Adi Wijaya', 340018926, '197902092006041015', 'Fungsional Umum BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'II/d '),
(218, 'Bambang Sulistyo Hadi, SST, M.Si', 340017082, '198107212003121002', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'IV/a '),
(219, 'Fisilia Indriastuti W, S.Kom., M.Kom', 340015703, '197401041998032001', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'IV/a '),
(220, 'Ir. Nurika Parmiati, MAP', 340013555, '196612281993012001', 'Statistisi Ahli Madya BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'IV/a '),
(221, 'Ike Prasetiwi, SST', 340055808, '198910232012112001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/d'),
(222, 'Nila Windiyarti, SST, M.Si', 340054123, '198803112010122005', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/d'),
(223, 'Budi Darmawan, SST', 340014782, '197402231994031002', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/d'),
(224, 'Hendriko Yanis, S.Si', 340013372, '197008151992111001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/d'),
(225, 'Farid, SAP', 340012918, '197010101991031004', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/d'),
(226, 'Ulul Azmi Afrizal Rizqi, SST', 340058514, '199506222018021001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/c'),
(227, 'Riza Andina, SST, MA', 340057719, '199404292017012001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/c'),
(228, 'Herry Surahman, SST', 340055803, '198912172012111001', 'Statistisi Ahli Muda BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/c'),
(229, 'Qhory Kusuma Satiti, S.Tr.Stat.', 340058916, '199603232019012001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(230, 'Rahayu Lestari, S.Tr.Stat.', 340058926, '199608052019012001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(231, 'Elsia Citra, SST', 340058232, '199306302018022001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(232, 'I Made Widiguna, SST', 340057893, '199410082017011001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(233, 'Bagas Kurniawan, S.Tr.Stat.', 340059444, '199710232019121002', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(234, 'Triana Sipayung, A.Md.', 340056056, '198707172012122002', 'Statistisi Mahir BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(235, 'Sailul Azmi, S.Tr.Stat.', 340059762, '199704302019121001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(236, 'Hanifah Afuwu, S.Tr.Stat.', 340060128, '199803182021042001', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', '3175', 'BPS Kota Jakarta Utara', 'III/a'),
(237, 'Mohamad Rudiansyah Oktavan, S.E.', 340051228, '198510112009021003', 'Kepala Subbagian Umum', '3175', 'BPS Kota Jakarta Utara', 'III/c'),
(238, 'Almira Nathania Zaneta, A.Md', 340054365, '198908302011012005', 'Pranata Keuangan APBN Mahir Subbagian Umum', '3175', 'BPS Kota Jakarta Utara', 'III/b'),
(239, 'Juniaty Pardede, A.Md', 340055986, '199006302012122004', 'Statistisi Mahir Subbagian Umum', '3175', 'BPS Kota Jakarta Utara', 'III/a'),
(240, 'Mona Vita Eclesia Br. Pasaribu, A.Md.Kb.N.', 340061103, '199907152022012001', 'Pranata Keuangan APBN Terampil Subbagian Umum', '3175', 'BPS Kota Jakarta Utara', 'II/c ');

-- --------------------------------------------------------

--
-- Table structure for table `subkomponen`
--

CREATE TABLE `subkomponen` (
  `id` int(11) NOT NULL,
  `kode` varchar(1) NOT NULL,
  `subkomponen` varchar(100) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subkomponen`
--

INSERT INTO `subkomponen` (`id`, `kode`, `subkomponen`, `flag`) VALUES
(1, 'A', 'Tanpa Sub Komponen', 1),
(2, 'B', 'EWS (Economic White Survey)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `niplama` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(99) NOT NULL,
  `role` enum('admin','user','ppk','keuangan') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`niplama`, `username`, `password`, `email`, `role`, `created_at`) VALUES
(320007100, 'heryanah', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'heryanah@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340011640, 'aprie', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'aprie@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340011838, 'riniapsari', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'riniapsari@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340011948, 'agus.sumarna', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'agus.sumarna@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340011998, 'dwino', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'dwino@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012310, 'asaefudin', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'asaefudin@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012311, 'nanisuci', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'nanisuci@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012353, 'kunto.sadewo', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'kunto.sadewo@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012545, 'klarawidya', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'klarawidya@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012550, 'azhari', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'azhari@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012608, 'sushinta_indri', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'sushinta_indri@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012645, 'suryani', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'suryani@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012646, 'elsarianti', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'elsarianti@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340012871, 'enurjati', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'enurjati@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340013621, 'paramita', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'paramita@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340014475, 'eriyani', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'eriyani@bps.go.id', 'keuangan', '0000-00-00 00:00:00'),
(340014478, 'alifah', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'alifah@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340014528, 'biworo', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'biworo@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340014586, 'azizk', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'azizk@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340014780, 'ningsp', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ningsp@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340014813, 'snurjanah', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'snurjanah@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340015132, 'nurulh', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'nurulh@bps.go.id', 'user', '2024-08-06 08:19:02'),
(340015140, 'aini', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'aini@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340015207, 'hendras', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'hendras@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340015481, 'alice_lilik', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', '', 'user', '0000-00-00 00:00:00'),
(340015483, 'ferip', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ferip@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340015789, 'tri.pramuji', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'tri.pramuji@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340015944, 'dinapratiwi', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'dinapratiwi@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340016177, 'theres', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'theres@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340016278, 'suryana', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'suryana@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340016892, 'ruth.juliana', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ruth.juliana@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340016936, 'lindakus', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'lindakus@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340016969, 'dwi_wahyuni', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'dwi_wahyuni@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340017176, 'pudji.dwi', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'pudji.dwi@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340017263, 'dian.anggraini', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'dian.anggraini@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340017406, 'budiutami', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'budiutami@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340017694, 'dwiapl', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'dwiapl@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340018921, 'saifull', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'saifull@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340018923, 'suyono', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'suyono@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340019149, 'ardani', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ardani@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340051132, 'ardani', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ardani@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340051327, 'atin', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'atin@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340051354, 'trisna.wardah', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'trisna.wardah@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340053780, 'antokida', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'antokida@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340053794, 'wibowo.pujiharto', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'wibowo.pujiharto@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340054181, 'megacahya', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'megacahya@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340054186, 'steffirs', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'steffirs@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340054258, 'rsdewi', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'rsdewi@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340054842, 'ahmad.yunus', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ahmad.yunus@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340054846, 'pambudi', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'pambudi@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340054851, 'nurike', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'nurike@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340055320, 'ellyjs', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ellyjs@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340055638, 'kunradus', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'kunradus@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340055877, 'nurhani', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'nurhani@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340056249, 'dewisaputri', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'dewisaputri@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340056302, 'hastanti.sp', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'hastanti.sp@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340056436, 'ronaldoh', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ronaldoh@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340056437, 'ronnieahutajulu', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ronnieahutajulu@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057126, 'marwan.wahyudin', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'marwan.wahyudin@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057290, 'annisa.fadhilah', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'annisa.fadhilah@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057293, 'anugrah.adi', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'anugrah.adi@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057376, 'fakhriyanto', '$2y$10$Dx9etnds9wcgGmdyc.sxGeQwNjS/LlBRMnKql/r0pMdfQWq2It.wW', 'fakhriyanto100@gmail.com', 'user', '2024-05-27 04:26:10'),
(340057714, 'ita.amaliah', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'ita.amaliah@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057716, 'kadek.swarniati', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'kadek.swarniati@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057718, 'mutiara.putri', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'mutiara.putri@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057720, 'yolanda.artati', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'yolanda.artati@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057745, 'stephen', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'stephen@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057764, 'febrianti.wigati', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'febrianti.wigati@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340057907, 'dimas.hafizh', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'dimas.hafizh@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340058016, 'vanya.anjani', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'vanya.anjani@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340058129, 'amirah.fatinah', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'amirah.fatinah@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340058163, 'asniar2', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'asniar2@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340058499, 'sri.karina', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'sri.karina@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340058748, 'galuhps', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'galuhps@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340058881, 'naufal.rasyid', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'naufal.rasyid@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340059022, 'wahyurp', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'wahyurp@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340059032, 'anggitn', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'anggitn@bps.go.id', 'ppk', '0000-00-00 00:00:00'),
(340059520, 'febriana.susi', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'febriana.susi@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340059752, 'rosa.regita', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'rosa.regita@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340059799, 'vilda.tri', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'vilda.tri@bps.go.id', 'admin', '0000-00-00 00:00:00'),
(340060133, 'hazanul.zikra', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'hazanul.zikra@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340061195, 'arisonaldis', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'arisonaldis@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340062266, 'erikha.anindita', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'erikha.anindita@bps.go.id', 'keuangan', '0000-00-00 00:00:00'),
(340062288, 'novifatheka-pppk', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'novifatheka-pppk@bps.go.id', 'user', '0000-00-00 00:00:00'),
(340062862, 'lilissetio-pppk', '$2y$10$qdupGpW0xMVo.8mB4lPgcejIoO4ByhYxp4ahO.AQQz0yn2RtgNWUS', 'lilissetio-pppk@bps.go.id', 'user', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komponen`
--
ALTER TABLE `komponen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kro`
--
ALTER TABLE `kro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `output`
--
ALTER TABLE `output`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `niplama` (`niplama`),
  ADD KEY `golongan` (`golongan`),
  ADD KEY `wilayah` (`wilayah`);

--
-- Indexes for table `subkomponen`
--
ALTER TABLE `subkomponen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`niplama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `komponen`
--
ALTER TABLE `komponen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kro`
--
ALTER TABLE `kro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `output`
--
ALTER TABLE `output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `subkomponen`
--
ALTER TABLE `subkomponen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
