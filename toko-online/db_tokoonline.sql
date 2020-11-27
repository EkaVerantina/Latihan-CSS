-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Nov 2020 pada 17.36
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Eka Verantina', 'Taurusia', '123456', '08156744550', 'ekaverantina1805@gmail.com', 'Sumampir,RT 06 RW 03, Rembang, Purbalingga, Jawa Tengah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(8, 'Jeans'),
(9, 'Blouse'),
(10, 'Dress'),
(12, 'Kemeja'),
(14, 'Outer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(7, 12, 'Kemeja Polos Coklat', 200000, '<p>Kemeja polos lengan pendek, berwarna coklat dengan v-neck.</p>\r\n', 'produk1606491332.jpg', 1, '2020-11-25 08:36:24'),
(10, 8, 'Denim Jeans Jacket', 200000, '<p>Haightwaist</p>\r\n', 'produk1606492086.jpg', 0, '2020-11-25 08:42:55'),
(12, 12, 'Kemeja Polos 2', 150000, '<p>Kemeja polos lengan pendek warna putih.</p>\r\n', 'produk1606492622.jpg', 1, '2020-11-27 15:57:02'),
(13, 12, 'Kemeja 2 Warna', 160000, '<p>Kemeja lengan pendek polos dua warna coklat dan putih.</p>\r\n', 'produk1606492707.jpg', 1, '2020-11-27 15:58:27'),
(14, 12, 'One Set Kemeja', 180000, '<p>One Set Kemeja, atasan lengan dan bawahan celana panjang. Warna coklat.</p>\r\n', 'produk1606492841.jpg', 1, '2020-11-27 16:00:07'),
(15, 12, 'Kemeja Polos 3', 150000, '<p>Kemeja lengan pendek warna biru muda.</p>\r\n', 'produk1606493401.jpg', 1, '2020-11-27 16:03:11'),
(16, 10, 'Dress 1', 180000, '<p>Dress tanpa lengan warna abu-abu.</p>\r\n', 'produk1606493586.jpg', 1, '2020-11-27 16:13:06'),
(17, 10, 'Dress 2', 180000, '<p>Dress motif lengan panjang</p>\r\n', 'produk1606493889.jpg', 1, '2020-11-27 16:18:09'),
(18, 10, 'Dress 3', 180000, '<p>Dress motif lengan pendek.</p>\r\n', 'produk1606493978.jpg', 1, '2020-11-27 16:19:38'),
(19, 10, 'Dress 4', 180000, '<p>Dress polos lengan pendek warna orange.</p>\r\n', 'produk1606494028.jpg', 1, '2020-11-27 16:20:28'),
(20, 10, 'Dress 5', 200000, '<p>Dress panjang tanpa lengan warna orange.</p>\r\n', 'produk1606494119.jpg', 1, '2020-11-27 16:21:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
