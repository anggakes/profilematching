-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Apr 2015 pada 13.05
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `profilematching`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai_gap`
--

CREATE TABLE IF NOT EXISTS `bobot_nilai_gap` (
`id` int(10) unsigned NOT NULL,
  `selisih` int(11) NOT NULL,
  `bobot` double(8,2) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `bobot_nilai_gap`
--

INSERT INTO `bobot_nilai_gap` (`id`, `selisih`, `bobot`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 0, 6.00, 'Kompetensi sesuai dengan yang dibutuhkan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 5.50, 'Kompetensi Individu Kelebihan 1 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, -1, 5.00, 'Kompetensi Individu Kekurangan 1 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 4.50, 'Kompetensi Individu Kelebihan 2 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, -2, 4.00, 'Kompetensi Individu Kekurangan 2 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 3, 3.50, 'Kompetensi Individu Kelebihan 3 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, -3, 3.00, 'Kompetensi Individu Kekurangan 3 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 4, 2.50, 'Kompetensi Individu Kelebihan 4 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, -4, 2.00, 'Kompetensi Individu Kekurangan 4 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 5, 1.50, 'Kompetensi Individu Kelebihan 5 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, -5, 1.00, 'Kompetensi Individu Kekurangan 5 tingkat/level', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai_jabatan_ki`
--

