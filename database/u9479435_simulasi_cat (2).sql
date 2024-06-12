-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2024 at 01:20 PM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u9479435_simulasi_cat`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodatas`
--

CREATE TABLE `biodatas` (
  `id` char(36) NOT NULL,
  `schedule_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodatas`
--

INSERT INTO `biodatas` (`id`, `schedule_id`, `ip`, `nik`, `nama_lengkap`, `alamat`, `email`, `no_hp`, `created_at`, `updated_at`) VALUES
('009ef0bf-c051-4655-839f-08f7ff2a9176', 1, '114.122.70.159', '3273016711950001', 'Riska Novilaria', 'Jl. Hegarmanah gg. Natareja no 27\r\nBandung', 'riska_novilaria@yahoo.co.id', '082216327519', '2024-06-12 05:48:25', '2024-06-12 05:48:25'),
('020303c9-96ea-41d6-98f8-769ee6cc7060', 2, '180.244.132.93', '3205335005040007', 'Meli Amelia', 'Jl. Encep Kartawiria No. 106, RT 01 RW 06, Kel Citeureup, Kec Cimahi Utara, Kota Cimahi, Jawa Barat 40512', 'me.ameliaa@gmail.com', '089519458875', '2024-06-12 05:46:41', '2024-06-12 05:46:41'),
('028c4c9c-4709-43c6-a534-e199d5ce45f9', 1, '103.95.23.134', '3204373004990009', 'Dicky Alfandy', 'KMP. Babakan Rel RT.004/RW.002 Desa Sadu Kecamatan Soreang Kabupaten Bandung', 'dickyalfandy4@gmail.com', '081218186966', '2024-06-12 05:37:58', '2024-06-12 05:37:58'),
('02978cf9-6d61-4181-885a-2890acc00812', 1, '110.138.36.237', '3214135901010001', 'Diva Yohana Margaretha Marbun', 'Kp. Cimaung RT 015/RW 004 Kelurahan Ciwangi Kecamatan Bungursari, Purwakarta', 'diva19003@mail.unpad.ac.id', '0895402941780', '2024-06-12 06:12:22', '2024-06-12 06:12:22'),
('02f096ac-6a96-43fd-9798-8d5808c74cb3', 1, '103.105.33.73', '3217094710890007', 'AI HAMIDAH', 'Kp. Cangkorah RT 004 RW 001 Desa Cangkorah Kecamatan Batujajar Bandung Barat', 'aihamidah1257@gmail.com', '089605543751', '2024-06-12 06:04:33', '2024-06-12 06:04:33'),
('034edf97-05bd-464d-bf48-0945c5eade49', 3, '114.122.102.37', '3213160808960001', 'IRFAN SYAH', 'Kp cinangela rt/rw 002/008 desa mekarsari kecamatan ngamprah kabupaten Bandung barat', 'ipenkdoank20@gmail.com', '083121195011', '2024-06-12 05:23:30', '2024-06-12 05:23:30'),
('03b77823-7fa8-4ba1-834e-69c92db369bb', 2, '180.244.128.234', '1211015205980003', 'Lucient Louren Tambunan', 'Jl. Muararajeun Lama, No. 15, Bandung', 'lucientlouren05@gmail.com', '081321287850', '2024-06-12 05:21:47', '2024-06-12 05:21:47'),
('04b64e1b-3793-4054-a62f-062d93394e85', 2, '180.244.129.139', '3217084805940007', 'AJENG RETNO kURNIASARI', 'Asrama Pusdikkav Blok C no 11 ds. jaya Mekar Kec. Padalarang', 'ajengrere0708@gmail.com', '081324437338', '2024-06-12 06:19:52', '2024-06-12 06:19:52'),
('05d9bad7-6119-403e-af1d-d5aa109c0be2', 2, '202.93.229.62', '3273052204870008', 'Agar Mana S Sos', 'Komplek Gending Mas Blok H 34', 'agarmanasupriadi22@gmail.com', '085156572041', '2024-06-12 05:16:50', '2024-06-12 05:16:50'),
('05e57195-b469-42dd-823e-1bcc1f8873a2', 3, '125.163.78.59', '3273122208810017', 'Purnama', 'jalan binong jati rt007/003', 'purnama220881@gmail.com', '085222277310', '2024-06-12 05:42:14', '2024-06-12 05:42:14'),
('0781db1a-f53f-454c-9b63-5927404aad1f', 2, '180.244.132.180', '3217075110900012', 'Riska rahmawati', 'Kp medalwangi rt 2/13 desa mandalasari kec cipatat kab bandung barat', 'riskarahmawati111090@gmail.com', '085722655277', '2024-06-12 05:49:09', '2024-06-12 05:49:09'),
('07adcd86-41e4-4fe2-a7aa-4ce0d782f424', 2, '180.251.233.37', '3212154208010021', 'HENY SAFITRI', 'KOMP. MARGALAKSANA INDAH 2, Jl. SINGOSARI3, NO. 7, Kel. MARGADADI, KABUPATEN INDRAMAYU', 'safitrih733@gmail.com', '087712359769', '2024-06-12 05:09:07', '2024-06-12 05:09:07'),
('082a2f3f-5201-40be-a876-b047f187e1ab', 1, '125.164.25.219', '3204334607050013', 'Nada Zafira Shofa', 'Kp. Biru, Rt/Rw 001/003, Desa biru, Kec. Majalaya, Kab. Bandung', 'zafiranada6@gmail.com', '082219522612', '2024-06-12 05:16:25', '2024-06-12 05:16:25'),
('08a1285d-33f1-4418-a493-9b64a160342c', 3, '202.151.13.181', '3201011501020015', 'Muhamad Aliyudin Alfarizi', 'Gg. Swadaya No.41 Rt 03/Rw 08, Kel. Nanggewer, Kec. Cibinong, Kab. Bogor, Jawa Barat 16912', 'aliyudinalfarizi507@gmail.com', '089653297021', '2024-06-12 05:37:47', '2024-06-12 05:37:47'),
('098240ce-d522-47b7-bbca-78bea2059c05', 3, '111.94.108.152', '3215034302070003', 'Alya Febriana Nurtami', 'Perum Resinda blok D10/2, rt 005/009, Purwadana, Telukjambe Timur, Karawang, Jawa Barat', 'alyafebriana196@gmail.com', '089601784790', '2024-06-12 05:15:51', '2024-06-12 05:15:51'),
('0986744a-cc2a-43f5-9ee4-ad83d1d0cc85', 2, '103.116.201.68', '3217063008730002', 'Dadang Hidayat', 'Kp. Tegal Parean RT 003 RW 008 Desa Sukatani Kecamatan Ngamprah Kabupaten Bandung Barat', 'dadanghidayat0324@gnail.com', '082120989748', '2024-06-12 06:08:36', '2024-06-12 06:08:36'),
('09a66fcb-283a-405c-964d-7caf8593d80e', 1, '114.122.85.75', '3203044111000017', 'Nova Nur\'afiah Budiana', 'perum bumi emas blok f2 no 24, sirnagalih, cilaku, cianjur', 'novanurafiah5@gmail.com', '088223258459', '2024-06-12 05:21:58', '2024-06-12 05:21:58'),
('09ac8b06-8428-402d-ae80-909d09645c91', 2, '125.164.24.6', '3217114504900012', 'siti nuralfiah', 'Kp. Ciririp rt 02/01 des. Mukapayung kec. Cililin kab. Bandung barat 40562', 'sitinuralfiah0504@gmail.com', '085793760908', '2024-06-12 05:58:37', '2024-06-12 05:58:37'),
('09fd770f-3b56-49b1-b2c6-7d5a0cb0a96c', 1, '114.5.215.153', '3217086308040011', 'Anggi Agustin', 'Jl. Jatihandap no. 103 RT/RW 001/008 Kel/Desa Jatihandap Kecamatan Mandalajati Kota Bandung', 'anggiagustin230804@gmail.com', '085793888922', '2024-06-12 05:06:52', '2024-06-12 05:06:52'),
('0ba36d6e-d6ab-4dc9-9301-6f4e883fd9d4', 1, '114.122.78.47', '3273026601000002', 'Mirsha Putri Azzahra', 'Jl Kembar II no 44', 'azzahramirshaa@gmail.com', '082129248477', '2024-06-12 05:41:48', '2024-06-12 05:41:48'),
('0ca9ce42-360d-4e34-9319-3e3a2c8a7af0', 2, '125.164.25.73', '3217151310880007', 'Sandi', 'Kp pasar puncak\r\nRt 02 Rw 02 desa celak\r\nKecamatan gunung halu', 'amarsandi304@gmail.com', '083822402074', '2024-06-12 05:25:28', '2024-06-12 05:25:28'),
('0cc95bbf-df4c-45d1-a911-d61624f0c3d7', 2, '202.80.215.156', '3273066810970001', 'Hany Oktaviani', 'Jln. Teluk Buyung Kaler no 49\r\nKel. Arjuna\r\nKec. Cicendo', 'hanyoktaviani@gmail.com', '089649117032', '2024-06-12 05:38:21', '2024-06-12 05:38:21'),
('0cd21126-0bf8-4c37-8bc0-a4632359a155', 2, '103.155.201.12', '3275024211980006', 'refti novianti', 'jl gn kerinci II no 898 RT 008 RW 012 kel. bintara jaya kec. bekasi barat', 'reftinovi25@gmail.com', '085882159268', '2024-06-12 05:12:47', '2024-06-12 05:12:47'),
('0ee9d68f-9869-460e-a75d-2b6925ca2043', 3, '140.213.46.207', '3205057004040007', 'Farhat Ayu Wulandari Nugraha', 'Kp.negla 02/01 Desa Sindanglaya Kec Karangpawitan', 'arinip826@gmail.com', '08584681162', '2024-06-12 05:33:45', '2024-06-12 05:33:45'),
('0ef38367-b327-4bf3-83d5-56ac2a6c4e4f', 1, '180.252.24.58', '8101176507990003', 'Nisa Fitri Nusaibah', 'Kp Saeuran RT 007 RW 007, Desa Dawagung, Kecamatan Rajapolah, Kabupaten Tasikmalaya', 'nisafitri800@gmail.com', '082127524193', '2024-06-12 05:54:13', '2024-06-12 05:54:13'),
('0f1708c6-f1b4-403c-b11a-ce28769bfc6e', 2, '140.213.107.62', '3278042402030006', 'Naji Jannatun Naim', 'jl.bantarsari no 41 rt02 rw014 kel.bantarsari kec. bungursari kota tasikmalaya', 'nazizannatun@gmail.com', '087745408656', '2024-06-12 06:14:19', '2024-06-12 06:14:19'),
('0f216d47-f6c3-415b-a464-a82afd8ece71', 3, '103.105.34.93', '3214114101970009', 'ENDAH MUSTIKA SARI', 'Kp. Krajan Rt 013 Rw 004 Ds. Cileunca Kec. Bojong Kab. Purwakarta', 'mustikasariendah04@gmail.com', '083898385283', '2024-06-12 05:38:08', '2024-06-12 05:38:08'),
('0f707366-de89-4f79-a6ed-3ec0f5fb3d35', 1, '180.253.236.240', '3273141503060002', 'Alif Rafly', 'JL Cikutra Gg Sekejati VII No 64', 'alifrafly06@gmail.com', '081221604686', '2024-06-12 06:15:00', '2024-06-12 06:15:00'),
('108fccf5-54f1-4ed6-824c-e0cd1f829ae5', 3, '140.213.24.102', '3278015905010005', 'Silah Fadillah', 'Kampung cipicung, rt 06 rw 08, kelurahan tugujaya, kecamatan cihideung, kota tasikmalaya, jawa barat', 'silahfadillah@gmail.com', '087784202276', '2024-06-12 06:11:21', '2024-06-12 06:11:21'),
('10ec33d7-27cb-4703-8b94-db46d9d21248', 2, '202.93.229.62', '3217105501810011', 'pera eriyani', 'KP. Gunung Urug RT. 001 RW.001 Desa Situwangi Kecamatan Cihampelas', 'periyani1981@gmail.com', '082215142089', '2024-06-12 05:44:49', '2024-06-12 05:44:49'),
('119cec11-1414-42f2-af60-6e801ef8b423', 1, '114.5.209.114', '3277011010820036', 'TAUFIK RAHMAN', 'JL.NUSA INDAH I NO.38 RT.01 RW.017 KELURAHAN MELONG KECAMATAN CIMAHI SELATAN', 'celviapunyaocit@gmail.com', '08982667676', '2024-06-12 05:57:17', '2024-06-12 05:57:17'),
('11dc8317-80ef-4e2d-95dc-e7f61f2acca3', 2, '103.156.164.58', '3217082512050008', 'Marco Joy Noelo Butar Butar', 'KPAD SEJAHTERa B 1 RT 2 RW 21 PADALARANG KAB BANDUNG BARAT', 'marcojoy527@gmail.com', '081318496608', '2024-06-12 05:08:41', '2024-06-12 05:08:41'),
('120b7637-0d27-432a-aeea-a5d72ddf0937', 1, '116.0.2.226', '3273136210000003', 'Annisa Nur Kholifah Insani', 'Jl. Sasak gantung II no 70/17 D RT 005 RW 006 kel cikawao kec lengkong kota bandung provinsi jawa barat', 'annisakhalifa18@gmail.com', '089644244747', '2024-06-12 05:09:07', '2024-06-12 05:09:07'),
('125f380d-295e-4c32-b771-c8f3a327a2c4', 3, '36.72.31.182', '5303046505970001', 'Gradiana Tumbas', 'Fatumuti RT 008 RW 003 Desa Fatumuti Kecamatan Noemuti Timor tengah Utara NTT', 'gradianat@gmail.com', '081321318685', '2024-06-12 06:05:56', '2024-06-12 06:05:56'),
('126e66b1-f741-4708-9307-b9abad100238', 2, '103.229.14.170', '3204130605920004', 'TEGUH GINANJAR PURNAMA ALAMSYAH', 'KP. BENGKOK RT 002/004 DESA SUKALUYU KECAMATAN SUKALUYU CIANJUR', 'teguhgpalamsyah@gmail.com', '082118309834', '2024-06-12 05:15:19', '2024-06-12 05:15:19'),
('1282f6f3-8e02-4cdc-9ec8-84f506d885ee', 3, '125.164.22.241', '3217114804990008', 'DIANA EKA SARI', 'Kp. Bunder, rt. 003/005, Des. Tanjungnaya', 'dianaekasari34@gmail.com', '083174848203', '2024-06-12 05:45:22', '2024-06-12 05:45:22'),
('13395152-1923-4d6f-a98f-d6a6065b6a0e', 3, '114.122.71.119', '3277024810940011', 'Laetina Octavianti', 'Giri Mekar Jaya RT/RW 005/015, Kel- Padasuka, Kec Cimahi Tengah, Kota Cimahi', 'laetinaoctavianti2@gmail.com', '087824277474', '2024-06-12 05:08:07', '2024-06-12 05:08:07'),
('13cce9bd-14ff-44a9-9d82-ba5bcbb1f4ed', 2, '114.5.212.204', '3217100101890058', 'Saepuloh lamri', 'Kp. Patrol rt.01 rw.08 desa pataruman kec. Cihampelaskab. Bandungbarat', 'lammryamoy@gmail.com', '089675464021', '2024-06-12 05:59:22', '2024-06-12 05:59:22'),
('1475199a-f35a-491f-8cdf-729615216aad', 2, '114.79.54.182', '3217124912000005', 'Rian Nurfitriani', 'Kp. Ciangkrong RT 002 RW 007 Desa Sarinagen Kecamatan Cipongkor Kabupaten Bandung Barat', 'riannurfitriani9@gmail.com', '083876946581', '2024-06-12 05:26:55', '2024-06-12 05:26:55'),
('147c7e4f-6e54-40cc-83e2-e81f1fa43de8', 3, '114.122.79.91', '3217146802920001', 'Resty febriani', 'Kp. Cikadu 03/11 ds. Cikadu kec. Sindangkerta kab. Bandung barat', 'tiereslee@gmail.com', '082111465525', '2024-06-12 05:31:15', '2024-06-12 05:31:15'),
('14d8b6b4-dc95-4206-8067-021b098dedf3', 3, '125.164.18.127', '3217120408730021', 'Agus mulyana', 'Kp seuseupan', 'agusmulyanainfinix@gmail.com', '083822929112', '2024-06-12 05:09:51', '2024-06-12 05:09:51'),
('155b51ed-a9b0-4514-a3a3-c1dfad5be389', 2, '202.93.229.62', '3217085412940004', 'wulan purnamasari', 'perum bukit berlian blok c 16 rt 02 rw 25 desa kertamulya kecamatan padalarang', 'wulanpurnamasari932@gmail.com', '085864452533', '2024-06-12 05:05:31', '2024-06-12 05:05:31'),
('1564f82c-786e-4f00-89cf-a56cb18d0653', 3, '103.105.33.95', '3214010510000011', 'Aldhi Anugrah Oktavian', 'Kp. Bebesaran RT. 031 RW. 007 Kel. Nagrikidul Kec. Purwakarta Kab. Purwakart', 'aldhianugrahoktavian@gmail.com', '089621718318', '2024-06-12 06:09:59', '2024-06-12 06:09:59'),
('156da8c0-c66b-4188-8eae-e45942c24475', 2, '114.122.76.11', '1674012111960004', 'Rahman Mukmin', 'Jln Pager Betis no 346A RT/RW 001/001, Desa Cipancar, Kec. Sumedang Selatan, Kab. Sumedang, Jawa Barat', 'Rmukmin6@gmail.com', '089658690745', '2024-06-12 05:27:33', '2024-06-12 05:27:33'),
('15f62f08-54a9-4817-83c9-b6986af49e80', 3, '125.164.25.62', '1812085507950040', 'lia sari', 'padalarang 01/16', 'liasayuti1995@gmail.com', '085215901595', '2024-06-12 05:13:57', '2024-06-12 05:13:57'),
('1679b68f-c65d-40a5-b67b-fbd66911b442', 2, '180.245.248.31', '3217030509930002', 'RUDI SUBARKAH', 'kp babakan muncang rt 01/12 desa padaasih kecamatan cisarua kabupaten bandung barat \r\n40551', 'rudijuju96@gmail.com', '083149603129', '2024-06-12 05:37:45', '2024-06-12 05:37:45'),
('1717048f-b70f-49dc-a405-86afd61b0b14', 1, '114.122.69.191', '3273182603850004', 'Raden fajar Hendaryat, SE.', 'GG tilil 1 no.311 RT/RW 06/01 Sukaluyu, kota Bandung', 'rafa.fajar@gmail.com', '088226031985', '2024-06-12 05:54:13', '2024-06-12 05:54:13'),
('174d2f9e-1b8a-402b-a5c9-871014f88bd7', 2, '114.5.208.86', '3203145901920008', 'DEBI ANGGRAENI', 'Kp.citiis 02/07 Desa.sukamekar kecamatan.sukanagara', 'Debianggraeni190192@gmail.com', '085314230302', '2024-06-12 05:41:01', '2024-06-12 05:41:01'),
('182eead5-bdc4-4b19-a04a-cc425a02bfb5', 3, '114.5.217.139', '3217110611890004', 'Heri Munandar', 'Kp. Jamarun RT 04 RW 07 Desa Nanggerang Kecamatan Cililin Kabupaten Bandung Barat', 'herimunandar069@gmail.com', '085795372106', '2024-06-12 05:20:36', '2024-06-12 05:20:36'),
('183c7b33-71c5-4a0a-9de6-296c66c13ec0', 3, '118.96.247.171', '3207016108880003', 'Tya Amalia Gustin Puspita', 'JL Albasia IV No.108 BAS', 'amaliagustin21@gmail.com', '087722176307', '2024-06-12 05:10:44', '2024-06-12 05:10:44'),
('1873ed29-95cf-4204-87d3-ec7fc707d59e', 2, '101.255.168.6', '3275023004920017', 'IVAN ABRAHAM PRATAMA', 'JL BOROBUDUR RT1 RW 9 JAKASMAPURNA BEKASI', 'ivanabrahampratama@gmail.com', '085141576139', '2024-06-12 05:39:57', '2024-06-12 05:39:57'),
('193ec420-e859-4168-ab8e-63a92136f56c', 1, '114.122.74.24', '3204055604000007', 'Vigati Amarta Purwicitra', 'Komp. Bumi Harapan CC 9 No 36 RT 03 RW 11 Kec. Cileunyi Kab. Bandung', 'vigatiamarta24@gmail.com', '087742069234', '2024-06-12 05:28:20', '2024-06-12 05:28:20'),
('19526433-b256-4cab-97af-c7ed64e7cbc6', 3, '182.0.240.30', '3214045611940001', 'DESSY NOVITA RATNASARI', 'Kp Kaum Rt 003 Rw 002 Ds. Plered Kec. Plered Kab. Purwakarta', 'dessynovita1694@gmail.com', '085846543314', '2024-06-12 05:44:04', '2024-06-12 05:44:04'),
('19769d5c-c30b-477f-b377-9ad73a589afc', 3, '114.79.55.73', '3204137005930003', 'SHELLY DIANITA SHOLEHA', 'Kp. Girang deukeut rt 03 rw 09 kel. Banjaran kulon, kec. Banjaran', 'shelly.dianita@gmail.com', '0811233376', '2024-06-12 05:52:53', '2024-06-12 05:52:53'),
('19955d97-a57a-4301-818f-879a2a64fa37', 1, '180.253.255.154', '3277034802940001', 'FEBRIYANI HERMINA', 'JLN. KOLONEL MASTURI NO. 50 RT 001 RW 014', 'febriyani.hermina@gmail.com', '085974557190', '2024-06-12 05:05:31', '2024-06-12 05:05:31'),
('1a6acaef-9590-44c7-955a-50e8296a4aa0', 2, '114.5.216.189', '3217141603960002', 'ANDRIANSYAH', 'Kp peusing tengah rt 04 rw o3 desa sindangkerta,kecamatan sindangkerta', 'andrisengit@gmail.com', '081563147934', '2024-06-12 05:25:28', '2024-06-12 05:25:28'),
('1a831991-6101-4336-9b97-ba27afc7e2f1', 2, '180.244.132.180', '3217114808940003', 'Eka Rosdiana Santika Priatna', 'Kp Kaum Rt 02 Rw 07', 'derao42@gmail.com', '081321466812', '2024-06-12 05:48:52', '2024-06-12 05:48:52'),
('1af7d743-5aca-41e2-b52a-bbbdc462d451', 1, '103.116.201.68', '3217031309770010', 'Iwan Rudianto', 'Kp. Bengkok Rt. 006, Rw. 001 Kel. Ciumbuleuit Kec. Cidadap Bandung', 'iwanrudianto644@gmail.com', '081220325804', '2024-06-12 06:09:58', '2024-06-12 06:09:58'),
('1b4e0892-56ec-40f3-818c-eb88011bb33b', 2, '103.229.14.170', '3217015501990001', 'Alda Yolanda', 'Kp. Babakan Laksana RT 001 RW 007 Desa Gudangkahuripan Kecamatan Lembang Kabupaten Bandung Barat', 'yolandaalda95@gmail.com', '082211213602', '2024-06-12 05:41:11', '2024-06-12 05:41:11'),
('1c5d20df-9819-4c35-9a09-da11828e7aed', 1, '114.122.85.75', '3203042111010001', 'Rafi Drajat Mukti', 'Griya Nugratama A2 No.5 RT01 RW14 Desa Sirnagalih Kec. Cilaku Kab. Cianjur', 'rafimukti137@gmail.com', '082215754219', '2024-06-12 05:08:07', '2024-06-12 05:08:07'),
('1cc643dc-a7c3-47dd-9282-5d053b86cf7b', 1, '125.164.19.61', '3217146101930004', 'MIA ISMIATUN SYAADAH', 'kp kubang Rt 01 Rw 06 desa puncaksari kec. sindangkerta', 'm.ismiatun04@gmail.com', '0881023857398', '2024-06-12 05:18:38', '2024-06-12 05:18:38'),
('1eedc614-9555-43a1-806d-87607e084dd0', 1, '114.5.208.243', '3217012009980001', 'MUHAMAD ERLANGGA', 'KAMPUNG SUKAMAJU TIMUR RT.02/RW.11 DESA KAYUAMBON KECAMATAN LEMBANG KABUPATEN BANDUNG BARAT', 'anggamoch862@gmail.com', '085861876998', '2024-06-12 05:46:45', '2024-06-12 05:46:45'),
('1f0100e9-e632-4d1b-bbab-0e439eb5ff0b', 3, '36.70.226.127', '3214016901000004', 'Melin Simorangkir', 'Jl. Ipik Gandamanah No. 6 RT 01 / RW 06 Kel. Ciseuruh, Kab. Purwakarta', 'melinsimorangkir01@gmail.com', '081313543795', '2024-06-12 05:16:21', '2024-06-12 05:16:21'),
('1f03280f-a721-49dd-ac4a-2a5c1ac8b8ae', 2, '101.255.168.6', '3275024211980009', 'Refti novianti', 'Jl gn kerinci II no 898 rt 008 rw 012 kota bekasi', 'reftinovi25@gmail.com', '085882159268', '2024-06-12 05:27:28', '2024-06-12 05:27:28'),
('20dad870-40d1-499a-b89b-5e075357e262', 2, '114.122.73.113', '3273262812850001', 'Boby Surya', 'Komplek mekar sari eco living blok a no.08, rt.002/007', 'boby.surya28@gmail.com', '081398404293', '2024-06-12 06:08:03', '2024-06-12 06:08:03'),
('214ab6a1-53e4-4190-a3a1-ac4fce43245c', 3, '180.244.129.139', '3217087005980023', 'DINA WARDIATI', 'Kp. Warung jati rt 001 rw 010 desa ciptagumati Kecamatan Cikalong wetan kbb. bandung Barat', 'dinawardiyanti26@gmail.com', '08985821647', '2024-06-12 05:52:49', '2024-06-12 05:52:49'),
('225c0f1e-f963-4334-9076-dce197e35142', 2, '180.251.227.128', '3211212405930001', 'AGUS ABDURROCHMAN', 'DUSUN JINGKANG RT.003/002 DESA JINGKANG KEC. TANJUNGMEDAR - SUMEDANG', 'agusabdurrohman66@gmail.com', '081222035325', '2024-06-12 05:49:03', '2024-06-12 05:49:03'),
('22dade46-ff33-48ef-9464-cfa9dcc49eff', 3, '125.164.22.240', '3273045011940001', 'Firda Ayu Rizqiyani', 'Karees Kulon 2/5 Kel.Malabar Kec.Lengkong Kota Bandung', 'firdaayuriz@gmail.com', '08970403852', '2024-06-12 06:18:03', '2024-06-12 06:18:03'),
('231919d7-7585-4096-91c7-47d0eb49e8fc', 3, '103.165.137.90', '3273170308960003', 'Teguh Saepuloh Agustina', 'Jl. LEUWIPANJANG GG.H.SYAMSUDIN NO.12 KOTA BANDUNG', 'teguhsaepulohagustina03@gmail.com', '087717533063', '2024-06-12 06:16:31', '2024-06-12 06:16:31'),
('238a2d58-57b3-4238-ab22-4f2914e60a5d', 3, '114.5.209.58', '3206071308010001', 'MUHAMMAD FAJRI', 'kp.sindangrasa rt003/rw001 desa cigunung kecamatan parungponteng kabupaten tasikmalaya', 'hilmifazri42@gmail.com', '082218943207', '2024-06-12 05:05:31', '2024-06-12 05:05:31'),
('23db4826-3dd9-4172-bb55-5cf35f4679c2', 2, '114.5.208.71', '3211061610980002', 'Acep Sudarisman', 'Dusun Batugulung RT 01 RW 04 Desa Kaduwulung Kecamatan Situraja Kabupaten Sumedang', 'acepsudarisman@gmail.com', '082125693958', '2024-06-12 05:20:56', '2024-06-12 05:20:56'),
('24f1881a-4ff3-43ac-afc1-60312a00a405', 2, '103.174.122.178', '3273041608740006', 'Agus Denny', 'Jln kopo gang pabrik selatan\r\nRt 05/Rw 01 Desa Sukaasih Kec. BOJONGLOA KALER KOTA BANDUNG', 'agus74denny@gmail.com', '0895429617171', '2024-06-12 05:35:47', '2024-06-12 05:35:47'),
('258586fc-ff83-4be2-98dd-41279855b308', 3, '114.122.102.46', '3205055207970002', 'Hilda Damayanti', 'Perumahan Bumi tajug asri no A-15 RT 02 RW 18 Desa Haurpanggung Kecamatan Tarogong kidul Kab Garut', 'hildadanayanti00@gmail.com', '082316592019', '2024-06-12 05:52:24', '2024-06-12 05:52:24'),
('25d90729-44b9-48f6-96b8-29308f07382b', 3, '180.244.138.209', '3217042707010009', 'Fresa Darmawan', 'BUKIT MANDALA PERMAI RT 02 R2 02', 'fresadarmawan13@gmail.com', '082130641794', '2024-06-12 05:23:40', '2024-06-12 05:23:40'),
('25e265cd-43b8-44da-bb2b-c25b15b3afcf', 2, '114.122.77.159', '3217086306990008', 'Tiara Yunita', 'Cimerang RT 03 RW 06 Kec Padalarang Kab Bandung Barat', 'tiarayunita23@gmail.com', '081220787869', '2024-06-12 05:22:35', '2024-06-12 05:22:35'),
('269fc744-17d3-48a1-8fff-e9bd6c273428', 2, '103.105.33.110', '3278020303920009', 'deri badriyana', 'KP RANCAGOONG RT001 RW 010 KEL. CIKONENG KEC.PASIRJAMBU', 'deribadriyana033@gmail.com', '082129922322', '2024-06-12 05:34:32', '2024-06-12 05:34:32'),
('27091f92-3419-4418-9b06-39daf8fff73f', 2, '203.207.56.35', '3217014311830012', 'TITA ROSITA', 'KP. KARAMAT RT.02 RW.07 DS. CIKAHURIPAN KEC. LEMBANG KAB. BANDUNG BARAT', 'titarosita2383@gmail.com', '089515253585', '2024-06-12 06:06:24', '2024-06-12 06:06:24'),
('27e22574-e518-4c9f-ad65-272dce1f8175', 1, '110.137.74.184', '3204326603060003', 'Cantika Mutiara Rizki', 'BMI blok G.III No.23 rt 02 rw 16 Desa Bojongmalaka, Kec. Baleendah, Kab. Bandung, Jawa Barat', 'cantikalava702@gmail.com', '082121348916', '2024-06-12 05:55:01', '2024-06-12 05:55:01'),
('27e7711d-0fa3-4bf6-aa42-c39330181ec0', 2, '114.122.82.89', '3204324112050005', 'Ismie Raudhatun Jannah', 'Kp. Mekarsari RT 02/RW 27, Kec. Baleendah, Kab. Bandung, Jawa Barat', 'ismierj112@gmail.com', '083129727870', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
('2818cd28-33a2-4671-95a0-9cf147ebe4a2', 2, '103.156.164.8', '3204085011000002', 'Angelica Putri Isabel', 'Griya Bandung Asri 2 Blok J6 No. 20, Bandung Kelurahan: Cipagalo Kecamatan: Bojongsoang RT/RW: 007/008, Bojongsoang, Kabupaten Bandung, Jawa Barat, 40287', 'angelputri3359@gmail.com', '087722150773', '2024-06-12 05:10:38', '2024-06-12 05:10:38'),
('28b7aea8-9581-4402-b656-8febe5972d09', 2, '114.122.117.201', '3217045101910006', 'Uswathun hasanah', 'Wisma I pusdikpom, jl baru no. 1 RT 003/025 kel Baros kec. Cimahi tengah', 'uswathunhasanah1101@gmail.com', '081221800278', '2024-06-12 05:47:52', '2024-06-12 05:47:52'),
('28df97d1-81d1-4581-a169-4bf06b8a36cc', 2, '182.253.228.109', '3272016502020001', 'Asyfia Salsabila Rahmawati', 'Jl. Bhayangkara Gg. Gelatik I No. 11 RT 01 RW 04 Kelurahan Gunung Puyuh Kecamatan Gunung Puyuh Kota Sukabumi', 'asyfiasalsabilar@gmail.com', '083811643192', '2024-06-12 05:14:14', '2024-06-12 05:14:14'),
('29b70679-800e-487d-9872-6df0fbf70b2a', 2, '202.80.214.212', '3273025402990002', 'Auliya Ayu Febianti Lebeharia', 'Jl. Tikukur No.23, RT/007, RW/009, Kelurahan Sadang Serang, Kecamatan Coblong, Kota Bandung', 'auliyaayufebiantilebeharia@gmail.com', '085172000280', '2024-06-12 06:02:43', '2024-06-12 06:02:43'),
('2a34e138-e14d-4873-941d-e1de602bb988', 2, '140.213.51.163', '3204376009840007', 'Dede pipih sopiah', 'Kp sumur bandung rt  01/ rw 10 desa karamat mulya kec soreang kab bandung', 'dedepipihsopiah20@gmail.com', '089690345779', '2024-06-12 05:22:05', '2024-06-12 05:22:05'),
('2aae22e8-f3ed-412c-b628-1fa174504953', 1, '125.164.18.90', '3273256301050005', 'Siti Eriani Dwintari', 'Jl. Manisi 04, No. 79, Rt.03/03, Kel. Pasir Biru, Kec. Cibiru, Kota Bandung, 40615', 'sitierianidwintari23@gmail.com', '082124068716', '2024-06-12 06:11:30', '2024-06-12 06:11:30'),
('2ab566c7-8968-40cc-8006-89d3108b8508', 1, '140.213.103.247', '3205390608730002', 'Udin saprudin', 'Kp cikurantung RT 1 RW 9 desa cirapuhan', 'udinsaprudinn1973@gmail.com', '087826096796', '2024-06-12 05:59:31', '2024-06-12 05:59:31'),
('2acd5680-a1ee-41a8-8a88-3e41427c6ab4', 1, '118.96.233.85', '3273210407990001', 'Muhammad Kurnia Pratama, S.Pd', 'Jl.Sekelimus XII', 'muhammadkurniap@gmail.com', '0859109947525', '2024-06-12 05:21:47', '2024-06-12 05:21:47'),
('2bc99c71-54e2-451d-aa53-1fd08cdb4ada', 3, '116.206.14.3', '3204264107960172', 'Dewi Ayu Utami', 'Kp. Marga Asih RT 02 RW 13 Ds. Ganjar Sabar Kec. Nagreg Kab. Bandung', 'utamidewiayu@gmail.com', '089606976412', '2024-06-12 05:09:09', '2024-06-12 05:09:09'),
('2c2fd98a-2d8c-4aab-bbae-ee4628005879', 1, '103.233.153.42', '3277037003850005', 'Martha Lena Aritonang', 'Jl.Raya Timur Gg.Sukawargi III\r\nRt/Rw.003/001\r\nCibabat\r\nCimahi utara', 'marthalenaarios@gmail.com', '081264680025', '2024-06-12 05:16:26', '2024-06-12 05:16:26'),
('2c304a55-eee7-43f6-9293-ff6a40dfe654', 1, '114.122.101.39', '3217044202960003', 'SANTI WIDIAWATI', 'KP. BLOK DESA RT/RW 03/03 DESA PUTERAN KECAMATAN CIKALONG WETAN KABUPATEN BANDUNG BARAT', 'santiwidia34@gmail.com', '082113549556', '2024-06-12 05:27:46', '2024-06-12 05:27:46'),
('2c606e4f-5ce6-44c4-9e84-e187662527f3', 1, '202.138.250.48', '1872017101000003', 'ZIRKAWATI', 'Jl Peta Gg Lingkar II No. 35, Sukaasih, Bojongloa Kaler', 'zirkawati@gmail.com', '08992565410', '2024-06-12 05:23:45', '2024-06-12 05:23:45'),
('2c7d1df2-dbc8-44ae-b009-b8dd6c378abb', 1, '140.213.107.166', '3277017108930005', 'Nurma Lintang Sari', 'Perum Green Ville CHJ 2 no E3 RT 02 RW 05, Cihanjuang, Kabupaten Bandung Barat', 'nurmalintangsari@gmail.com', '082217936393', '2024-06-12 05:08:40', '2024-06-12 05:08:40'),
('2d581fe0-945d-4563-a1f0-e0332026dcf6', 2, '125.163.18.70', '3217032204960002', 'AHMAD SAEPULOH', 'KP CISARUA RT02/RW12 DS.KERTAWANGI KAB.BANDUNGBARAT', 'Aahmadsaepuloh95@gmail.com', '089633012066', '2024-06-12 06:11:00', '2024-06-12 06:11:00'),
('2eeff7e3-efeb-429a-bf37-709dfe635724', 3, '103.133.24.243', '3214014105970002', 'Lulu Emara Intania', 'Perumahan munjul jaya permai', 'luluemarai@gmail.com', '087805368791', '2024-06-12 06:04:11', '2024-06-12 06:04:11'),
('2ef36061-0639-4acd-a449-e13c10ad556c', 2, '202.93.229.62', '3204322309690024', 'TAUFIK RIDWAN', 'KP.BARU PASAR KEMIS Rt.05 Rw.18', 'dedentaufik777@gmail.com', '085222503780', '2024-06-12 05:17:55', '2024-06-12 05:17:55'),
('2f058255-fafd-417a-8575-83a68719b1fd', 2, '103.174.122.178', '3204291012770006', 'Lili Rojali', 'Kp. Sukamelang RT.002, RW. 014, Desa Manggungharja, Kecamatan Ciparay,  Kabupaten Bandung', 'lili.rojali.kbb@gmail.com', '085220449964', '2024-06-12 05:46:51', '2024-06-12 05:46:51'),
('2f4f5613-a4f4-47cd-a67c-0c1abffb580a', 3, '118.96.236.193', '3273125810000005', 'Lula Nabila Fauzia', 'Jl. Babakan Dese No 7 Kel. Kebonwaru Kec.Batununggal Kota Bandung 40272', 'lulanabilafauzia@gmail.com', '6285795577707', '2024-06-12 06:01:55', '2024-06-12 06:01:55'),
('3000c6db-174f-4170-b436-da777f41bf15', 1, '180.244.133.225', '3277024604990001', 'WIDYA SAFARI', 'Jalan Panembakan Utara No.73 RT.04 RW.06 \r\nKel.Padasuka Kec.Cimahi Tengah Kota Cimahi', 'widyasafarii@gmail.com', '087715169186', '2024-06-12 05:51:01', '2024-06-12 05:51:01'),
('3095e8c0-4a79-4196-a9bc-2d2e9c8c5323', 1, '125.163.78.59', '3211022610980001', 'USWAH KHOERUDIN', 'dusun sukamanah, desa : sarimekar, kecamatan: jatinunggal, kabupaten : sumedang.', 'uswah603@guru.sd.belajar.id', '082125314749', '2024-06-12 05:37:45', '2024-06-12 05:37:45'),
('310d7d2c-2185-4b9d-a867-b4a0001659c3', 1, '114.122.111.83', '3217140809750005', 'Ayi supriatna', 'Kp pasirkihiang rt 03 Rw 12\r\nDesa/kec:sindangkerta kab : Bandung Barat', 'hasbisubki2211@gmail.com', '083821376195', '2024-06-12 05:21:58', '2024-06-12 05:21:58'),
('31b66c4f-aed2-419a-8e13-fa5c29223b92', 3, '125.164.24.83', '3217111912940004', 'Muhamad Rafliansyah', 'Kp. Sumur Bandung NO. 20 RT 02 RW 09 Kel. Cililin Kec. Cililin Kabupaten Bandung Barat', 'muhamadrafliansyahh@gmail.com', '083100500800', '2024-06-12 06:14:46', '2024-06-12 06:14:46'),
('31cd6848-405a-4299-904b-2e9e703f253c', 1, '112.215.253.50', '3217071507840011', 'Rudi Firmansyah', 'Kp Margaluyu RT 02/10 kertamukti Cipatat bandung barat', 'rudif2111@gmail.com', '081809716003', '2024-06-12 05:38:20', '2024-06-12 05:38:20'),
('32ae6ced-e6c7-4a98-a318-76bc3f7938c0', 1, '36.71.225.148', '3204051812990004', 'Zidan Ramdani', 'Komplek Astom Residence Blok E No. 35.', 'ramdanizidan9@gmail.com', '088801846892', '2024-06-12 05:25:07', '2024-06-12 05:25:07'),
('33f4220e-c115-4d04-bb71-12a3520c2b7d', 2, '103.105.33.89', '3277015112800028', 'Mia Sri Mulyani', 'Jl. Leuwigajah gg. Melati no. 163', 'miasofiyan42@gmail.com', '081321092211', '2024-06-12 05:28:33', '2024-06-12 05:28:33'),
('347e0881-6c99-48ad-b6ae-dc0d2cc84fb3', 1, '115.178.48.130', '3273086307840003', 'AYU WIJAYANTI MURTI', 'Jalan bukit jarian rt.003 rw.011\r\nKel.hegarmanah\r\nKec.cidadap kota bandung', 'ayuwijayantimurti@gmail.com', '083822205063', '2024-06-12 06:02:28', '2024-06-12 06:02:28'),
('3537c256-910b-4e73-a7a8-069163418563', 3, '114.122.111.129', '3273184111990001', 'Noviyanti Anastasya Audina', 'Jalan Gang Mars Dirgahayu 8 No. 111', 'noviyanti.anastasyaa@gmail.com', '081389008077', '2024-06-12 05:08:43', '2024-06-12 05:08:43'),
('3787e00c-53c8-404d-b4e1-57716f15494b', 3, '103.105.34.93', '3214010503890008', 'AZIZ NASRUDIN MUNGGARAN', 'Gg. Mawar III Rt. 058 Rw.009, Kelurahan Nagri \r\nKaler', 'adamwijaya240@gmail.com', '08815717462', '2024-06-12 05:17:17', '2024-06-12 05:17:17'),
('383bfac7-7ca4-4b87-8631-3ef532e0fb33', 3, '182.253.58.40', '3301220807060003', 'Khama Putra Pambudi', 'jl bromo rt 07 rw o3 kelurahan sidanegara, kecamatan cilacap tengah, kabupaten cilacap', 'khamapambudi12@gmail.com', '089678872589', '2024-06-12 05:41:30', '2024-06-12 05:41:30'),
('38d283aa-9135-4e6b-bf14-10ab313a35c0', 2, '36.83.122.183', '3205386504960003', 'Herna Helyana Rismayanti', 'Kp. Cijambe Timur, 004/007 Desa Limbangan Tengah Kecamatan Bl. Limbangan Kabupaten Garut', 'hernahelyanaa@gmail.com', '085314464463', '2024-06-12 05:57:41', '2024-06-12 05:57:41'),
('39c30371-f04d-49ec-8bc3-ae8a3d1f1cbc', 2, '114.5.213.141', '3204056410000004', 'Rizka Amaliani', 'Komplek Bukit Mekar Indah Blok G No.49 RT.005/RW.021. Kelurahan Cimekar, Kecamatan Cileunyi, Kabupaten Bandung', 'rizkaamaliani241000@gmail.com', '089670776576', '2024-06-12 05:19:34', '2024-06-12 05:19:34'),
('39c74d63-ff24-47f4-8f0a-c3cf94153adf', 3, '114.124.213.89', '1807020909950001', 'Pinky Hutama', 'Perum Rancamaya Indah, RT 20 RW 08 Desa Sukasenang Kec. Sindangkasih Kab. Ciamis', 'pinkyhutama@gmail.com', '082313795217', '2024-06-12 05:13:23', '2024-06-12 05:13:23'),
('3a6f0805-e493-4d0e-b371-a1ba11c63cf7', 3, '202.93.229.62', '3273112704870005', 'Rangga Rahmada', 'jl. Dudukuy No. 331 .19/B , RT.02/05 , kel pungkur , kec. regol , Bandung', 'rahmadarangga@gmail.com', '082217776355', '2024-06-12 05:42:43', '2024-06-12 05:42:43'),
('3aec9c3f-7aab-4981-9a92-21b76c805e36', 1, '125.164.16.95', '3217115311790002', 'NENENG LALAN SYARIFAH', 'KP. SITUHIANG RT 01 RW 17 DS. MUKAPAYUNG KEC CILILIN KAB. BANDUNG BARAT', 'qory.adnan@gmail.com', '081321168073', '2024-06-12 05:39:59', '2024-06-12 05:39:59'),
('3c77e26e-f9da-4189-886d-95ace038e7f1', 3, '180.244.129.139', '3217040204930012', 'ANDHI KARIANIE', 'KP. WARUNGJATI RT. 003 RW. 010 DESA CIPTAGUMATI KEC. CIKALONG WETAN KAB. BANDUNG BARAT', 'rianiandhika23@gmail.com', '087779619616', '2024-06-12 05:42:07', '2024-06-12 05:42:07'),
('3d821321-a604-4854-af4e-d8d098cb7407', 3, '125.163.18.70', '3217066805980002', 'Shafira Siti Nabila', 'Perumahan Bumi Kahuripan Residence Blok C No 20', 'shafirasn28@gmail.com', '082119068206', '2024-06-12 05:52:16', '2024-06-12 05:52:16'),
('3dc0f0fe-e8e4-4617-9513-26d7751e4919', 1, '103.105.33.73', '3277021505930010', 'TAUFIQ SASIO WIHARZAH', 'The Awani Residence RT 06 RW 05 Kel Cimareme Kec Ngamprah Kab.Bandung Barat.', 'taufiqwiharzah@gmail.com', '082127688403', '2024-06-12 06:01:15', '2024-06-12 06:01:15'),
('3dcf87fc-b368-45ff-a9f6-0552618d9a21', 2, '140.213.101.204', '3273140710960009', 'Trio Nugroho', 'Jalan Paledang no 55 RT 01 RW 15 Kelurahan Pasanggrahan Kecamatan Ujungberung bandung', 'nugrohotrio001@gmail.com', '087838621915', '2024-06-12 05:11:58', '2024-06-12 05:11:58'),
('3de0cd41-8b9e-4984-b523-433a87ddc2a1', 2, '114.122.84.189', '3204284308030008', 'Zahara Jian', 'Kp. Dangdeur Gg. Samyah RT.03 RW.04 desa bojongloa kecamatan rancaekek kabupaten bandung JAWA BARAT 40394', 'zaharajian38@gmail.com', '085809005727', '2024-06-12 05:10:33', '2024-06-12 05:10:33'),
('3dee4303-581c-400a-8fca-34e90967c817', 1, '114.124.173.39', '6271030211990004', 'Royhan Azra Siddiq', 'Jl.G.OBOS IX gg. KEMIRI NO. 176. Kalimantan Tengah', 'royhanazras@gmail.com', '081386973792', '2024-06-12 05:14:59', '2024-06-12 05:14:59'),
('3f26bcea-01ac-4f7a-9c1e-d45db4d7ea54', 1, '103.148.79.88', '3278105803960003', 'SANTI ASTRIA', 'KP. BABAKAN NANGGERANG RT.003 RW.004 KELURAHAN SINGKUP KECAMATAN PURBARATU KOTA TASIKMALAYA', 'santi.astria96@gmail.com', '085352232767', '2024-06-12 05:19:51', '2024-06-12 05:19:51'),
('41079c9f-80de-4595-a593-bb0076880588', 2, '125.164.25.72', '3217111608000013', 'Moch Agusni Priansyah', 'Kp. Manapa RT 04 RW 04 Desa Karangtanjung Kec. Cililin Kab. Bandung Barat', 'priansyahagusni16@gmail.com', '083821088756', '2024-06-12 06:17:19', '2024-06-12 06:17:19'),
('420db39d-86a0-4b11-bd76-0dd67a932da9', 2, '114.79.55.97', '3217012505870022', 'Rudi', 'Kp nagrak rt04 rw07 ds sukajaya kec lembang kab bandung barat', 'rudihungkul30@gmail.com', '085797916885', '2024-06-12 06:02:22', '2024-06-12 06:02:22'),
('424eb39d-4d0f-46a6-8d51-0f6f9c3e4993', 3, '36.79.169.73', '3215211606960001', 'Karno Sutiyono', 'Mekarsari RT 015 RW 007 Desa Pasirjengkol Kecamatan Majalaya Kabupaten Karawang', 'karnosutiyono@gmail.com', '082120892289', '2024-06-12 05:46:36', '2024-06-12 05:46:36'),
('42cb521b-93af-422a-9027-613a95a00d6e', 2, '180.244.133.187', '3273225803990002', 'RISMA SURYANIRMALA SARI', 'JL. GALAXY 1 NO 84 RT 04 RW 07 KEL. SEKEJATI KEC. BUAHBATU KOTA BANDUNG 40286', 'rismasurya18@gmail.com', '081321760566', '2024-06-12 05:55:50', '2024-06-12 05:55:50'),
('4391720b-5c68-472a-8273-53287512d135', 2, '103.116.201.68', '3217080908880006', 'Eko Agusni Prasetyo', 'Kp. Rawa Girang NO. 05 RT 03 RW 08 Desa Tanimulya Kecamatan Ngamprah Kabupaten Bandung Barat', 'eko579473@gmail.com', '087833807999', '2024-06-12 06:10:17', '2024-06-12 06:10:17'),
('44b86798-1f28-484d-b3a6-65e7e12112c8', 2, '114.122.108.140', '3204336503010013', 'Risna Amel Putriyani', 'Jl. Kondang RT 03 RW 10 desa Majalaya kecamatan Majalaya kabupaten Bandung Jawa Barat', 'risnaamelputriyani@gmail.com', '082319131384', '2024-06-12 05:18:04', '2024-06-12 05:18:04'),
('45af0c8b-ba1c-416a-a541-7f6b2af43c7d', 3, '103.151.215.82', '3217151711010005', 'ibnu syaoqi ramadan', 'kp celak kidul rt 03 rw 08 desa celak kecamatan gunung halu kabupaten bandung barat', 'ibnusaoqiramadan@gmail.com', '085352580678', '2024-06-12 05:22:38', '2024-06-12 05:22:38'),
('45bc26af-8bfc-48d9-ba22-fa4099159be1', 3, '36.81.237.73', '3205055203990001', 'Dewi Ratnawati', 'Jl. Otista GG. Famili No.12 RT/RW 003/001 Des. Tarogong Kec. Tarogong Kidul', 'dewiratnawati361@gmail.com', '089608574032', '2024-06-12 05:29:37', '2024-06-12 05:29:37'),
('469bdbf4-5607-46c6-bfd5-680e4bf3c751', 2, '114.122.117.27', '3207305307000003', 'Nilan cahya yuliari', 'Dusun Noong Desa Sukahurip Rt 05 Rw 10 Kecamatan Cisaga Kabupaten Ciamis', 'nilancahyayuliari@gmail.com', '081220320883', '2024-06-12 05:13:28', '2024-06-12 05:13:28'),
('470eedde-4189-46a6-84bf-3fc1bd9bd961', 2, '103.229.14.170', '3204375408800008', 'TUTI HERAWATI', 'JL. Terusan Cipatik No. 45 Kp. Sukaluyu Rt 03 Rw 02 Desa Parungserab Kec. Soreang', 'tutiherawati80@icloud.com', '085795096858', '2024-06-12 05:26:25', '2024-06-12 05:26:25'),
('4869f6ce-94ac-4ae9-b3ee-ab62b45291a9', 3, '111.223.252.25', '3201314412040002', 'Syania Kamalia', 'KP. SUKAMANTRI TR 02 RW 012 DESA SUKAMANTRI KABUPATEN BOGOR', 'syaniakl@gmail.com', '082123508663', '2024-06-12 05:14:52', '2024-06-12 05:14:52'),
('4879ef50-3445-464d-a929-42fd49c144cc', 3, '180.244.129.139', '3217045407910005', 'NUR ROSMAYANTI', 'KP. MALINGPING RT 003 RW 011 DESA RENDE KECAMATAN CIKALONG WETAN KBB.BANDUNG BARAT', 'rosmayanti140791@gmail.com', '085722641324', '2024-06-12 06:05:45', '2024-06-12 06:05:45'),
('4988a448-4e42-4fd2-adab-f243b36314d3', 1, '125.160.235.121', '3215016509930004', 'Fika Harfika', 'Dusun Sukadana RT/RW 001/001 Desa Pinayungan Kecamatan Telukjambe Timur Kabupaten Karawang', 'fikaharfika@gmail.com', '087879216906', '2024-06-12 05:37:46', '2024-06-12 05:37:46'),
('4a9cc7c6-41a4-4211-a5dc-fa9b3105335f', 2, '114.79.55.127', '3217125711870009', 'RIA IRMAWATI', 'KP CIBIRU RT 001/008 DESA SUKAMULYA KEC.CIPONGKOR KAB.BANDUNG BARAT', 'riairmawati05@gmail.com', '087759017758', '2024-06-12 05:29:17', '2024-06-12 05:29:17'),
('4a9f07b8-a579-4044-9e73-e4f68fd19bc1', 2, '140.213.98.77', '3212152402910003', 'FAHMI RAHMAT HIDAYAT', 'Jl.Nanas No. 33 BUMEK', 'fahmirh24@gmail.com', '087863720531', '2024-06-12 05:19:21', '2024-06-12 05:19:21'),
('4aeacb4e-d2b7-4c8d-9dad-a30e5e96c7f3', 1, '202.93.229.62', '3217085906900011', 'LISMAYA PURNAMASARI', 'KP. CIBURUY RT/RW. 03/17 DS. PADALARANG KEC. PADALARANG', 'lismayapurnamasari2@gmail.com', '082240352708', '2024-06-12 05:12:21', '2024-06-12 05:12:21'),
('4c6ed73c-5880-45f8-b557-3443e6d3e606', 3, '180.244.135.213', '3273016310920001', 'DIDAH AISAH', 'Jl. Gegerkalong Girang No. 185 RT04/RW01 Kel. Gegerkalong Kec. Sukasari Bandung', 'didahaisah@gmail.com', '085353337511', '2024-06-12 05:29:02', '2024-06-12 05:29:02'),
('4ca1054c-cfbd-4d83-8637-b9d74ddbf8e6', 1, '180.244.138.147', '3217084412900013', 'LISNA MUTIARA SARI', 'KP. BABAKAN BANDUNG RT 003/RW004', 'lisnamutiara.2016@gmail.com', '081809644696', '2024-06-12 05:07:52', '2024-06-12 05:07:52'),
('4cb8f1bd-f241-4239-9474-853ff9d246ef', 2, '202.93.229.62', '3578225909900001', 'R. AYU HAMIDAH', 'KP. KIARA PAYUNG RT. 01 RW 03 DS. MEKARSARI KEC. NGAMPRAH KABUPATEN BANDUNG BARAT', 'rayuhamidah99@gmail.com', '087779978979', '2024-06-12 05:17:59', '2024-06-12 05:17:59'),
('4cf3c31f-fc0e-4052-b15e-0c3a7b878e3a', 3, '125.164.21.185', '3217134112890002', 'Dessy Susanti', 'Kp. Neglasari rt 001 rw 016', 'susantidessy5@gmai.com', '081312301611', '2024-06-12 06:10:38', '2024-06-12 06:10:38'),
('4d3b33dc-9d08-4566-bc8a-5178db924540', 1, '111.94.116.11', '3211152910960003', 'Bimantara Rachman', 'JL. Kartika XVIII, Blok N8 NO. 5, Desa Cipacing, Kecamatan Jatinangor, Kabupaten Sumedang', 'bimantararachman57@gmail.com', '081321460947', '2024-06-12 05:10:31', '2024-06-12 05:10:31'),
('4d778450-9fe7-4444-86d1-a46ffbc6985d', 2, '36.79.174.254', '3273205510010004', 'Nur Eka Putri Hasanah', 'Jl. Bunisari Rt.005 Rw.007 kel. Antapani Wetan kec. Antapani', 'nurekaputrihasanah@gmail.com', '0895350150742', '2024-06-12 05:35:25', '2024-06-12 05:35:25'),
('4d85bee5-9f42-4e48-aad6-afbb2f1a2ec5', 2, '180.245.115.231', '3217073009820003', 'wanto', 'Kp.Sasaksaat,Rt01/Rw04,Ds.Sumur bandung,Kec.Cipatat,Kab.Bandung Barat', 'wanto12984@gmail.com', '081395410694', '2024-06-12 05:59:00', '2024-06-12 05:59:00'),
('4dc0159b-7e1f-4576-b412-901bd2583fa0', 1, '202.80.212.11', '3273054706950011', 'CHINTIYA CITRA PURNAMA', 'Komp. Bojongmalaka Indah Blok H3 No. 44 RT.001 RW.006', 'thiyactr95@gmail.com', '081317442404', '2024-06-12 05:23:01', '2024-06-12 05:23:01'),
('4e0bf9ee-e704-4a6c-a916-988a4490040c', 2, '202.158.77.197', '3273266706970011', 'Riananda Ashma Dewi', 'Jalan Paledang No. 55 RT 01 RW 15 Kelurahan Pasanggrahan Kecamatan Ujungberung Bandung 40617', 'rianandaas@gmail.com', '087836281849', '2024-06-12 05:08:07', '2024-06-12 05:08:07'),
('4fcf09df-3141-4689-9aa2-ecf076be4275', 2, '125.164.25.72', '3217111509710007', 'DEDE DENI', 'KP. SUMUR BANDUNG 001/009 CILILIN', 'dededenideni44@gmail.com', '083821060571', '2024-06-12 06:01:25', '2024-06-12 06:01:25'),
('511e33a4-1732-4816-a2fb-81338ce3a270', 1, '114.122.117.80', '3273142903040003', 'Siregar, Rizky Raihan', 'Jl.Sukarajin II No.2 Rt.06 Rw.12 Kelurahan Cikutra kecamatan Cibeuying Kidul', 'rizkyraihan29.rr@gmail.com', '081224480077', '2024-06-12 05:08:41', '2024-06-12 05:08:41'),
('513bbae6-536d-4c75-b0ae-24f30f2d0e39', 3, '180.244.132.102', '3217070510920003', 'Eep Saepul Azis', 'Kp. Cinangka RT.003 RW.006  Des. Rajamandalakulon Kec. Cipatat Kab. Bandung Barat', 'epsa.92@gmail.com', '085793318171', '2024-06-12 05:40:05', '2024-06-12 05:40:05'),
('5193d17d-06a9-40cd-a422-8e6d6fc02151', 2, '202.93.229.62', '3217104508980012', 'DINA INDRIANI', 'Kp.Cihampelas Rt 003/Rw 02 Desa Cihampelas Kec.Cihampelas Kabupaten Bandung barat', 'dinaindriani0508@gmail.com', '085794919958', '2024-06-12 05:34:34', '2024-06-12 05:34:34'),
('520ff83f-0cb4-4dfd-85ed-9a6e3290e827', 3, '125.164.23.45', '3217065007930004', 'Welly Dea Sari', 'Jalan dirawinata rt 01 rw 11 no 42 desa tanimulya kecamatan ngamprah kab Bandung Barat', 'wellydea.farmasi@gmail.com', '081931361288', '2024-06-12 05:51:01', '2024-06-12 05:51:01'),
('53621d89-dd74-497a-a342-f27178eac8d9', 3, '103.229.14.170', '3217016011990016', 'Annisa Pratiwi Kusnadi', 'Kp. Batureok RT 02/Rw 09', 'pratiwinisa99@gmail.com', '089626122863', '2024-06-12 05:09:29', '2024-06-12 05:09:29'),
('538f97f1-ce64-4dd4-8b9f-2404bf946830', 2, '182.2.147.161', '3275022507960012', 'MUHAMAD REZA AULIA', 'Jl. Patriot Kp. 2 No.14 RT.004 RW.018 Kel. Jakasampurna Kec. Bekasi Barat', 'rezajamil903@gmail.com', '089685049825', '2024-06-12 05:21:22', '2024-06-12 05:21:22'),
('55cc21ac-9cdd-4776-9ff2-2059150a51d0', 2, '114.142.172.3', '3273020210030009', 'Rasya Abdiya Bambang', 'Jl. Sekeloa no 31 rt 05 rw 03 Kel Lebak Gede Kec Coblong kota Bandung', 'rasyaabdiya@gmail.com', '089658368183', '2024-06-12 05:49:01', '2024-06-12 05:49:01'),
('55e78212-dfbc-445b-ac5e-f1e3625e811a', 1, '116.206.15.38', '3206351102040001', 'Andri Muhammad Maulawi', 'Kp. Sukajadi RT/RW 001/001 Ds. Sindangraja, Kec. Jamanis, Kab. Tasikmalaya, 46175 Jawa Barat', 'andrimuhamad100@gmail.com', '089601933530', '2024-06-12 05:07:35', '2024-06-12 05:07:35'),
('57428c8b-9e4f-45f9-8c50-70301e908eab', 2, '103.116.201.68', '3277036701980012', 'GESTA VRILY', 'JL. SUKARASA RT002/011 CITEUREUP KECAMATAN CIMAHI UTARA, KOTA CIMAHI', 'GESTAVRILY27@GMAIL.COM', '082124050161', '2024-06-12 05:23:13', '2024-06-12 05:23:13'),
('576529f7-5ccd-4be6-9859-a959550533b4', 2, '115.178.48.130', '3204281202970009', 'RISWANDA WALDANI', 'KP. RANCAEKEK KULON RT.03 RW.06', 'riswandawaldani27@gmail.com', '089636502821', '2024-06-12 06:03:29', '2024-06-12 06:03:29'),
('57cc9431-4d5c-40a9-87c1-522c6d4cd8d6', 3, '103.139.127.244', '3212162510820002', 'MOHAMMAD SYAHRONI', 'JL. NYI RESIK NO. 01 RT. 003 RW. 001 DESA SINDANG KECAMATAN SINDANG KABUPATEN INDRAMAYU', 'syahronimohamad2510@gmail.com', '0895373127193', '2024-06-12 05:59:40', '2024-06-12 05:59:40'),
('59335fa6-4312-482c-89ae-dda3a0c86ef3', 3, '203.210.84.91', '3204286306930002', 'Tika Shintia Dewi', 'Komp. Abdi Negara F1 No 28\r\nRancaekek Wetan\r\nKab. Bandung', 'tika.shintia@gmail.com', '089634783219', '2024-06-12 05:10:14', '2024-06-12 05:10:14'),
('59369a75-5bb8-47f6-882f-bc6d703c2bc9', 2, '114.122.85.224', '3204335511000001', 'Tarissa Agrippina K.', 'Jl. Rancajigang RT 03 RW 10', 'tarissaagr@gmail.com', '081220058038', '2024-06-12 05:11:44', '2024-06-12 05:11:44'),
('59391567-c810-4b8c-9c79-a3e4527c44f4', 1, '103.233.100.228', '1277030311040002', 'Ikhsan Ashari Lubis', 'JL. Raja Inal Siregar, Kelurahan Batunadua Jae, Kecamatan Padangsidimpuan batunadua, Kota padangsidimpuan', 'ikhsanlbs311@gmail.com', '081263477090', '2024-06-12 05:10:35', '2024-06-12 05:10:35'),
('59df7e17-f7e3-4645-b1fd-866c8f2f6a21', 2, '180.244.139.157', '3217112903970002', 'Rizki Fauzan Danumiharja', 'Kp.Bojonhkerta Kidul Rt.002/Rw.006 Des.Rancapanggung Kec.Cililin Kab.Bandung Barat', 'rizki.odzan@gmail.com', '081224485511', '2024-06-12 05:42:05', '2024-06-12 05:42:05'),
('5a38fe3a-fdb3-4998-b753-84406500759f', 2, '140.213.43.97', '3217070607830013', 'Ari safari', 'Kp.sukarame 01/02 ds.ciptaharja kec.cipatat', 'aribtf@gmail.com', '081220658389', '2024-06-12 06:11:20', '2024-06-12 06:11:20'),
('5a9363a4-fc3e-4d73-b313-0001edb2fd02', 1, '114.122.116.69', '3217066809790010', 'Heni Herliani', 'Graha bukit raya 2 blok i13 no.3 ds. cilame kec. ngamprah kab. Bandung Barat', 'reyshaeshan@gmail.com', '082214244547', '2024-06-12 05:50:19', '2024-06-12 05:50:19'),
('5b968f9b-bcae-41dc-8355-bb3cf8190a75', 1, '125.164.25.38', '3204326303960001', 'ANNISA JASMINE NUGRAHA', 'Komp. Mekarsari Endah Blok C No 26 RT 01 RW 24 Kec. Baleendah Kab. Bandung', 'nugrahaannisajasmine@gmail.com', '08980964090', '2024-06-12 05:19:41', '2024-06-12 05:19:41'),
('5ba9c495-0b87-4fca-83b0-3b7fb7508922', 1, '114.122.101.49', '3204372101970004', 'Agung Joyo Gumelar Alam', 'Kmp. Sukamaju Timur RT 003/ RW 011 Desa Pamekaran, Kec. Soreang, Kab. Bandung', 'agungjoyogumelaralam@yahoo.com', '081224519818', '2024-06-12 05:10:49', '2024-06-12 05:10:49'),
('5c189ca2-aba3-4d69-a143-87deafaa9f1d', 1, '180.244.128.82', '3217065112020021', 'Fitriya Setiawan', 'Cilame Indah B-169\r\n RT007/RW020 Desa.Cilame Kec.Ngamprah Kab.Bandung Barat', 'setiawanfitriya@gmail.com', '087852945114', '2024-06-12 05:39:12', '2024-06-12 05:39:12'),
('5c8f6b92-e8f3-43e5-85be-de022b77732b', 3, '103.105.33.87', '3277025703910002', 'Siti Fatimah', 'Kp.Curug rendeng RT 08/RW 03', 'ditarizkiah2017@gmail.com', '082240564914', '2024-06-12 05:46:28', '2024-06-12 05:46:28'),
('5cacae7f-7f92-44ae-b619-54c21d04e8ad', 3, '114.122.76.52', '3203104808010008', 'Isna Zulpiani', 'Kp Buniaga, RT 002 RW 007, Desa Ciherang, Kecamatan Pacet, Kabupaten Cianjur, Provinsi Jawa Barat', 'isnazulfiani12@gmail.com', '081322622928', '2024-06-12 05:48:09', '2024-06-12 05:48:09'),
('5cbb8ba0-eef4-4cc2-9d90-862a2a26f013', 2, '180.252.22.95', '3273146605000003', 'Giani Khoirunisa Gumilar', 'Jl. Utama no 24 Rt 003 Rw 008 Kel. Pasirlayung Kec. Cibeunying Kidul Kota Bandung', 'ginikhns@gmail.com', '085156075408', '2024-06-12 05:44:49', '2024-06-12 05:44:49'),
('5def9e98-8cf6-48c9-ae83-556623caaca6', 3, '139.228.98.232', '3204324607040012', 'Shakira Adityani Syahputri', 'Baleendah Permai Jl. Padi Endah XI', 'sakiraadityani@gmail.com', '0881022400296', '2024-06-12 05:15:22', '2024-06-12 05:15:22'),
('5e788208-9e48-4ac0-a665-cedb6f7df53b', 3, '114.5.213.207', '3217071103960023', 'Rudi purwanto', 'Kp. Sukalilah RT03/RW14 Desa Rajamandalakulon Kecamatan Cipatat Kabupaten Bandung Barat', 'rpurwanto127@gmail.com', '081311311981', '2024-06-12 05:29:15', '2024-06-12 05:29:15'),
('60f9d1e9-a0c4-4f1b-9a98-8e58fd885492', 3, '36.74.40.45', '3278060501970008', 'Erwin Ginanjar', 'Kp. Awipari II RT 001/004 Kel. Awipari Kec. Cibeureum Kota. Tasikmalaya', 'erwinginanjar28@gmail.com', '085394979899', '2024-06-12 05:22:35', '2024-06-12 05:22:35'),
('62881027-fd97-467e-bb5c-ae5bd4077b3e', 2, '36.69.196.62', '3204055805060003', 'Zakira Mayasya Aljaeza', 'Komplek Bumi Oren Blok C.3 No. 8 Rt. 001/032  Ds. Cimekar Kec. Cileunyi Kab. Bandung.', 'zakiramayasya@gmail.com', '087744677539', '2024-06-12 05:26:26', '2024-06-12 05:26:26'),
('64998842-ec03-4c08-b785-a0ad4de7bcf9', 3, '114.122.79.149', '3273272010060001', 'CAKRAWARDANA WIJAYA', 'griya cempaka arum blok d6no38kelurahan cimincrang kecamatan gedebage kota bandung', 'wardanawijyacakra@gmail.com', '082126083194', '2024-06-12 05:10:44', '2024-06-12 05:10:44'),
('65453390-3fc7-42ab-ac82-1eafb28c21ce', 1, '180.244.132.7', '3217065502000019', 'Syifa Nurmilla Fathiyyah', 'Bumi Pakusarakan Blok C3 no4', 'syifanurmillaf@gmail.com', '0895340626565', '2024-06-12 05:17:31', '2024-06-12 05:17:31'),
('65767a95-3c06-404f-a751-d0e6ea549605', 2, '180.245.179.40', '3211150807030004', 'Aditya Nugraha', 'Kp baru rt.02/rw.18 Dssa Cipacing, kec.Jatinangor, kab.Sumedang', 'adityarusnandar@gmail.com', '082120243497', '2024-06-12 05:11:17', '2024-06-12 05:11:17'),
('65bbd8cc-e97b-478e-b529-69d4f0d520dc', 2, '104.28.250.135', '3204106810890006', 'Sinta Bestari Oktavianti', 'Komplek Margahayu Permai, Jl. Permai 2 ME. 101', 'sintabestari5@gmail.com', '085781338657', '2024-06-12 05:17:59', '2024-06-12 05:17:59'),
('66070948-3536-45d4-8682-e803ea70761f', 3, '140.213.22.121', '3217085306980002', 'Virda mustika sari', 'Kp. Kutaluhur rt 01/08 Desa. Ciburuy, Kec. Padalarang', 'virdamustikas@gmail.com', '081564895606', '2024-06-12 05:55:24', '2024-06-12 05:55:24'),
('673bc662-786e-48a7-a8df-0b8192639c7f', 1, '125.164.17.3', '3217145601980002', 'githa ramadhanti setiawan', 'kp ciburuy rt 02 rw 05 desa cintakarya kec.sindangkerta', 'githaars@gmail.com', '081389673248', '2024-06-12 06:01:24', '2024-06-12 06:01:24'),
('68fcf15a-8da3-47c2-b16d-91ad8b7a9eef', 3, '114.122.84.85', '3273114812000004', 'Revita Ramadhanty Denaya', 'Jl cidurian selatan 1 no 8, bandung', 'revita650@gmail.com', '082130417201', '2024-06-12 05:48:07', '2024-06-12 05:48:07'),
('69100eaf-5386-4cc4-875f-1ef7d11bbee7', 2, '125.164.17.181', '3217115904970004', 'PUTRI APRILIA', 'KP. MANAPA RT 04 RW 03 DESA KARANGTANJUNG KEC. CILILIN KAB. BANDUNGBARAT 40562', 'putriaprilia1197@gmail.com', '082218000864', '2024-06-12 05:22:12', '2024-06-12 05:22:12'),
('694fe475-bae7-42cb-9c7b-5526814371da', 1, '140.213.37.153', '3273304511040001', 'Fuji Dwi Pangesti', 'Jl.Pasir Impun No.34C RT/RW 02/04 Kel.Pasir Impun Kec.Mandalajati,Kota Bandung,Jawa Barat,ID 40195', 'fujipangesti05@gmail.com', '081993008979', '2024-06-12 05:38:39', '2024-06-12 05:38:39'),
('69b03070-3aac-4826-b47f-2c15ae66f8f3', 3, '115.178.48.130', '3273131303980001', 'Ilham Taufik Hidayat', 'Jl. Lengkong Besar No. 47/17D RT. 07 RW. 06 Kel. Cikawao Kec. Lengkong', 'ilham.t.hidayat@gmail.com', '08977232413', '2024-06-12 05:08:07', '2024-06-12 05:08:07'),
('69c58ec2-7663-4bad-a596-57e6a04a9c41', 1, '36.89.114.129', '3273275705990009', 'Trisha Alya Latifa', 'Jl. Riung Makmur No.3', 'trishaalyalatif@gmail.com', '085722665728', '2024-06-12 05:04:09', '2024-06-12 05:04:09'),
('69f13a75-7044-47a9-9d39-47537489bee8', 3, '103.147.9.67', '3204275106040004', 'Ajeung yuliana', 'Babakan sugih wargi RT 03 RW 08 desa tanjunglaya kecamatan Cikancung kabupaten bandung', 'ayuliaayth@gmail.com', '+628886290248', '2024-06-12 06:16:39', '2024-06-12 06:16:39'),
('6ae921b8-17f7-4aeb-b402-7c596a300ade', 3, '203.78.124.12', '3205121005050004', 'Rifki Rahman', 'kp.citambal rt 02 rw 02 desa padasuka kecamatan cibatu kabupaten garut', 'rifkirahmannnnn@gmail.com', '083131830271', '2024-06-12 05:19:22', '2024-06-12 05:19:22'),
('6bc300fe-e6c0-4bdd-b281-eebf9dd0b38e', 3, '180.244.129.111', '3202365203850005', 'Dewi Ratnaningsih', 'Jl. Moch Ramdhan Gg. Srigalih No. 3 Regol - Cigereleng Kota Bandung', 'ratnaningsihdewi12@gma.com', '081322213538', '2024-06-12 06:01:15', '2024-06-12 06:01:15'),
('6bdd0834-dc0f-4514-a630-b434b16c6d8d', 3, '180.244.129.139', '3217040908790005', 'WAHYUDIN', 'KP. MALINGPING RT 004 RW 011 DESA RENDE KECAMATAN CIKALONG WETAN KBB.BANDUNG BARAT', 'wahyudinambulance@gmail.com', '083829005046', '2024-06-12 06:00:09', '2024-06-12 06:00:09'),
('6d20b397-cbaf-439d-8881-4245801d6578', 2, '140.213.37.144', '3273076312000002', 'Fadila Wakhidatus Solehah', 'Jl. Boscha Asrama Denma Barak Sawal No.1 RT 06 RW 07 Kecamatan Sukajadi Kelurahan Pasteur Kota Bandung, Jawa Barat', 'wakhidatusfadila@gmail.com', '085934244525', '2024-06-12 05:55:24', '2024-06-12 05:55:24');
INSERT INTO `biodatas` (`id`, `schedule_id`, `ip`, `nik`, `nama_lengkap`, `alamat`, `email`, `no_hp`, `created_at`, `updated_at`) VALUES
('6d479ac3-44b5-415a-a71e-507a1e3dfebf', 1, '118.96.233.85', '3273120803970001', 'Nu\'man Al-Fikri, S.Pd', 'Jl. Maleer Selatan No.200', 'alfikrin123@gmail.com', '081320358384', '2024-06-12 05:38:08', '2024-06-12 05:38:08'),
('6d4aaf0e-29ee-41a3-af7a-685dd5166d96', 3, '125.164.17.36', '3277021704940007', 'sundra murti', 'jln jend h amir machmud kp.rancabelut rt03/16 padasuka cimahi tengah', 'sundramurti89@gmail.com', '0895640430917', '2024-06-12 05:07:10', '2024-06-12 05:07:10'),
('6e0bdf5b-609e-4452-a46e-ca88502827db', 2, '125.160.231.169', '3275015402880017', 'DEWI SRI WAHYUNI', 'JL.KH.AGUS SALIM 005/008 BEKASI JAYA BEKASI TIMUR', 'srid80838@gmail.com', '0895413906880', '2024-06-12 05:55:45', '2024-06-12 05:55:45'),
('6e330187-271b-41a4-aef3-85191eaf2611', 1, '125.164.25.241', '3217144508810001', 'Nenden Susilawati', 'Kp. Cicangkang RT 001 RW 004 Desa Cicangkanggirang Kecamatan Sindangkerta Kab Bandung Barat', 'susilawatinenden02@gmail.com', '083110057727', '2024-06-12 05:58:39', '2024-06-12 05:58:39'),
('6ea9e1fa-a116-4b79-9338-791be97c4cde', 3, '36.80.88.117', '3213072110890002', 'ATING', 'KP JAWURA RT 007 RW 003 DESA SUMBERSARI KECAMATAN PAGADEN KABUPATEN SUBANG PROVINSI JAWA BARAT', 'ating.s.pd.i.s.tr.kom@gmail.com', '0895353966459', '2024-06-12 05:46:59', '2024-06-12 05:46:59'),
('6f0ecff9-ddde-4159-bd32-091f69634815', 1, '180.245.96.65', '3204066601040004', 'Adista Nur Hidayah', 'KP.CIPARIUK N0.69 RT.01 RW.27 KELURAHAN CIBEUYING KECAMATAN CIMENYAN', 'adista.nhidayah26@gmail.com', '087789141980', '2024-06-12 05:31:15', '2024-06-12 05:31:15'),
('6f74803d-34f3-4f2d-a60d-cdeb9888c2ca', 3, '114.5.216.214', '3217020506820023', 'Nuryaman Abidin S.SOS.I', 'Jl. CIGUGUR GIRANG NO.34 RT.01/09 DESA CIGUGUR GIRANG KEC. PARONGPONG KBB', 'nuryamanabidin@gmail.com', '085220656855', '2024-06-12 05:54:58', '2024-06-12 05:54:58'),
('6f8fe319-4d73-4faa-8ca3-e8d062256d5d', 2, '180.251.227.128', '3211183108790010', 'DADAN HERNAWAN', 'Gg. LENGKENG I No. 24 KEL. KOTAKALER KEC. SUMEDANG UTARA - SUMEDANG', 'dadanhernawan79@gmail.com', '085214155563', '2024-06-12 05:21:47', '2024-06-12 05:21:47'),
('6ff146ef-a7b9-4026-8ea4-12dcfb5f6c4f', 2, '103.105.33.89', '3217012212990022', 'Alam Braga Putra', 'Kp. Karamat RT. 02 Rw. 07 Desa cikahuripan', 'allambragaputra@gmail.com', '081779285544', '2024-06-12 05:19:44', '2024-06-12 05:19:44'),
('710f7b22-c2b2-4ef4-9162-4b2134bee65c', 3, '111.95.105.131', '3275090906040010', 'Daffa Putra Harwanto', 'graha indah a15/4, jatimekar, jatiasih, kota bekasi', 'daffaputraharwanto@gmail.com', '08111970906', '2024-06-12 05:41:04', '2024-06-12 05:41:04'),
('71dab6bb-25b3-45d1-9d81-afed49c4e0b7', 2, '103.116.201.68', '3217082707910006', 'RODIANA', 'Kp. Legok Nangka 001/009 Campakamekar, Padalarang, Bandung Barat', 'dhyeziesta@gmail.com', '082128975582', '2024-06-12 06:05:06', '2024-06-12 06:05:06'),
('72522194-d433-4509-b107-f9b1aa60b3cd', 2, '103.116.201.68', '3211186603920006', 'INTAN ARISMARIYANI', 'KP. BENGKOK RT 002/004 DESA SUKALUYU KECAMATAN SUKALUYU CIANJUR', 'intanaries92@gmail.com', '083879149750', '2024-06-12 05:07:10', '2024-06-12 05:07:10'),
('729fdaea-ca93-45c3-9860-aee103219379', 3, '114.122.70.60', '3204134912960003', 'Cety Anneke Norimarna', 'Jl. Gegerkalong tengah Rt 04 Rw 03 desa gegerkalong , kec sukasari', 'annekecetty@gmail.com', '081311770566', '2024-06-12 06:17:44', '2024-06-12 06:17:44'),
('73ba204f-10e9-4034-9714-f415c5cac05c', 2, '180.244.128.202', '3203016508010003', 'Naura Humaira', 'Kavling Belka Blok C1 No. 31 RT/RW 002/010 Kel. Sawah Gede Kec. Cianjur Kab. Cianjur 43212', 'naurahmrr@gmail.com', '082126881069', '2024-06-12 05:47:51', '2024-06-12 05:47:51'),
('73d933ea-df09-4b4c-be1a-a1e2036ebdaf', 2, '140.213.51.77', '3271040811970016', 'raden adi pratama putra', 'jalan cemara boulevard no 49 taman yasmin bogor rt 4 rw 11', 'r.adipratamaputra97@gmail.com', '087737970968', '2024-06-12 05:14:49', '2024-06-12 05:14:49'),
('7404626b-615c-4bf0-9edf-860a9c70c73c', 1, '114.122.69.11', '3273056105980002', 'Heni Wulandari', 'Komplek Dirgantara Blok H no.1', 'heniwulandari704@gmail.com', '082111365854', '2024-06-12 05:41:53', '2024-06-12 05:41:53'),
('745db546-a754-4b28-859f-b6615d164378', 3, '115.178.48.130', '3204084711920007', 'DIAN FITRIANI', 'KP. CIJEUNGJING, GANG BALAI BENIH NO.24 RT 01 RW 01', 'dianfitriany78@gmail.com', '081312229220', '2024-06-12 05:05:31', '2024-06-12 05:05:31'),
('748b3f1c-1dcf-4bbe-b674-7acbbac6fe2f', 3, '202.46.68.234', '3205050104930001', 'Teguh solihin karyadipura', 'Jln raya samarang perum karisma blok f no 8 Garut', 'teguhkaryadipura@ymail.com', '082118106009', '2024-06-12 05:11:17', '2024-06-12 05:11:17'),
('7512fe4d-c134-4d36-b5af-604c4e0d62b8', 1, '103.105.33.89', '3208325204060002', 'Ros Apriliani', 'Dusun Pon, RT 014 RW 04, Desa Karangmuncang, Kecamatan Cigandamekar, Kabupaten Kuningan, Provinsi Jawa Barat', 'rosapriliani818@gmail.com', '089501041070', '2024-06-12 05:14:44', '2024-06-12 05:14:44'),
('772e84c1-c686-4984-85cf-b917d4088f8c', 1, '114.5.209.182', '3273122605010011', 'IVAN BAYU PERMANA PUTRA', 'Jl. Tongkeng 48, RT 007, RW 007, kel.merdeka kec sumur bandung, 40113', 'bayuivan22@gmail.com', '085794662327', '2024-06-12 05:09:08', '2024-06-12 05:09:08'),
('78690f7d-1350-4470-a9d9-5389d9fb3f87', 3, '36.70.102.140', '3214015111980009', 'RIKA NOVIANTI', 'SUKAMULYA RT. 006 RW. 005 KEL. CISEUREUH KEC. PURWAKARTA', 'rikan111198@gmail.com', '089602379248', '2024-06-12 05:07:35', '2024-06-12 05:07:35'),
('787f8f09-8d41-4c49-9202-6c62d19e8dfe', 1, '125.164.24.121', '3273304908980004', 'ATIKA SALSABILA ZAHRA', 'JL.H.Moch.Syahri No.45 RT03RW01, 40195 Bandung', 'zatikasalsabila@gmail.com', '085798438271', '2024-06-12 06:11:16', '2024-06-12 06:11:16'),
('791485d8-0c41-4a0d-bdbf-f4e836f96606', 2, '103.105.33.111', '3217141409000002', 'Muzhoffar syakib arsalan', 'Kp peusing tengah rt04 rw03 desa sindangkerta kecamatan sindangkerta kabupaten bandung barat', 'muzhoffasyakib1@gmail.com', '0895807378900', '2024-06-12 05:14:14', '2024-06-12 05:14:14'),
('7a2c93cb-8913-46b9-91f3-c5d7843b2182', 3, '180.244.129.240', '3203016302030003', 'FENI PEBRIYANI', 'Kp. Rancagoong Rt/Rw 02/05 Desa. Rancagoong Kecamatan. Cilaku', 'pebriyanifeni8@gmail.com', '085951392812', '2024-06-12 05:14:21', '2024-06-12 05:14:21'),
('7bf3e2c8-16eb-4f88-bea7-d960d8739523', 2, '222.124.125.26', '3273304505980001', 'Rahmi Raudhatul Maisyarah', 'Jl Jatihandap Gg H Aceng No.248 Rt02 Rw07 Kel Jatihandap Kec Mandalajati', 'rahmiraurrah05@gmail.com', '087742392026', '2024-06-12 06:06:59', '2024-06-12 06:06:59'),
('7c93c1f5-6247-4142-a2dd-5e95eb167d37', 2, '114.5.216.34', '3277012512880015', 'DEVY MUGIYONO', 'Kp RAWABANGO RT 005 RW 003\r\nDesa HEGARMANAH Kecamatan KARANGTENGAH', 'mugionodevi@gmail.com', '081563595250', '2024-06-12 05:51:06', '2024-06-12 05:51:06'),
('7d176329-85af-41f5-be3f-4802291c7502', 3, '125.164.18.73', '3217082306760011', 'Agus Sopiyan', 'Jl. H. Dasuki Rt. 02 Rw. 21 Desa Kertamulya Kec. Padalarang', 'asopiyan664@gmail.com', '083899806138', '2024-06-12 05:09:56', '2024-06-12 05:09:56'),
('7d7a23ac-e83e-4446-84b1-4584dcaac050', 1, '180.244.129.139', '3214076104950001', 'Fany Kartikasari Dewi', 'Kp. Warung Domba Rt/RW 001/003 Desa Mandalamukti Kecamatan Cikalongwetan 40556', 'fanykartika.fk@gamail.com', '087805313818', '2024-06-12 05:26:55', '2024-06-12 05:26:55'),
('7ebc5123-ed0c-4ac1-81d6-c708c361c963', 3, '36.65.247.61', '6371027004990001', 'Salwa', 'Jalan Bunisari No 26, Dago Pojok, Bandung', 'salwaaprilly@gmail.com', '085722584485', '2024-06-12 06:19:51', '2024-06-12 06:19:51'),
('7f4302aa-1ff5-48c3-af74-ddae8fa1f7fa', 1, '103.147.8.76', '3277014401920018', 'Eva Herlina Sagala', 'Jl. Bengah raya no. 194 rt 005/ rw 010 kel cijantung kecamatan pasar rebo Jakarta timur', 'evaherlina92@gmail.com', '085179744729', '2024-06-12 05:08:07', '2024-06-12 05:08:07'),
('7f6ff727-ad49-421c-96b0-88b0a78f65a0', 1, '103.130.62.10', '1208117007990006', 'NAOMI YOHANA PURBA', 'JL. RAYA TIMUR. Gg. SUKAWARGI 3. NO. 161 CIBABAT CIMAHI UTARA', 'naomiyohanap04@gmail.com', '081262003793', '2024-06-12 06:16:31', '2024-06-12 06:16:31'),
('7fd08810-1fd8-43a3-a1b3-19936f9d99be', 1, '36.81.245.170', '3210076908020041', 'Annisa Ayu Berliana', 'Jl. Almuhajirin, Blok Sinten, Kelurahan Cikasarung, Kecamatan Majalengka', 'annisaayuberliana@gmailcom', '08999385332', '2024-06-12 05:30:06', '2024-06-12 05:30:06'),
('80555c8f-799d-48be-a062-afc1bb9ced35', 2, '114.122.71.240', '3217064210780002', 'fatimah', 'KP NGAMPRAH KALER RT02 RW 09.DESA NGAMPRAH KEC NGAMPRAH', 'farimah021078@gmail.com', '082218993803', '2024-06-12 06:00:09', '2024-06-12 06:00:09'),
('812f19ac-e694-4456-82c0-12654e3795de', 2, '182.253.150.186', '3214010207020003', 'AGUNG SAEPULLAH GUSMAN', 'JL AHMAD YANI,GG SUKARATA RT 18 / RW 06,CIPAISAN,PURWAKARTA.', 'saepullahmaryadi@gmail.com', '089604672541', '2024-06-12 05:45:40', '2024-06-12 05:45:40'),
('812fe611-c98b-431b-9e1d-791d59010f6a', 2, '36.69.196.62', '6202064608050001', 'aulia dwi palbuwangi putri', 'jl mt haryono', 'awlyawiwiek@gmail.com', '083892201775', '2024-06-12 05:59:31', '2024-06-12 05:59:31'),
('81a1c2c2-0361-48fb-b684-1eb41d07f60e', 2, '103.174.122.178', '3204110107950120', 'Yanyan Radea', 'Kp. Pamoyanan, RT.03, RW.06, Desa Katapang, Kecamatan Katapang', 'yanradea.yr@gmail.com', '085956667779', '2024-06-12 05:26:55', '2024-06-12 05:26:55'),
('821fac4e-b8b3-4cb5-8d78-fd7e4be277db', 1, '103.229.14.170', '3243052204870008', 'Agar Mana S Sos', 'komplek Gending Mas Blok H34', 'agarmanasupriadi22@gmail.com', '085156572041', '2024-06-12 05:26:27', '2024-06-12 05:26:27'),
('829e5177-a90b-4e9a-9e49-12ac5f4c61fc', 2, '111.94.116.105', '3273237009000021', 'Bella Aulia', 'Komp. Bandung Inten Indah B 10 No 11 Rancasari Derwati', 'bellaaulia587@gmail.com', '0895411959002', '2024-06-12 05:06:30', '2024-06-12 05:06:30'),
('83c379df-1468-43e8-bf9e-89d022931e85', 3, '114.5.209.58', '3202164110020012', 'Indri Putriyani', 'Kp.kaum babakan rt003/001 Kel.Cicurug Kec.Cicurug Kab.Sukabumi', 'indriputriyani0110@gmail.com', '085176720232', '2024-06-12 05:15:32', '2024-06-12 05:15:32'),
('83f481d4-710b-4cfb-841c-a49304951513', 2, '110.138.187.6', '3175080610050001', 'ADITYA CHANDRAGHAUTAMA SIAHAAN', 'JL. TOPAN NO.816 KOMP.ANGKASA RT 008/009 KEL.HALIM PERDANA KUSUMA KEC. MAKASAR JAKARTA TIMUR JAKARTA 13610', 'ghautama07@gmail.com', '082110809418', '2024-06-12 05:16:12', '2024-06-12 05:16:12'),
('84c6fd61-c89b-417f-8802-fbe0e2e2f0bf', 1, '114.122.69.170', '3217114909740012', 'Herlina Maesaroh', 'Kp. Sirnagalih RT 003 RW 016 des. Mukapayung kec. Cililin kab. Bandung barat', 'herlinamaesaroh3@gmail.com', '083114752278', '2024-06-12 05:57:17', '2024-06-12 05:57:17'),
('85f82685-6a02-4b97-b068-1f3725d1f24d', 2, '36.69.196.62', '3313094608060002', 'ANIQAH AZZAHRA', 'wonorejo, rt 01 rw 15, bejen,kecamatan karanganyar,kabupaten karanganyar, jawa tengah', 'az.zareaa3@gmail.com', '081285193308', '2024-06-12 05:57:29', '2024-06-12 05:57:29'),
('8722dbf3-572a-4a6c-8927-0c8003219db5', 3, '114.79.55.73', '3217101406950009', 'ramdhan handhany', 'kp Sinarmukti rt 1 rw 1 desa selacau kec batujajar kab bandung barat', 'ramdhanhandhany40@gmail.com', '087739718880', '2024-06-12 05:34:35', '2024-06-12 05:34:35'),
('8752c342-c87d-4df6-a67a-0fdffe82cd6f', 3, '36.70.107.29', '3214015102840007', 'FEBBIYA ARISTA, SS', 'PERUM CIHIDEUNG CISEUREUH PERMAI BLOK B NO. 4 KEL.CISEUREUH KEC.PURWAKARTA', 'aristafebbi@gmail.com', '082118118104', '2024-06-12 05:13:28', '2024-06-12 05:13:28'),
('8825c8f5-d789-4bfe-8c59-8fdf6d23be01', 2, '140.213.22.212', '3217034202930005', 'Neng Lilis Nur Hasanah', 'Kp. Panyandaan Rt 002 Rw 002 Desa Padaasih Kecamatan Cisarua Kabupaten Bandung Barat Jawa Barat 40551', 'nlnurh17@gmail.com', '087824277494', '2024-06-12 05:10:55', '2024-06-12 05:10:55'),
('88d4fa70-1923-4ee5-9ca9-866ddf3697eb', 2, '103.116.201.68', '3273025003850013', 'Mega Tari Resa', 'Komp. Bukit Rahma Permai Blok C No. O6 RT. 06 RW. 02 Desa Cilame Kecamatan Ngamprah Kabupaten Bandung Barat', 'megaresa.86@gmail.com', '0895375039825', '2024-06-12 06:05:59', '2024-06-12 06:05:59'),
('8977f2b3-60ae-4567-93c5-9b8115887f64', 2, '111.94.116.105', '3273234504060001', 'Zahra Nur Fadila', 'Komp Bandung Inten Indah B 10 No 11 Rancasari Derwati', 'zahranurfadila05@gmail.com', '082246781860', '2024-06-12 05:06:30', '2024-06-12 05:06:30'),
('89f2d720-fd44-46bd-95c0-bbb7dcabd3e0', 2, '180.244.129.139', '3217042511130020', 'KORI OKTAVIA ISTIANDARI', 'Kp warung jati RT 02 RW 06 Desa ciptagumati kecamatan cikalongwetan kabupaten Bandung Barat', 'coryniocorynio14@gmail.com', '082123241355', '2024-06-12 06:14:19', '2024-06-12 06:14:19'),
('8a9d828a-b9d4-4c45-943e-cc923887426c', 1, '114.10.12.133', '3217030201870005', 'Tatang somantri', 'Kp cilengsar desa sadang mekar\r\nRt 02 rw 01\r\nKecamatan cisarua \r\nBandung barat', 'anthreebarata34@gmail.com', '085794678057', '2024-06-12 05:12:21', '2024-06-12 05:12:21'),
('8ad912d3-c865-41b4-b43d-b3a068cb1d8c', 1, '180.244.139.170', '3273030109990008', 'Hilman Baihaqqi', 'Babakan irigasi gg amd 8 Kota Bandung Jawa Barat', 'hilmanbaihaqqi8@gmail.com', '089669000448', '2024-06-12 06:03:29', '2024-06-12 06:03:29'),
('8b2f1a52-4b93-49e5-a334-7efc31edbca5', 3, '103.229.14.170', '3217040103970008', 'Nendi Rustendi', 'Kp.Cipadali', 'nendirustendi8@gmail.com', '083829357124', '2024-06-12 06:14:38', '2024-06-12 06:14:38'),
('8b86e82b-9aee-4882-8afe-030e773513fa', 1, '116.206.14.18', '3204250911930008', 'Alvin Arifin', 'Kp. Pungkur Loji RT 001 RW 008 Desa Cicalengka Kulon Kecamatan Cicalengka Kab. Bandung.', 'alvinarifin35@gmail.com', '089656822826', '2024-06-12 05:44:28', '2024-06-12 05:44:28'),
('8b8b7300-30cf-4398-aea4-724e6d1f05c7', 1, '114.10.13.148', '3202245209870008', 'SITI SYAIDAH HASANAH', 'Kp. Babakan Pasir Angin no. 11 rt/rw. 01/15 Ds. Ciburuy Kec. Padalarang', 'sitisyaidahhasanah@gmail.com', '085781038577', '2024-06-12 05:29:17', '2024-06-12 05:29:17'),
('8bc48e77-47a7-4b1a-b3e7-69724c010ddc', 3, '202.51.20.10', '3203045006940016', 'Rukaenah', 'Kp. Babakan RT 01 RW 11 Desa sukakerta kecamatan Cilaku kab Cianjur Jawa Barat', 'officialrukaenah@gmail.com', '085770118559', '2024-06-12 05:13:23', '2024-06-12 05:13:23'),
('8d305750-bd0f-44e4-8ebc-9661bcd59fc4', 2, '202.93.229.62', '3217105906960011', 'KHAIRUNNISA SUHARJA', 'Kp.Sayuran Rt04 Rw09 Desa Mekarmukti Kec.Cihampelas Kab.Bandung Barat', 'nishasuharja32@gmail.com', '083829339556', '2024-06-12 05:11:17', '2024-06-12 05:11:17'),
('8e3e7296-7d87-4e8e-945d-bf300574066d', 2, '103.174.122.178', '3217102401950004', 'Arief mulana', 'Kp. Lio rt. 01 rw. 05 desa. Tanjungjaya kec. Cihampelas kab. Bandung barat', 'ariefmaulana92739@gmaio.com', '085624966864', '2024-06-12 05:19:41', '2024-06-12 05:19:41'),
('8ecd9512-237f-4acb-bcd8-51c691e7f934', 2, '116.206.14.51', '3204324210000023', 'Sania Suci Rahayu', 'Kp. Manggahang RT 04/05', 'saniasuci114@gmail.com', '089625738312', '2024-06-12 05:10:28', '2024-06-12 05:10:28'),
('8f82586b-04da-46a2-943e-766d2f0d1937', 1, '114.122.109.35', '3273252210000004', 'Aqilla Luthfi Salam', 'Dusun ciulur no 15 rt 02 rw 04 kelurahan trunamanggala kecamatan cimalaka', 'aqillaluthfi13@gmail.com', '081328355826', '2024-06-12 05:16:56', '2024-06-12 05:16:56'),
('8fd10564-6f1f-4aed-8d9d-f62addd3c1a1', 3, '202.51.20.10', '3202392606920005', 'Andri Shaepul Rachmat Shopian', 'Kp. Babakan RT 01 RW 11 Desa Sukakerta Kecamatan Cilaku Kabupaten Cianjur Jawa Barat', 'shaepulandri@gmail.com', '085523783565', '2024-06-12 06:09:35', '2024-06-12 06:09:35'),
('92ae909a-1d16-486c-98b2-0c10f24b3b6f', 2, '103.174.122.178', '3217101106700017', 'Uloh', 'Kp.babakan cianjur RT.01 RW.08 desa situwangi kecamatan cihampelas', 'ulohhhhh@gmail.com', '087739452580', '2024-06-12 06:19:52', '2024-06-12 06:19:52'),
('93f628ae-6093-4242-87b4-ec725f0bf43d', 1, '139.194.101.153', '3310190612040001', 'Raihan Aunurhakim', 'The Awani Residence no A 19, RT 002 RW 005, Cimareme, Ngamprah, Bandung Barat', 'raunurhakim04@gmail.com', '081804404407', '2024-06-12 05:29:37', '2024-06-12 05:29:37'),
('9404af54-b35f-4b64-b400-c3c9b162791d', 3, '36.64.17.138', '3174075005011003', 'SAFIRA ANNISA RIYANSYAH', 'JL PANDAN RT 015 RW 009', 'safiraannisariyansyah@gmail.com', '081578035074', '2024-06-12 05:17:05', '2024-06-12 05:17:05'),
('9523be20-7a0b-4b9b-bf76-88f3bc66465e', 3, '203.176.176.251', '3273076201870001', 'TINA SUHERMAN', 'JL. IR. H. JUANDA NO.289 RT.007 RW.009 KELURAHAN DAGO KECAMATAN COBLONG KOTA BANDUNG', 'tinasuhe87@gmail.com', '089666221734', '2024-06-12 05:39:43', '2024-06-12 05:39:43'),
('95409c83-8084-4082-b324-3e93dad73c98', 2, '140.213.41.84', '3273162305920002', 'SANDI MAULANA', 'Jl. Ters pesantren I blok c/31', 'sandimaulana61@gmail.com', '087717466306', '2024-06-12 05:14:18', '2024-06-12 05:14:18'),
('95e0bf6b-e550-4518-93f5-b29c24c6cf56', 3, '103.151.215.82', '3217085802950010', 'Refi Rizkika', 'JL. Cijeungjing No.47 RT.02 RW.16 Kertamulya Kab. Bandung Barat', 'refirizkika18@gmail.com', '087822722856', '2024-06-12 05:14:00', '2024-06-12 05:14:00'),
('975f2266-17fe-4eb9-9965-4b9d5820fbf6', 1, '180.244.133.48', '3217061307030010', 'Kautsar faza sdarsono', 'Komp.Taman Fidaus blok E No.43 desa pakuhaji, kecamatan ngamprah.', 'kautsarfaza51@gmail.com', '089602421485', '2024-06-12 05:42:33', '2024-06-12 05:42:33'),
('97d9db80-8019-4ebb-82df-992667ca242e', 1, '36.94.42.194', '3209214109960006', 'Niniek ni\'matul jannah', 'Villa intan 1 blok a2 no.31 rt 01 rw 06 desa jadimulya kec gunung jati kab.cirebon', 'ninieknj@gmail.com', '085724201804', '2024-06-12 05:40:19', '2024-06-12 05:40:19'),
('98ae2ec6-1725-4c95-b3b9-15d713261318', 2, '180.244.134.184', '3203013010000013', 'MUHAMAD ADITYA SAPUTRA', 'Perumahan Bukit Kalimaya Indah Blok AF No 1-2 RT/03 RW/19 Kecamatan Cianjur Kabupaten Cianjur Jawa Barat', 'maaaditya4444@gmail.com', '081221195700', '2024-06-12 05:08:02', '2024-06-12 05:08:02'),
('997967f0-2ccf-4660-ab06-a92f9e1b0405', 3, '36.73.33.55', '3216092711050010', 'Rafly Arief Laksmana', 'Jalan Kuntul RT 02 RW 14 Donan', 'raflygembullaksmana@gmail.com', '0895423006816', '2024-06-12 05:17:31', '2024-06-12 05:17:31'),
('999c9f3f-b619-4d0a-af27-45da4b4294de', 1, '114.5.208.157', '3277010305990022', 'Hari Pratama Gunawan', 'Leuweung Gede Rt07/Rw11 Cibeureum Cimahi Selatan Cimahi JawaBarat', 'haripratama158@gmail.com', '083119800704', '2024-06-12 05:20:35', '2024-06-12 05:20:35'),
('9a505aae-5bb7-419f-9352-331869a09189', 3, '180.244.132.102', '3217075808890007', 'REZKY NOOR ICHWANI', 'Perum Garuda Permai No.104', 'ichwanirezkia@gmail.com', '087822444908', '2024-06-12 05:21:22', '2024-06-12 05:21:22'),
('9aa6dd5e-0f93-4e4b-afc7-d0843c8135f7', 2, '125.164.19.226', '3217071304880012', 'Fauzi angga suherlan', 'Kp.tagog rt 003 rw 003 desa mandalawangi kecamatan cipatat kabupaten bandung barat', 'fauzyanggasuherlan@gmail.com', '085860945227', '2024-06-12 05:20:02', '2024-06-12 05:20:02'),
('9aba299b-5045-4271-995a-b47a4c3d6601', 2, '114.5.218.223', '3203071703800002', 'Ganjar Firmansyah', 'BTN Sabandar Permai Blok B5 No.7 RT 06/RW 11 Desa Sabandar Kecamatan Karangtengah', 'ganjarfirmansyah001@gmail.com', '081220001272', '2024-06-12 05:14:14', '2024-06-12 05:14:14'),
('9ae8d361-a444-458e-821c-49ea8a7ff8d5', 2, '36.69.196.62', '3273246402060003', 'Sinaga Theofany Eliza Karya', 'Jl. parakan saat 2 no 27', 'theofany54@gmail.com', '085724428168', '2024-06-12 05:52:43', '2024-06-12 05:52:43'),
('9af7a031-88e0-42f9-8e9c-deeb07c2fa63', 3, '125.164.24.187', '3204465307060002', 'Rafi Salsa Nahari', 'Kmp. Sukalilah Cisaranta RT.003/RW.001 Desa Kopo Kec.Kutawaringin Kab.Bandung', 'rafinahari35@gmail.com', '087847632991', '2024-06-12 06:05:06', '2024-06-12 06:05:06'),
('9b5507aa-bed5-479f-ab07-36d53e1651a7', 3, '112.215.211.154', '3217165702890001', 'Yustiana Imanti', 'Kp. Cikande RT 003/007. Desa Bojonghaleuang. Kecamatan Saguling. Kabupaten Bandung Barat', 'yustianaimanti775@gmail.com', '081313797804', '2024-06-12 05:07:33', '2024-06-12 05:07:33'),
('9c3b0ced-8d45-476a-8b0e-54206252e60b', 3, '103.105.34.93', '3214016101970002', 'RATNASARI', 'Kp Rawamekar, Rt 04/01, Desa/Kel Tegalmunjul, Kec. Purwakarta, Kab. Purwakarta', 'annida.saadah14@gmail.com', '081296413446', '2024-06-12 05:30:34', '2024-06-12 05:30:34'),
('9c6e2d71-c769-4bf5-96c2-e4271870ddfd', 2, '115.178.48.130', '3204442212770001', 'ANDI RUSLI IRAWAN', 'Gading Tutuka 2 Blok K-3A No. 16 Rt. 001 Rw. 011 Kelurahan  Ciluncat Kecamatan Cangkuang Kabupaten Bandung', 'andiibro1977@gmail.com', '085648063580', '2024-06-12 06:00:02', '2024-06-12 06:00:02'),
('9c7ac90b-8d01-448e-9037-fc11bf69e9de', 3, '180.244.138.147', '3217084202690017', 'SURYANI', 'Kp. Kutaluhur 001/008 Desa Ciburuy Kec. Padalarang Kab. Bandung Barat', 'suryanisuherman.2016@gmail.com', '083167617387', '2024-06-12 05:09:13', '2024-06-12 05:09:13'),
('9c7c0395-e7b4-4646-beb9-f84cca2947ff', 1, '114.122.101.132', '3273241106000005', 'Samuel tombus seito purba', 'Jl. Parakan saat II', 'samueltombus1508@gmail.com', '081324875579', '2024-06-12 05:11:53', '2024-06-12 05:11:53'),
('9d16d93b-6c15-4dfc-b09e-5db3270e629d', 2, '180.244.135.11', '3273095108980004', 'Laras Kidung Kadresaning Kapti', 'Jl. Nangkasuni No. 29 Kota Bandung', 'laraskapti11@gmail.com', '085156167108', '2024-06-12 05:14:14', '2024-06-12 05:14:14'),
('9d4a96df-c0e7-4461-a718-92fddc910079', 2, '180.244.135.132', '3211156308970001', 'Indah Resti Utami', 'Kihapit Barat Rt 011 Rw 009 Kelurahan Leuwigajah Kecamatan Cimahi Selatan', 'Indahrestiuu11@gmail.com', '089637327882', '2024-06-12 05:12:16', '2024-06-12 05:12:16'),
('9e1abc8e-447e-49a3-ade1-a7765f8d8a5f', 1, '182.253.194.59', '3273027103030004', 'Ghina Kamilathinnajah', 'Jl.Cisitu Indah Dalam No.19-B/160-C RT09 RW12 Kel.Dago Kec.Coblong', 'ghinajah0331@gmail.com', '089676471544', '2024-06-12 05:37:08', '2024-06-12 05:37:08'),
('a016f0eb-ff0f-4d83-b32b-7d0973686232', 2, '112.215.211.110', '3217054105890009', 'Neng hapsoh', 'Cipeundeuy 01/03 ds cipeundeuy kab bandung barat', 'nenghapsoh123@gmail.com', '087821894569', '2024-06-12 05:11:43', '2024-06-12 05:11:43'),
('a0c741b1-c36d-4202-80e0-a182b1714487', 1, '114.5.208.47', '3210074701980001', 'SUCI FAUJI ASTUTI', 'LINK.DEPOK MUNJUL RT 02 RW 05 KEC./KAB. MAJALENGKA', 'sucifauji13@gmail.com', '089519109950', '2024-06-12 05:41:40', '2024-06-12 05:41:40'),
('a19f21d8-232a-4f25-9718-02732d324b54', 2, '36.70.102.140', '3214015101870004', 'FITRI ANDRIYANI', 'PERUM PONDOK JAYA INDAH BLOK E 4 NO. 9 RT. 052 RW. 013 KEL/DESA MUNJULJAYA KECAMATAN PURWAKARTA KABUPATEN PURWAKARTA', 'andriyanif347@gmail.com', '08892284516', '2024-06-12 05:47:36', '2024-06-12 05:47:36'),
('a1cf9668-841e-445e-bfcf-f06580cf1b39', 1, '101.255.168.6', '3275035710790043', 'HOTIMAH', 'Taman wisam asri blok AA39 No. 38 RT 005/03 Kelurah Teluk Pucung Bekasi Utara', 'nonahotimah70@gmail.com', '089652248790', '2024-06-12 06:18:41', '2024-06-12 06:18:41'),
('a1d88d3b-b032-4722-8b5d-07adeab7a416', 2, '114.5.214.137', '3217146009890005', 'Ai nurfadila', 'Kp Malaka 1/7 desa Sindangkerta kec. Sindangkerta kab. Bandung barat', 'nurfadilaai048@gmail.com', '085722571657', '2024-06-12 05:31:15', '2024-06-12 05:31:15'),
('a1f4753c-9063-4133-b536-078020c924d5', 2, '140.213.105.21', '3217064809900006', 'Fanny Dwi handayani', 'Kp cipulus rt003/rw005 desa Ngamprah kec Ngamprah KBB', 'fannydaffa16316@gmail.com', '087786327317', '2024-06-12 05:30:33', '2024-06-12 05:30:33'),
('a2c81b2f-af05-40f1-bd70-bb64b2646b4e', 1, '114.79.55.207', '3273246912980010', 'Rike Suci Tania', 'Jl Ters Pesantren I Blok C No 31 Arcamanik Sukamiskin Kota Bandung 40293', 'rsucitania@gmail.com', '089526754029', '2024-06-12 05:20:49', '2024-06-12 05:20:49'),
('a305e085-8f8a-4624-b788-57fb0d9bc4ab', 2, '114.79.54.58', '3217060310990002', 'Lutfhi Hadiansyah', 'KP. Kebon Kalapa RT 05 RW 01 Desa Kertajaya Kecamatan Padalarang Kabupaten Bandung Barat', 'Lutfhihadiansyah14@gmail.com', '08817889471', '2024-06-12 06:04:11', '2024-06-12 06:04:11'),
('a343aaa9-f514-4be1-aa42-21bc18021253', 3, '140.213.105.132', '3208015203980003', 'Gina Dewantina, S.Pt', 'Dsn. Kliwon RT/RW 027/002 Ds. Kadugede, Kec. Kadugede, Kab. Kuningan', 'munuir.juni@gmail.com', '087811166057', '2024-06-12 05:16:40', '2024-06-12 05:16:40'),
('a38c8a4b-50e5-4053-bcb6-d5abe631c958', 3, '36.72.105.99', '3211162201050001', 'Januar Gangga Pratama', 'Dsn.Cibawang RT.001 RW.011 Ds.Sukasirnarasa Kec.Rancakalong Kab.Sumedang', 'januargp22@gmail.com', '08170220105', '2024-06-12 06:02:28', '2024-06-12 06:02:28'),
('a3f4b6b6-3f9b-4c4f-b719-4f9470e84b19', 2, '180.242.71.111', '1214131205900001', 'Edi Warman Harefa', 'Desa Hilizoroilawa RT 00 / RW 00 Kel. Hilizoroilawa Kec. Mazino, Kab Nias Selatan Prov Sumatra Utara', 'ediwarman517@gmail.com', '+6285271241512', '2024-06-12 05:30:37', '2024-06-12 05:30:37'),
('a4e074a0-9e1a-4722-8ca7-d1b26a8286d6', 1, '140.213.105.88', '3273150108050004', 'Putra Azka Darmasakti', 'KP. SAYURAN RT 04 RW 07 Kelurahan Cijerah Kecamatan Bandung Kulon', 'azkapoetra094@gmail.com', '081903051946', '2024-06-12 05:24:12', '2024-06-12 05:24:12'),
('a552c8d0-82a8-45da-99cd-465f414a92c1', 3, '180.244.132.107', '3273016306950002', 'Niawati', 'Jl. Gegerkalong girang no.134 RT 07/01, Gegerkalong, Sukasari Kota Bandung', 'niaaawt50@gmail.com', '081312361278', '2024-06-12 05:16:29', '2024-06-12 05:16:29'),
('a572c223-29a5-4c59-8002-18ee9842b7b0', 3, '125.164.20.111', '3217090501900075', 'ANTON HERMAWANTO', 'Kp. Pakuwon, Rt.001/001, Des. Jati, Kec. Saguling', 'ardanijihan@gmail.com', '082218593347', '2024-06-12 05:51:01', '2024-06-12 05:51:01'),
('a5d70581-1d36-402c-9f7e-15de3cce652a', 1, '125.164.24.132', '3273054112810014', 'ELY WIDIAWATI', 'GG.RA.BARNAS I NO.267/77 RT.003 RW.006 ,KEL. DUNGUSCARIANG, KEC. ANDIR KOTA BANDUNG 40183', 'bumiajah6@gmail.com', '083852726640', '2024-06-12 05:56:51', '2024-06-12 05:56:51'),
('a655ea32-e138-4f7f-8adc-575ef8dcdf08', 2, '114.79.1.56', '3275025504920016', 'SOFI MARWATI', 'Jl. Borobudur No.1, RT.001/RW.006, Pengasinan, Kec. Rawalumbu, Kota Bks, Jawa Barat 17115, Indonesia', 'intaitempoer@gmail.com', '088289250115', '2024-06-12 05:47:43', '2024-06-12 05:47:43'),
('a6a215ed-2fb3-4f8d-80e7-85dd45a48c5e', 3, '125.164.20.193', '3277015109960002', 'Septya Rizka Yuandra', 'perumnas cijerah 2 gang pepaya', 'septyarizkayuandra@gmail.com', '085524451270', '2024-06-12 05:25:00', '2024-06-12 05:25:00'),
('a6a5a266-3899-4d01-b9f4-cb003420473b', 2, '103.229.14.170', '3212152407970004', 'ANDIKA HADIPUTRA', 'KP. KARYALAKSANA RT.001 RW.005 DESA.MEKARSARI KEC. NGAMPRAH KAB. BANDUNG BARAT', 'anti4652@gmail.com', '082126697127', '2024-06-12 05:15:22', '2024-06-12 05:15:22'),
('a739c050-4e16-46c5-98ee-75ad365a658c', 2, '103.57.37.82', '3273074405970005', 'MELYASARI', 'JL. A.H. NASUTION NO. 12 A, RT 001 RW 010, KEL. ANTAPANI WETAN, KEC. ANTAPANI, BANDUNG 40291', 'melyasarish@gmail.com', '085798608710', '2024-06-12 05:39:01', '2024-06-12 05:39:01'),
('a7f73598-898e-40fa-8931-270cf752000f', 1, '125.164.24.181', '3217141209880001', 'robby nour shandy', 'kp balandongan rt 02 rw 05 desa rancasenggang kec. sindangkerta', 'robbynourshandy88@gmail.com', '085559427760', '2024-06-12 06:18:55', '2024-06-12 06:18:55'),
('a8fa8ec1-d05f-4dfa-aa7f-d966eaa83823', 2, '118.99.81.220', '6371032303050006', 'RAZAN FAKHRAN ADZIMA', 'JL. SOETOYO S. ASRAMA PHB RT/RW 020/002 Kelurahan PELAMBUAN Kecamatan BANJARMASIN BARAT , Provinsi KALIMANTAN SELATAN', 'razan.fakhran1@gmail.com', '081347173418', '2024-06-12 06:16:39', '2024-06-12 06:16:39'),
('aa636f81-05c9-4a01-af9f-80b95b68321e', 2, '125.163.79.10', '1571026308000021', 'Alifiya Elizye Arya Giska Sembiring', 'Jl. Bojong Wetan No.17 Cikutra', 'alifiyaelizyearya@gmail.com', '0895620737996', '2024-06-12 05:57:40', '2024-06-12 05:57:40'),
('aa85afe1-aa28-4af9-820c-e4fe79ce6452', 2, '114.79.54.196', '3273206501810003', 'rianti rachmawati', 'jalan rengasdengklok 4 nomor 16 antapani bandung', 'riantirachmawati16@gmail.com', '089628871729', '2024-06-12 05:24:40', '2024-06-12 05:24:40'),
('aa9114fb-2587-4bfc-83a3-f1351ca9b959', 1, '140.213.37.128', '3217101805820022', 'Rudi hartono', 'Kp.awilarangan rt.003 rw.007 ds.mekar mukti kec.cihampelas kab.bandung barat', 'hrudi9520@gmail.com', '083120029467', '2024-06-12 06:11:01', '2024-06-12 06:11:01'),
('aa9f084d-28ab-4213-a988-9b5903d45fd1', 2, '125.164.20.176', '3204117003950002', 'Della Andini Syafrina', 'Kp Muara Ciwidey RT 03 RW 03 Desa Cilampeni Kecamatan Katapang Kabupaten Bandung', 'syafrinaandini319@gmail.com', '081372531158', '2024-06-12 06:16:31', '2024-06-12 06:16:31'),
('aad04ed2-0729-42d1-8ea1-cc890659aacd', 2, '202.47.80.16', '3215015812950005', 'Fauziah Aliyah', 'Cluster Asteria GG17 RT/RW : 025/009 Desa Puseurjaya, KecamatanTelukjambe Timur, Kabupaten Karawang', 'afliyah8@gmail.com', '087872803743', '2024-06-12 05:07:38', '2024-06-12 05:07:38'),
('aafdec41-ff8a-40d9-812f-194b2b0a73a9', 3, '114.122.117.209', '3217082906040006', 'Muhammad Auriel Hakim', 'Jl. Gedung Lima No 3C', 'aurielhakim5@gmail.com', '082129902829', '2024-06-12 05:05:31', '2024-06-12 05:05:31'),
('abb095d8-dbcd-402e-96c9-493bbbbe0592', 1, '125.164.21.85', '3217080607860020', 'DERI IRAWAN', 'KP.CIMAREME RT 001 RW 002 DESA CIMAREME KECAMATAN NGAMPRAH KABUPATEN BANDUNG BARAT', 'irawandodoy4@gmail.com', '083829990008', '2024-06-12 05:22:57', '2024-06-12 05:22:57'),
('ac3ec970-1398-40d4-bb9b-2e3e90eabbd7', 3, '202.93.229.62', '3217071307820005', 'Ahmad Subaran', 'Jl. Perum Bukit Berlian Rt 002/025 Desa Kertamulya Kec. Padalarang Bak. bandung Barat', 'ahmadsubaran817@gmail.com', '081809854905', '2024-06-12 05:34:00', '2024-06-12 05:34:00'),
('acf4af68-5524-4332-af97-be1c9ad894ce', 1, '180.241.240.55', '3209121604970008', 'TAUFIK LESMANA', 'Dusun I Seda Rt.002/002 Kel.Banjar Wangunan Kec. Mundu Kab. Cirebon', 'lesmanataufik97@gmail.com', '+6282318942221', '2024-06-12 06:16:59', '2024-06-12 06:16:59'),
('b00910d3-0a17-4326-9d81-c7bf16624f0d', 3, '115.178.48.130', '3204275201950001', 'indri eka septiani', 'perum hegarmanah indah no. 3, cikancung, kab. bandung', 'indrieka63@gmail.com', '081220864526', '2024-06-12 05:43:03', '2024-06-12 05:43:03'),
('b0177691-d5c8-4e90-9863-df72a0a103b9', 3, '182.0.99.228', '1471090804000024', 'Muhammad Zaidan Al Banna', 'Jalan Ganesa no 7, Lebak Siliwangi, Coblong', 'zaidan.albanna82@gmail.com', '089668844909', '2024-06-12 05:07:35', '2024-06-12 05:07:35'),
('b036cb68-a3bc-4aa0-aa85-43d389840f07', 3, '140.213.41.35', '3278011405000013', 'Muhammad Iqbal Maulana', 'Jl. Paseh Gn Secang RT/RW 05.04 Kel. Tuguraja, Kec. Cihideung Kota Tasikmalaya', 'muhammadiqbalmaulana088@gmail.com', '088229091808', '2024-06-12 06:03:05', '2024-06-12 06:03:05'),
('b0b7e703-781f-4897-8ab3-c28b66f98748', 1, '125.164.23.201', '3217155005880001', 'Suci Nurhayati', 'Kp Babakan Lapang Rt 005/ 005 Ds Citalem Kec Cipongkor Kab Bandung Barat', 'sucinurhayati2018@gmail.com', '083825311365', '2024-06-12 05:56:40', '2024-06-12 05:56:40'),
('b1bc394a-771a-49af-a310-905897d9120a', 3, '103.145.150.190', '3210024805910041', 'OOM KAMEILIAWATI', 'DUSUN SUKAMENAK 1 RT/RW 002/001 DESA SUKAMENAK KEC. BANTARUJEG KAB. MAJALENGKA 45464', 'oomkameiliawati@gmail.com', '085321662444', '2024-06-12 05:48:55', '2024-06-12 05:48:55'),
('b2364ff2-cc3c-479b-8fd9-6112f18f5925', 3, '36.70.102.140', '3214035104980002', 'MUTIA PUTRI PRATAMA', 'KP. BATULAYANG RT. 05 RW. 01 DS.CIKAOBANDUNG KEC.JATILUHUR KAB. PURWAKARTA', 'Mutiaputrikanigia@gmail.com', '087779528268', '2024-06-12 06:20:13', '2024-06-12 06:20:13'),
('b250d54b-519f-412d-8931-220f579133cf', 3, '114.122.101.250', '3217070410980006', 'TEGUH DHARMAWAN', 'KP. CINANGSI  RT 03 RW 04 DESA GUNUNGMASIGIT KECAMATAN CIPATAT KABUPATEN BANDUNG BARAT', 't92dharmawan@gmail.com', '082218835320', '2024-06-12 05:14:14', '2024-06-12 05:14:14'),
('b2dfd9bc-7d1c-4a60-9274-6c5a62eb8bac', 3, '180.244.129.189', '3204145005030002', 'Kelin Fitriani', 'Komplek Warakawuri Rt.06/Rw.10 Kec. Baleendah Kel. Baleendah Kab.. bandung', 'kelinftrianii@gmail.com', '089656512351', '2024-06-12 05:59:17', '2024-06-12 05:59:17'),
('b2ecef7e-7618-4f01-8c22-e0721183ffe4', 1, '114.122.109.196', '3204312912030002', 'Asep Komaludin', 'Kp lebaksari desa Cibeureum kecamatan kertasari kabupaten Bandung', 'asepkomaludin5@gmail.com', '082126988872', '2024-06-12 05:14:57', '2024-06-12 05:14:57'),
('b310a7c5-895d-44be-9cae-ce018103e6e5', 3, '103.139.127.244', '3212165110930001', 'RIA OKTAVIANTI', 'JL. SUKADEDEL KI BUBAT RT/RW 11/04 DESA TERUSAN KECAMATAN SINDANG KABUPATEN INDRAMAYU', 'riiaoktavianti2@gmail.com', '081806364333', '2024-06-12 05:31:07', '2024-06-12 05:31:07'),
('b317a341-ba08-4f15-a4d2-878bde6be809', 1, '180.244.138.147', '3217071808890010', 'TEDI GANDARA', 'KP. BABAKAN ABANDUNG 003/004 DESA RAJAMANDALA KULON KAB. BANDUNG BARAT', 'alwigandara999@gmail.com', '081809644697', '2024-06-12 05:49:38', '2024-06-12 05:49:38'),
('b3979dbf-eabe-4261-bd34-5073ca79aa0f', 2, '125.164.20.168', '3217130107870049', 'Obar', 'Kp. sukasari Rt 003/ Rw 002 desa cibitung Kecamatan rongga kabupaten bandung barat', 'obarsobarna777@gmail.com', '085524707921', '2024-06-12 06:09:22', '2024-06-12 06:09:22'),
('b3eec7b2-3166-452c-ad06-8304b75d3ef6', 2, '114.122.111.136', '3217031207950009', 'Tatang Pudori', 'Kp.Bongkok RT.001/008 Desa Padaasih Kec.Cisarua Kab.Bandung Barat', 'pudoritatang@gmail.com', '089504075097', '2024-06-12 06:13:30', '2024-06-12 06:13:30'),
('b42fca50-18a3-45aa-9cc4-fea28e7f6a20', 2, '112.215.151.194', '3215295709050001', 'GINA AZ ZAHRA', 'PERUM PURWASARI PERMAI BLOK C.NO 26', 'ginaaza1705@gmail.com', '087740274207', '2024-06-12 05:09:48', '2024-06-12 05:09:48'),
('b4475bf1-5833-42fa-bb67-401fa94b4595', 1, '180.244.129.139', '3217041707950013', 'TRINA', 'KP. WARUNG JATI RT/RW 01/10 DESA CIPTAGUMATI KECAMATA CIKALONGWETAN', 'trinazari6@gmail.com', '089628056155', '2024-06-12 06:12:07', '2024-06-12 06:12:07'),
('b662c59e-cf21-4211-b616-5108877b2c3d', 3, '103.213.128.3', '3174104508011002', 'Tara Fathia Irawan', 'Jalan Mawar III RT.004/05 Bintaro Pesanggrahan Jakarta Selatan', 'tarafthirwn1@gmail.com', '082211493852', '2024-06-12 05:59:09', '2024-06-12 05:59:09'),
('b7208d75-a61a-4e5d-af98-c6e762f7fa17', 2, '36.83.112.73', '3205016211910004', 'SITI RAGEN, A.Ma.Pust., S.T., S.S.I.', 'KP. WANASARI, RT.006 RW.026, KEL. KOTA KULON, KEC. GARUT KOTA', 'mbakragen@gmail.com', '082113877882', '2024-06-12 05:13:59', '2024-06-12 05:13:59'),
('b7dfe50f-2cb0-4e00-b175-04f06f8d11e4', 2, '103.174.122.178', '3217101705900006', 'Rakhmat Kriswanara Sudrajat', 'Kp. Sadang, RT.01, RW.06, Desa Mekarjaya, Kecamatan Cihampelas, Kabupaten Bandung Barat', 'kriswanara@gmail.com', '087770904009', '2024-06-12 05:10:14', '2024-06-12 05:10:14'),
('b81dd9a4-3217-4328-884e-aa19c26a6081', 2, '36.74.77.163', '1805182106990001', 'Ade Rahman', 'Kp.wrukut rt.04 rw.13 kel.cileunyi wetan kec.cileunyi kab.bandung.', 'aderahman32889@gmail.com', '085872513956', '2024-06-12 06:08:47', '2024-06-12 06:08:47'),
('b8ec6a83-c44a-452c-88c2-1f0dec295ebe', 3, '114.122.111.249', '3204090509920007', 'Rendy Maulana Subagja', 'Komplek Mutiara Mas Regency Blok A-10 RT 003 RW 008 Kel. Pasanggrahan Kec. Ujungberung Kota Bandung', 'rendymaulanasubagja@gmail.com', '082126606610', '2024-06-12 05:13:49', '2024-06-12 05:13:49'),
('b9a0a6d2-46bd-4fdd-b8d3-0bcb93f3ee84', 1, '112.215.211.181', '3210114606020041', 'Puja Lestari', 'Desa Sutawangi rt/w 002/004 Dusun 2 Kecamatan jatiwangi, Kab Majalengka, Prov. Jawa barat No.13', 'lestaryypuja45@gmail.com', '089660218973', '2024-06-12 05:25:36', '2024-06-12 05:25:36'),
('b9c46651-ee79-4778-b845-2bd0dd2b3855', 3, '114.5.212.30', '3277011402960023', 'Ricky febriyadi', 'Perumnas cijerah gang nusa indah', 'rickyfebriyadi66@gmail.com', '085712447260', '2024-06-12 06:06:26', '2024-06-12 06:06:26'),
('b9ecc5ad-4e7a-4b9b-a72b-9c981bc8d04c', 3, '103.148.130.106', '3212055105010001', 'darsini', 'desa tunggul payung blok III RT 014/RW 003 kecamatan Lelea Kabupaten Indramayu', 'darsini1105@gmail.com', '081297829714', '2024-06-12 05:55:39', '2024-06-12 05:55:39'),
('b9ed67d2-7f70-4dcb-bc48-34638e701ba4', 2, '114.122.75.11', '3217082112700005', 'Ade Erawan', 'Kp Asrama RT 02 RW 04', 'uptrphkbb@gmail.com', '087805768981', '2024-06-12 05:23:01', '2024-06-12 05:23:01'),
('bada70a2-f255-46c1-8dfb-c0ab7e52a845', 2, '180.244.135.132', '3204284703970005', 'Ayu Siti Aisyah', 'Jl Subang 7 No 7 Rt 001 Rw 002 Kelurahan Antapani Tengah Kecamatan Antapani', 'ayu.sitiaisyah397@gmail.com', '085559547732', '2024-06-12 05:26:14', '2024-06-12 05:26:14'),
('bb6607f8-b9a7-45b1-aa15-33ababb69dd0', 3, '182.0.240.30', '3214010605990002', 'WIDI ANDRIAN', 'Rawasari 2 Rt 24 Rw 07 Kel. Munjul Jaya Kec. Purwakarta Kab. Purwakarta', 'widiandrian482@gmail.com', '082124498262', '2024-06-12 05:14:47', '2024-06-12 05:14:47'),
('bc04c2fd-ed8e-40e9-9943-db73c0ca0ebb', 3, '103.139.127.244', '3212155506900008', 'JULEHA', 'JL. PERMANA BLOK C.1 RT/RW 010/003 DESA DUKUH KECAMATAN INDRAMAYU KABUPATEN INDRAMAYU', 'lehaley251@gmail.com', '087718533153', '2024-06-12 06:01:08', '2024-06-12 06:01:08'),
('bd30609a-a3d6-41bd-b3c7-2cfe999d1793', 3, '103.105.34.116', '3205385212970011', 'Jehan Azkia', 'Kp. Ranca Seel Rt 002 Rw 008 Desa Cigagade Kec. BL Limbangan Kab Garut', 'jehanazkia12@gmail.com', '082299338434', '2024-06-12 05:24:07', '2024-06-12 05:24:07'),
('bd6731da-b0b0-4327-9fcd-a393ba1d65e6', 3, '114.122.104.50', '3204111804060004', 'Rakan Gunawan', 'JL Kamarung NO95 RT02 RW05, Kel. Citeureup, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat', 'rakangunawan06@gmail.com', '082117285087', '2024-06-12 05:09:54', '2024-06-12 05:09:54'),
('be110681-48ad-422f-b62e-9066e9f0d0b2', 2, '180.244.129.195', '3217100307980014', 'aldhy maulana jamiat', 'kampung palalangon rt. 004 rw. 002 desa mekarjaya kecamatan cihampelas kabupaten bandung barat', 'maulanaaldhy98@gmail.com', '081214034670', '2024-06-12 06:16:39', '2024-06-12 06:16:39'),
('be331969-c0c3-47e4-8f12-282db029db2f', 2, '103.105.33.98', '3217155606970003', 'Ulfa Siti hapsari', 'Kp.Cidadap RT/RW 002/010, Sirnajaya, Gununghalu', 'Ulfasitihapsari8144@gmail.com', '085939616522', '2024-06-12 05:14:56', '2024-06-12 05:14:56'),
('be8595d3-ed10-4a9a-aa22-0be8f9d4f27b', 1, '125.164.16.193', '3217085503970010', 'WINA SONIA', 'KP. GANTUNGAN RT 04 RW 12 DESA JAYAMEKAR KEC. PADALARANG KAB. BANDUNG BARAT', 'winasoniaa@gmail.com', '089507061884', '2024-06-12 05:12:16', '2024-06-12 05:12:16'),
('bf280d61-3022-4533-b998-eaf895e82a0e', 1, '103.147.8.180', '3273236706050002', 'FENI ARGENTA HARDIYANI', 'JL. KEADILAN 1 BLOK IN NO. 36 RT/RW 001/009 KEL. DERWATI KEC. RANCASARI. KOTA BANDUNG. JAWA BARAT. 40292.', 'hardiyaniargentafeni@gmail.com', '082159273508', '2024-06-12 06:13:14', '2024-06-12 06:13:14'),
('bf5a4eb3-9003-489d-ac99-9b94c4387fa0', 1, '114.124.212.83', '3217084401940019', 'Tita Rosita', 'Kp Gantungan Rt 04 Rw 12 Desa Jayamekar', 'thyta.rosita12@gmail.com', '082121039300', '2024-06-12 05:41:51', '2024-06-12 05:41:51'),
('bf7eaf38-e5c6-4e91-aad2-419a5a436583', 1, '36.78.66.222', '3204326508010017', 'Nurul Alvi Abidah', 'Kp. Cimuncang, RT. 02/RW. 13, Manggahang, Baleendah, Kab. Bandung', 'nurulalviabidahh@gmail.com', '0895375003008', '2024-06-12 05:49:15', '2024-06-12 05:49:15'),
('bfb7129c-af9a-4ecc-ace8-9434e3ac309b', 1, '125.164.16.191', '1206126303950002', 'Indah Pani Br Ginting', 'Jl. Raya Batujajar No.21 Rt 01 Rw 017 Desa Giriasih, Kec. Batujajar', 'indahpani23@gmail.com', '082165477510', '2024-06-12 05:20:10', '2024-06-12 05:20:10'),
('bfd47293-7014-42c6-9437-e5bcc884f8ed', 1, '140.213.100.89', '3273274312930005', 'Rizka Andenty', 'Komp. Ciwastra Indah Blok D 30', 'rizkaandenty3@gmail.com', '085797990803', '2024-06-12 05:21:47', '2024-06-12 05:21:47'),
('c03068c7-4f88-4c4d-8b1c-609ba02e3f99', 3, '103.105.34.93', '3213036308820001', 'YULIA AGUSTINA', 'Kp Kaum Kaler, RT 04/01, Kel/Desa Cipaisan, Kec. Purwakarta, Kab. Purwakarta', 'agustina23yulia@gmail.com', '0895324427186', '2024-06-12 06:06:41', '2024-06-12 06:06:41'),
('c05e2fe4-fa62-41a2-846d-51596a90a7f6', 3, '116.206.15.33', '3278025905010013', 'Nazda Naharie Aulia', 'Leuwianyar, RT 03/ RW 05, Sukamanah, Cipedes, Kota Tasikmalaya', 'nazdanaharie19@gmail.com', '089671169820', '2024-06-12 05:42:05', '2024-06-12 05:42:05'),
('c18c25fd-7ccd-4815-b800-0aeb63998777', 1, '103.148.79.88', '3278104503940002', 'DESTYA MARETHA RAMADHANI', 'KP. DEPOK, RT. 004 RW. 005, KELURAHAN SUKAMENAK, KECAMATAN PURBARATU, KOTA TASIKMALAYA', 'destyamarethar@gmail.com', '081395705021', '2024-06-12 05:15:22', '2024-06-12 05:15:22'),
('c1b40621-14b3-4eb9-80eb-d094fb99f1cd', 3, '125.164.24.27', '3204291010920010', 'Defi Saputra', 'Kp. Andir Rt. 004 Rw. 011, Desa Pakutandang, Kecamatan Ciparay, Kabupaten Bandung', 'putradefisaputra@gmail.com', '081218893465', '2024-06-12 05:28:09', '2024-06-12 05:28:09'),
('c20a582b-19ca-49d2-804e-a0ef21b7960d', 1, '103.85.149.162', '3204065501030005', 'DWI RAHMAWATI', 'KP.SUKASARI RT.03 RW.07 DESA CIMENYAN KEC. CIMENYAN KAB.BANDUNG', 'dwirahmawati17246@gmail.com', '081280822901', '2024-06-12 05:41:49', '2024-06-12 05:41:49'),
('c27b1054-f355-4714-a74b-e40f877b388e', 2, '180.252.22.95', '3204255410990002', 'Rizka Mega Aisah Nurfauziah', 'Kp. SawahLega RT 003 RW 003 Desa Nagrog Kec. Cicalengka Kab. Bandung', 'rizkamgan10@gmail.com', '08983784765', '2024-06-12 05:09:07', '2024-06-12 05:09:07'),
('c2ff6112-9107-4adf-831c-16bab02ff012', 2, '125.164.23.193', '3217101901810006', 'MU\'MIN ZAENAL MUTAKIN', 'Kp. Cipanji  RT 02 RW 01 Ds Cihampelas Kec Cihampelas  Kab Bandung Barat', 'muminjenalmutaqin190181@gmail.com', '0858888013413', '2024-06-12 06:08:13', '2024-06-12 06:08:13'),
('c326a87a-01b8-49f8-a589-428b5c919ad3', 2, '114.124.210.145', '3277030306870008', 'Fajar Maulana Sidiq', 'Komplek Bukit Permata Blok E1 No.7 RT.01 RW.21 Desa Cilame Kecamatan Ngamprah Kabupaten Bandung Barat', 'sanitasiairminumkbb@gmail.com', '085143376606', '2024-06-12 05:28:09', '2024-06-12 05:28:09'),
('c351e2c2-e74d-4a57-aa21-7ef083f6eefd', 2, '140.213.22.44', '3212125010810003', 'Yohana Andriyani', 'Desa Majasari, blok girang RT/RW. 015/004, Kabupaten. Indramayu, kec. Sliyeg', 'yohanaandriyani81@gmail.com', '082120699983', '2024-06-12 06:08:03', '2024-06-12 06:08:03'),
('c41b1220-d0ad-4e25-8ccd-ce230697b46f', 1, '180.244.139.170', '3203114806000001', 'Tri Ambarwati', 'Kp.Cangklek RT 001/RW 001 Desa Sukamanah Kecamatan Cugenang Kabupaten Cianjur Jawa Barat', 'triambarw08@gmail.com', '087828733299', '2024-06-12 05:52:22', '2024-06-12 05:52:22'),
('c42d1dcd-5f8d-434b-b5de-2e9ca72a83bc', 3, '112.215.208.168', '3217045604870008', 'Hera Nur Helawati', 'Kp.Rende 03/01 Ds.Rende Kec.Cikalongwetan kab.Bandung Barat', 'heranurajiz@gmail.com', '082218213487', '2024-06-12 05:18:25', '2024-06-12 05:18:25'),
('c4640536-8d2d-4b53-92e5-d8a76749ed40', 2, '180.253.253.233', '3217062305990012', 'Sofyan Halim', 'Jl. Cikandang No.34 Rt.02 Rw. 08 Desa Cimareme Kec. Ngamprah Kabupaten Bandung Barat', 'sofyanhalim1999@gmail.com', '0895339800809', '2024-06-12 06:03:22', '2024-06-12 06:03:22'),
('c46a3265-b783-4144-b8ab-18324e03e353', 2, '104.28.218.136', '3204062207970002', 'Gilang Herdani', 'Komp. Rajasanagara Cinunuk Blok R3 No. 20', 'gilangherdani7@gmail.com', '085956561657', '2024-06-12 05:30:25', '2024-06-12 05:30:25'),
('c4c8580a-75f3-41ad-b1a2-5b374cdba1b3', 3, '114.79.54.122', '3217146308920001', 'Kakay Harlina Ningsih', 'Kp. Pasir jaya 01/09 ds. Buninagara kec. Sindangkerta kab. Bandung barat', 'bd.kakay@gamil.com', '087718000665', '2024-06-12 06:05:45', '2024-06-12 06:05:45'),
('c612618f-c890-4872-bfeb-5bc19f39b23c', 2, '180.252.85.100', '3276013112970007', 'Ahmad salman Ali Ghufroni', 'Jalan Pabuaran Pesantren', 'ahmadsalmanalighufroni@gmail.com', '085795518301', '2024-06-12 05:20:05', '2024-06-12 05:20:05'),
('c6c663ca-2b73-47a3-921f-769b6db24d76', 2, '36.69.196.62', '3272015201060001', 'Rajwa Ajeng Zalfa Alexandriany', 'Perum Prima Anggrek Blok C No 11', 'rajwaajeng@gmail.com', '082120956530', '2024-06-12 06:00:26', '2024-06-12 06:00:26'),
('c784fc74-7e88-4c01-bcab-d0464bf31a36', 2, '125.163.18.70', '3277010911810004', 'YUYUN YUDISTIRA', 'KP.SINDANGSARI RT02/RW08 DS.PASIRHALANG KEC.CISARUA KAB.BANDUNGBARAT', 'narendratarwita@gmail.com', '089685268813', '2024-06-12 05:52:15', '2024-06-12 05:52:15'),
('c815c86d-e13e-45d2-9e52-0bab83cf1a92', 2, '114.5.218.141', '3204285807960007', 'Ulfah Aisyah Mardiah', 'jl alba 1 no.11 griya utama rancaekek kec. Rancaekek wetan kab bandung 40394', 'ulfahmardiah07@gmail.com', '085795605535', '2024-06-12 05:43:31', '2024-06-12 05:43:31'),
('c84b9b45-c4c9-4ec6-b836-b4eb629ce1f1', 3, '180.244.133.127', '3217065302060010', 'ALVIANA REGITA SARASWATI', 'KP. KEBON MANGGU RT 7/RW 20 PADASUKA CIMAHI TENGAH', 'alvianaregitas@gmail.com', '081324283022', '2024-06-12 05:14:26', '2024-06-12 05:14:26'),
('c879ade6-b267-4529-bdfb-5fa593ddc573', 1, '114.142.173.14', '3217061202990015', 'DEDEN FEBRIAN', 'kp babakan tengah, RT 5/4, desa nanjung, kec. margaasih, kab. bandung', 'dedenfebrian123@gmail.com', '082216445275', '2024-06-12 05:40:36', '2024-06-12 05:40:36'),
('c8ca834f-819a-4075-9544-1db163386c1c', 2, '182.253.128.33', '3215030701010002', 'Bintang Sugiarto', 'JL.Kartini no.04 RT/01 RW/11, Kel. Karangpawitan, Kec. Karawang Barat, Kab. Karawang', 'bintangsugiarto626@gmail.com', '085163540701', '2024-06-12 05:12:38', '2024-06-12 05:12:38'),
('c8df7472-28ba-41fa-8962-e82fdf29fd35', 2, '203.207.56.35', '3217060312830016', 'Yudi Siswanto', 'Kp. Sasak beusi RT 006 RW 004 Desa Gadobangkong Kec. Ngamprah Kab. Bandung Barat', 'iduykasep@gmail.com', '082126850518', '2024-06-12 06:09:58', '2024-06-12 06:09:58'),
('c9ee25e7-b2a7-462f-aeb8-7f6fd52c5e94', 1, '103.105.33.102', '9101014210040002', 'Vanessa Septi Nur Iriani', 'Jl.Ciheulang Ds. Ciheulang Kec.Ciparay RT/02 RW/01 Kab.Bandung', 'vanessasepti6@gmail.com', '087886332384', '2024-06-12 06:11:30', '2024-06-12 06:11:30'),
('cada110c-0155-429f-a17c-1b9a36f08c9c', 3, '114.122.76.114', '3273223112980002', 'Ilham Gema Ramadhan', 'Jl.Kencana wangi 3 blok D.2', 'gemailham31@gmail.com', '081321748944', '2024-06-12 05:12:22', '2024-06-12 05:12:22'),
('cb62552c-53f2-4924-a4f3-532c64ea80b9', 2, '160.19.224.194', '7371092812050005', 'GRATIO SAPUTRA NK', 'KLOANGLAGOT, RT/RW 005/003, KEL. WAIRKOJA, KEC. KEWAPANTE', 'gratiosaputra12@gmail.com', '085819498012', '2024-06-12 05:45:17', '2024-06-12 05:45:17'),
('cc22b4db-121e-418b-90c9-6d1f4f6ee9f3', 2, '103.116.201.68', '3217144603850014', 'ADINDA CITRA PUTRI AYU', 'kp. Cibedug Rt.005/003 Desa Puncaksari Kecamatan sindangkerta kab. bandung barat', 'adindaayu0603@gmail.com', '081297148039', '2024-06-12 05:50:03', '2024-06-12 05:50:03'),
('cd8193d1-aa6b-4f22-8d4a-8af1ddc57ce8', 1, '182.2.141.218', '3203010601050005', 'Hentrieza Zalnas Akbar', 'Kota Baru Parahyangan, Tatar Mayang Sunda, Jl. Mayang Padmi Kulon No.3, Kab. Bandung Barat, Kec. Padalarang, Jawa Barat', 'hentriezazalnasakbar@gmail.com', '081220789800', '2024-06-12 05:21:05', '2024-06-12 05:21:05'),
('cd8d1a48-4de6-4e54-8c2a-8a0402ff1ab4', 3, '103.174.122.178', '3217091006790009', 'Yusup Mubaraq', 'Blok babakan sari  RT 1 RW 6 Batujajar Barat Kec. Batujajar Kab. Bandung Barat', 'yusupmubarak@gmail.com', '081322455551', '2024-06-12 06:15:51', '2024-06-12 06:15:51'),
('cda0a4f3-93f1-4bde-8603-21783c0c4d57', 3, '125.164.16.188', '3217150505840005', 'Rudiana Suhendang', 'Kp Tegallega RT 02  RW 08 DESA CILANGARI GUNUNGHALU KBB', 'rudipapahclaresta@gmail.com', '088213023376', '2024-06-12 05:45:30', '2024-06-12 05:45:30'),
('cdc42160-c795-4e4a-85a6-66348cd0136a', 2, '36.72.28.110', '3273022802880004', 'Raden febrian andriawan rahayu', 'KP.senang Galih no. 79/150B RT/RW: 004/017', 'febrianandriawan@gmail.com', '089506203709', '2024-06-12 06:04:39', '2024-06-12 06:04:39'),
('cdd1568c-01bd-451f-b874-52e14d97f7c5', 2, '140.213.105.204', '3277016504990001', 'Almas Shabrina', 'Jl. Kebon Kopi Gg. Mesjid No.267 RT/RW 003/009 Kel. Cibeureum Kec. Cimahi Selatan Kota Cimahi', 'almas.shabrina03@gmail.com', '083179129335', '2024-06-12 05:11:17', '2024-06-12 05:11:17'),
('ce6dbf42-a360-4bb8-a864-7627f589721c', 1, '115.178.48.130', '3273045410950014', 'NUR AZIZAH ALAWIYAH', 'JALAN TERUSAN PASIRKOJA NO. 77', 'nurazizahalw@gmail.com', '082320333224', '2024-06-12 05:09:07', '2024-06-12 05:09:07'),
('ce865b52-f995-4744-b765-eae62a768103', 2, '182.0.101.244', '3217042303900017', 'Alfian widiakresna', 'Kp warungdomba rt02/01', 'alfianwidiakresna230690@gmail.com', '085158090882', '2024-06-12 05:37:08', '2024-06-12 05:37:08'),
('cfbd1ed8-59df-4e74-b9d0-5b3828194fef', 1, '114.5.215.54', '3217015708770004', 'Dian Rahmawati', 'Kp gunung putri Rt 01 Rw10 desa jayagiri kec lembang kab bandung barat', 'dianrahmawati@gmail.com', '085523566988', '2024-06-12 05:53:52', '2024-06-12 05:53:52'),
('d0657ffb-bdda-480a-9881-4bb7b05d76ac', 2, '140.213.106.218', '3217056408930007', 'Chika yudiana', 'Kp. Margaluyu rt 02/rw 11 Desa cipeundeuy,kec.cipeundeuy', 'chaichachika@gmail.com', '087825989099', '2024-06-12 05:23:01', '2024-06-12 05:23:01'),
('d0f38faa-d422-4d44-a1f1-db7ec6b8c32c', 1, '125.164.23.173', '3217052306880013', 'SANDI SEHENDAR', 'KP. CISELA RT 05 RW 10 DESA KANANGASARI KECAMATAN CIKALONG WETAN KABUPATEN BANDUNG BARAT', 'suhensandi@gmail.com', '087823732624', '2024-06-12 05:56:17', '2024-06-12 05:56:17'),
('d116ad6d-b56a-472a-99ea-ebfc34d8dd4d', 1, '125.164.16.232', '3217116802050005', 'Lyra Camelia', 'Kp. Rancapanggung RT 3 RW 8 Desa Rancapanggung Kec. Cililin Kab. Bandung Barat', 'lyracmlia@gmail.com', '085862767942', '2024-06-12 05:59:10', '2024-06-12 05:59:10'),
('d11a7069-1b0d-4407-8301-947763616b34', 2, '202.93.229.62', '3273031712920001', 'Hamzah Ansori', 'Jln Kopo gg Ekawarga 1 No 60 Rt 06 Rw 01 Kel/Kec Babakan Ciparay Kota Bandung', 'hamzahansori095@gmail.com', '087888901136', '2024-06-12 05:57:47', '2024-06-12 05:57:47'),
('d19cd591-8ee2-4a6c-80d3-f85ec11c54e7', 3, '125.164.16.188', '3217157009890001', 'LINDA SRI WULANDARI', 'KP TEGALLEGA 02/08 DESA CILANGARI KEC GUNUNGHALU KAB BANDUNG BARAT', 'bidanlindasriwulandari@gmail.com', '083821013703', '2024-06-12 05:43:23', '2024-06-12 05:43:23');
INSERT INTO `biodatas` (`id`, `schedule_id`, `ip`, `nik`, `nama_lengkap`, `alamat`, `email`, `no_hp`, `created_at`, `updated_at`) VALUES
('d1cf85d9-31d5-44c1-a5f0-d17011b666a5', 2, '36.74.41.68', '3206265308990002', 'Dina Siti Sadiah', 'Kp.taneuh beureum, Desa Sukarapih ,kecamatan Sukarame, kabupaten Tasikmalaya, RT/RW 023/002', 'dinasyahdiah@gmail.com', '087815676182', '2024-06-12 05:11:20', '2024-06-12 05:11:20'),
('d254b9f2-e13b-4716-90ee-51512874b4c3', 2, '36.78.69.232', '3217021805940007', 'Muhammad Fahmi sugiri', 'Dusun cisetra rt 002 RW 001 desa Sukaraja kecamatan cibugel kabupaten sumedang', 'adelianuraini191@gmail.com', '089676216753', '2024-06-12 05:34:32', '2024-06-12 05:34:32'),
('d256a9df-082d-48de-bc3f-b385e225f8a1', 2, '103.116.201.68', '3273221002780001', 'ANDRY WICAKSONO', 'JALAN LOGAM NO 27 RT/RW.002/006 KEL. CIJAWURA KEC. BUAHBATU KOTA BANDUNG', 'andrywicaksono.gundam@gmail.com', '081332700071', '2024-06-12 06:11:19', '2024-06-12 06:11:19'),
('d29f6c15-fcde-4a43-9ac3-66377b20401d', 1, '101.255.168.6', '3275035909820020', 'Nurlailah, S,Pd,I', 'Perum. Sahara Indah Permai RT 13 RW 003 Blok B 36 Kaliabang Tengah Bekasi Utara', 'ellasofyan19@gmail.com', '081398523440', '2024-06-12 05:24:36', '2024-06-12 05:24:36'),
('d3115385-d5bb-4e7c-b85c-b017803d0e38', 2, '114.122.74.125', '3273265508030001', 'SHAILLA KHUZAIMAH AZHAR', 'Jl. sukup lama no. 77 rt.03 rw. 01 kel. cigending kec. ujungberung', 'azharshailla@gmail.com', '081291528782', '2024-06-12 05:31:35', '2024-06-12 05:31:35'),
('d320bd3a-8bce-460f-af43-eafef1c4c6fb', 1, '103.113.49.53', '1271216010010001', 'Devi Sari Octavia Tarigan', 'Jl. Plamboyan, No.47, Medan', 'devitrgn20@gmail.com', '085261597248', '2024-06-12 05:20:35', '2024-06-12 05:20:35'),
('d32fd012-1b45-46d4-bd40-7cc1faa0335a', 1, '125.163.1.22', '3215040510900003', 'ARIF SOFYAN MUNANDAR', 'Kp Kiara Lebe RT 03 RW 04 Desa Pulosari Kecamatan Pangalengan Kab. Bandung Provinsi Jawa Barat', 'ariefsofyan46@gmail.com', '081290270264', '2024-06-12 06:20:05', '2024-06-12 06:20:05'),
('d4bed240-8731-4d14-89d0-4add0e35888e', 1, '160.19.227.86', '3204335907050011', 'Fenna Melinda', 'Kp. Nagrak RT/001 RW/007 desa cikawao kec. Pacet', 'fennamelinda19@gmail.com', '085141273011', '2024-06-12 05:35:36', '2024-06-12 05:35:36'),
('d4e3a550-8cf4-4d1f-bca8-d028f95fcb21', 3, '180.244.138.147', '3217077005970005', 'Lisna Famelawati', 'Kp. Cintalaksana RT01/RW03 Desa Gunungmasigit Kecamatan Cipatat Kabupaten Bandung Barat', 'lisnafamella97@gmail.com', '087727575810', '2024-06-12 05:58:37', '2024-06-12 05:58:37'),
('d5cdfc6d-1b9e-4bef-a52e-a5ed289cbfcc', 2, '116.206.15.63', '3215261603050001', 'RIZQI FADILLAH', 'RAWAGABUS UTARA 002/015, ADIARSA TIMUR, KARAWANG TIMUR, KARAWANG.', 'rizqifadillahfadillah16@gmail.com', '089605361886', '2024-06-12 05:23:49', '2024-06-12 05:23:49'),
('d6caf469-1cd6-47ad-8530-3a4f0506af49', 1, '114.10.75.27', '3273056107950006', 'GINA DINI HADIANTY', 'GG. RA. BARNAS I NO. 267/77 RT.03 RW.06 KELURAHAN DUNGUS CARIANG KECAMATAN ANDIR', 'ginadinihadian@gmail.com', '085872515322', '2024-06-12 06:18:27', '2024-06-12 06:18:27'),
('d734db53-5cf3-4cb4-8f3e-24730ac4eebc', 1, '103.166.90.118', '3216072308060005', 'Panji althaf Mufid', 'PERUM PERMATA TRIAS BLOK B1 NO 24 RT009 RW 026,Kelurahan Wanasari , Kecamatan CIBITUNG', 'ajapanji694@gmail.com', '082114253600', '2024-06-12 06:02:39', '2024-06-12 06:02:39'),
('d7534317-8861-4828-a122-978456b61fd3', 1, '104.28.118.63', '3217116712000008', 'Sifa Rahma Yanti', 'Kp. Sukatengah Rt 002 Rw 005 Des. Batulayang Kec. Cililin Kab. Bandung barat', 'Syifarahmayanti491@gmail.com', '081573325719', '2024-06-12 05:49:12', '2024-06-12 05:49:12'),
('d7fb7b51-f8e7-4c1f-b5a6-ebaae25ca402', 2, '125.164.23.61', '3217104212890014', 'MULIALAIN AZHARI', 'KP.GOMBONG RT 003/ RW 003 DESA BUDIHARJA, KECAMATAN CILILIN, KABUPATEN BANDUNG BARAT', 'mulialainazhari0212@gmail.com', '082113550130', '2024-06-12 05:29:36', '2024-06-12 05:29:36'),
('d8228e9f-93a6-4c87-901c-053de82118a3', 2, '125.164.22.208', '3217066302770009', 'Eka Hayat DAULAT', 'Graha Bukit Raya 1 H1 No 5 RT5 Rw21 Cilame Ngamprah', 'ekadaulat@gmail.com', '082117374442', '2024-06-12 06:12:50', '2024-06-12 06:12:50'),
('d9ed3743-92c3-43e8-9fdd-34f56ec92643', 2, '36.70.107.29', '3214014504000003', 'SANSABILLA ARIFA AZZAHRA', 'Jl. Wijaya Kusumah 1 -41 RT 20 RW 04 Kel. Nagri Tengah Kec. Purwkarta Kab. Purwakarta', 'sansaarifa7@gmail.com', '081882848492', '2024-06-12 05:57:49', '2024-06-12 05:57:49'),
('da7a5d2d-0f6f-4ccd-bfbf-12bffdefdf9f', 1, '114.122.73.154', '3217140809880008', 'Samsul mu\'min', 'Kp.sukajadi RT 01/RW 09,Desa cicangkanggirang,kec Sindangkerta,kab Bandung barat', 'samsulmumin08@gmail.com', '0859109873914', '2024-06-12 05:29:42', '2024-06-12 05:29:42'),
('db03f22b-fcd3-48d0-82fe-b7b3a7f778d5', 2, '180.251.227.128', '3211196607810004', 'DINIKA WILYANI', 'DUSUN KEBON KALAPA RT. 003/005 DESA RANCAMULYA KEC. SUMEDANG UTARA - SUMEDANG', 'dinikawilly@gmail.com', '082319743223', '2024-06-12 05:55:02', '2024-06-12 05:55:02'),
('dc3d7fac-5fb6-4a78-ab9f-51c85ed921d9', 2, '114.124.176.34', '3217066611890006', 'Indah mega wulan', 'Puri indah lestari E9 no 1 batujajar', 'imegawulan@gmail.com', '081312223430', '2024-06-12 05:18:31', '2024-06-12 05:18:31'),
('dc3f4711-ad3d-40eb-a9eb-ee80238761ec', 3, '140.213.6.137', '3275031102800026', 'ANDY LUDIYANTO', 'Jl. Salak Flat II No. 2 Komplek Seroja Bekasi Utara', 'andyludiyanto@gmail.com', '087887431604', '2024-06-12 05:18:31', '2024-06-12 05:18:31'),
('dd248eae-9d2e-446d-8818-851c0a5a5691', 3, '114.5.209.170', '3217071708670014', 'Agus suhendar', 'Kp. Margamulya RT.002 rw.001', 'agussuhendar14067@gmail.com', '083821059680', '2024-06-12 05:20:02', '2024-06-12 05:20:02'),
('de899b95-01be-4c03-ad4f-298939fe0084', 3, '114.122.70.111', '3273154608980004', 'RIMA MAHMUDAH', 'JL. CIGONDEWAH KALER RT 1 RW 12 KEL. CIGONDEWAH KALER KEC. BANDUNG KULON', 'rimamahmudah98@gmail.com', '089656238681', '2024-06-12 05:19:58', '2024-06-12 05:19:58'),
('dee42d52-196d-488e-8169-9e8f0026913d', 2, '140.213.98.116', '3217055801880005', 'Risma Resminingsih', 'Kp.Cikuda RT 01/RW 16 DS.Cipeundeuy kec.cipeundeuy kab.bandung barat', 'risma18resminingsih@gmail.com', '081320412585', '2024-06-12 05:11:34', '2024-06-12 05:11:34'),
('df5baa98-acf2-4b43-837c-59d6d07fd078', 1, '125.164.16.145', '3217042208910003', 'LISMA KANIA AGUSTINA', 'KP. LAPANG RT 01 RW 04 DESA CIKALONG KECAMATAN CIKALONGWETAN KABUPATEN BANDUNG BARAT', 'lismakaniaa@gmail.com', '085762933168', '2024-06-12 05:30:19', '2024-06-12 05:30:19'),
('dfd2a252-3893-436d-910f-7957b3a401e0', 2, '180.244.132.90', '3277015204940005', 'Nazihah Amatullah', 'Jl. Kebon Kopi Gg. Mesjid No. 267 RT/RW 003/009 Kel. Cibeureum Kec. Cimahi Selatan Kota Cimahi', 'nazihahmatullah@gmail.com', '087878545490', '2024-06-12 05:16:26', '2024-06-12 05:16:26'),
('e0f9d4b2-68cb-4aa6-8fd4-f358488864bf', 1, '140.213.18.192', '3278050203830005', 'Fajar Yudha Thamara', 'Jl. Kiara sari permai II No.35 Bandung', 'keep.boyz@gmail.com', '081931173320', '2024-06-12 05:45:58', '2024-06-12 05:45:58'),
('e154d470-cdd7-4f1d-874a-ac043c1f979c', 1, '114.5.212.58', '3277036404690001', 'Sri ruhyati', 'Jln. Kolonel masturi rt 001 rw 014', 'sriruhyati24@gmail.com', '08122424296', '2024-06-12 05:42:37', '2024-06-12 05:42:37'),
('e215c4a9-9ead-4cd9-9ff5-6ff8360d1bdc', 1, '114.124.149.102', '3175101209930007', 'Agus Sopandi', 'Dusun. Sukamulya, Pawenang, Jatinunggal, Sumedang. Rt/Rw 03/09', 'agussopandi2023@gmail.com', '081321455850', '2024-06-12 05:14:54', '2024-06-12 05:14:54'),
('e2b031bb-96c5-4913-ad87-bea5808192bb', 3, '180.244.138.209', '3217042509890002', 'Radix cheftian gunawan', 'Kp. Dangdeur rt 02 rw 09 desa cikalong kec. Cikalongwetan kab bandung barat', 'radixandri7@gmail.com', '082320671330', '2024-06-12 05:19:38', '2024-06-12 05:19:38'),
('e3e26588-30dc-4e5e-9b4c-851d791b2d9c', 1, '203.78.124.69', '3208322312050002', 'DIMAS ANDREYAN', 'Dusun Pon,RT/RW 014/004,Desa Karangmuncang,Kec.Cigandamekar, Kab.Kuningan,Jawa Barat', 'dimasandreyan441@gmail.com', '083101364117', '2024-06-12 06:14:41', '2024-06-12 06:14:41'),
('e410582a-b98d-400c-83ac-a9a5e26049d3', 2, '125.164.20.184', '3217116710940006', 'Siti sarah adawiyah', 'Kp pasir meong rt 01 rw 04 no 39 desa cililin kec. Cililin kab. Bandung Barat', 'sitisarahadawiyah272@gmail.com', '087834474284', '2024-06-12 05:51:40', '2024-06-12 05:51:40'),
('e48c1741-d6ac-4507-b937-05593eb7ad20', 3, '114.122.72.176', '3273266504930007', 'Yosi Mega Apriyani', 'Cijambe Jl. Ajitunggal No.7 Rt 01/06 Kel Pasir Endah Kec Ujungberung Bandung', 'apriyani.yosimega@yahoo.com', '082174345910', '2024-06-12 05:59:08', '2024-06-12 05:59:08'),
('e5f5cd3f-6e20-4461-af70-bb2921f81c0d', 2, '101.255.168.6', '3275026501990009', 'ADINDA RAFIKA', 'JL. JERUK 9 NO. 217 RT. 06 RW. 05 KEL.KRANJI KEC. BEKASI BARAT KOTA BEKASI', 'adindarafika12@gmail.com', '089624021564', '2024-06-12 05:08:30', '2024-06-12 05:08:30'),
('e662ca53-b64a-4179-b3c4-67bee0d86ed1', 3, '140.213.46.207', '3205055508990003', 'Putri Sandy Arini,S.H', 'Kp.negla 02/01 Desa Sindanglaya Kec Karangpawitan', 'psandyarini@gmail.com', '087890798444', '2024-06-12 05:24:12', '2024-06-12 05:24:12'),
('e6c44a33-4a56-42d5-b46c-2ac6f50a4268', 2, '114.5.218.172', '1602230901020002', 'Edo Rahmad Hidayat', 'Jl Padasuka atas No.91', 'edorahmad017@gmail.com', '085759153479', '2024-06-12 06:16:04', '2024-06-12 06:16:04'),
('e7cc69b0-f1c6-4597-bcb2-536cac3c10f9', 3, '125.164.19.9', '3217105705860006', 'FITRI NAJILA', 'KP. KARYABAKTI RT 04/ RW 06 DESA CITAPEN KECAMATAN CIHAMPELAS KABUPATEN BANDUNG BARAT', 'najilafitri@gmail.com', '081313383181', '2024-06-12 05:19:34', '2024-06-12 05:19:34'),
('e7f976aa-e854-46e3-a301-241584de7ee7', 2, '103.229.14.170', '3277016901960017', 'NITA FADLILLAH', 'PESONA BINTANG BATUJAJAR E 04 RT. 004 RW. 005 DESA PANGAUBAN KECAMATAN BATUJAJAR KABUPATEN BANDUNG BARAT', 'nitafadlillah@gmail.com', '0895375508018', '2024-06-12 05:06:50', '2024-06-12 05:06:50'),
('e890b2d1-6b25-4f2e-a50b-5b0a6ce2a716', 2, '103.116.201.68', '3217064310990008', 'DEVA AURELLA MULLER', 'KP.CISALAK Rt.01 Rw.05 Desa Ngamprah Kec.Ngamprah', 'devamuller@gmail.com', '083821945071', '2024-06-12 05:10:22', '2024-06-12 05:10:22'),
('e8a42415-d8a5-4081-89c4-054aa14a25f4', 2, '116.206.14.46', '3672056202930001', 'Bella Chintia', 'Jl. Senam V No.15 Arcamanik', 'bellachintyaf@gmail.com', '089520531280', '2024-06-12 05:47:28', '2024-06-12 05:47:28'),
('ea9fce9e-f587-4a4f-8aa8-c7d28bb16c42', 2, '125.164.21.75', '3217150103990015', 'DIKI NURSAIMAN', 'Kp.jambuhala 001/002\r\nDesa.celak \r\nKec.gununghalu\r\nKab.bandung barat', 'dikcynursaiman@gmail.com', '083842401964', '2024-06-12 06:05:27', '2024-06-12 06:05:27'),
('eae8d4f9-68ca-4e08-a947-c66c70fc69f2', 3, '103.116.201.68', '3201026711980006', 'Sukmawati', 'Kp. Panyusuhan Rt/Rw 001/004 Desa Weninggalih Kec. Sindangkerta Kabupaten Bandung Barat', 'sukmadarsana@gmail.com', '082315375234', '2024-06-12 05:23:21', '2024-06-12 05:23:21'),
('ec61ab74-101d-428d-bcd3-a98b642dc7e2', 3, '125.164.20.13', '3217066808930008', 'Intan ayu soniawati', 'Cluster selaras blok e no 18 rt 06 rw 08 kecamatan ngamprah kabupaten bandung barat', 'iayu683@gmail.com', '087825347528', '2024-06-12 05:26:36', '2024-06-12 05:26:36'),
('ec8dc5c2-cce4-4c44-8a67-90b9e9213e43', 2, '114.5.215.235', '3217070702940001', 'DEDEKOSWARA', 'Kp.parakankopo RT 002/RW006 \r\nDESA.CIPATAT \r\nKECAMATAN.CIPATAT', 'dedekoswara052@gmail.com', '085520761856', '2024-06-12 05:21:58', '2024-06-12 05:21:58'),
('ecd8b5d1-0227-4c46-9f18-3bc39b7ec9c0', 3, '114.122.110.32', '3211037008050002', 'Afifah Dwi Khonsa', 'Dusun Cipeundeuy RT/RW 002/007 Desa Sukaratu Kec. Darmaraja 45372 Kab. Sumedang Prov. Jawa Barat', 'dafifah54@gmail.com', '085523852091', '2024-06-12 05:14:49', '2024-06-12 05:14:49'),
('ed86adba-2b7d-4779-ab60-f6bcd72b941e', 1, '180.244.129.160', '3175010110050003', 'Rafly fahrezi ramadhan', 'UTAN KAYU GG JERUK 1,UTAN KAYU UTARA,MATRAMAN', 'raflyfahrezi01@gmail.com', '089639713108', '2024-06-12 05:09:26', '2024-06-12 05:09:26'),
('edfc4bce-cb57-4fef-9acd-31a51e2b01e9', 1, '114.122.100.35', '3217064211850005', 'NIA ROSNIATI', 'KP. KIARAPAYUNG RT 02 RW 03 DESA. MEKARSARI KECAMATAN NGAMPRAH. KABUPATEN BANDUNG BARAT', 'niarosniati321@gmail.com', '081214423313', '2024-06-12 05:29:03', '2024-06-12 05:29:03'),
('ee420692-2a75-4045-8126-f8cf7b4cc875', 2, '103.247.196.141', '3204057008000009', 'Nabillah Nur Azhar', 'Jalan Cinambo Indah No.34A Kec. Cinambo Kel. Pakemitan Bandung', 'nabillahnurazhar@gmail.com', '085156848654', '2024-06-12 06:05:12', '2024-06-12 06:05:12'),
('ee8ce7b3-33c8-4092-a645-cdf8b2650249', 2, '125.164.19.37', '3217091901960006', 'PUTRA NURAHMAN', 'Blok Pancatengah No 34 RT 02 RW 03 Ds Batujajar Barat Kec Batujajar Kab Bandung Barat', 'putranurahman@gmail.com', '082120472876', '2024-06-12 05:19:51', '2024-06-12 05:19:51'),
('eea76cfd-72d1-4a29-acb0-2633262a103b', 2, '36.74.77.163', '3273052104010011', 'Afrizal Rahman', 'Jl. Jendral Sudirman BLK. No. 824, RT. 05/01, Maleber, Kec. Andir, Kota Bandung', 'afrizallrahmann@gmail.com', '0895379615700', '2024-06-12 05:59:08', '2024-06-12 05:59:08'),
('eebc56d2-bd96-4126-bf8b-9998f3482bb8', 1, '140.213.43.45', '3204441810910002', 'Dodi Sutarya', 'Kp. Ciparingga rt. 2 rw. 14 Ds. Sindang panon Banjaran Kab. Bandung', 'dodis.sutarya@gmail.com', '087715494476', '2024-06-12 05:23:37', '2024-06-12 05:23:37'),
('efdbbdbf-a860-4b60-8c93-c1b08a116212', 2, '202.93.229.62', '3217090311880002', 'JATNIKA YUDHA WIJAYA', 'Jl. abimanyu b-38 pondus desa gadobangkong kecamatan ngamprah', 'jatnikayudha88@gmail.com', '081938275234', '2024-06-12 06:01:15', '2024-06-12 06:01:15'),
('efdbf35f-89ae-425b-be3d-0dfc0e0ba841', 1, '125.164.18.32', '3214062605000002', 'M.FALDI RAHMAT HIDAYAT', 'KP WANGUNSARI RT 04 RW 02 DESA SAWIT KECAMATAN DARANGDAN KABUPATEN PURWAKARTA', 'faldirahmat138@gmail.com', '082128834184', '2024-06-12 05:09:07', '2024-06-12 05:09:07'),
('f03066dd-19ed-4737-afb0-73e530f11a8e', 1, '125.164.16.95', '3217110609720009', 'DENI SUHERMAN', 'KP.SIRNAGALIH RT003 RW16 DESA MUKAPAYUNG CILILIN BANDUNG BARAT', 'denisuherman944@gmail.com', '082315494853', '2024-06-12 05:31:23', '2024-06-12 05:31:23'),
('f07431e5-ec52-45b7-8299-1cedbd4a1c21', 3, '103.165.130.114', '3273281403860001', 'Adi Mulyadi', 'Gg Raden Jibja No.136 Rt 05 RW 02 kel  cicaheum kota Bandung', 'dhi.boxsit@gmail.com', '087833259553', '2024-06-12 05:36:12', '2024-06-12 05:36:12'),
('f0ad0390-3b73-4858-a378-d86c70a6bcdb', 1, '103.148.79.88', '3278025302930010', 'RAHMA FAZRI ALDILA', 'PERUMAHAN PELANGI RESIDENCE BLOK C 12  JALAN LETJEN MASHUDI KELURAHAN KERSANAGARA KECAMATAN CIBEUREUM KOTA TASIKMALAYA', 'aldilarahma2@gmail.com', '081222702258', '2024-06-12 05:14:15', '2024-06-12 05:14:15'),
('f0d8c450-58aa-4328-821c-17d58d480fe8', 2, '103.229.14.170', '3277030407800007', 'Yedi Tri Iriawan', 'Jalan Bina Karya No. 67  RT/RW 05/16 Kelurahan Citeureup, Kecamatan Cimahi Utara', 'yeditrii@gmail.com', '081220145954', '2024-06-12 05:59:00', '2024-06-12 05:59:00'),
('f2740bab-3cdd-43b5-99f3-8a1565bed8b5', 3, '114.142.172.56', '3273110206750007', 'Risky Setiawan', 'Srimahi Dalam II No. 68', 'riskysetiawan2675@gmail.com', '081573304959', '2024-06-12 05:16:12', '2024-06-12 05:16:12'),
('f29e99d9-25a2-49be-ad9c-240e5d6f574a', 3, '114.122.115.90', '3217085407950008', 'INDRI SULISTIANI DEWI', 'Jl. KEBON MANGGU NO.57 RT 001/004 PADASUKA KOTA CIMAHI', 'indrivaldy21@gmail.com', '082112228613', '2024-06-12 05:19:22', '2024-06-12 05:19:22'),
('f2e1566d-b7de-4e9d-a83b-87e779009144', 2, '114.5.218.231', '3271064108970005', 'Tami Muthia Naifah', 'Jl. Pabuaran Pesantren blok F no.8 RT 1, RW 6', 'tamimuthianaifah1@gmail.com', '085711814135', '2024-06-12 05:25:51', '2024-06-12 05:25:51'),
('f384bc08-a381-419a-9e86-ee77a6b7edec', 1, '103.166.226.10', '3217140807940003', 'Sukma suryatman', 'Kp.leuweungdatar\r\nRt/rw 003/013\r\nKel/Desa : cicangkanggirang\r\nKecamatan : sindangkerta\r\nKab : bandungbarat', 'iyenk081294@gmail.com', '0831745057', '2024-06-12 05:56:17', '2024-06-12 05:56:17'),
('f436ee6a-4753-4e0c-adf3-0abbe0cb1743', 1, '103.139.11.157', '3277031511040005', 'Kelvin Kasa Aryanta', 'Jl. Babakan Gg. Sudarma No.9 Rt.002/Rw.009 Kel. Cimahi Kec. Cimahi Tengah Kota Cimahi', 'Kelvinaryanta015@gmail.com', '081511711554', '2024-06-12 05:17:41', '2024-06-12 05:17:41'),
('f4c1aadd-c024-49cb-83e2-ac36efe9c4d0', 3, '36.70.226.127', '3214016609990009', 'Eva Ananda Simanullang', 'Perum Panorama Indah Blok B7 No.3, Kel. Ciseureuh, Kec. Purwakarta, Purwakarta', 'evaanandasima@gmail.com', '0895372466644', '2024-06-12 05:07:45', '2024-06-12 05:07:45'),
('f512b500-c34c-4517-bd7e-bdb1e27ca710', 1, '180.253.253.161', '3277024705880001', 'Tina mardiana', 'kp ciloa no 87 kelurahan cilame kecamatan ngamprah bandung barat', 'tina.alea30@gmail.com', '081573166860', '2024-06-12 05:06:30', '2024-06-12 05:06:30'),
('f53ee069-16f9-40f4-8d8f-12cbec532b2c', 1, '114.122.75.223', '3217086307810006', 'Herlyna', 'Jl. Cipeundeuy No. 59 RT/002 RW/001 Desa Cipeundeuy, Kec. Padalarang Kab. Bandung Barat', 'herlyna1981@gmail.com', '081320921152', '2024-06-12 05:11:27', '2024-06-12 05:11:27'),
('f6f48c1b-dc83-4b8d-a9c7-b5b4e4e0a7de', 1, '103.116.201.68', '3277016005840028', 'Krisnawati', 'Jl. perumnas cijerah II blok 12 no. 82 Rt. 02 Rw. 17', 'ikizbunda@gmail.com', '082127736145', '2024-06-12 05:07:52', '2024-06-12 05:07:52'),
('f7051ab5-be8d-4c36-8019-3759135334cb', 2, '125.164.25.129', '3203050712950007', 'Mochammad Firdaus Maulana Sidik', 'Kp. Calingcing RT 04/07 Desa Sindangjaya Kecamatan Ciranjang Kabupaten Cianjur', 'dausms30@gmail.com', '08970102160', '2024-06-12 05:20:35', '2024-06-12 05:20:35'),
('f7791539-9b57-410f-989b-f4ac9c23838d', 2, '36.69.196.62', '3671034512050002', 'NURSELA HANIFAH AMBARWATI', 'JLN. PATIMURA DUSUN WAMENA KOTA RT/RW03/04 DESA WAMENA KOTA KEC WAMENA KAB JAYAWIJAYA PROVINSI PAPUA PEGUNUNGAN', 'nurselahanifahambarwati@gmail.com', '081511514325', '2024-06-12 05:55:01', '2024-06-12 05:55:01'),
('f976b8cc-4d8c-42ad-a582-b56f5ba28474', 3, '180.244.129.189', '3204145005030002', 'Kelin Fitriani', 'Komplek Warakawuri Rt.06/Rw.10 Kec. Baleendah Kel. Baleendah Kab.. bandung', 'kelinftrianii@gmail.com', '089656512351', '2024-06-12 05:59:17', '2024-06-12 05:59:17'),
('f9ae9087-7c4f-4cdd-94a0-db4ea492ff18', 2, '103.105.33.110', '3217102603860006', 'Deni mulyadin', 'Kp.paratag rt.01/rw.09 desa jambudipa', 'denibison86@gmail.com', '0895344594433', '2024-06-12 05:18:41', '2024-06-12 05:18:41'),
('faf1de7b-ea85-4a32-a5dc-fed77f2353e0', 3, '114.122.107.232', '3217082506860004', 'Wawan sutiawan', 'Kp. Ciluncat rt 01/rw 09 desa cimerang kec . Padalarang kab bandung barat', 'sutiawanwawan380@gmail.com', '082126042133', '2024-06-12 05:20:56', '2024-06-12 05:20:56'),
('faf7bbf5-64f1-4b70-90cb-ddc05fded662', 2, '114.124.205.208', '3175040402950003', 'Lastiko Bramantyo', 'Jalan salak, no. 4, RT 002/RW 012, kelurahan cawang, kecamatan kramatjati, Jakarta timur, 13630', 'ikouwais44@gmail.com', '087878797121', '2024-06-12 06:04:39', '2024-06-12 06:04:39'),
('fb53785e-bca6-4100-b6dc-ce401cf41d10', 3, '36.74.40.45', '3278066403910008', 'Yuniati Anwar, S.Pd', 'Kp. Awipari II RT 001/004 Kel. Awipari Kec. Cibeureum Kota. Tasikmalaya', 'yuniatianwar84@gmail.com', '085223584413', '2024-06-12 05:59:55', '2024-06-12 05:59:55'),
('fb7dee3f-d05b-4d88-b0c2-4a9b739c8875', 2, '114.122.115.202', '7403065410920202', 'Darsin Finaniar', 'Jl Dakota tengah 1 no 7 blok f-43 MGG kel melong kec cimahi selatan kota cimahi', 'finaniarherlambang@gmail.com', '082317322701', '2024-06-12 06:11:01', '2024-06-12 06:11:01'),
('fb86bc96-ef2a-472c-afe1-9c73f1b07864', 3, '36.70.226.127', '3214015908990006', 'Tanti Agustina Sinambela', 'Perumahan Panorama, Purwakarta, Jawa Barat', 'tantiagustinasinambela@gmail.com', '0895360125700', '2024-06-12 05:07:47', '2024-06-12 05:07:47'),
('fb98fc5b-859c-45d8-be4b-50b865cb810e', 1, '180.244.135.48', '3217086212020013', 'DESTY RIZKI RISTIANI AMALIA', 'Jl. Raya Bojong koneng atas Kp. Ciharalang Rt02/01', 'destyrizky02@gmail.com', '081902570323', '2024-06-12 05:09:17', '2024-06-12 05:09:17'),
('fbf9df8e-3a53-4bdb-ac82-005e47458258', 3, '103.139.127.244', '3212156012960002', 'DELIA ANGGITA', 'JL. KI RANCANG RT. 002 RW. 003 KELURAHAN MARGADADI KECAMATAN INDRAMAYU KABUPATEN', 'deliaanggita1996@gmail.com', '089512873606', '2024-06-12 05:11:44', '2024-06-12 05:11:44'),
('fc619dd3-7701-4d0e-97c3-2339bdacf911', 1, '180.253.213.113', '3211066709980002', 'Miantri Dewi Indrawati', 'Dusun Warungketan RT 001/RW 001 Desa Jatimekar Kecamatan Situraja Kabupaten Sumedang Kode Pos 45371', 'miantri.dewi@gmail.com', '082116304622', '2024-06-12 05:13:23', '2024-06-12 05:13:23'),
('fc776eb9-9074-4c2c-af02-6653a727d703', 2, '103.229.14.170', '3204445801910002', 'Nikeu yanuari rustandi', 'Perum sarijadi blok 08 no 45 rt 07 rw 09', 'arkankeysha3@gmail.com', '089699660200', '2024-06-12 05:27:28', '2024-06-12 05:27:28'),
('fcd60bd5-16db-4cc2-94cf-59eaf88fc3b3', 2, '114.5.218.227', '3217056012930005', 'Destiyani', 'Jln. Cipeundeuy rt.002 rw.004 Desa Cipeundeuy, Kec. Cipeundeuy Kab. Bandung Barat', 'Destykinal5@gmail.com', '081911692043', '2024-06-12 05:52:24', '2024-06-12 05:52:24'),
('fd771210-076e-43f6-a75b-352606fd16c7', 1, '125.160.235.121', '3215030104930003', 'Arifsa Muhamad Lukman', 'Dusun Sukadana RT/RW 001/001 Desa Pinayungan Kecamatan Telukjambe Timur Kabupaten Karawang', 'arifsamlukman44@gmail.com', '081213761608', '2024-06-12 05:09:36', '2024-06-12 05:09:36'),
('fe3b3082-db27-4c18-9cd5-8bff3672573f', 3, '125.164.18.124', '3217154411940003', 'nurul azizah agnia', 'cluster pesona pelangi residence no 10 rt 03 rw 10 desa cilame kecamatan ngamprah kab bandung barat', 'nurulazizaaghnia@gmail.com', '082214466875', '2024-06-12 05:11:25', '2024-06-12 05:11:25'),
('fee14cba-e805-4929-a285-79d178ef7ed3', 3, '125.164.17.75', '3277012612010013', 'Ardhika Liandra', 'Cijerah 2 Gg.Pepaya no.90 Rt.05/13 Kel.Melong, Kec. Cimahi Selatan, Kota Cimahi', 'ardikaliandra@gmail.com', '085659444471', '2024-06-12 06:04:14', '2024-06-12 06:04:14'),
('ff855063-e1dc-4adf-8b27-aa6aa9c4c769', 1, '125.164.19.228', '3277031905890002', 'MOCH HARTA AKBAR', 'JL PONDOK MUTIARA I NO 29 RT 001/023', 'moch.harta@gmail.com', '081320100111', '2024-06-12 05:13:23', '2024-06-12 05:13:23'),
('ffefc10a-7940-4107-b838-5dca43a7a99b', 2, '27.131.2.7', '3277012611940011', 'Robby Bilal Susanto', 'Kihapait Barat RT.11/09 KEL.LEUWIGAJAH KEC.CIMAHI SELATAN', 'robbybilals236@gmail.com', '087777788644', '2024-06-12 05:14:14', '2024-06-12 05:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kanreg III BKN Bandung', '2024-06-02 17:28:10', '2024-06-03 19:45:31'),
(2, 'Kantor UPSCKP Serang', '2024-06-02 17:28:10', '2024-06-02 17:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `location_availables`
--

CREATE TABLE `location_availables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_availables`
--

INSERT INTO `location_availables` (`id`, `period_id`, `location_id`, `created_at`, `updated_at`) VALUES
(26, 4, 1, '2024-06-11 10:50:27', '2024-06-11 10:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_02_013544_create_locations_table', 1),
(6, '2024_06_02_013633_create_periods_table', 1),
(7, '2024_06_02_013742_create_schedules_table', 1),
(8, '2024_06_02_014007_create_biodatas_table', 1),
(9, '2024_06_02_065156_create_location_availables_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_periode` varchar(255) NOT NULL,
  `tgl_mulai` datetime NOT NULL DEFAULT current_timestamp(),
  `tgl_selesai` datetime NOT NULL DEFAULT current_timestamp(),
  `tipe_grid` varchar(255) NOT NULL DEFAULT 'vertical',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `nama_periode`, `tgl_mulai`, `tgl_selesai`, `tipe_grid`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Periode Juni 2024', '2024-06-12 12:00:00', '2024-06-18 12:00:00', 'horizontal', 1, '2024-06-02 18:27:08', '2024-06-12 06:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `nama_sesi` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kuota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `period_id`, `location_id`, `nama_sesi`, `tanggal`, `kuota`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Sesi 1', '2024-06-20 09:00:00', 200, '2024-06-11 10:47:44', '2024-06-11 10:47:44'),
(2, 4, 1, 'Sesi 2', '2024-06-20 11:00:00', 200, '2024-06-11 10:48:07', '2024-06-11 10:48:39'),
(3, 4, 1, 'Sesi 3', '2024-06-20 13:00:00', 200, '2024-06-11 10:48:27', '2024-06-11 10:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Kanreg III BKN', 'admin', 'admin@mail.com', NULL, '$2y$12$gkXRdWlihuN/HmF7YRXRI.CZP2cpEVl/zUjHsh49zyG53t5ijq12S', NULL, '2024-06-02 17:28:10', '2024-06-02 17:28:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodatas_schedule_id_foreign` (`schedule_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_availables`
--
ALTER TABLE `location_availables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_availables_period_id_foreign` (`period_id`),
  ADD KEY `location_availables_location_id_foreign` (`location_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_period_id_foreign` (`period_id`),
  ADD KEY `schedules_location_id_foreign` (`location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location_availables`
--
ALTER TABLE `location_availables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD CONSTRAINT `biodatas_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`);

--
-- Constraints for table `location_availables`
--
ALTER TABLE `location_availables`
  ADD CONSTRAINT `location_availables_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `location_availables_period_id_foreign` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `schedules_period_id_foreign` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
