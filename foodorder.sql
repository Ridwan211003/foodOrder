-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 13.53
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` varchar(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(80, 'Dessert', '0', 'Komposisi :  Telur, Tepung Terigu, Coklat Bubuk, Gula, Susu, Soda Kue, Vanilla, Garam.', '7', 'images/dessert_box.jpeg', 'ENABLE'),
(81, 'Milo Crepe', 'Rp 30.000,00', 'Komposisi :  Telur, Susu, Gula Pasir, Kakao Bubuk, Tepung Terigu, Milo Bubuk.', '7', 'images/milo_crepe.jpeg', 'ENABLE'),
(82, 'Souffle Pancake', 'Rp 35.000,00', 'Komposisi :  Tepung Terigu, Gula Merah, Gula Pasir, Cream Cheese, Susu, Telur, Boba.', '7', 'images/souffle_pancake.jpeg', 'ENABLE'),
(83, 'Fudgy Brownies', 'Rp 80.000,00', 'Komposisi :  Gula, Butter, Coklat, Tepung Terigu, Telur, Garam,Choco Chips.', '7', 'images/fudgy_brownies.jpeg', 'ENABLE'),
(84, 'Danish Chocolate', 'Rp 18.000,00', 'Komposisi :  Danish Pastry, Margarin, Telur, Susu, Pasta Vanilla, Coklat Stik.', '7', 'images/danish_chocolate.jpg', 'ENABLE'),
(85, 'Chicken Mushroom', 'Rp. 17.0000,00', 'Komposisi :  Ayam, Tepung Terigu, Telur, Wortel, Jamur, Bawang Putih, Penyedap rasa', '7', 'images/chicken_mushroom_puff.jpg', 'ENABLE'),
(86, 'Choco Cheese Pastry', 'Rp. 21.000', 'Komposisi :  Puff Pastry Instan, Susu Coklat, Telur, Margarin, Meses Coklat, Keju.', '7', 'images/choco_cheese_pastry.jpeg', 'ENABLE'),
(87, 'Black Pepper Cheese', 'Rp. 25.000', 'Komposisi :  Puff Pastry, Krim Keju, Telur, Paprika, Keju, Tomat, Chutney Bawang Karamel.', '7', 'images/bp_cheese_pastry.jpeg', 'ENABLE'),
(88, 'Fruit Sandwich', 'Rp. 20.000', 'Komposisi :  Roti Tawar, Whipping Cream, Kiwi, Stroberi, Jeruk, Gula, Keju', '7', 'images/fruit_sandwich.jpeg', 'ENABLE'),
(89, 'Cloud Bread', 'Rp. 20.000', 'Komposisi :  Tepung Maizena, Telur, Gula Pasir, Vanilla, Pewarna Makanan, Air.', '7', 'images/cloud_bread.jpeg', 'ENABLE'),
(90, 'Wool Roll', 'Rp. 45.000', 'Komposisi :  Susu Cair & Bubuk, Gula Pasir, Ragi, Telur, Butter, Tepung Terigu, Garam.', '7', 'images/wool_roll (1).jpeg', 'ENABLE'),
(91, 'Burger Mini', 'Rp. 29.000', 'Komposisi :  Roti, Margarin, Saos, Selada, Daging Sapi, Keju, Tomat, Mayonaise.', '7', 'images/burger_mini.jpeg', 'ENABLE'),
(92, 'Mentai', 'Rp. 45.000', 'Komposisi :  Nasi Putih, Butter, Nori, Minyak Wijen, Mayonaise, Saus Mentai, Salmon, Keju mozarella, Parsley', '7', 'images/Mentai.jpeg', 'ENABLE'),
(93, 'Onigiri', 'Rp. 15.000', 'Komposisi :  Nori, Nasi, Garam, Minyak Wijen, Umeboshi, Mayonaise, Salmon atau Tuna, Telur, Saus Pedas Manis', '7', 'images/onigiri.jpeg', 'ENABLE'),
(94, 'Okonomiyaki', 'Rp. 23.000', 'Komposisi :  Tepung Terigu, Baking Powder, Telur,Daun Bawang, Kecap Asin, Gula, Udang, Mayonaise.', '7', 'images/okonomiyaki.jpeg', 'ENABLE'),
(95, 'Mochi', 'Rp. 20.000', 'Komposisi :  Tepung Ketan, Maizena, Gula, Vanilla Bubuk, Garam, Pewarna Makanan, Kacang / topping lain', '7', 'images/mochi.jpeg', 'ENABLE'),
(96, 'Gamchi', 'Rp. 50.000', 'Komposisi :  Tepung Terigu, Susu, Mentega, Garam, Kentang, Merica, Susu, Keju mozarella, Gula, Parsley', '7', 'images/Gamchi.jpeg', 'ENABLE'),
(97, 'Odeng', 'Rp. 31.000', '     Komposisi :  Ikan Tenggiri, Telur, Bawang Putih,Bombay, Garam, Tepung Tapioka, Kecap Ikan, Daun Bawang.', '7', 'images/odeng.jpeg', 'ENABLE'),
(98, 'Bungeoppang', 'Rp. 24.000', 'Komposisi :  Tepung Terigu, Susu, Gula, Baking Powder, Garam, Kacang Merah atau Coklat, Vanilla ,', '7', 'images/bungeoppang.jpeg', 'ENABLE'),
(99, 'Hotteok', 'Rp. 39.000', 'Komposisi :  Tepung Terigu, Tepung Ketan, Ragi, Gula, Susu, Garam, kacang, Biji Wijen, Margarin.', '7', 'images/hotteok.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('agus123', 'Agus Afriando', 'agus123@gmail.com', '081256285637', 'Jalan Swadaya No.456 Tebet', 'agus321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(72, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2023-06-20', 'nidha', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(7, 'Agus Resto', 'agus@restaurant.com', '7778564732', 'Jalan Merpati No.55', 'agus123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indeks untuk tabel `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indeks untuk tabel `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
