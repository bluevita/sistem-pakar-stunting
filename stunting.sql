-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2024 pada 09.08
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stunting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `gejala`) VALUES
(1, 'Merasa kelelahan yang berat dan berlebihan'),
(2, 'Memiliki kulit dan rambut kering'),
(3, 'Memiliki perut yang buncit '),
(4, 'Melemahnya otot-otot'),
(5, 'Memiliki pembengkakan dibawah kulit (edema)'),
(6, 'Mengalami perubahan mood yang sering'),
(7, 'Susah menambahkan berat dan tinggi badan'),
(8, 'Memiliki pertumbuhan gigi yang lambat'),
(9, 'Mengalami masalah perhambatan pada pertumbuhan'),
(10, 'Mengalami diare kronis'),
(11, 'Mengalami sakit kepala atau pusing yang terus menerus'),
(12, 'Sering merasa lapar'),
(13, 'Wajah tampak lebih muda dari anak seusianya'),
(14, 'Memiliki kemampuan fokus dan memori belajar kurang baik'),
(15, 'Cenderung lebih pendiam dan tidak banyak melakukan kontak mata dengan orang sekitar '),
(16, 'Mudah terkena penyakit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `penyakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `penyakit`) VALUES
(1, 'Kwashiorkor'),
(2, 'Maramus'),
(3, 'Stunting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `id_relasi` int(11) NOT NULL,
  `id_gejala` int(11) DEFAULT NULL,
  `id_penyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`id_relasi`, `id_gejala`, `id_penyakit`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

CREATE TABLE `solusi` (
  `id_solusi` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `solusi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`id_solusi`, `id_penyakit`, `solusi`) VALUES
(1, 1, 'Memberikan asupan gula atau karbohidrat'),
(2, 1, 'Menjaga tubuh anak tetap hangat dengan mengenakan pakaian yang cukup tebal'),
(3, 1, 'Mengobati dehidrasi dengan memberi anak larutan rehidrasi yang diformulasikan secara khusus'),
(4, 1, 'Bila anak terkena infeksi, maka pemberian antibiotik bisa dilakukan'),
(5, 1, 'Mengobati kekurangan vitamin dan mineral dengan memberikan suplemen vitamin'),
(6, 1, 'Secara perlahan memperkenalkan makanan dalam jumlah kecil, kemudian secara bertahap meningkatkan jum'),
(7, 1, 'Memberikan stimulasi sensoris'),
(8, 1, 'Memberikan kalium dan magnesium yang terkandung dalam larutan mineral-mix dan ditambahkan dalam susu'),
(9, 1, 'Memberikan imunisasi'),
(10, 2, 'Makan makanan yang bergizi dan seimbang'),
(11, 2, 'Minum air yang disanitasi dengan benar'),
(12, 2, 'Memberikan makan secara bertahap untuk meningkatkan kadar nutrisi dalam tubuh'),
(13, 3, 'Memberikan nutrisi yang tepat dan lengkap lewat MPASI atau makanan pokok, berupa makanan yang kaya p'),
(14, 3, 'Membawa anak untuk kontrol rutin ke dokter jika ia menderita penyakit kronis'),
(15, 3, 'Memeriksakan tinggi dan berat badan anak secara berkala'),
(16, 3, 'Memperbaiki sanitasi di rumah dan menerapkan perilaku hidup bersih dan sehat (PHBS) guna mencapai ke');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`id_relasi`);

--
-- Indeks untuk tabel `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`id_solusi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `relasi`
--
ALTER TABLE `relasi`
  MODIFY `id_relasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `solusi`
--
ALTER TABLE `solusi`
  MODIFY `id_solusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
