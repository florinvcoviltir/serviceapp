-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: feb. 02, 2021 la 07:16 PM
-- Versiune server: 10.4.17-MariaDB
-- Versiune PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `service`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `clienti`
--

CREATE TABLE `clienti` (
  `id` int(11) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `telefon` text NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `clienti`
--

INSERT INTO `clienti` (`id`, `nume`, `telefon`, `adresa`, `email`) VALUES
(38, 'Coviltir Florin-Valentin', '0784634140', 'Gologanu', 'coviltirflorin57@gmail.com'),
(39, 'Popescu Ion', '0722229543', 'Focsani', 'popescuion@gmail.com'),
(40, 'Costel Vasile', '0725123123', 'Ramnicu Sarat', 'costel_vasile@yahoo.com'),
(41, 'Mihaela Iordache', '0745124124', 'Bacau', 'mihaela_iordache@gmail.com');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `fise`
--

CREATE TABLE `fise` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `echipament` varchar(50) NOT NULL,
  `problema` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `service_extern` tinyint(1) NOT NULL,
  `pret_reparatie` int(25) NOT NULL,
  `defect_const` varchar(250) NOT NULL,
  `reparatie_efect` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `fise`
--

INSERT INTO `fise` (`id`, `clientid`, `echipament`, `problema`, `data`, `status`, `service_extern`, `pret_reparatie`, `defect_const`, `reparatie_efect`) VALUES
(4, 39, 'Laptop HP Compaq NC6400', 'Laptop-ul porneste, dar nu afiseaza.', '2021-02-01', 1, 0, 0, '', ''),
(5, 38, 'Laptop Sony Vaio C225', 'Nu functioneaza tastele.', '2021-02-01', 1, 0, 0, '', ''),
(10, 39, 'Laptop HP Compaq NC6400', 'Laptop-ul porneste, dar nu afiseaza.', '2021-02-01', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$ajZ/j5oO9fbM5VQM/nXoueZYz4aGjbjlkViLyfkxm8NeONtTXw3.6', '2020-11-30 11:07:48');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `fise`
--
ALTER TABLE `fise`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `clienti`
--
ALTER TABLE `clienti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pentru tabele `fise`
--
ALTER TABLE `fise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
