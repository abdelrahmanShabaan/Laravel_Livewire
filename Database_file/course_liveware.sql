-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 11:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_liveware`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'web development', '2023-02-24 18:01:52', '2023-02-24 18:01:52'),
(2, 'web design', '2023-02-24 18:01:52', '2023-02-24 18:01:52'),
(3, 'UI design', '2023-02-24 18:01:53', '2023-02-24 18:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_24_192306_create_categories_table', 1),
(6, '2023_02_24_192356_create_posts_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Voluptatem enim reiciendis dolor.', 'Tempora ea dignissimos perspiciatis minus. Ea rerum molestiae ut excepturi minima repellat reprehenderit.', '01.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(2, 1, 3, 'Tenetur sed rerum ullam.', 'Vel libero quis aut et id vero. Animi animi aut autem ut dolorem. Quo qui corrupti repellat fuga velit.', '02.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(3, 1, 3, 'Minima ut perspiciatis ut magnam.', 'Earum laudantium illo voluptas ad et et consequatur numquam. Suscipit voluptatem doloribus voluptates iste. Animi praesentium provident odit dolorem. Nam necessitatibus a earum non aut ullam nobis.', '03.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(4, 2, 2, 'Illo veniam rerum est molestiae earum.', 'Nihil debitis iste pariatur consequuntur omnis. Autem incidunt iste voluptas eos tenetur. Officiis repellendus ea dolorem dignissimos rerum.', '04.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(5, 2, 2, 'Autem ducimus autem qui.', 'Vel asperiores rerum nisi ut maiores reprehenderit. Culpa at nihil sed debitis. Sapiente neque non nihil rerum fuga repellendus. Sit quae quam quas asperiores adipisci.', '05.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(6, 1, 3, 'Officia cumque doloribus et aut.', 'Odio repudiandae hic voluptate suscipit nihil. Ut sed facere quia perferendis. Quia consequatur porro qui natus adipisci praesentium occaecati. Et id temporibus voluptatem ut sit sequi veniam. Aut aut asperiores iure enim molestiae.', '06.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(7, 1, 2, 'Quo ex debitis.', 'Rerum velit hic numquam. Praesentium laudantium qui rerum laudantium. Hic maiores illo veniam sit.', '07.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(8, 3, 2, 'Quos quae quaerat harum nostrum.', 'Unde ab quos libero sint sint suscipit dicta. Libero sed qui molestiae porro. Sint et voluptatibus debitis.', '08.jfif', '2023-02-24 18:01:53', '2023-02-24 18:01:53'),
(9, 1, 1, 'Et aliquid necessitatibus assumenda.', 'Itaque corrupti tempore placeat molestiae quos. Tempore rerum sequi et impedit iusto perferendis voluptatum. Consequatur rerum cumque velit dicta. Commodi id sed voluptas est quo qui.', '09.jfif', '2023-02-24 18:01:54', '2023-02-24 18:01:54'),
(10, 1, 1, 'Magnam quis voluptates.', 'Magni similique voluptatem nihil molestiae ut laborum. Nostrum nihil eius error et praesentium at. Consectetur veniam fugit laudantium in.', '10.jfif', '2023-02-24 18:01:54', '2023-02-24 18:01:54'),
(11, 3, 3, 'Qui expedita delectus enim dolores.', 'Ut vel iusto doloremque ad omnis dolorem iste. Delectus ut impedit natus adipisci et aut. Quos voluptatem aliquid dolore aliquam earum illum nihil. Eos et neque magni qui molestiae doloremque.', '11.jfif', '2023-02-24 18:01:54', '2023-02-24 18:01:54'),
(12, 3, 3, 'Quod unde excepturi atque tempora.', 'Facilis laboriosam amet ullam dolores deserunt aliquid magnam at. Nemo illo dolores sit deserunt sint. Sed et odio illo repudiandae nisi ipsum sit.', '12.jfif', '2023-02-24 18:01:54', '2023-02-24 18:01:54'),
(15, 2, 1, 'Quas amet accusamus.s', 'Minus nemo qui quod pariatur quos. Necessitatibus libero asperiores distinctio. Non ut voluptatem optio id consequatur quod.', '15.jfif', '2023-02-24 18:01:54', '2023-02-24 20:38:24'),
(16, 4, 2, 'heso productq', 'heso products', 'heso-productq.gif', '2023-02-24 20:28:32', '2023-02-24 20:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdlerhamn shaaban', 'boodyelmasry6@gmail.com', NULL, '$2y$10$3r2UiXwuk4IL5aiNWglzA.2A420t1jqV46YdTrLea4G9RZdIO4YR6', NULL, '2023-02-24 18:01:52', '2023-02-24 18:01:52'),
(2, 'ahmed shaaban', 'ahmed@gmail.com', NULL, '$2y$10$p0YTWt5BFj0tg9uwP0oLm.GxuStP79ouB97k4BN4k80H9yrKaND6C', NULL, '2023-02-24 18:01:52', '2023-02-24 18:01:52'),
(3, 'karem shaaban', 'karem^@gmail.com', NULL, '$2y$10$DjQz1H.Qy1yaDG10JB5Yi.VuOA0l/IZp7GdUxNFenGACdGzHAMvkC', NULL, '2023-02-24 18:01:52', '2023-02-24 18:01:52'),
(4, 'mega', 'mega@gmail.com', NULL, '$2y$10$CMrl25nVasoDZXFdNybtdOHLXM1XKXumUpDfsmiZJkqGE/KDndFY6', NULL, '2023-02-24 20:27:58', '2023-02-24 20:27:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