CREATE TABLE IF NOT EXISTS `bobot_nilai_jabatan_ki` (
`id` int(10) unsigned NOT NULL,
  `id_lowongan` int(10) unsigned NOT NULL,
  `ki1` int(10) unsigned NOT NULL,
  `ki2` int(10) unsigned NOT NULL,
  `ki3` int(10) unsigned NOT NULL,
  `ki4` int(10) unsigned NOT NULL,
  `ki5` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `bobot_nilai_jabatan_ki`
--

INSERT INTO `bobot_nilai_jabatan_ki` (`id`, `id_lowongan`, `ki1`, `ki2`, `ki3`, `ki4`, `ki5`, `created_at`, `updated_at`) VALUES
(4, 6, 1, 2, 3, 4, 1, '2015-04-17 04:10:05', '2015-04-17 04:15:03'),
(5, 7, 3, 2, 3, 4, 1, '2015-04-17 06:13:04', '2015-04-17 06:13:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai_jabatan_kp`
--

CREATE TABLE IF NOT EXISTS `bobot_nilai_jabatan_kp` (
`id` int(10) unsigned NOT NULL,
  `id_lowongan` int(10) unsigned NOT NULL,
  `kp1` int(10) unsigned NOT NULL,
  `kp2` int(10) unsigned NOT NULL,
  `kp3` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `bobot_nilai_jabatan_kp`
--

INSERT INTO `bobot_nilai_jabatan_kp` (`id`, `id_lowongan`, `kp1`, `kp2`, `kp3`, `created_at`, `updated_at`) VALUES
(4, 6, 2, 1, 3, '2015-04-17 04:10:05', '2015-04-17 04:15:03'),
(5, 7, 2, 1, 3, '2015-04-17 06:13:04', '2015-04-17 06:13:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai_jabatan_kt`
--

CREATE TABLE IF NOT EXISTS `bobot_nilai_jabatan_kt` (
`id` int(10) unsigned NOT NULL,
  `id_lowongan` int(10) unsigned NOT NULL,
  `kt1` int(10) unsigned NOT NULL,
  `kt2` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `bobot_nilai_jabatan_kt`
--

INSERT INTO `bobot_nilai_jabatan_kt` (`id`, `id_lowongan`, `kt1`, `kt2`, `created_at`, `updated_at`) VALUES
(4, 6, 3, 4, '2015-04-17 04:10:05', '2015-04-17 04:15:03'),
(5, 7, 3, 4, '2015-04-17 06:13:04', '2015-04-17 06:13:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE IF NOT EXISTS `divisi` (
`id` int(10) unsigned NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(1, 'TEKNIK'),
(2, 'DALI/LOGAT'),
(3, 'KEUANGAN'),
(4, 'SDM&UMUM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
`id` int(10) unsigned NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`) VALUES
(4, 'Manager Pemasaran'),
(5, 'Kepala Keuangan'),
(6, 'Kepala Wilayah'),
(7, 'Manager Produksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_divisi`
--

CREATE TABLE IF NOT EXISTS `jabatan_divisi` (
`id` int(10) unsigned NOT NULL,
  `id_divisi` int(10) unsigned NOT NULL,
  `id_jabatan` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `jabatan_divisi`
--

INSERT INTO `jabatan_divisi` (`id`, `id_divisi`, `id_jabatan`) VALUES
(8, 3, 5),
(9, 1, 6),
(10, 2, 6),
(11, 3, 6),
(12, 4, 6),
(13, 1, 4),
(14, 3, 4),
(15, 4, 4),
(16, 1, 7),
(17, 2, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
`id` int(10) unsigned NOT NULL,
  `nik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik`, `nama`, `agama`, `alamat`, `created_at`, `updated_at`) VALUES
(20, '81223', '1001', 'khatolik', 'akjsdasjkhd', '2015-04-17 06:21:28', '2015-04-17 06:21:28'),
(21, '7823473', 'uiuwiwue', 'islam', 'qwheqiuw', '2015-04-17 06:24:20', '2015-04-17 06:24:20'),
(22, '7612635162475', '1003', 'islam', 'sdad', '2015-04-17 06:35:01', '2015-04-17 06:35:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE IF NOT EXISTS `lowongan` (
`id` int(10) unsigned NOT NULL,
  `id_jabatan` int(10) unsigned NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id`, `id_jabatan`, `kode`, `created_at`, `updated_at`) VALUES
(6, 6, 'MP-15', '2015-04-17 04:10:05', '2015-04-17 04:15:03'),
(7, 7, 'MP-2015', '2015-04-17 06:13:04', '2015-04-17 06:13:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lulus_syarat`
--

CREATE TABLE IF NOT EXISTS `lulus_syarat` (
`id` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `id_lowongan` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=116 ;

--
-- Dumping data untuk tabel `lulus_syarat`
--

INSERT INTO `lulus_syarat` (`id`, `id_karyawan`, `id_lowongan`, `created_at`, `updated_at`) VALUES
(111, 20, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 21, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 20, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 21, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 22, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_21_112149_create_table_lowongan', 1),
('2015_03_21_114252_create_table_karyawan', 1),
('2015_03_21_122340_create_table_profil_syarat_jabatan', 1),
('2015_03_21_122542_create_table_bobot_nilai_jabatan_ki', 1),
('2015_03_21_122758_create_table_bobot_nilai_jabatan_kt', 1),
('2015_03_21_122924_create_table_bobot_nilai_jabatan_kp', 1),
('2015_03_21_214919_create_table_nilai_kp_karyawan', 1),
('2015_03_21_215902_create_table_nilai_kt_karyawan', 1),
('2015_03_21_220050_create_table_nilai_ki_karyawan', 1),
('2015_03_21_220358_create_table_profil_syarat_karyawan', 1),
('2015_03_21_220659_create_table_lulus_syarat', 1),
('2015_03_21_220929_create_table_profil_matching', 1),
('2015_03_21_221604_create_table_bobot_gap_kp', 1),
('2015_03_21_221808_create_table_bobot_gap_ki', 1),
('2015_03_21_221953_create_table_bobot_gap_kt', 1),
('2015_04_03_125047_create_status_nilai_gap_table', 1),
('2015_04_03_125542_create_bobot_nilai_gap_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_ki_karyawan`
--

CREATE TABLE IF NOT EXISTS `nilai_ki_karyawan` (
`id` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `ki1` int(10) unsigned NOT NULL,
  `ki2` int(10) unsigned NOT NULL,
  `ki3` int(10) unsigned NOT NULL,
  `ki4` int(10) unsigned NOT NULL,
  `ki5` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `nilai_ki_karyawan`
--

INSERT INTO `nilai_ki_karyawan` (`id`, `id_karyawan`, `ki1`, `ki2`, `ki3`, `ki4`, `ki5`, `created_at`, `updated_at`) VALUES
(10, 20, 2, 3, 2, 3, 2, '2015-04-17 08:37:24', '2015-04-17 08:37:24'),
(11, 21, 2, 3, 4, 3, 2, '2015-04-17 08:43:16', '2015-04-17 08:43:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kp_karyawan`
--

CREATE TABLE IF NOT EXISTS `nilai_kp_karyawan` (
`id` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `kp1` int(10) unsigned NOT NULL,
  `kp2` int(10) unsigned NOT NULL,
  `kp3` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `nilai_kp_karyawan`
--

INSERT INTO `nilai_kp_karyawan` (`id`, `id_karyawan`, `kp1`, `kp2`, `kp3`, `created_at`, `updated_at`) VALUES
(10, 20, 1, 2, 1, '2015-04-17 08:37:24', '2015-04-17 08:37:24'),
(11, 21, 3, 4, 3, '2015-04-17 08:43:16', '2015-04-17 08:43:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kt_karyawan`
--

CREATE TABLE IF NOT EXISTS `nilai_kt_karyawan` (
`id` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `kt1` int(10) unsigned NOT NULL,
  `kt2` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `nilai_kt_karyawan`
--

INSERT INTO `nilai_kt_karyawan` (`id`, `id_karyawan`, `kt1`, `kt2`, `created_at`, `updated_at`) VALUES
(10, 20, 2, 3, '2015-04-17 08:37:24', '2015-04-17 08:37:24'),
(11, 21, 2, 3, '2015-04-17 08:43:16', '2015-04-17 08:43:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_profil_matching`
--

CREATE TABLE IF NOT EXISTS `nilai_profil_matching` (
`id` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `id_lowongan` int(10) unsigned NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data untuk tabel `nilai_profil_matching`
--

INSERT INTO `nilai_profil_matching` (`id`, `id_karyawan`, `id_lowongan`, `nilai`) VALUES
(65, 20, 7, 5),
(66, 21, 7, 5.11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_syarat_jabatan`
--

CREATE TABLE IF NOT EXISTS `profil_syarat_jabatan` (
`id` int(10) unsigned NOT NULL,
  `id_lowongan` int(10) unsigned NOT NULL,
  `pendidikan_terakhir` int(255) NOT NULL,
  `pengalaman_kerja` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `profil_syarat_jabatan`
--

INSERT INTO `profil_syarat_jabatan` (`id`, `id_lowongan`, `pendidikan_terakhir`, `pengalaman_kerja`, `created_at`, `updated_at`) VALUES
(3, 6, 3, 2, '2015-04-17 04:10:05', '2015-04-17 04:15:03'),
(4, 7, 3, 2, '2015-04-17 06:13:04', '2015-04-17 06:13:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_syarat_karyawan`
--

CREATE TABLE IF NOT EXISTS `profil_syarat_karyawan` (
`id` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `id_divisi` int(10) unsigned NOT NULL,
  `pendidikan_terakhir` enum('SMA','D1','D2','D3','S1','S2','S3') COLLATE utf8_unicode_ci NOT NULL,
  `tgl_masuk_kerja` date NOT NULL,
  `nilai_pendidikan_terakhir` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `profil_syarat_karyawan`
--

INSERT INTO `profil_syarat_karyawan` (`id`, `id_karyawan`, `id_divisi`, `pendidikan_terakhir`, `tgl_masuk_kerja`, `nilai_pendidikan_terakhir`, `created_at`, `updated_at`) VALUES
(23, 20, 1, 'S1', '2011-02-02', 3, '2015-04-17 06:21:28', '2015-04-17 06:21:50'),
(24, 21, 2, 'S1', '2009-06-10', 3, '2015-04-17 06:24:20', '2015-04-17 06:35:31'),
(25, 22, 3, 'S1', '2008-02-06', 3, '2015-04-17 06:35:01', '2015-04-17 06:35:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_nilai_gap`
--

CREATE TABLE IF NOT EXISTS `status_nilai_gap` (
`id` int(10) unsigned NOT NULL,
  `selisih` int(11) NOT NULL,
  `status` enum('V','X') COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `status_nilai_gap`
--

INSERT INTO `status_nilai_gap` (`id`, `selisih`, `status`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 4, 'V', 'Memenuhi Syarat Kelebihan 4 Tingkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 3, 'V', 'Memenuhi Syarat Kelebihan 3 Tingkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'V', 'Memenuhi Syarat Kelebihan 2 Tingkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'V', 'Memenuhi Syarat Kelebihan 1 Tingkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 0, 'V', 'Memenuhi Syarat Minimal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, -1, 'X', 'Memenuhi Syarat Kekurangan 1 Tingkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, -2, 'X', 'Memenuhi Syarat Kekurangan 2 Tingkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, -3, 'X', 'Memenuhi Syarat Kekurangan 3 Tingkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `roles` enum('admin','tim independent','top manager') COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `roles`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$vPWiO4ovgJ1uJry04SdQcOQsz13/46oKfZCm9XqN4QPmYHrE.NrKS', 'admin', 'ftUaJfAM3Gaca91r2y1k5g6WUv4JFcoDBxVXu5b4G9rQuMcMKmZzLfy8adn8', '2015-04-13 01:28:17', '2015-04-17 13:55:28'),
(3, 'Arif', 'ariftm', '$2y$10$tUiq0h3aIjs.zy.Hngco5e/5HVpD.EmH9liKoIJJGYGTJAN3SAepW', 'tim independent', 'h00sIHkl8CD2QH5iOLozTn3IZRCAuJjlqRVP8B75o02NR53Mk75UM52WH73G', '2015-04-15 07:55:02', '2015-04-17 13:53:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot_nilai_gap`
--
ALTER TABLE `bobot_nilai_gap`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bobot_nilai_jabatan_ki`
--
ALTER TABLE `bobot_nilai_jabatan_ki`
 ADD PRIMARY KEY (`id`), ADD KEY `bobot_nilai_jabatan_ki_id_lowongan_foreign` (`id_lowongan`);

--
-- Indexes for table `bobot_nilai_jabatan_kp`
--
ALTER TABLE `bobot_nilai_jabatan_kp`
 ADD PRIMARY KEY (`id`), ADD KEY `bobot_nilai_jabatan_kp_id_lowongan_foreign` (`id_lowongan`);

--
-- Indexes for table `bobot_nilai_jabatan_kt`
--
ALTER TABLE `bobot_nilai_jabatan_kt`
 ADD PRIMARY KEY (`id`), ADD KEY `bobot_nilai_jabatan_kt_id_lowongan_foreign` (`id_lowongan`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan_divisi`
--
ALTER TABLE `jabatan_divisi`
 ADD PRIMARY KEY (`id`), ADD KEY `id_divisi` (`id_divisi`), ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lulus_syarat`
--
ALTER TABLE `lulus_syarat`
 ADD PRIMARY KEY (`id`), ADD KEY `lulus_syarat_id_karyawan_foreign` (`id_karyawan`), ADD KEY `lulus_syarat_id_lowongan_foreign` (`id_lowongan`);

--
-- Indexes for table `nilai_ki_karyawan`
--
ALTER TABLE `nilai_ki_karyawan`
 ADD PRIMARY KEY (`id`), ADD KEY `nilai_ki_karyawan_id_karyawan_foreign` (`id_karyawan`);

--
-- Indexes for table `nilai_kp_karyawan`
--
ALTER TABLE `nilai_kp_karyawan`
 ADD PRIMARY KEY (`id`), ADD KEY `nilai_kp_karyawan_id_karyawan_foreign` (`id_karyawan`);

--
-- Indexes for table `nilai_kt_karyawan`
--
ALTER TABLE `nilai_kt_karyawan`
 ADD PRIMARY KEY (`id`), ADD KEY `nilai_kt_karyawan_id_karyawan_foreign` (`id_karyawan`);

--
-- Indexes for table `nilai_profil_matching`
--
ALTER TABLE `nilai_profil_matching`
 ADD PRIMARY KEY (`id`), ADD KEY `id_lowongan` (`id_lowongan`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `profil_syarat_jabatan`
--
ALTER TABLE `profil_syarat_jabatan`
 ADD PRIMARY KEY (`id`), ADD KEY `profil_syarat_jabatan_id_lowongan_foreign` (`id_lowongan`);

--
-- Indexes for table `profil_syarat_karyawan`
--
ALTER TABLE `profil_syarat_karyawan`
 ADD PRIMARY KEY (`id`), ADD KEY `profil_syarat_karyawan_id_karyawan_foreign` (`id_karyawan`);

--
-- Indexes for table `status_nilai_gap`
--
ALTER TABLE `status_nilai_gap`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot_nilai_gap`
--
ALTER TABLE `bobot_nilai_gap`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `bobot_nilai_jabatan_ki`
--
ALTER TABLE `bobot_nilai_jabatan_ki`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bobot_nilai_jabatan_kp`
--
ALTER TABLE `bobot_nilai_jabatan_kp`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bobot_nilai_jabatan_kt`
--
ALTER TABLE `bobot_nilai_jabatan_kt`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jabatan_divisi`
--
ALTER TABLE `jabatan_divisi`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lulus_syarat`
--
ALTER TABLE `lulus_syarat`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `nilai_ki_karyawan`
--
ALTER TABLE `nilai_ki_karyawan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nilai_kp_karyawan`
--
ALTER TABLE `nilai_kp_karyawan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nilai_kt_karyawan`
--
ALTER TABLE `nilai_kt_karyawan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nilai_profil_matching`
--
ALTER TABLE `nilai_profil_matching`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `profil_syarat_jabatan`
--
ALTER TABLE `profil_syarat_jabatan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profil_syarat_karyawan`
--
ALTER TABLE `profil_syarat_karyawan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `status_nilai_gap`
--
ALTER TABLE `status_nilai_gap`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bobot_nilai_jabatan_ki`
--
ALTER TABLE `bobot_nilai_jabatan_ki`
ADD CONSTRAINT `bobot_nilai_jabatan_ki_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bobot_nilai_jabatan_kp`
--
ALTER TABLE `bobot_nilai_jabatan_kp`
ADD CONSTRAINT `bobot_nilai_jabatan_kp_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bobot_nilai_jabatan_kt`
--
ALTER TABLE `bobot_nilai_jabatan_kt`
ADD CONSTRAINT `bobot_nilai_jabatan_kt_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jabatan_divisi`
--
ALTER TABLE `jabatan_divisi`
ADD CONSTRAINT `jabatan_divisi_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `jabatan_divisi_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lulus_syarat`
--
ALTER TABLE `lulus_syarat`
ADD CONSTRAINT `lulus_syarat_id_karyawan_foreign` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `lulus_syarat_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_ki_karyawan`
--
ALTER TABLE `nilai_ki_karyawan`
ADD CONSTRAINT `nilai_ki_karyawan_id_karyawan_foreign` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_kp_karyawan`
--
ALTER TABLE `nilai_kp_karyawan`
ADD CONSTRAINT `nilai_kp_karyawan_id_karyawan_foreign` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_kt_karyawan`
--
ALTER TABLE `nilai_kt_karyawan`
ADD CONSTRAINT `nilai_kt_karyawan_id_karyawan_foreign` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_profil_matching`
--
ALTER TABLE `nilai_profil_matching`
ADD CONSTRAINT `nilai_profil_matching_ibfk_1` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profil_syarat_jabatan`
--
ALTER TABLE `profil_syarat_jabatan`
ADD CONSTRAINT `profil_syarat_jabatan_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profil_syarat_karyawan`
--
ALTER TABLE `profil_syarat_karyawan`
ADD CONSTRAINT `profil_syarat_karyawan_id_karyawan_foreign` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
