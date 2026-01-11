-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 10 Ιαν 2026 στις 19:20:54
-- Έκδοση διακομιστή: 10.4.32-MariaDB
-- Έκδοση PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `zaxaroplasteio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zaxaroplasteio`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `zaxaroplasteio`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `product` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `orders`
--

INSERT INTO `orders` (`id`, `firstname`, `lastname`, `email`, `address`, `phone`, `date`, `product`) VALUES
(1, '', '', '', '', '', '0000-00-00', ''),
(2, '', '', '', '', '', '0000-00-00', ''),
(3, '', 'Pantelidis', 'stathis@gmail.com', 'Kati 5', '69696969696', '2026-01-24', ''),
(4, 'Stathis', 'Pantelidis', 'stathis@gmail.com', 'Kati 5', '69696969696', '2026-01-30', ''),
(5, 'Stathis', 'Pantelidis', 'stathis@gmail.com', 'Kati 5', '69696969696', '2026-01-22', ''),
(6, 'Stathis', 'Pantelidis', 'stathis@gmail.com', 'Kati 5', '69696969696', '2026-01-22', 'Κουραμπιέδες (x4) Μελομακάρονα (x5) Εκλεράκια (x5) '),
(7, 'Stathis', 'Pantelidis', 'stathis@gmail.com', 'Kati 5', '69696969696', '2026-01-23', 'Κουραμπιέδες (x4) Μελομακάρονα (x5) Εκλεράκια (x5) '),
(8, 'Stathis', 'Pantelidis', 'stathis@gmail.com', 'Kati 5', '69696969696', '2026-01-24', 'Κουραμπιέδες (x4) Μελομακάρονα (x5) Εκλεράκια (x5) '),
(9, 'Stathis', 'Pantelidis', 'stathis@gmail.com', 'Kati 5', '69696969696', '2026-01-31', 'Κουραμπιέδες (x4) Μελομακάρονα (x5) Εκλεράκια (x5) ');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `gender`) VALUES
(1, 'Stathis', 'Pantelidis', 'stathis', '12345678', 1),
(2, 'Stathis', 'Pantelidis', 'stathis', '12345678', 1),
(3, 'Stathis', 'Pantelidis', 'stathis', '12345678', 0),
(4, 'Stathis', 'Pantelidis', 'stathis', '12345678', 0);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
