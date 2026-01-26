-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2026 at 06:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cow_kino`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `selected_questions` text DEFAULT NULL,
  `extra_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `email`, `selected_questions`, `extra_details`) VALUES
(1, 'rafsan4576@gmail.com', 'How to report a bad seller?', 'do u have vets ?'),
(2, 'rafsan4576@gmail.com', 'Are the breeds authentic?', 'is there any meds for bulss?'),
(3, 'rafsan4576@gmail.com', 'Do we have personal contact with the seller?', 'response fast'),
(4, 'rafsan4576@gmail.com', 'Do we have personal contact with the seller?', ''),
(5, 'rafsan4576@gmail.com', 'Are the breeds authentic?', 'oo'),
(6, 'rafsan4576@gmail.com', 'How to report a bad seller?', 'please contact  asap'),
(7, 'rafsan4576@gmail.com', 'Do we have personal contact with the seller?', 'if yes then how its assure to be a good business ethics'),
(8, 'rafsan1229@gmail.com', 'Are the breeds authentic?', 'if yess then how these are verified?'),
(9, 'rafsan4576@gmail.com', 'Are the breeds authentic?, Do we have personal contact with the seller?', 'please response'),
(10, 'rafsan4576@gmail.com', 'Do we have personal contact with the seller?, How to report a bad seller?', 'rh'),
(11, 'rafsan6969@gmail.com', 'Do we have personal contact with the seller?', 'do u sell drugs?'),
(12, 'rafsan4dgd@gmail.com', 'Do we have personal contact with the seller?, How to report a bad seller?', 'fszfasfa');

-- --------------------------------------------------------

--
-- Table structure for table `cows`
--

