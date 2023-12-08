-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2023 pada 09.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(100) NOT NULL,
  `latar_belakang` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `latar_belakang`, `created_at`, `updated_at`) VALUES
(6, 'SD Negeri 1234567 Sitorus Godang', 'Sekolah Dasar (SD) adalah sebuah lembaga pendidikan yang berfungsi untuk melaksanakan kegiatan belajar mengajar.\r\n                Sekolah Dasar (SD) 175807 merupakan satu-satunya sekolah dasar yang ada di Sitorus Godang, Sigodang Tua, Kecamatan Silaen,\r\n                Kabupaten Toba, Provinsi Sumatera Utara. Sekolah ini merupakan sekolah negeri yang didirikan pada tanggal 01 Januari 1977\r\n                dengan akreditasi B. Luas sekolah sekitar 3.200m2 dengan kondisi jalan yang rusak sehingga menyulitkan akses menuju sekolah.\r\n                Sekolah ini difasilitasi dengan tegangan listrik sebesar 900KwH yang dapat digunakan oleh sekolah untuk keperluan penting seperti\r\n                lampu, internet, stop kontak untuk keperluan elektronik dan lain-lain. Akses internet dapat dilakukan dengan menggunakan data\r\n                seluler (provider IM3) di SD Sitorus Godang.\r\n                Program pengajaran dimulai pukul 08.00 sampai 12.00 dari hari Senin sampai Sabtu, dengan menggunakan kurikulum pendidikan nasional 2013.\r\n                Kepala sekolah adalah Ibu Kasta Nadeak dan terdapat tujuh orang guru dengan satu orang staf administrasi.\r\n                Sekolah ini difasilitasi dengan 6 ruang kelas, satu kantor guru, satu perpustakaan dan satu toilet.\r\n                Adapun jumlah siswa di SD ini tergolong sedikit, hanya 51 siswa dengan 22 siswa laki-laki dan 29 siswa perempuan.\r\n                Siswa di SD ini juga mayoritas beragama Kristen. Siswa di SD ini juga memiliki usia yang ideal untuk ukuran siswa SD,\r\n                hanya ada 3 orang siswa yang berusia di atas 12 tahun.\r\n                Sebagai sekolah dasar yang sudah dibangun lebih dari empat puluh tahun, jumlah siswa di sekolah ini hanya ada 54 siswa atau\r\n                rata-rata hanya ada 9 sampai 10 siswa di setiap kelasnya. Oleh karena itu, dengan penelitian ini kami mencoba untuk membangun\r\n                sistem informasi untuk SD Sitorus Godang, sehingga mereka dapat menggunakannya sebagai alat bantu untuk proses belajar dan mengajar\r\n                menjadi lebih mudah. Sistem informasi ini juga dapat menarik minat lebih banyak orang untuk belajar di SD 175807 Sitorus Godang.', '2023-06-16 09:54:14', '2023-06-16 09:54:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `matapelajaran` varchar(100) DEFAULT NULL,
  `kelas_1` varchar(100) DEFAULT NULL,
  `kelas_2` varchar(100) DEFAULT NULL,
  `kelas_3` varchar(100) DEFAULT NULL,
  `kelas_4` varchar(100) DEFAULT NULL,
  `kelas_5` varchar(100) DEFAULT NULL,
  `kelas_6` varchar(100) DEFAULT NULL,
  `waktu_pelajaran` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tingkat_kelas` varchar(50) DEFAULT NULL,
  `id_matapelajaran` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari`, `matapelajaran`, `kelas_1`, `kelas_2`, `kelas_3`, `kelas_4`, `kelas_5`, `kelas_6`, `waktu_pelajaran`, `created_at`, `updated_at`, `tingkat_kelas`, `id_matapelajaran`, `title`, `start`, `end`) VALUES
