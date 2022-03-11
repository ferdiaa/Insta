-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 08:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insta`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'hgjhkih', 1, 5, '2022-03-09 19:16:39', '2022-03-09 19:16:39'),
(2, 'wow', 5, 4, '2022-03-11 00:27:59', '2022-03-11 00:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `State` tinyint(1) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `State`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, '2022-03-09 18:15:12', '2022-03-09 18:15:12'),
(2, 1, 1, 5, '2022-03-09 19:16:06', '2022-03-09 19:16:06'),
(3, 1, 5, 3, '2022-03-11 00:28:11', '2022-03-11 00:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_10_093150_create_profiles_table', 1),
(5, '2020_03_10_112448_create_posts_table', 1),
(6, '2020_03_13_180815_creates_profile_user_pivot_table', 1),
(7, '2020_06_25_194640_create_comments_table', 1),
(8, '2020_08_12_154712_create_likes_table', 1),
(9, '2020_08_20_164030_create_stories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `caption`, `image`, `likes`, `created_at`, `updated_at`) VALUES
(1, 1, 'waw', 'uploads/wor0z99ZIRSw3B8tk9WssOApIVCRQ2CrreEFu9Xx.jpg', 0, '2022-03-09 18:08:00', '2022-03-09 18:08:00'),
(2, 1, 'coba', 'uploads/kWbSpbaLPlulD3wKXpduVo5lPMJ6Bc634oBB7lT3.jpg', 0, '2022-03-09 18:09:06', '2022-03-09 18:09:06'),
(3, 1, 'test', 'uploads/V5qvp3aLe37dmYCH1xpHXvcR00qRRWsnGDhxFx9Q.jpg', 0, '2022-03-09 18:09:47', '2022-03-09 18:09:47'),
(4, 2, 'admin', 'uploads/JmzXPytG3r6N8LCxEsas1ywjKdKjOCLJw0Rpx2wR.jpg', 0, '2022-03-09 18:15:56', '2022-03-09 18:15:56'),
(5, 3, 'aaa', 'uploads/u5P7AfGyHyjXJtDEdVHxb4uQ44CbBVBIyBaLBXxD.jpg', 0, '2022-03-09 18:18:12', '2022-03-09 18:18:12'),
(6, 4, 'test', 'uploads/DCg4kK5kq4LTyYTwR5SzHM896J5CmuUcubbOghxH.jpg', 0, '2022-03-09 20:25:26', '2022-03-09 20:25:26'),
(7, 6, 'fooa', 'uploads/jZ4lqNrvMzEPNUCMxVbUAtBNeVNtHQul8e8AGpow.jpg', 0, '2022-03-11 00:31:43', '2022-03-11 00:31:43'),
(8, 7, 'aaa', 'uploads/DO1eYfks0a2t7DehNshN8BPPKbc3eZZw9eDYSWVb.jpg', 0, '2022-03-11 00:37:01', '2022-03-11 00:37:01'),
(9, 8, 'addn', 'uploads/sYsSUIOqPzBXqSBVoB9mHvMvYLQIjuKv2OK5wobO.jpg', 0, '2022-03-11 00:39:54', '2022-03-11 00:39:54'),
(10, 8, 'asdasd', 'uploads/HWUGic9h435YUkGON1xV8Rh0oZjwdaK1bf3maraM.jpg', 0, '2022-03-11 00:40:20', '2022-03-11 00:40:20'),
(11, 8, 'kojo', 'uploads/IIfODCvWhJURFI6aUF8HP6U69JPOYNY8lfafzH2u.jpg', 0, '2022-03-11 00:40:51', '2022-03-11 00:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`, `website`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'profile/CiPro8HrVIzHQJp6LwwSDDXfALoonpEjZbrfcWBv.jpg', '2022-03-09 18:04:56', '2022-03-11 00:43:10'),
(2, 2, NULL, NULL, NULL, '2022-03-09 18:14:29', '2022-03-09 18:14:29'),
(3, 3, NULL, NULL, NULL, '2022-03-09 18:16:59', '2022-03-09 18:16:59'),
(4, 4, NULL, NULL, NULL, '2022-03-09 20:24:07', '2022-03-09 20:24:07'),
(5, 5, NULL, NULL, NULL, '2022-03-11 00:26:13', '2022-03-11 00:26:13'),
(6, 6, NULL, NULL, NULL, '2022-03-11 00:29:28', '2022-03-11 00:29:28'),
(7, 7, NULL, NULL, NULL, '2022-03-11 00:36:15', '2022-03-11 00:36:15'),
(8, 8, NULL, NULL, NULL, '2022-03-11 00:38:55', '2022-03-11 00:38:55'),
(9, 9, NULL, NULL, NULL, '2022-03-11 00:44:19', '2022-03-11 00:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `profile_user`
--

CREATE TABLE `profile_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_user`
--

INSERT INTO `profile_user` (`id`, `profile_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-03-09 18:14:59', '2022-03-09 18:14:59'),
(2, 1, 3, '2022-03-09 18:17:29', '2022-03-09 18:17:29'),
(3, 2, 3, '2022-03-09 18:20:25', '2022-03-09 18:20:25'),
(4, 2, 1, '2022-03-09 18:24:41', '2022-03-09 18:24:41'),
(5, 3, 1, '2022-03-09 18:25:20', '2022-03-09 18:25:20'),
(6, 1, 4, '2022-03-09 20:24:27', '2022-03-09 20:24:27'),
(7, 4, 1, '2022-03-09 20:26:56', '2022-03-09 20:26:56'),
(8, 1, 5, '2022-03-11 00:26:35', '2022-03-11 00:26:35'),
(9, 2, 5, '2022-03-11 00:27:37', '2022-03-11 00:27:37'),
(10, 1, 6, '2022-03-11 00:29:48', '2022-03-11 00:29:48'),
(11, 5, 1, '2022-03-11 00:32:56', '2022-03-11 00:32:56'),
(12, 6, 1, '2022-03-11 00:33:17', '2022-03-11 00:33:17'),
(13, 1, 7, '2022-03-11 00:36:33', '2022-03-11 00:36:33'),
(14, 7, 1, '2022-03-11 00:37:57', '2022-03-11 00:37:57'),
(15, 1, 8, '2022-03-11 00:39:28', '2022-03-11 00:39:28'),
(16, 8, 1, '2022-03-11 00:41:53', '2022-03-11 00:41:53'),
(17, 1, 9, '2022-03-11 00:44:35', '2022-03-11 00:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL DEFAULT 3500,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admincoba@gmail.com', 'admincoba', 'admincoba', NULL, '$2y$10$PSF8i8rwoHxhUsqfKfJU6O5EB8ZiXLF8O./zzNSxo1gbITxNBCt0e', NULL, '2022-03-09 18:04:56', '2022-03-09 18:04:56'),
(2, 'admin@gmail.com', 'admin', 'admin', NULL, '$2y$10$JoHy.bRS/muaZCcJWo1toumKRhPlvGKvROmKFD4NT/pDz2gqZIayS', NULL, '2022-03-09 18:14:29', '2022-03-09 18:14:29'),
(3, 'admin123@gmal.com', 'admin123', 'admin123', NULL, '$2y$10$5Hrgf41ksifNja1Q97Rr7.HJ947jccIBpuMKy0M6R7Ox0UlPRnO8y', NULL, '2022-03-09 18:16:59', '2022-03-09 18:16:59'),
(4, 'test@gmail.com', 'Coba Test', 'test', NULL, '$2y$10$jgM6pYOa4l1e9U4hQMyltOBUe2Zv5g3g/aDuBlMLx8t0EsO/I6oPm', NULL, '2022-03-09 20:24:07', '2022-03-09 20:24:07'),
(5, 'admin2@gmail.com', 'admin2', 'admin2', NULL, '$2y$10$hm.KBPetDIm5Nsag.UMTm.OBPloMrwpQqAcbeHURag7D/Cudfbjmq', NULL, '2022-03-11 00:26:13', '2022-03-11 00:26:13'),
(6, 'admin3@gmail.com', 'admin3', 'admin3', NULL, '$2y$10$534rcrLAaVsUsdl7vObuseGFDQ2MkvoDQ6IjVpiw1BuVkUzL//.Zy', NULL, '2022-03-11 00:29:28', '2022-03-11 00:29:28'),
(7, 'admin4@gmail.com', 'admin4', 'admin4', NULL, '$2y$10$b2LuifM86X/TNwVr9dCcYePIgHfmp9Yi01sZ1qtvfYKE.e1yP6riC', NULL, '2022-03-11 00:36:15', '2022-03-11 00:36:15'),
(8, 'admin5@gmail.com', 'admin5', 'admin5', NULL, '$2y$10$HmbgJtwIZehHcuGXNFFDFe6XKhqi/WKZSPuIqB4Nx2QPDXMiUbQGa', NULL, '2022-03-11 00:38:55', '2022-03-11 00:38:55'),
(9, 'guest@gmail.com', 'guest', 'guest', NULL, '$2y$10$lkBFPFWjV8cSgNW.lAWxqek86g8eWvZtvrXiUDVLmPvl6NK4Kwa4G', NULL, '2022-03-11 00:44:19', '2022-03-11 00:44:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `profile_user`
--
ALTER TABLE `profile_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profile_user`
--
ALTER TABLE `profile_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
