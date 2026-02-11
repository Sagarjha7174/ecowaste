-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql207.infinityfree.com
-- Generation Time: Feb 01, 2026 at 05:37 AM
-- Server version: 11.4.9-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_39571487_ecowaste_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `email`, `mobile`, `password`, `created_at`, `deleted_at`, `is_deleted`) VALUES
(5, 'Harshad', 'harshad@gmail.com', NULL, '$2y$10$M7EsYU9sD7HSJMTBnJKCE.dI.tBCgJPGb5HBDi5g5a1FSIPBQRYre', '2025-10-12 13:38:38', NULL, 0),
(6, 'aman', 'aman@gmail.com', NULL, '$2y$10$k0u1WZO86iIJnBbuKfOrq.1vYWiqyaQShL3ohXVJ1/E3rnXEGNXDq', '2025-10-12 14:07:18', '2026-01-14 21:18:39', 1),
(7, 'driver', 'driver@gmail.com', NULL, '$2y$10$eISVPiHtT4WyBK9rsG8zyO9L3U0TCCX1.kxINnJhE5K5PvJe7GFhu', '2025-12-25 23:02:27', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `type` enum('info','success','warning','error') DEFAULT 'info',
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `driver_id`, `admin_id`, `title`, `message`, `type`, `is_read`, `created_at`) VALUES
(19, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2025-12-26 at prithvipur, prithvipur.', 'info', 1, '2025-12-26 00:42:00'),
(22, NULL, 7, NULL, 'Pickup Completed', 'Pickup from prithvipur has been marked as completed by admin.', 'success', 1, '2025-12-26 04:18:05'),
(25, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2025-12-26 at prithvipur, prithvipur.', 'info', 1, '2025-12-26 04:18:38'),
(28, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at prithvipur.', 'success', 1, '2025-12-26 10:21:41'),
(31, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2025-12-28 at prithvipur, prithvipur.', 'info', 1, '2025-12-27 04:59:46'),
(34, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2025-12-28 at prithvipur, prithvipur.', 'info', 1, '2025-12-27 05:05:22'),
(39, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2025-12-28 at Prithvipur , Prithvipur .', 'info', 1, '2025-12-28 09:44:03'),
(42, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at prithvipur.', 'success', 1, '2025-12-28 09:46:11'),
(45, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2025-12-29 at Prithvipur , Prithvipur .', 'info', 1, '2025-12-29 15:19:14'),
(48, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2025-12-29 at Prithvipur , Prithvipur .', 'info', 1, '2025-12-29 15:20:20'),
(52, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at prithvipur.', 'success', 1, '2025-12-29 15:21:45'),
(55, NULL, 7, NULL, 'Pickup Completed', 'Pickup from prithvipur has been marked as completed by admin.', 'success', 1, '2025-12-29 15:22:19'),
(58, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at Prithvipur .', 'success', 1, '2025-12-29 15:24:08'),
(62, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at Prithvipur .', 'success', 1, '2025-12-29 15:25:25'),
(67, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2026-01-05 at iiit hyderabad, hyderabad.', 'info', 1, '2026-01-05 12:04:12'),
(71, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at iiit hyderabad.', 'success', 1, '2026-01-05 12:05:13'),
(74, NULL, 7, NULL, 'Pickup Completed', 'Pickup from iiit hyderabad has been marked as completed by admin.', 'success', 1, '2026-01-05 12:06:00'),
(76, NULL, 5, NULL, 'Account Status', 'Your driver account has been deactivated.', 'warning', 0, '2026-01-05 12:07:00'),
(82, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from uman on 2026-01-23 at lawda, tera.', 'info', 1, '2026-01-06 05:21:47'),
(86, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from uman at lawda.', 'success', 1, '2026-01-06 05:24:25'),
(89, NULL, 7, NULL, 'Pickup Completed', 'Pickup from lawda has been marked as completed by admin.', 'success', 1, '2026-01-06 05:25:03'),
(91, NULL, 6, NULL, 'Account Status', 'Your driver account has been deactivated.', 'warning', 0, '2026-01-06 05:26:11'),
(93, NULL, 6, NULL, 'Account Restored', 'Your driver account has been reactivated.', 'success', 0, '2026-01-06 05:26:21'),
(97, NULL, 7, NULL, 'Account Status', 'Your driver account has been deactivated.', 'warning', 1, '2026-01-06 05:28:34'),
(99, NULL, 7, NULL, 'Account Restored', 'Your driver account has been reactivated.', 'success', 1, '2026-01-06 05:35:47'),
(103, 10, NULL, NULL, 'Pickup Cancelled', 'You have cancelled your pickup from Waghodia scheduled for 2026-01-16.', 'info', 0, '2026-01-09 09:39:34'),
(105, 10, NULL, NULL, 'Pickup Scheduled', 'Your pickup has been scheduled for 2026-01-15 (Morning (9am-12pm)). Your verification code is: 7618. Please share this code with the driver during collection.', 'success', 0, '2026-01-14 21:14:28'),
(106, 10, NULL, NULL, 'Driver Assigned', 'A driver has been assigned to your pickup on 2026-01-15. Driver: driver', 'success', 0, '2026-01-14 21:15:56'),
(107, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2026-01-15 at Prithvipur , Hyderabad.', 'info', 1, '2026-01-14 21:15:56'),
(109, 10, NULL, NULL, 'Driver Out for Pickup', 'Your driver is now out for pickup for your waste at Prithvipur . Please be ready!', 'info', 0, '2026-01-14 21:17:05'),
(110, 10, NULL, NULL, 'Waste Collected', 'Your waste from Prithvipur  has been collected by the driver.', 'success', 0, '2026-01-14 21:17:36'),
(111, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at Prithvipur .', 'success', 1, '2026-01-14 21:17:36'),
(113, 10, NULL, NULL, 'Pickup Completed', 'Your waste pickup from Prithvipur  on 2026-01-15 has been completed successfully. Thank you for using EcoWaste!', 'success', 0, '2026-01-14 21:18:00'),
(114, NULL, 7, NULL, 'Pickup Completed', 'Pickup from Prithvipur  has been marked as completed by admin.', 'success', 1, '2026-01-14 21:18:00'),
(116, NULL, 6, NULL, 'Account Status', 'Your driver account has been deactivated.', 'warning', 0, '2026-01-14 21:18:39'),
(118, NULL, 5, NULL, 'Account Restored', 'Your driver account has been reactivated.', 'success', 0, '2026-01-14 21:18:56'),
(121, NULL, NULL, 1, 'User Restored', 'A user account has been restored.', 'success', 0, '2026-01-16 15:54:53'),
(122, NULL, NULL, 1, 'New Pickup Request', 'User user has scheduled a new pickup in Waghodia, Vadodara for 2026-01-23 (Morning (9am-12pm)). Verification Code: 4446', 'info', 0, '2026-01-16 15:55:57'),
(123, 10, NULL, NULL, 'Pickup Scheduled', 'Your pickup has been scheduled for 2026-01-23 (Morning (9am-12pm)). Your verification code is: 4446. Please share this code with the driver during collection.', 'success', 0, '2026-01-16 15:55:57'),
(124, 10, NULL, NULL, 'Driver Assigned', 'A driver has been assigned to your pickup on 2026-01-23. Driver: driver', 'success', 0, '2026-01-16 15:57:23'),
(125, NULL, 7, NULL, 'New Pickup Assigned', 'You have been assigned a new pickup from user on 2026-01-23 at Waghodia, Vadodara.', 'info', 1, '2026-01-16 15:57:23'),
(126, NULL, NULL, 1, 'Driver Assigned', 'Driver driver assigned to pickup from user.', 'info', 0, '2026-01-16 15:57:23'),
(127, 10, NULL, NULL, 'Driver Out for Pickup', 'Your driver is now out for pickup for your waste at Waghodia. Please be ready!', 'info', 0, '2026-01-16 15:59:08'),
(128, 10, NULL, NULL, 'Waste Collected', 'Your waste from Waghodia has been collected by the driver.', 'success', 0, '2026-01-16 16:00:10'),
(129, NULL, 7, NULL, 'Collection Confirmed', 'You have successfully collected waste from user at Waghodia.', 'success', 1, '2026-01-16 16:00:10'),
(130, NULL, NULL, 1, 'Pickup Collected & Verified', 'Pickup from user at Waghodia has been collected and verified.', 'info', 0, '2026-01-16 16:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `area` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `time_slot` varchar(50) NOT NULL,
  `waste_type` varchar(100) NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Scheduled',
  `verification_code` varchar(4) DEFAULT NULL,
  `waste_image` varchar(255) DEFAULT NULL,
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `user_id`, `driver_id`, `area`, `city`, `pickup_date`, `time_slot`, `waste_type`, `latitude`, `longitude`, `status`, `verification_code`, `waste_image`, `requested_at`, `updated_at`) VALUES
(12, 6, 5, 'Waghodia', 'Vadodara', '2025-10-13', 'Morning (9am-12pm)', 'Organic Waste', NULL, NULL, 'Completed', NULL, NULL, '2025-10-12 13:37:01', '2025-10-12 13:41:15'),
(13, 8, 6, 'vadodara', 'Vadodara', '2025-10-13', 'Morning (9am-12pm)', 'Organic Waste', NULL, NULL, 'Completed', NULL, NULL, '2025-10-12 14:06:06', '2025-10-12 14:09:22'),
(14, 9, 5, 'Waghodia', 'Vadodara', '2025-10-14', 'Morning (9am-12pm)', 'Recyclables', NULL, NULL, 'Assigned', NULL, NULL, '2025-10-13 05:13:04', '2025-10-13 05:14:20'),
(15, 10, 7, 'prithvipur', 'prithvipur', '2025-12-26', 'Morning (9am-12pm)', 'Recyclables', '25.19517000', '78.75252500', 'Completed', NULL, NULL, '2025-12-25 23:02:00', '2025-12-25 23:31:38'),
(16, 10, 7, 'prithvipur', 'prithvipur', '2025-12-26', 'Morning (9am-12pm)', 'General Waste', '22.71317315', '75.86515764', 'Completed', NULL, NULL, '2025-12-25 23:22:31', '2025-12-25 23:31:34'),
(17, 10, 7, 'prithvipur', 'prithvipur', '2025-12-26', 'Morning (9am-12pm)', 'General Waste', '22.69218761', '75.90419258', 'Completed', NULL, NULL, '2025-12-26 00:41:38', '2025-12-26 04:18:05'),
(18, 10, 7, 'prithvipur', 'prithvipur', '2025-12-26', 'Morning (9am-12pm)', 'Recyclables', '25.19538147', '78.75183195', 'Collected by Driver', NULL, NULL, '2025-12-26 04:17:34', '2025-12-26 10:21:41'),
(19, 10, 7, 'prithvipur', 'prithvipur', '2025-12-28', 'Afternoon (1pm-4pm)', 'General Waste', '22.62432646', '76.10947340', 'Completed', NULL, 'uploads/waste_19_1767021705.jpg', '2025-12-27 04:59:04', '2025-12-29 15:22:19'),
(20, 10, 7, 'prithvipur', 'prithvipur', '2025-12-28', 'Morning (9am-12pm)', 'Organic Waste', '25.19538875', '78.75182390', 'Collected by Driver', NULL, NULL, '2025-12-27 05:04:40', '2025-12-28 09:46:11'),
(21, 10, 7, 'Prithvipur ', 'Prithvipur ', '2025-12-28', 'Afternoon (1pm-4pm)', 'General Waste', '25.21049860', '78.74784900', 'Collected by Driver', NULL, NULL, '2025-12-28 09:43:14', '2025-12-29 15:24:08'),
(22, 10, 7, 'Prithvipur ', 'Prithvipur ', '2025-12-29', 'Afternoon (1pm-4pm)', 'Organic Waste', '25.18446820', '78.74390120', 'Collected by Driver', NULL, 'uploads/waste_22_1767021925.jpg', '2025-12-29 15:18:39', '2025-12-29 15:25:25'),
(23, 10, 7, 'iiit hyderabad', 'hyderabad', '2026-01-05', 'Afternoon (1pm-4pm)', 'General Waste', '17.44240640', '78.38105600', 'Completed', '7747', NULL, '2026-01-05 12:03:35', '2026-01-05 12:06:00'),
(24, 13, 7, 'lawda', 'tera', '2026-01-23', 'Afternoon (1pm-4pm)', 'Organic Waste', '17.44522239', '78.34619725', 'Completed', '4808', NULL, '2026-01-06 05:21:08', '2026-01-06 05:25:03'),
(25, 10, NULL, 'Waghodia', 'Vadodara', '2026-01-16', 'Morning (9am-12pm)', 'General Waste', '23.25726417', '77.52965259', 'Cancelled', NULL, NULL, '2026-01-09 09:39:20', '2026-01-09 09:39:34'),
(26, 10, 7, 'Prithvipur ', 'Hyderabad', '2026-01-15', 'Morning (9am-12pm)', 'General Waste', '17.44724500', '78.34564200', 'Completed', '7618', NULL, '2026-01-14 21:14:28', '2026-01-14 21:18:00'),
(27, 10, 7, 'Waghodia', 'Vadodara', '2026-01-23', 'Morning (9am-12pm)', 'Recyclables', '23.26031390', '77.40479527', 'Collected by Driver', '4446', NULL, '2026-01-16 15:55:57', '2026-01-16 16:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `is_admin`, `created_at`, `deleted_at`, `is_deleted`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$IT6IkWhPDCiwtPY3hak68Otypu/FNpUXITZc7m1NVw.uBFQ6HEqT.', 1, '2025-07-26 05:01:21', NULL, 0),
(6, 'Ajay', 'ajay@gmail.com', NULL, '$2y$10$fiS6UEiRv4y/ksx4vCj3z.o972GwBjcHK2MFw.saM/r64.RhF0u/e', 0, '2025-10-12 13:35:52', '2025-12-28 05:42:43', 1),
(8, 'pankaj', 'pankaj@gmail.com', NULL, '$2y$10$yMuxw7TYVcf4jfD6OHWHf.Vzfq8O.Pcf26Yrt4Q7n9bxjdstHcxwe', 0, '2025-10-12 14:05:15', '2025-12-28 05:43:04', 1),
(9, 'sumit', 'sumit@gmail.com', NULL, '$2y$10$R6UGGBPknzX5rphR/sYtk./CPyxhh0fD8zOz4tjBBYNqrg9ukqYCS', 0, '2025-10-13 05:12:04', '2026-01-05 12:07:20', 1),
(10, 'user', 'user@gmail.com', NULL, '$2y$10$dIzIY93fkBcSRCDz7tlepOaRyExvR2CzFLbKsKmc6Qt/Kk8Lp8CX.', 0, '2025-12-25 23:00:29', NULL, 0),
(12, 'user2', 'user2@gmail.com', '6263458133', '$2y$10$VI1IjNFC7ve2go.Npy3mI.uxNVtx1UImJkQIGfX26rZl5F6x9xQRq', 0, '2025-12-31 06:47:33', NULL, 0),
(13, 'uman', 'agtuman2006@gmail.com', '9436794582', '$2y$10$.g3x7mtsVeuxk7ZiRH91LefA8i./T4YMqjfiisR/D/vSqg26AWLIm', 0, '2026-01-06 05:17:44', '2026-01-06 05:27:03', 1),
(17, 'uman', 'agtuma6@gmail.com', '9436794587', '$2y$10$UeaTKScucQAYNSJ8tWhRo.7y0/sJJqYEKz.3WFmj3ztpZ1ujviGgq', 0, '2026-01-06 05:38:27', NULL, 0),
(18, 'xyz', 'x@y.com', '1234567890', '$2y$10$.aXC3iJBEzsWy.Zz.64fe.RvTPYB/H47MHSzZ4ZH2uMCoyOKNSQ8y', 0, '2026-01-16 16:03:05', NULL, 0),
(19, 'uman', 'agtum6@gmail.com', '9436945887', '$2y$10$RfryYyuRFO1lB3jJ4pP/AuhgwOJCOCgjANplLMLBmZaqFHbM0Jw0G', 0, '2026-01-31 22:07:17', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_read` (`user_id`,`is_read`),
  ADD KEY `idx_driver_read` (`driver_id`,`is_read`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `idx_location` (`latitude`,`longitude`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pickups`
--
ALTER TABLE `pickups`
  ADD CONSTRAINT `pickups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