(68, 'Senin', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 20:45:08', '2023-06-16 20:45:08', NULL, NULL, NULL, NULL, NULL),
(69, 'Selasa', 'Agama', 'true', NULL, NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 20:45:22', '2023-06-16 20:45:22', NULL, NULL, NULL, NULL, NULL),
(70, 'Rabu', 'Agama', 'true', NULL, NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 20:47:15', '2023-06-16 20:47:15', NULL, NULL, NULL, NULL, NULL),
(71, 'Kamis', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 20:47:26', '2023-06-16 20:47:26', NULL, NULL, NULL, NULL, NULL),
(72, 'Jumat', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 20:47:35', '2023-06-16 20:47:35', NULL, NULL, NULL, NULL, NULL),
(73, 'Sabtu', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 20:47:41', '2023-06-16 20:47:41', NULL, NULL, NULL, NULL, NULL),
(74, 'Selasa', 'Agama', 'true', NULL, NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 20:50:41', '2023-06-16 20:50:57', NULL, NULL, NULL, NULL, NULL),
(75, 'Senin', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 20:50:53', '2023-06-16 20:50:53', NULL, NULL, NULL, NULL, NULL),
(77, 'Kamis', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 20:51:37', '2023-06-16 20:51:37', NULL, NULL, NULL, NULL, NULL),
(78, 'Jumat', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 20:51:54', '2023-06-16 20:51:54', NULL, NULL, NULL, NULL, NULL),
(79, 'Sabtu', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 20:52:15', '2023-06-16 20:52:15', NULL, NULL, NULL, NULL, NULL),
(80, 'Senin', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:00:06', '2023-06-16 21:00:06', NULL, NULL, NULL, NULL, NULL),
(81, 'Selasa', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:00:20', '2023-06-16 21:00:20', NULL, NULL, NULL, NULL, NULL),
(82, 'Rabu', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:00:30', '2023-06-16 21:00:30', NULL, NULL, NULL, NULL, NULL),
(83, 'Kamis', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:00:36', '2023-06-16 21:00:36', NULL, NULL, NULL, NULL, NULL),
(84, 'Jumat', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:00:44', '2023-06-16 21:00:52', NULL, NULL, NULL, NULL, NULL),
(85, 'Sabtu', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:01:02', '2023-06-16 21:01:08', NULL, NULL, NULL, NULL, NULL),
(86, 'Senin', 'ISTIRAHAT', 'true', NULL, NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:02:12', '2023-06-16 21:02:12', NULL, NULL, NULL, NULL, NULL),
(87, 'Selasa', 'ISTIRAHAT', 'true', NULL, NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:02:30', '2023-06-16 21:02:30', NULL, NULL, NULL, NULL, NULL),
(88, 'Rabu', 'ISTIRAHAT', 'true', NULL, NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:02:39', '2023-06-16 21:02:39', NULL, NULL, NULL, NULL, NULL),
(89, 'Kamis', 'ISTIRAHAT', 'true', NULL, NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:02:50', '2023-06-16 21:02:50', NULL, NULL, NULL, NULL, NULL),
(90, 'Jumat', 'ISTIRAHAT', 'true', NULL, NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:02:57', '2023-06-16 21:02:57', NULL, NULL, NULL, NULL, NULL),
(91, 'Sabtu', 'ISTIRAHAT', 'true', NULL, NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:03:04', '2023-06-16 21:03:04', NULL, NULL, NULL, NULL, NULL),
(92, 'Senin', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:03:30', '2023-06-16 21:03:30', NULL, NULL, NULL, NULL, NULL),
(93, 'Selasa', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:03:43', '2023-06-16 21:03:43', NULL, NULL, NULL, NULL, NULL),
(94, 'Rabu', 'Penjas', 'true', NULL, NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:03:52', '2023-06-16 21:03:52', NULL, NULL, NULL, NULL, NULL),
(95, 'Kamis', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:04:10', '2023-06-16 21:04:10', NULL, NULL, NULL, NULL, NULL),
(96, 'Jumat', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:04:20', '2023-06-16 21:04:20', NULL, NULL, NULL, NULL, NULL),
(97, 'Sabtu', 'Penjas', 'true', NULL, NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:04:27', '2023-06-16 21:04:27', NULL, NULL, NULL, NULL, NULL),
(98, 'Senin', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:05:05', '2023-06-16 21:05:05', NULL, NULL, NULL, NULL, NULL),
(99, 'Selasa', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:05:13', '2023-06-16 21:05:13', NULL, NULL, NULL, NULL, NULL),
(100, 'Rabu', 'Penjas', 'true', NULL, NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:05:24', '2023-06-16 21:05:24', NULL, NULL, NULL, NULL, NULL),
(101, 'Kamis', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:05:40', '2023-06-16 21:05:40', NULL, NULL, NULL, NULL, NULL),
(102, 'Jumat', 'Tematik', 'true', NULL, NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:05:48', '2023-06-16 21:06:01', NULL, NULL, NULL, NULL, NULL),
(103, 'Sabtu', 'Penjas', 'true', NULL, NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:05:54', '2023-06-16 21:05:54', NULL, NULL, NULL, NULL, NULL),
(104, 'Senin', 'Agama', NULL, 'true', NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 21:23:53', '2023-06-16 21:23:53', NULL, NULL, NULL, NULL, NULL),
(105, 'Selasa', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 21:23:59', '2023-06-16 21:23:59', NULL, NULL, NULL, NULL, NULL),
(106, 'Rabu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 21:24:13', '2023-06-16 21:24:13', NULL, NULL, NULL, NULL, NULL),
(107, 'Kamis', 'Agama', NULL, 'true', NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 21:24:27', '2023-06-16 21:24:27', NULL, NULL, NULL, NULL, NULL),
(108, 'Jumat', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 21:24:38', '2023-06-16 21:24:38', NULL, NULL, NULL, NULL, NULL),
(109, 'Sabtu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.00-08.35', '2023-06-16 21:24:44', '2023-06-16 21:24:44', NULL, NULL, NULL, NULL, NULL),
(110, 'Senin', 'Agama', NULL, 'true', NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 21:24:55', '2023-06-16 21:25:02', NULL, NULL, NULL, NULL, NULL),
(111, 'Selasa', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 21:25:22', '2023-06-16 21:25:22', NULL, NULL, NULL, NULL, NULL),
(112, 'Rabu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 21:25:38', '2023-06-16 21:25:38', NULL, NULL, NULL, NULL, NULL),
(113, 'Kamis', 'Agama', NULL, 'true', NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 21:25:50', '2023-06-16 21:25:50', NULL, NULL, NULL, NULL, NULL),
(114, 'Jumat', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 21:25:59', '2023-06-16 21:25:59', NULL, NULL, NULL, NULL, NULL),
(115, 'Sabtu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '08.35-09.10', '2023-06-16 21:26:08', '2023-06-16 21:26:08', NULL, NULL, NULL, NULL, NULL),
(116, 'Senin', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:26:17', '2023-06-16 21:26:17', NULL, NULL, NULL, NULL, NULL),
(117, 'Selasa', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:26:51', '2023-06-16 21:26:51', NULL, NULL, NULL, NULL, NULL),
(118, 'Rabu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:27:09', '2023-06-16 21:27:09', NULL, NULL, NULL, NULL, NULL),
(119, 'Kamis', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:27:20', '2023-06-16 21:27:20', NULL, NULL, NULL, NULL, NULL),
(120, 'Jumat', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:27:27', '2023-06-16 21:27:27', NULL, NULL, NULL, NULL, NULL),
(121, 'Sabtu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '09.10-10.45', '2023-06-16 21:27:41', '2023-06-16 21:27:46', NULL, NULL, NULL, NULL, NULL),
(122, 'Senin', 'ISTIRAHAT', NULL, 'true', NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:27:57', '2023-06-16 21:27:57', NULL, NULL, NULL, NULL, NULL),
(123, 'Selasa', 'ISTIRAHAT', NULL, 'true', NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:28:05', '2023-06-16 21:28:05', NULL, NULL, NULL, NULL, NULL),
(124, 'Rabu', 'ISTIRAHAT', NULL, 'true', NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:28:11', '2023-06-16 21:28:11', NULL, NULL, NULL, NULL, NULL),
(125, 'Kamis', 'ISTIRAHAT', NULL, 'true', NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:28:20', '2023-06-16 21:28:20', NULL, NULL, NULL, NULL, NULL),
(126, 'Jumat', 'ISTIRAHAT', NULL, 'true', NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:28:27', '2023-06-16 21:28:27', NULL, NULL, NULL, NULL, NULL),
(127, 'Sabtu', 'ISTIRAHAT', NULL, 'true', NULL, NULL, NULL, NULL, '09.45-10.15', '2023-06-16 21:28:40', '2023-06-16 21:28:40', NULL, NULL, NULL, NULL, NULL),
(128, 'Senin', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:29:09', '2023-06-16 21:29:09', NULL, NULL, NULL, NULL, NULL),
(129, 'Selasa', 'Penjas', NULL, 'true', NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:29:22', '2023-06-16 21:29:27', NULL, NULL, NULL, NULL, NULL),
(130, 'Rabu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:29:38', '2023-06-16 21:29:38', NULL, NULL, NULL, NULL, NULL),
(131, 'Kamis', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:29:55', '2023-06-16 21:29:55', NULL, NULL, NULL, NULL, NULL),
(132, 'Jumat', 'Penjas', NULL, 'true', NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:30:08', '2023-06-16 21:30:08', NULL, NULL, NULL, NULL, NULL),
(133, 'Sabtu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.15-10.50', '2023-06-16 21:30:17', '2023-06-16 21:30:17', NULL, NULL, NULL, NULL, NULL),
(134, 'Senin', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:30:35', '2023-06-16 21:30:35', NULL, NULL, NULL, NULL, NULL),
(135, 'Selasa', 'Penjas', NULL, 'true', NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:30:49', '2023-06-16 21:30:49', NULL, NULL, NULL, NULL, NULL),
(136, 'Rabu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:31:09', '2023-06-16 21:31:09', NULL, NULL, NULL, NULL, NULL),
(137, 'Kamis', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:33:09', '2023-06-16 21:33:09', NULL, NULL, NULL, NULL, NULL),
(138, 'Jumat', 'Penjas', NULL, 'true', NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:33:27', '2023-06-16 21:33:27', NULL, NULL, NULL, NULL, NULL),
(139, 'Sabtu', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:33:35', '2023-06-16 21:33:35', NULL, NULL, NULL, NULL, NULL),
(140, 'Senin', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '11.25-12.00', '2023-06-16 21:35:32', '2023-06-16 21:35:32', NULL, NULL, NULL, NULL, NULL),
(141, 'Selasa', 'Tematik', NULL, 'true', NULL, NULL, NULL, NULL, '10.50-11.25', '2023-06-16 21:35:44', '2023-06-16 21:35:44', NULL, NULL, NULL, NULL, NULL),
(144, 'Senin', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.00-08.35', '2023-06-18 18:26:25', '2023-06-18 18:26:25', NULL, NULL, NULL, NULL, NULL),
(145, 'Selasa', 'Matematika', NULL, NULL, 'true', NULL, NULL, NULL, '08.00-08.35', '2023-06-18 18:26:51', '2023-06-18 18:26:51', NULL, NULL, NULL, NULL, NULL),
(146, 'Rabu', 'Matematika', NULL, NULL, 'true', NULL, NULL, NULL, '08.00-08.35', '2023-06-18 18:27:00', '2023-06-18 18:27:00', NULL, NULL, NULL, NULL, NULL),
(147, 'Kamis', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.00-08.35', '2023-06-18 18:27:07', '2023-06-18 18:27:07', NULL, NULL, NULL, NULL, NULL),
(148, 'Jumat', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.00-08.35', '2023-06-18 18:27:13', '2023-06-18 18:27:13', NULL, NULL, NULL, NULL, NULL),
(149, 'Sabtu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.00-08.35', '2023-06-18 18:27:26', '2023-06-18 18:27:26', NULL, NULL, NULL, NULL, NULL),
(150, 'Senin', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.35-09.10', '2023-06-18 18:28:02', '2023-06-18 18:28:02', NULL, NULL, NULL, NULL, NULL),
(151, 'Selasa', 'Matematika', NULL, NULL, 'true', NULL, NULL, NULL, '08.35-09.10', '2023-06-18 18:28:08', '2023-06-18 18:28:08', NULL, NULL, NULL, NULL, NULL),
(152, 'Rabu', 'Matematika', NULL, NULL, 'true', NULL, NULL, NULL, '08.35-09.10', '2023-06-18 18:28:16', '2023-06-18 18:28:16', NULL, NULL, NULL, NULL, NULL),
(153, 'Kamis', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.35-09.10', '2023-06-18 18:28:25', '2023-06-18 18:28:25', NULL, NULL, NULL, NULL, NULL),
(154, 'Jumat', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.35-09.10', '2023-06-18 18:28:38', '2023-06-18 18:28:38', NULL, NULL, NULL, NULL, NULL),
(155, 'Sabtu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '08.35-09.10', '2023-06-18 18:28:51', '2023-06-18 18:28:51', NULL, NULL, NULL, NULL, NULL),
(156, 'Senin', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '09.10-10.45', '2023-06-18 18:29:01', '2023-06-18 18:29:01', NULL, NULL, NULL, NULL, NULL),
(157, 'Selasa', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '09.10-10.45', '2023-06-18 18:29:10', '2023-06-18 18:29:10', NULL, NULL, NULL, NULL, NULL),
(158, 'Rabu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '09.10-10.45', '2023-06-18 18:29:16', '2023-06-18 18:29:16', NULL, NULL, NULL, NULL, NULL),
(159, 'Kamis', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '09.10-10.45', '2023-06-18 18:29:24', '2023-06-18 18:29:24', NULL, NULL, NULL, NULL, NULL),
(160, 'Jumat', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '09.10-10.45', '2023-06-18 18:29:38', '2023-06-18 18:29:38', NULL, NULL, NULL, NULL, NULL),
(161, 'Sabtu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '09.10-10.45', '2023-06-18 18:29:45', '2023-06-18 18:29:45', NULL, NULL, NULL, NULL, NULL),
(162, 'Senin', 'ISTIRAHAT', NULL, NULL, 'true', NULL, NULL, NULL, '09.45-10.15', '2023-06-18 18:32:03', '2023-06-18 18:32:03', NULL, NULL, NULL, NULL, NULL),
(163, 'Selasa', 'ISTIRAHAT', NULL, NULL, 'true', NULL, NULL, NULL, '09.45-10.15', '2023-06-18 18:32:13', '2023-06-18 18:32:13', NULL, NULL, NULL, NULL, NULL),
(164, 'Rabu', 'ISTIRAHAT', NULL, NULL, 'true', NULL, NULL, NULL, '09.45-10.15', '2023-06-18 18:33:11', '2023-06-18 18:33:11', NULL, NULL, NULL, NULL, NULL),
(165, 'Kamis', 'ISTIRAHAT', NULL, NULL, 'true', NULL, NULL, NULL, '09.45-10.15', '2023-06-18 18:33:18', '2023-06-18 18:33:18', NULL, NULL, NULL, NULL, NULL),
(166, 'Jumat', 'ISTIRAHAT', NULL, NULL, 'true', NULL, NULL, NULL, '09.45-10.15', '2023-06-18 18:33:26', '2023-06-18 18:33:26', NULL, NULL, NULL, NULL, NULL),
(167, 'Sabtu', 'ISTIRAHAT', NULL, NULL, 'true', NULL, NULL, NULL, '09.45-10.15', '2023-06-18 18:33:33', '2023-06-18 18:33:33', NULL, NULL, NULL, NULL, NULL),
(168, 'Senin', 'Matematika', NULL, NULL, 'true', NULL, NULL, NULL, '10.15-10.50', '2023-06-18 18:34:00', '2023-06-18 18:34:00', NULL, NULL, NULL, NULL, NULL),
(169, 'Selasa', 'Penjaskes', NULL, NULL, 'true', NULL, NULL, NULL, '10.15-10.50', '2023-06-18 18:34:08', '2023-06-18 18:34:16', NULL, NULL, NULL, NULL, NULL),
(170, 'Rabu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '10.15-10.50', '2023-06-18 18:34:27', '2023-06-18 18:34:27', NULL, NULL, NULL, NULL, NULL),
(171, 'Kamis', 'Agama', NULL, NULL, 'true', NULL, NULL, NULL, '10.15-10.50', '2023-06-18 18:34:40', '2023-06-18 18:34:40', NULL, NULL, NULL, NULL, NULL),
(172, 'Jumat', 'Penjaskes', NULL, NULL, 'true', NULL, NULL, NULL, '10.15-10.50', '2023-06-18 18:34:58', '2023-06-18 18:34:58', NULL, NULL, NULL, NULL, NULL),
(173, 'Sabtu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '10.15-10.50', '2023-06-18 18:35:12', '2023-06-18 18:35:12', NULL, NULL, NULL, NULL, NULL),
(174, 'Senin', 'Matematika', NULL, NULL, 'true', NULL, NULL, NULL, '10.50-11.25', '2023-06-18 18:35:59', '2023-06-18 18:35:59', NULL, NULL, NULL, NULL, NULL),
(175, 'Selasa', 'Penjaskes', NULL, NULL, 'true', NULL, NULL, NULL, '10.50-11.25', '2023-06-18 18:36:07', '2023-06-18 18:36:07', NULL, NULL, NULL, NULL, NULL),
(176, 'Rabu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '10.50-11.25', '2023-06-18 18:36:28', '2023-06-18 18:36:28', NULL, NULL, NULL, NULL, NULL),
(177, 'Kamis', 'Agama', NULL, NULL, 'true', NULL, NULL, NULL, '10.50-11.25', '2023-06-18 18:36:39', '2023-06-18 18:36:39', NULL, NULL, NULL, NULL, NULL),
(178, 'Jumat', 'Penjaskes', NULL, NULL, 'true', NULL, NULL, NULL, '10.50-11.25', '2023-06-18 18:37:34', '2023-06-18 18:37:34', NULL, NULL, NULL, NULL, NULL),
(179, 'Sabtu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '10.50-11.25', '2023-06-18 18:37:47', '2023-06-18 18:37:47', NULL, NULL, NULL, NULL, NULL),
(180, 'Senin', 'Agama', NULL, NULL, 'true', NULL, NULL, NULL, '11.25-12.00', '2023-06-18 18:37:57', '2023-06-18 18:37:57', NULL, NULL, NULL, NULL, NULL),
(181, 'Selasa', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '11.25-12.00', '2023-06-18 18:38:09', '2023-06-18 18:38:09', NULL, NULL, NULL, NULL, NULL),
(182, 'Rabu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '11.25-12.00', '2023-06-18 18:38:15', '2023-06-18 18:38:15', NULL, NULL, NULL, NULL, NULL),
(183, 'Kamis', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '11.25-12.00', '2023-06-18 18:38:24', '2023-06-18 18:38:30', NULL, NULL, NULL, NULL, NULL),
(184, 'Jumat', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '11.25-12.00', '2023-06-18 18:38:50', '2023-06-18 18:38:50', NULL, NULL, NULL, NULL, NULL),
(185, 'Senin', 'Agama', NULL, NULL, 'true', NULL, NULL, NULL, '12.00-12.35', '2023-06-18 18:39:04', '2023-06-18 18:39:04', NULL, NULL, NULL, NULL, NULL),
(186, 'Selasa', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '12.00-12.35', '2023-06-18 18:39:14', '2023-06-18 18:39:14', NULL, NULL, NULL, NULL, NULL),
(187, 'Rabu', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '12.00-12.35', '2023-06-18 18:39:22', '2023-06-18 18:39:22', NULL, NULL, NULL, NULL, NULL),
(188, 'Kamis', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '12.00-12.35', '2023-06-18 18:39:31', '2023-06-18 18:39:31', NULL, NULL, NULL, NULL, NULL),
(189, 'Jumat', 'Tematik', NULL, NULL, 'true', NULL, NULL, NULL, '12.00-12.35', '2023-06-18 18:39:50', '2023-06-18 18:39:50', NULL, NULL, NULL, NULL, NULL),
(190, 'Senin', 'Matematika', NULL, NULL, NULL, 'true', NULL, NULL, '08.00-08.35', '2023-06-18 18:57:04', '2023-06-18 18:57:04', NULL, NULL, NULL, NULL, NULL),
(191, 'Selasa', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.00-08.35', '2023-06-18 18:57:13', '2023-06-18 18:57:13', NULL, NULL, NULL, NULL, NULL),
(192, 'Rabu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.00-08.35', '2023-06-18 18:57:21', '2023-06-18 18:57:21', NULL, NULL, NULL, NULL, NULL),
(193, 'Kamis', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.00-08.35', '2023-06-18 18:57:30', '2023-06-18 18:57:30', NULL, NULL, NULL, NULL, NULL),
(194, 'Jumat', 'Agama', NULL, NULL, NULL, 'true', NULL, NULL, '08.00-08.35', '2023-06-18 18:57:40', '2023-06-18 18:57:40', NULL, NULL, NULL, NULL, NULL),
(195, 'Sabtu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.00-08.35', '2023-06-18 18:57:49', '2023-06-18 18:57:49', NULL, NULL, NULL, NULL, NULL),
(196, 'Senin', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.35-09.10', '2023-06-18 18:57:58', '2023-06-18 18:57:58', NULL, NULL, NULL, NULL, NULL),
(197, 'Selasa', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.35-09.10', '2023-06-18 18:58:07', '2023-06-18 18:58:07', NULL, NULL, NULL, NULL, NULL),
(198, 'Rabu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.35-09.10', '2023-06-18 18:58:18', '2023-06-18 18:58:18', NULL, NULL, NULL, NULL, NULL),
(199, 'Kamis', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.35-09.10', '2023-06-18 18:58:31', '2023-06-18 18:58:31', NULL, NULL, NULL, NULL, NULL),
(200, 'Jumat', 'Agama', NULL, NULL, NULL, 'true', NULL, NULL, '08.35-09.10', '2023-06-18 18:58:48', '2023-06-18 18:58:48', NULL, NULL, NULL, NULL, NULL),
(201, 'Sabtu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '08.35-09.10', '2023-06-18 18:59:31', '2023-06-18 18:59:31', NULL, NULL, NULL, NULL, NULL),
(202, 'Senin', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '09.10-10.45', '2023-06-18 19:00:19', '2023-06-18 19:00:19', NULL, NULL, NULL, NULL, NULL),
(203, 'Selasa', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '09.10-10.45', '2023-06-18 19:00:26', '2023-06-18 19:00:26', NULL, NULL, NULL, NULL, NULL),
(204, 'Rabu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '09.10-10.45', '2023-06-18 19:00:31', '2023-06-18 19:00:31', NULL, NULL, NULL, NULL, NULL),
(205, 'Kamis', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '09.10-10.45', '2023-06-18 19:00:37', '2023-06-18 19:00:37', NULL, NULL, NULL, NULL, NULL),
(206, 'Jumat', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '09.10-10.45', '2023-06-18 19:00:45', '2023-06-18 19:00:45', NULL, NULL, NULL, NULL, NULL),
(207, 'Sabtu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '09.10-10.45', '2023-06-18 19:00:53', '2023-06-18 19:00:53', NULL, NULL, NULL, NULL, NULL),
(208, 'Senin', 'ISTIRAHAT', NULL, NULL, NULL, 'true', NULL, NULL, '09.45-10.15', '2023-06-18 19:01:47', '2023-06-18 19:01:47', NULL, NULL, NULL, NULL, NULL),
(209, 'Selasa', 'ISTIRAHAT', NULL, NULL, NULL, 'true', NULL, NULL, '09.45-10.15', '2023-06-18 19:01:53', '2023-06-18 19:01:53', NULL, NULL, NULL, NULL, NULL),
(210, 'Rabu', 'ISTIRAHAT', NULL, NULL, NULL, 'true', NULL, NULL, '09.45-10.15', '2023-06-18 19:02:10', '2023-06-18 19:02:10', NULL, NULL, NULL, NULL, NULL),
(211, 'Kamis', 'ISTIRAHAT', NULL, NULL, NULL, 'true', NULL, NULL, '09.45-10.15', '2023-06-18 19:02:19', '2023-06-18 19:02:19', NULL, NULL, NULL, NULL, NULL),
(212, 'Jumat', 'ISTIRAHAT', NULL, NULL, NULL, 'true', NULL, NULL, '09.45-10.15', '2023-06-18 19:02:29', '2023-06-18 19:02:29', NULL, NULL, NULL, NULL, NULL),
(213, 'Sabtu', 'ISTIRAHAT', NULL, NULL, NULL, 'true', NULL, NULL, '09.45-10.15', '2023-06-18 19:03:10', '2023-06-18 19:03:10', NULL, NULL, NULL, NULL, NULL),
(214, 'Senin', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.15-10.50', '2023-06-18 19:03:23', '2023-06-18 19:03:23', NULL, NULL, NULL, NULL, NULL),
(215, 'Selasa', 'Agama', NULL, NULL, NULL, 'true', NULL, NULL, '10.15-10.50', '2023-06-18 19:03:30', '2023-06-18 19:03:30', NULL, NULL, NULL, NULL, NULL),
(216, 'Rabu', 'Matematika', NULL, NULL, NULL, 'true', NULL, NULL, '10.15-10.50', '2023-06-18 19:03:49', '2023-06-18 19:03:49', NULL, NULL, NULL, NULL, NULL),
(217, 'Kamis', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.15-10.50', '2023-06-18 19:04:12', '2023-06-18 19:04:12', NULL, NULL, NULL, NULL, NULL),
(218, 'Jumat', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.15-10.50', '2023-06-18 19:04:18', '2023-06-18 19:04:18', NULL, NULL, NULL, NULL, NULL),
(219, 'Sabtu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.15-10.50', '2023-06-18 19:04:25', '2023-06-18 19:04:25', NULL, NULL, NULL, NULL, NULL),
(220, 'Senin', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.50-11.25', '2023-06-18 19:04:59', '2023-06-18 19:04:59', NULL, NULL, NULL, NULL, NULL),
(221, 'Selasa', 'Agama', NULL, NULL, NULL, 'true', NULL, NULL, '10.50-11.25', '2023-06-18 19:05:07', '2023-06-18 19:05:07', NULL, NULL, NULL, NULL, NULL),
(222, 'Rabu', 'Matematika', NULL, NULL, NULL, 'true', NULL, NULL, '10.50-11.25', '2023-06-18 19:06:29', '2023-06-18 19:06:29', NULL, NULL, NULL, NULL, NULL),
(223, 'Kamis', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.50-11.25', '2023-06-18 19:06:42', '2023-06-18 19:06:42', NULL, NULL, NULL, NULL, NULL),
(224, 'Jumat', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.50-11.25', '2023-06-18 19:07:42', '2023-06-18 19:07:42', NULL, NULL, NULL, NULL, NULL),
(225, 'Sabtu', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '10.50-11.25', '2023-06-18 19:07:50', '2023-06-18 19:07:50', NULL, NULL, NULL, NULL, NULL),
(226, 'Senin', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '11.25-12.00', '2023-06-18 19:08:08', '2023-06-18 19:08:08', NULL, NULL, NULL, NULL, NULL),
(227, 'Selasa', 'Matematika', NULL, NULL, NULL, 'true', NULL, NULL, '11.25-12.00', '2023-06-18 19:08:16', '2023-06-18 19:08:16', NULL, NULL, NULL, NULL, NULL),
(228, 'Rabu', 'Penjas', NULL, NULL, NULL, 'true', NULL, NULL, '11.25-12.00', '2023-06-18 19:08:29', '2023-06-18 19:08:29', NULL, NULL, NULL, NULL, NULL),
(229, 'Kamis', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '11.25-12.00', '2023-06-18 19:08:42', '2023-06-18 19:08:42', NULL, NULL, NULL, NULL, NULL),
(230, 'Jumat', 'Penjas', NULL, NULL, NULL, 'true', NULL, NULL, '11.25-12.00', '2023-06-18 19:08:49', '2023-06-18 19:08:49', NULL, NULL, NULL, NULL, NULL),
(231, 'Senin', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '12.00-12.35', '2023-06-18 19:09:01', '2023-06-18 19:09:01', NULL, NULL, NULL, NULL, NULL),
(232, 'Selasa', 'Matematika', NULL, NULL, NULL, 'true', NULL, NULL, '12.00-12.35', '2023-06-18 19:09:13', '2023-06-18 19:09:13', NULL, NULL, NULL, NULL, NULL),
(233, 'Rabu', 'Penjas', NULL, NULL, NULL, 'true', NULL, NULL, '12.00-12.35', '2023-06-18 19:09:24', '2023-06-18 19:09:24', NULL, NULL, NULL, NULL, NULL),
(234, 'Kamis', 'Tematik', NULL, NULL, NULL, 'true', NULL, NULL, '12.00-12.35', '2023-06-18 19:10:16', '2023-06-18 19:10:16', NULL, NULL, NULL, NULL, NULL),
(235, 'Jumat', 'Penjas', NULL, NULL, NULL, 'true', NULL, NULL, '12.00-12.35', '2023-06-18 19:10:27', '2023-06-18 19:10:27', NULL, NULL, NULL, NULL, NULL),
(236, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.00-08.35', '2023-06-18 19:13:44', '2023-06-18 19:13:44', NULL, NULL, NULL, NULL, NULL),
(237, 'Selasa', 'Matematika', NULL, NULL, NULL, NULL, 'true', NULL, '08.00-08.35', '2023-06-18 19:13:51', '2023-06-18 19:13:51', NULL, NULL, NULL, NULL, NULL),
(238, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.00-08.35', '2023-06-18 19:13:58', '2023-06-18 19:13:58', NULL, NULL, NULL, NULL, NULL),
(239, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.00-08.35', '2023-06-18 19:14:04', '2023-06-18 19:14:04', NULL, NULL, NULL, NULL, NULL),
(240, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.00-08.35', '2023-06-18 19:14:31', '2023-06-18 19:14:31', NULL, NULL, NULL, NULL, NULL),
(241, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.00-08.35', '2023-06-18 19:14:39', '2023-06-18 19:14:39', NULL, NULL, NULL, NULL, NULL),
(242, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.35-09.10', '2023-06-18 19:14:50', '2023-06-18 19:14:50', NULL, NULL, NULL, NULL, NULL),
(243, 'Selasa', 'Matematika', NULL, NULL, NULL, NULL, 'true', NULL, '08.35-09.10', '2023-06-18 19:14:57', '2023-06-18 19:14:57', NULL, NULL, NULL, NULL, NULL),
(244, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.35-09.10', '2023-06-18 19:15:03', '2023-06-18 19:15:03', NULL, NULL, NULL, NULL, NULL),
(245, 'Kamis', 'Matematika', NULL, NULL, NULL, NULL, 'true', NULL, '08.35-09.10', '2023-06-18 19:15:10', '2023-06-18 19:15:10', NULL, NULL, NULL, NULL, NULL),
(246, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.35-09.10', '2023-06-18 19:15:18', '2023-06-18 19:15:18', NULL, NULL, NULL, NULL, NULL),
(247, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '08.35-09.10', '2023-06-18 19:15:26', '2023-06-18 19:15:26', NULL, NULL, NULL, NULL, NULL),
(248, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '09.10-10.45', '2023-06-18 19:15:37', '2023-06-18 19:15:37', NULL, NULL, NULL, NULL, NULL),
(249, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '09.10-10.45', '2023-06-18 19:15:48', '2023-06-18 19:15:48', NULL, NULL, NULL, NULL, NULL),
(250, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '09.10-10.45', '2023-06-18 19:15:55', '2023-06-18 19:15:55', NULL, NULL, NULL, NULL, NULL),
(251, 'Kamis', 'Matematika', NULL, NULL, NULL, NULL, 'true', NULL, '09.10-10.45', '2023-06-18 19:16:05', '2023-06-18 19:16:05', NULL, NULL, NULL, NULL, NULL),
(252, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '09.10-10.45', '2023-06-18 19:16:21', '2023-06-18 19:16:21', NULL, NULL, NULL, NULL, NULL),
(253, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '09.10-10.45', '2023-06-18 19:16:29', '2023-06-18 19:16:29', NULL, NULL, NULL, NULL, NULL),
(254, 'Senin', 'ISTIRAHAT', NULL, NULL, NULL, NULL, 'true', NULL, '09.45-10.15', '2023-06-18 19:16:42', '2023-06-18 19:16:49', NULL, NULL, NULL, NULL, NULL),
(255, 'Selasa', 'ISTIRAHAT', NULL, NULL, NULL, NULL, 'true', NULL, '09.45-10.15', '2023-06-18 19:17:29', '2023-06-18 19:17:29', NULL, NULL, NULL, NULL, NULL),
(256, 'Rabu', 'ISTIRAHAT', NULL, NULL, NULL, NULL, 'true', NULL, '09.45-10.15', '2023-06-18 19:18:22', '2023-06-18 19:18:31', NULL, NULL, NULL, NULL, NULL),
(257, 'Kamis', 'ISTIRAHAT', NULL, NULL, NULL, NULL, 'true', NULL, '09.45-10.15', '2023-06-18 19:18:39', '2023-06-18 19:18:39', NULL, NULL, NULL, NULL, NULL),
(258, 'Jumat', 'ISTIRAHAT', NULL, NULL, NULL, NULL, 'true', NULL, '09.45-10.15', '2023-06-18 19:18:46', '2023-06-18 19:18:46', NULL, NULL, NULL, NULL, NULL),
(259, 'Sabtu', 'ISTIRAHAT', NULL, NULL, NULL, NULL, 'true', NULL, '09.45-10.15', '2023-06-18 19:18:53', '2023-06-18 19:18:58', NULL, NULL, NULL, NULL, NULL),
(260, 'Senin', 'Matematika', NULL, NULL, NULL, NULL, 'true', NULL, '10.15-10.50', '2023-06-18 19:19:11', '2023-06-18 19:19:11', NULL, NULL, NULL, NULL, NULL),
(261, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.15-10.50', '2023-06-18 19:19:20', '2023-06-18 19:19:20', NULL, NULL, NULL, NULL, NULL),
(262, 'Rabu', 'Agama', NULL, NULL, NULL, NULL, 'true', NULL, '10.15-10.50', '2023-06-18 19:19:31', '2023-06-18 19:19:31', NULL, NULL, NULL, NULL, NULL),
(263, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.15-10.50', '2023-06-18 19:19:45', '2023-06-18 19:19:53', NULL, NULL, NULL, NULL, NULL),
(264, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.15-10.50', '2023-06-18 19:20:02', '2023-06-18 19:20:02', NULL, NULL, NULL, NULL, NULL),
(265, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.15-10.50', '2023-06-18 19:20:15', '2023-06-18 19:20:15', NULL, NULL, NULL, NULL, NULL),
(266, 'Senin', 'Matematika', NULL, NULL, NULL, NULL, 'true', NULL, '10.50-11.25', '2023-06-18 19:20:25', '2023-06-18 19:20:25', NULL, NULL, NULL, NULL, NULL),
(267, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.50-11.25', '2023-06-18 19:20:32', '2023-06-18 19:20:32', NULL, NULL, NULL, NULL, NULL),
(268, 'Rabu', 'Agama', NULL, NULL, NULL, NULL, 'true', NULL, '10.50-11.25', '2023-06-18 19:20:42', '2023-06-18 19:20:42', NULL, NULL, NULL, NULL, NULL),
(269, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.50-11.25', '2023-06-18 19:21:00', '2023-06-18 19:22:04', NULL, NULL, NULL, NULL, NULL),
(270, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.50-11.25', '2023-06-18 19:21:15', '2023-06-18 19:21:45', NULL, NULL, NULL, NULL, NULL),
(271, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '10.50-11.25', '2023-06-18 19:21:31', '2023-06-18 19:21:51', NULL, NULL, NULL, NULL, NULL),
(272, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '11.25-12.00', '2023-06-18 19:22:35', '2023-06-18 19:22:35', NULL, NULL, NULL, NULL, NULL),
(273, 'Selasa', 'Penjas', NULL, NULL, NULL, NULL, 'true', NULL, '11.25-12.00', '2023-06-18 19:22:43', '2023-06-18 19:22:43', NULL, NULL, NULL, NULL, NULL),
(274, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '11.25-12.00', '2023-06-18 19:22:55', '2023-06-18 19:22:55', NULL, NULL, NULL, NULL, NULL),
(275, 'Kamis', 'Penjas', NULL, NULL, NULL, NULL, 'true', NULL, '11.25-12.00', '2023-06-18 19:23:06', '2023-06-18 19:23:06', NULL, NULL, NULL, NULL, NULL),
(276, 'Jumat', 'Agama', NULL, NULL, NULL, NULL, 'true', NULL, '11.25-12.00', '2023-06-18 19:23:23', '2023-06-18 19:23:23', NULL, NULL, NULL, NULL, NULL),
(277, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '12.00-12.35', '2023-06-18 19:26:25', '2023-06-18 19:26:25', NULL, NULL, NULL, NULL, NULL),
(278, 'Selasa', 'Penjas', NULL, NULL, NULL, NULL, 'true', NULL, '12.00-12.35', '2023-06-18 19:26:31', '2023-06-18 19:26:31', NULL, NULL, NULL, NULL, NULL),
(279, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, 'true', NULL, '12.00-12.35', '2023-06-18 19:26:37', '2023-06-18 19:26:37', NULL, NULL, NULL, NULL, NULL),
(280, 'Kamis', 'Penjas', NULL, NULL, NULL, NULL, 'true', NULL, '12.00-12.35', '2023-06-18 19:26:44', '2023-06-18 19:26:44', NULL, NULL, NULL, NULL, NULL),
(281, 'Jumat', 'Agama', NULL, NULL, NULL, NULL, 'true', NULL, '12.00-12.35', '2023-06-18 19:26:52', '2023-06-18 19:26:52', NULL, NULL, NULL, NULL, NULL),
(282, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '08.00-08.35', '2023-06-18 19:32:55', '2023-06-18 19:32:55', NULL, NULL, NULL, NULL, NULL),
(283, 'Selasa', 'Matematika', NULL, NULL, NULL, NULL, NULL, 'true', '08.00-08.35', '2023-06-18 19:33:06', '2023-06-18 19:33:06', NULL, NULL, NULL, NULL, NULL),
(284, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '08.00-08.35', '2023-06-18 19:33:17', '2023-06-18 19:33:17', NULL, NULL, NULL, NULL, NULL),
(285, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '08.00-08.35', '2023-06-18 19:33:23', '2023-06-18 19:33:23', NULL, NULL, NULL, NULL, NULL),
(286, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '08.00-08.35', '2023-06-18 19:33:29', '2023-06-18 19:33:29', NULL, NULL, NULL, NULL, NULL),
(287, 'Sabtu', 'Agama', NULL, NULL, NULL, NULL, NULL, 'true', '08.00-08.35', '2023-06-18 19:33:38', '2023-06-18 19:33:38', NULL, NULL, NULL, NULL, NULL),
(288, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '08.35-09.10', '2023-06-18 19:34:02', '2023-06-18 19:34:02', NULL, NULL, NULL, NULL, NULL),
(289, 'Selasa', 'Matematika', NULL, NULL, NULL, NULL, NULL, 'true', '08.35-09.10', '2023-06-18 19:34:09', '2023-06-18 19:34:09', NULL, NULL, NULL, NULL, NULL),
(290, 'Rabu', 'Matematika', NULL, NULL, NULL, NULL, NULL, 'true', '08.35-09.10', '2023-06-18 19:34:17', '2023-06-18 19:34:17', NULL, NULL, NULL, NULL, NULL),
(291, 'Kamis', 'Penjas', NULL, NULL, NULL, NULL, NULL, 'true', '08.35-09.10', '2023-06-18 19:34:29', '2023-06-18 19:34:29', NULL, NULL, NULL, NULL, NULL),
(292, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '08.35-09.10', '2023-06-18 19:34:38', '2023-06-18 19:34:38', NULL, NULL, NULL, NULL, NULL),
(293, 'Sabtu', 'Agama', NULL, NULL, NULL, NULL, NULL, 'true', '08.35-09.10', '2023-06-18 19:34:49', '2023-06-18 19:34:49', NULL, NULL, NULL, NULL, NULL),
(294, 'Senin', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '09.10-10.45', '2023-06-18 19:35:36', '2023-06-18 19:35:36', NULL, NULL, NULL, NULL, NULL),
(295, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '09.10-10.45', '2023-06-18 19:35:47', '2023-06-18 19:35:47', NULL, NULL, NULL, NULL, NULL),
(296, 'Rabu', 'Matematika', NULL, NULL, NULL, NULL, NULL, 'true', '09.10-10.45', '2023-06-18 19:35:56', '2023-06-18 19:35:56', NULL, NULL, NULL, NULL, NULL),
(297, 'Kamis', 'Penjas', NULL, NULL, NULL, NULL, NULL, 'true', '09.10-10.45', '2023-06-18 19:36:03', '2023-06-18 19:36:03', NULL, NULL, NULL, NULL, NULL),
(298, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '09.10-10.45', '2023-06-18 19:36:19', '2023-06-18 19:36:19', NULL, NULL, NULL, NULL, NULL),
(299, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '09.10-10.45', '2023-06-18 19:36:27', '2023-06-18 19:36:27', NULL, NULL, NULL, NULL, NULL),
(300, 'Senin', 'ISTIRAHAT', NULL, NULL, NULL, NULL, NULL, 'true', '09.45-10.15', '2023-06-18 19:37:49', '2023-06-18 19:37:49', NULL, NULL, NULL, NULL, NULL),
(301, 'Selasa', 'ISTIRAHAT', NULL, NULL, NULL, NULL, NULL, 'true', '09.45-10.15', '2023-06-18 19:38:02', '2023-06-18 19:38:02', NULL, NULL, NULL, NULL, NULL),
(302, 'Rabu', 'ISTIRAHAT', NULL, NULL, NULL, NULL, NULL, 'true', '09.45-10.15', '2023-06-18 19:38:10', '2023-06-18 19:38:10', NULL, NULL, NULL, NULL, NULL),
(303, 'Kamis', 'ISTIRAHAT', NULL, NULL, NULL, NULL, NULL, 'true', '09.45-10.15', '2023-06-18 19:38:35', '2023-06-18 19:38:40', NULL, NULL, NULL, NULL, NULL),
(304, 'Jumat', 'ISTIRAHAT', NULL, NULL, NULL, NULL, NULL, 'true', '09.45-10.15', '2023-06-18 19:38:49', '2023-06-18 19:38:49', NULL, NULL, NULL, NULL, NULL),
(305, 'Sabtu', 'ISTIRAHAT', NULL, NULL, NULL, NULL, NULL, 'true', '09.45-10.15', '2023-06-18 19:38:55', '2023-06-18 19:38:55', NULL, NULL, NULL, NULL, NULL),
(306, 'Senin', 'Agama', NULL, NULL, NULL, NULL, NULL, 'true', '10.15-10.50', '2023-06-18 19:39:16', '2023-06-18 19:39:16', NULL, NULL, NULL, NULL, NULL),
(307, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '10.15-10.50', '2023-06-18 19:39:25', '2023-06-18 19:39:25', NULL, NULL, NULL, NULL, NULL),
(308, 'Rabu', 'Bahasa Inggris', NULL, NULL, NULL, NULL, NULL, 'true', '10.15-10.50', '2023-06-18 19:39:37', '2023-06-18 19:39:37', NULL, NULL, NULL, NULL, NULL),
(309, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '10.15-10.50', '2023-06-18 19:39:52', '2023-06-18 19:40:34', NULL, NULL, NULL, NULL, NULL),
(310, 'Jumat', 'Matematika', NULL, NULL, NULL, NULL, NULL, 'true', '10.15-10.50', '2023-06-18 19:40:05', '2023-06-18 19:40:39', NULL, NULL, NULL, NULL, NULL),
(311, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '10.15-10.50', '2023-06-18 19:40:51', '2023-06-18 19:40:51', NULL, NULL, NULL, NULL, NULL),
(312, 'Senin', 'Agama', NULL, NULL, NULL, NULL, NULL, 'true', '10.50-11.25', '2023-06-18 19:41:02', '2023-06-18 19:41:07', NULL, NULL, NULL, NULL, NULL),
(313, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '10.50-11.25', '2023-06-18 19:42:29', '2023-06-18 19:42:29', NULL, NULL, NULL, NULL, NULL),
(314, 'Rabu', 'Bahasa Inggris', NULL, NULL, NULL, NULL, NULL, 'true', '10.50-11.25', '2023-06-18 19:42:36', '2023-06-18 19:42:36', NULL, NULL, NULL, NULL, NULL),
(315, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '10.50-11.25', '2023-06-18 19:42:50', '2023-06-18 19:42:50', NULL, NULL, NULL, NULL, NULL),
(316, 'Jumat', 'Matematika', NULL, NULL, NULL, NULL, NULL, 'true', '10.50-11.25', '2023-06-18 19:42:57', '2023-06-18 19:42:57', NULL, NULL, NULL, NULL, NULL),
(317, 'Sabtu', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '10.50-11.25', '2023-06-18 19:43:04', '2023-06-18 19:43:04', NULL, NULL, NULL, NULL, NULL),
(318, 'Senin', 'Penjas', NULL, NULL, NULL, NULL, NULL, 'true', '11.25-12.00', '2023-06-18 19:43:16', '2023-06-18 19:43:16', NULL, NULL, NULL, NULL, NULL),
(319, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '11.25-12.00', '2023-06-18 19:43:28', '2023-06-18 19:43:28', NULL, NULL, NULL, NULL, NULL),
(320, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '11.25-12.00', '2023-06-18 19:43:48', '2023-06-18 19:43:48', NULL, NULL, NULL, NULL, NULL),
(321, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '11.25-12.00', '2023-06-18 19:43:57', '2023-06-18 19:43:57', NULL, NULL, NULL, NULL, NULL),
(322, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '11.25-12.00', '2023-06-18 19:44:19', '2023-06-18 19:44:19', NULL, NULL, NULL, NULL, NULL),
(323, 'Senin', 'Penjas', NULL, NULL, NULL, NULL, NULL, 'true', '12.00-12.35', '2023-06-18 19:44:28', '2023-06-18 19:44:28', NULL, NULL, NULL, NULL, NULL),
(324, 'Selasa', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '12.00-12.35', '2023-06-18 19:44:38', '2023-06-18 19:44:38', NULL, NULL, NULL, NULL, NULL),
(325, 'Rabu', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '12.00-12.35', '2023-06-18 19:44:45', '2023-06-18 19:44:45', NULL, NULL, NULL, NULL, NULL),
(326, 'Kamis', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '12.00-12.35', '2023-06-18 19:44:52', '2023-06-18 19:44:52', NULL, NULL, NULL, NULL, NULL),
(327, 'Jumat', 'Tematik', NULL, NULL, NULL, NULL, NULL, 'true', '12.00-12.35', '2023-06-18 19:45:00', '2023-06-18 19:45:00', NULL, NULL, NULL, NULL, NULL),
(329, 'Rabu', 'Agama', 'true', NULL, NULL, NULL, NULL, NULL, '08.35-09.10', '2023-11-01 23:43:53', '2023-11-01 23:43:53', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalmapels`
--

CREATE TABLE `jadwalmapels` (
  `username` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `last_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `nama_wali` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tingkat_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` bigint(20) NOT NULL,
  `tingkat_kelas` varchar(200) NOT NULL,
  `nama_matapelajaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `tingkat_kelas`, `nama_matapelajaran`, `created_at`, `updated_at`) VALUES
(1, 'Kelas 1', 'Tematik', '2023-05-24 23:52:08', '2023-06-16 20:43:38'),
(2, 'Kelas 2', 'Tematik', '2023-05-25 02:17:49', '2023-06-16 21:22:23'),
(3, 'Kelas 3', 'Matematika', '2023-05-25 02:19:31', '2023-05-25 06:31:17'),
(4, 'Kelas 2', 'Agama', '2023-06-09 08:20:42', '2023-06-16 21:22:37'),
(5, 'Kelas 6', 'Matematika', '2023-06-09 08:21:02', '2023-06-18 19:30:22'),
(6, 'Kelas 6', 'Tematik', '2023-06-11 18:35:26', '2023-06-18 19:30:33'),
(7, 'Kelas 1', 'Agama', '2023-06-11 18:35:39', '2023-06-16 20:43:44'),
(8, 'Kelas 4', 'Tematik', '2023-06-11 21:00:09', '2023-06-18 18:53:52'),
(9, 'Kelas 4', 'Matematika', '2023-06-11 21:00:34', '2023-06-18 18:55:20'),
(10, 'Kelas 5', 'Matematika', '2023-06-11 21:00:43', '2023-06-18 19:11:50'),
(11, 'Kelas 5', 'Tematik', '2023-06-11 21:00:52', '2023-06-18 19:12:16'),
(12, 'Kelas 1', 'Penjas', '2023-06-16 05:35:06', '2023-06-16 20:43:53'),
(13, 'Kelas 1', 'ISTIRAHAT', '2023-06-16 20:44:07', '2023-06-16 20:44:07'),
(14, 'Kelas 2', 'Penjas', '2023-06-16 21:22:44', '2023-06-16 21:22:44'),
(15, 'Kelas 2', 'ISTIRAHAT', '2023-06-16 21:22:55', '2023-06-16 21:22:55'),
(16, 'Kelas 3', 'Tematik', '2023-06-18 18:25:23', '2023-06-18 18:25:23'),
(17, 'Kelas 3', 'Penjaskes', '2023-06-18 18:25:37', '2023-06-18 18:25:37'),
(18, 'Kelas 3', 'Agama', '2023-06-18 18:25:48', '2023-06-18 18:25:48'),
(19, 'Kelas 3', 'ISTIRAHAT', '2023-06-18 18:26:41', '2023-06-18 18:26:41'),
(20, 'Kelas 4', 'Agama', '2023-06-18 18:55:36', '2023-06-18 18:55:36'),
(21, 'Kelas 4', 'Penjas', '2023-06-18 18:56:11', '2023-06-18 18:56:11'),
(22, 'Kelas 4', 'ISTIRAHAT', '2023-06-18 18:56:21', '2023-06-18 18:56:21'),
(23, 'Kelas 5', 'Agama', '2023-06-18 19:12:28', '2023-06-18 19:12:28'),
(24, 'Kelas 5', 'Penjas', '2023-06-18 19:12:36', '2023-06-18 19:12:36'),
(25, 'Kelas 5', 'ISTIRAHAT', '2023-06-18 19:12:50', '2023-06-18 19:12:50'),
(26, 'Kelas 6', 'Penjas', '2023-06-18 19:30:42', '2023-06-18 19:30:42'),
(27, 'Kelas 6', 'Agama', '2023-06-18 19:30:58', '2023-06-18 19:30:58'),
(28, 'Kelas 6', 'Bahasa Inggris', '2023-06-18 19:31:08', '2023-06-18 19:31:08'),
(29, 'Kelas 6', 'ISTIRAHAT', '2023-06-18 19:31:16', '2023-06-18 19:31:16'),
(31, 'Kelas 1', 'Bahasa Jerman', '2023-06-20 21:28:44', '2023-06-20 21:28:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_materi` varchar(255) DEFAULT NULL,
  `tematik` varchar(100) DEFAULT NULL,
  `english` varchar(100) DEFAULT NULL,
  `mtk` varchar(100) DEFAULT NULL,
  `penjas` varchar(100) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `silabus` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id`, `nama_materi`, `tematik`, `english`, `mtk`, `penjas`, `file`, `kelas`, `silabus`, `created_at`, `updated_at`, `agama`) VALUES
(24, 'agama pasti bisa', NULL, NULL, NULL, NULL, '11321050_FrayogiSitorus.docx', 'Kelas 2', 'Agama', '2023-06-28 05:46:17', '2023-06-28 05:46:17', 'true'),
(25, 'Mulai', NULL, NULL, NULL, NULL, 'PPT_2023_PA2_03.pptx', 'Kelas 3', 'Agama', '2023-08-30 21:06:20', '2023-08-30 21:06:37', 'true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi_users`
--

CREATE TABLE `materi_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_materi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_materi` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_23_014301_create_roles_table', 1),
(6, '2023_05_23_022547_create_pengumuman_table', 1),
(7, '2023_05_23_022804_create_role_has_permissions_table', 1),
(8, '2023_05_23_022910_create_permissions_table', 1),
(9, '2023_05_23_023011_create_absen_table', 1),
(10, '2023_05_23_023128_create_nilai_table', 1),
(11, '2023_05_23_023504_create_mata_pelajaran_table', 1),
(12, '2023_05_23_023910_create_materi_table', 1),
(13, '2023_05_23_024224_create_materi_users_table', 1),
(14, '2023_05_23_024536_create_informasi_table', 1),
(15, '2023_05_23_024716_create_kelas_table', 1),
(16, '2023_05_23_025616_create_jadwal_table', 1),
(17, '2023_05_11_132826_create__struktur_table', 2),
(18, '2023_05_24_035619_add_role_to_users_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_mapel` bigint(20) UNSIGNED DEFAULT NULL,
  `tingkat_kelas` varchar(50) DEFAULT NULL,
  `kelas_1` varchar(100) DEFAULT NULL,
  `kelas_2` varchar(100) DEFAULT NULL,
  `kelas_3` varchar(100) DEFAULT NULL,
  `kelas_4` varchar(100) DEFAULT NULL,
  `kelas_5` varchar(100) DEFAULT NULL,
  `kelas_6` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tugas` varchar(100) NOT NULL,
  `ujian` varchar(100) NOT NULL,
  `kkm` varchar(100) NOT NULL,
  `uts` varchar(100) NOT NULL,
  `uas` varchar(100) NOT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `jumlah_nilai` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `id_mapel`, `tingkat_kelas`, `kelas_1`, `kelas_2`, `kelas_3`, `kelas_4`, `kelas_5`, `kelas_6`, `kelas`, `username`, `tugas`, `ujian`, `kkm`, `uts`, `uas`, `grade`, `jumlah_nilai`, `created_at`, `updated_at`, `id_user`) VALUES
(20, NULL, NULL, NULL, NULL, 'true', NULL, NULL, NULL, 'Kelas 3', 'Lulu Arta Sihombing', '100', '100', '100', '100', '100', NULL, '100', '2023-06-11 21:30:49', '2023-06-11 21:47:57', NULL),
(21, NULL, NULL, NULL, NULL, NULL, 'true', NULL, NULL, 'Kelas 4', 'Lastri Sitorus', '100', '100', '100', '100', '100', NULL, '100', '2023-06-11 21:31:04', '2023-06-11 21:47:43', NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, 'true', NULL, 'Kelas 5', 'Relani Kristiani Sianipar', '100', '100', '100', '100', '100', NULL, '100', '2023-06-11 21:31:19', '2023-06-11 21:47:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `deskripsi` varchar(5000) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `deskripsi`, `judul`, `file`, `created_at`, `updated_at`) VALUES
(1, 'Makan Nasi menggunakan Saus Tiram', 'Makan Siang', 'Laporan_Pasti_03.docx', '2023-06-08 23:11:01', '2023-06-08 23:18:01'),
(2, 'Dear All Mahasiswa.\r\n\r\nKami himbau kembali kepada mahasiswa sekalian yang masih berada di kampus IT Del, terkait dengan jam keluar - masuk kampus dan/ataupun peraturan dan ketentuan lainnya TIDAK ADA PERUBAHAN baik selama jam akademik dan jam kolaboratif malam yang sudah di tetapkan seperti hari akademik biasanya ataupun hari weekend dan libur nasional. Kami memohon kepada mahasiswa sekalian agar tetap memperhatikan, mematuhi, dan disiplin terhadap aturan yang sudah di tentukan tersebut.\r\n\r\nMahasiswa yang masih berada di kampus pada umumnya sedang memiliki kegiatan akademik dalam persiapan Proyek Akhir, Tugas Akhir, Persiapan Kompetisi atau kegiatan akademik lainnya. Sehingga tidak ada perubahan ketentuan atau peraturan di asrama maupun di lingkungan kampus (kecuali sistem makan di kantin secara prasmanan seperti yang telah diinformasikan dari unit Keasramaan).\r\n\r\nDemikian kami sampaikan, terima kasih dan salam.\r\n\r\nLembaga Kemahasiswaan\r\n\r\nSitoluama, 2023-06-06 19:42:23\r\nttd\r\nLowis Gref Jefry O. Siregar, S.T', '[Kemahasiswaan] Himbauan Kepada Mahasiswa yang Masih berada di Kampus', 'Laporan_Pasti_03.docx', '2023-06-08 23:31:08', '2023-06-09 05:49:53'),
(3, 'Perpustakaan Ternama Pada Sumatera Utara', 'Layanan Pojok Statistik (BPS Toba) di Perpustakaan IT Del', 'Laporan_Pasti_03.docx', '2023-06-11 21:11:25', '2023-06-11 21:11:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `guard_nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipe_role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur`
--

CREATE TABLE `struktur` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `struktur`
--

INSERT INTO `struktur` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(5, 'struktur.JPG', '2023-06-16 09:54:27', '2023-06-16 09:54:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tpt_lahir` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(191) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nisn`, `nip`, `username`, `kelas`, `jenis_kelamin`, `tgl_lahir`, `tpt_lahir`, `jabatan`, `agama`, `alamat`, `no_telepon`, `password`, `foto`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(15, NULL, '198007012014082003', 'Duma Pangaribuan, S.Pd', NULL, 'Perempuan', '1980-07-01', 'Silaen', 'Guru', 'Islam', 'KOMPLEK SD Negeri 175807 Sitorus Godang', '081256161130', '$2y$10$Yf6ytHs1JoYQP44EHDGLL.Q4vvkRG49Ju.zFXVal6LZzB5jL7uMRS', 'duma.jpg', NULL, '2023-05-24 01:17:33', '2023-06-11 18:32:16', 'admin'),
(17, '3151999840', '3151999840', 'David Partogi Sitorus', 'Kelas 2', 'Laki-Laki', '2015-04-13', 'Sitorus Godang', NULL, 'Protestan', 'Sitorus Godang', '085280183350', '$2y$10$PSwC5lOY9/rwxePT0CoKAO2QEVGx0NZn7ZcwVy5ThkdKIlUHrrFKe', 'david.jpg', NULL, '2023-05-24 02:06:47', '2023-06-11 18:33:40', 'user'),
(19, NULL, '198007012014082003', 'Murni Sihombing', NULL, 'Perempuan', '1969-07-28', 'Silaen', 'Kepala Sekolah', 'Protestan', 'Simpang Tiga', '081269786905', '$2y$10$vVaa/TIYHvdJkSi/gaNl7.UX5Dq1Intsp8VtatrMs9r20ASJ5YWkG', 'murni.jpg', NULL, '2023-05-24 06:20:43', '2023-06-13 01:01:20', 'admin'),
(27, NULL, '198902072019032004', 'Elisa Manurung, S.Pd', NULL, 'Perempuan', '2023-06-07', 'Afd. XII Bah JAmbi', 'Guru', 'Protestan', 'Sitorus Godang', '123456789012', '$2y$10$2n4.kkXJdskFBzXYal/HsO/15Rb4ZOWWsRtMQ4M6Yrv6CWNYMaPIS', 'Elisa.jpg', NULL, '2023-06-06 18:16:15', '2023-06-06 18:16:15', 'admin'),
(28, '0114720085', '0114720085', 'Relani Kristiani Sianipar', 'Kelas 5', 'Perempuan', '2011-11-24', 'Sianipar', NULL, 'Protestan', 'Sianipar', '123456789012', '$2y$10$L.7o0RvznfJTgXJDl8AX/uMlgYXmlzpjN6BRmhrSOHHU.LHrhqRgy', 'Relani.jpg', NULL, '2023-06-06 18:21:37', '2023-06-08 21:07:25', 'user'),
(29, '0121640101', '0121640101', 'Lastri Sitorus', 'Kelas 4', 'Perempuan', '2012-12-31', 'Sitorus Godang', NULL, 'Protestan', 'Lumban Langge Sitorus Godang', '123456789012', '$2y$10$6CsPH/W/tO9QFgCAg/pXzeCP71MyGVm6gy7TzoJNc2fTvZ39KFN72', 'Lastri.jpg', NULL, '2023-06-06 18:28:10', '2023-06-08 21:07:15', 'user'),
(30, '3137136706', '3137136706', 'Lulu Arta Sihombing', 'Kelas 3', 'Perempuan', '2013-11-13', 'Sitorus Godang', NULL, 'Protestan', 'JL. Kampung Baru, Sitorus Godang , Kec.Silaen Kab.Tob', '123456789012', '$2y$10$LmE5fr/Tj5Zpvl/C/oOiRePebsC4/rPE3IZQVynixSJB6gJ/tNCme', 'Lulu.jpg', NULL, '2023-06-06 18:32:23', '2023-06-08 21:07:00', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_tingkat_kelas_foreign` (`tingkat_kelas`),
  ADD KEY `jadwal_id_matapelajaran_foreign` (`id_matapelajaran`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`tingkat_kelas`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materi_users`
--
ALTER TABLE `materi_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_users_id_user_foreign` (`id_user`),
  ADD KEY `materi_users_id_materi_foreign` (`id_materi`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_id_user_foreign` (`id_user`),
  ADD KEY `id-mapel` (`id_mapel`),
  ADD KEY `tingkat_kelas` (`tingkat_kelas`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `materi_users`
--
ALTER TABLE `materi_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`tingkat_kelas`) REFERENCES `kelas` (`tingkat_kelas`);

--
-- Ketidakleluasaan untuk tabel `materi_users`
--
ALTER TABLE `materi_users`
  ADD CONSTRAINT `materi_users_id_materi_foreign` FOREIGN KEY (`id_materi`) REFERENCES `materi` (`id`),
  ADD CONSTRAINT `materi_users_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`tingkat_kelas`) REFERENCES `kelas` (`tingkat_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