CREATE TABLE `cows` (
  `name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `breed` varchar(20) NOT NULL,
  `age` float NOT NULL,
  `weight` int(5) NOT NULL,
  `photo_url` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cows`
--

INSERT INTO `cows` (`name`, `id`, `price`, `breed`, `age`, `weight`, `photo_url`, `description`, `is_approved`) VALUES
('Bella', 3, 1250, 'Holstein', 3.5, 450, 'beef-cow_0.webp', 'High-yielding dairy cow, very gentle and accustomed to machine milking.', 1),
('Big Red', 4, 2800, 'Brahman', 4, 850, 'cow.webp', 'Premium Brahman bull, excellent muscle mass and disease resistance. Great for breeding.', 1),
('Daisy', 5, 950, 'Jersey', 2.5, 320, 'cow_demo_1.avif', 'Young Jersey cow produces milk with high butterfat content. Very friendly temperament.', 1),
('Rani', 6, 1100, 'Sahiwal', 3, 400, 'cow-9817881_1280.webp', 'Heat-tolerant Sahiwal, perfect for tropical climates. consistent milk producer.', 1),
('Lalu', 7, 850, 'Red Chittagong', 2, 280, 'cow-eating-grass-stockcake.webp', 'Local Red Chittagong variety. Low maintenance and disease resistant. Good for small farms.', 1),
('Maximus', 8, 3200, 'Angus', 5, 920, 'dairy-cow-royalty-free-image-1710959416.avif', 'Heavyweight Angus bull. Prime condition for meat production. Vet checked.', 1),
('Goldie', 9, 1400, 'Guernsey', 3.2, 410, 'istockphoto-139697605-612x612.jpg', 'Produces famous golden milk. Healthy, vaccinated, and ready for a new home.', 1),
('Spot', 10, 1300, 'Ayrshire', 3.8, 480, 'istockphoto-496397741-612x612.jpg', 'Hardy forager, does well in pasture-based systems. Reliable milk production.', 1),
('Rocky', 11, 2100, 'Charolais', 4.5, 880, 'istockphoto-1382389891-612x612.jpg', 'Large Charolais, excellent growth rate. Calm temperament and easy to handle.', 1),
('Gauri', 12, 1050, 'Gir', 2.8, 390, 'photo-1570042225831-d98fa7577f1e.jpg', 'Beautiful Gir cow with distinctive hump. highly adaptable and good milker.', 1),
('Pagla Goru', 14, 1400, 'RedChittagong', 1.5, 850, 'COW_695eb3141973b0.73742884.jpg', 'Pagla goru khabo, yeah ki moja', 1),
('desi goru', 15, 230, 'RedChittagong', 6, 450, 'COW_696098be9f7949.80538060.jpg', 'valo goru', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cow_delivery`
--

CREATE TABLE `cow_delivery` (
  `id` int(11) NOT NULL,
  `client_id` varchar(64) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(190) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `dropoff_location` varchar(255) NOT NULL,
  `distance_km` decimal(6,2) NOT NULL,
  `cow_count` int(11) NOT NULL,
  `delivery_charge` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cow_delivery`
--

INSERT INTO `cow_delivery` (`id`, `client_id`, `name`, `email`, `contact`, `pickup_location`, `dropoff_location`, `distance_km`, `cow_count`, `delivery_charge`, `created_at`) VALUES
(1, '4af2383ff51479c44a8997637ee24c69', 'Rafsan', 'rafsan4576@gmail.com', '01552325481', 'khilkhet', 'gazipur', 25.00, 1, 4500.00, '2026-01-18 09:08:07'),
(2, '4af2383ff51479c44a8997637ee24c69', 'Ali Hashemi Rafsanjani', 'rafsan4576@gmail.com', '01552325481', 'khilkhet', 'uttara', 9.00, 2, 3240.00, '2026-01-18 09:08:42'),
(3, '4af2383ff51479c44a8997637ee24c69', 'Ali Hashemi Rafsanjani', 'rafsan4576@gmail.com', '01552325481', 'khilkhet', 'uttara', 10.00, 2, 3600.00, '2026-01-18 10:29:12'),
(4, '4af2383ff51479c44a8997637ee24c69', 'Ali Hashemi Rafsanjani', 'rafsan4576@gmail.com', '01552325481', 'khilkhet', 'uttara', 10.00, 1, 750.00, '2026-01-19 18:59:17'),
(5, '4af2383ff51479c44a8997637ee24c69', 'Ali Hashemi Rafsanjani', 'rafsan4576@gmail.com', '01552325481', 'khilkhet', 'uttara', 1.00, 1, 75.00, '2026-01-19 18:59:51'),
(6, '4af2383ff51479c44a8997637ee24c69', 'Rafsan', 'rafsan4576@gmail.com', '01552325481', 'khilkhet', 'uttara', 10.00, 1, 1150.00, '2026-01-19 19:15:46'),
(7, '4af2383ff51479c44a8997637ee24c69', 'Ali Hashemi Rafsanjani', 'rafsan4576@gmail.com', '01552325481', 'khilkhet', 'uttara', 10.00, 2, 1200.00, '2026-01-20 08:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `selected_questions` text DEFAULT NULL,
  `extra_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `email`, `selected_questions`, `extra_details`) VALUES
(1, 'rafsan4576@gmail.com', 'Do we infiltrate fake buyers?, Do we assure their cow to be sold?', 'do u sell cow foods?'),
(2, 'rafsan4576@gmail.com', 'Are we cutting commissions?, Do we infiltrate fake buyers?', 'please response asap.'),
(3, 'rafsan4576@gmail.com', 'Do we infiltrate fake buyers?', 'rr'),
(4, 'rafsan4576@gmail.com', 'Are we cutting commissions?', 'pp'),
(5, 'rafsan4576@gmail.com', 'Do we assure their cow to be sold?', 'if no then will i be able to withdraw the cow'),
(6, 'rafsan4576@gmail.com', 'Are we cutting commissions?, Do we infiltrate fake buyers?', 'response please'),
(7, 'rafsan4576@gmail.com', 'Do we infiltrate fake buyers?', 'please ans this asap'),
(8, 'rafsan4576@gmail.com', 'Do we infiltrate fake buyers?', 'cnrh'),
(9, 'rafsan76@gmail.com', 'Do we infiltrate fake buyers?', 'dada'),
(10, 'rafsan4242@gmail.com', 'Do we infiltrate fake buyers?, Do we assure their cow to be sold?', 'fafafa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `id`, `email`, `password`, `phone`, `user_type`, `is_banned`) VALUES
('Zihan', 5, 'zihan@gmail.com', 'Zihan@123', 1799246459, 'admin', 0),
('raid ibney hasan', 6, 'raid@gmail.com', '1234', 1010101010, 'buyer', 0),
('Demo', 7, 'demo@gmail.com', 'Zihan@123', 1799246459, 'seller', 0),
('rahim', 8, 'rahim@gmail.com', 'rahim@123', 123456789, 'buyer', 0),
('Ali Hashemi Rafsanja', 9, 'rafsan4576@gmail.com', '12345', 2147483647, 'seller', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cows`
--
ALTER TABLE `cows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cow_delivery`
--
ALTER TABLE `cow_delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cows`
--
ALTER TABLE `cows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cow_delivery`
--
ALTER TABLE `cow_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
