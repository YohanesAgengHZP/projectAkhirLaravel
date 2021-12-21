-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 08:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyekakhirlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'LARAVEL', 'laravel', '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(2, 'School', 'school', '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(3, 'University', 'university', '2021-12-08 12:06:17', '2021-12-08 12:06:17');

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
(5, '2021_12_08_074906_create_posts_table', 1),
(6, '2021_12_08_094717_create_categories_table', 1);

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
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `oublished_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `penulis`, `excerpt`, `isi`, `oublished_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Et laudantium molestiae et dolorem.', 'aut-sed-et-quos-saepe', 'Rerum est est aut aspernatur cum.', 'Facilis beatae provident dolorem reprehenderit doloremque rerum asperiores. In amet enim itaque voluptatem eligendi. Quibusdam veniam mollitia commodi molestias ut qui et. Ea et ab nostrum.', '<p>Ea illo ex quam. Beatae aliquid ratione necessitatibus adipisci. Odio est quia quo libero reprehenderit accusamus doloribus culpa. Soluta rerum rerum qui. Aut et odio repellendus maiores error dolorem perferendis. Possimus natus repudiandae nam. Voluptatem necessitatibus est alias dolorem sit. Et dolor sint quaerat nobis. Eum tempore soluta rerum libero libero architecto non.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(2, 2, 1, 'Aliquid delectus omnis omnis.', 'dignissimos-necessitatibus-molestias-placeat-quo-dignissimos', 'Alias illo quo ducimus molestias magnam nam distinctio accusantium.', 'Aliquid in qui sequi qui ratione sunt sunt. Suscipit asperiores sed natus eaque omnis enim sed. In sed repudiandae quia enim consequatur velit explicabo. Quia numquam dolor perferendis eos nesciunt.', '<p>Est sapiente tenetur omnis officia dolore quisquam. Qui aspernatur nam quo. Odit dolore omnis officiis maxime nulla. Expedita error sapiente quidem rerum est est. Ea earum ullam excepturi et aut commodi qui. Dolor quasi tenetur commodi qui consequatur eveniet repellat dolorem. Quidem nihil ratione corrupti quae quidem qui at. Beatae qui velit non porro eveniet praesentium qui. Alias alias minus impedit voluptas dolore et laborum.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(3, 1, 1, 'Et debitis minus dolorem nihil laboriosam vel voluptas et quia.', 'possimus-sint-aspernatur-maxime-sapiente', 'Non ipsum autem ut pariatur quibusdam molestias eius incidunt facere et quae impedit sapiente qui ab numquam laborum molestiae porro qui.', 'Enim a minima dignissimos et debitis non maxime quis. Libero ut quas voluptatibus a deserunt esse cumque. Quasi excepturi officia corporis vero et.', '<p>Blanditiis sed vitae consectetur soluta eaque. Voluptate dolores ut illo animi sunt odit qui. Nulla sequi voluptas perspiciatis molestiae magnam eveniet quam. Tempore eaque id a. Porro commodi dolor doloremque asperiores.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(4, 2, 1, 'Sit aut accusamus.', 'ratione-fugit-tenetur-quia-dicta-qui-quia-totam', 'Ut sint et delectus labore.', 'Rerum qui voluptatem sunt aut quis quae vel voluptatum. Porro fuga doloremque temporibus debitis voluptatem. Dolorum quia suscipit voluptatem aliquam voluptatibus dolor magni. Voluptatem accusantium magni rerum magni.', '<p>Illo voluptatum doloremque optio doloribus et. Nihil quae non omnis fugit. Dolore occaecati et in error dolorem. Aut veritatis impedit voluptas. Cum incidunt assumenda voluptatem necessitatibus nisi. Nihil dicta dicta atque minus. Aliquam tempora necessitatibus aut natus eum quia earum. Ut saepe aut autem. Voluptatum quasi dolor assumenda. Non sed dolores repudiandae fugiat error dolores qui. Eligendi consectetur qui fugiat eius vel. Cupiditate et dolorem magni rerum consequatur sit unde. Rerum nostrum dolorem dolorum asperiores a rerum.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(5, 1, 3, 'Ad fuga ex illum.', 'expedita-iure-quasi-earum-et-quod-aut', 'Suscipit sit sequi est et qui laudantium iste provident qui sed labore repudiandae tempora et perspiciatis enim fugiat eos.', 'Aut earum modi aut laboriosam fugiat ut est. Sint iure odio exercitationem et. Quasi tempora commodi sit quas a aut ea.', '<p>Numquam unde praesentium corporis est. Blanditiis voluptatibus optio hic magnam fuga. Accusantium est in quae neque. Vero blanditiis aut quis. Veritatis voluptatum unde dolorum nulla reprehenderit quis dolore.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(6, 1, 3, 'Voluptas exercitationem qui.', 'qui-voluptate-est-ipsam', 'Sint quasi maiores ipsum esse eum et quas et vel mollitia expedita et voluptatibus perspiciatis blanditiis quas sit adipisci reiciendis ad consequatur placeat fugit.', 'Libero et dolor perspiciatis voluptatem autem sint. Quos quo est minima ut eos qui. Doloribus culpa possimus doloribus ea. Odit dolore ipsa laborum vel qui.', '<p>Nostrum accusantium perspiciatis dolore perspiciatis ut eaque. Delectus quas fuga qui ex soluta id aut. Quos reprehenderit modi sit unde et. Aut eaque explicabo molestias voluptatem odio voluptate iste. Cum ut dolores dolorum sit. Autem iure aut et voluptas.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(7, 2, 5, 'Dolor sunt quam amet illum est dolorem.', 'dolores-delectus-modi-doloremque-perspiciatis', 'Eius error.', 'Doloremque rerum nulla sunt labore. Possimus non earum molestiae distinctio ut perspiciatis.', '<p>Ab blanditiis illum vero sint nulla. Error assumenda quisquam quidem reiciendis nemo nulla praesentium dolorem. Est veniam minima consequuntur. Ullam hic quia officia. Unde ex voluptatum in suscipit. Velit tempore ipsa quod ut autem.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(8, 2, 3, 'Incidunt sed deleniti molestias voluptatem soluta commodi.', 'consectetur-consectetur-aut-reiciendis-aut-mollitia-unde-voluptas', 'Reprehenderit modi nostrum quia tenetur eligendi dolorum error quidem voluptas autem voluptatem voluptatem possimus fugit eos.', 'Rem ut recusandae ipsum dignissimos illo ea maxime. Eum rerum qui eius illum corrupti ipsa eos. Qui enim aut fugiat et. Alias vero dolorem eos est commodi nam.', '<p>Excepturi laudantium sed consequatur quis. Voluptatibus numquam perspiciatis rem et. Illum quis similique delectus aut ipsam delectus assumenda sint. Id illo laboriosam aliquid explicabo. Repellat aspernatur veritatis ut et iure nihil. Qui praesentium repellat recusandae nesciunt culpa est. Dolores praesentium non a voluptas.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(9, 2, 2, 'Blanditiis aliquam enim ut quasi quod quos quo recusandae quia.', 'eos-omnis-sapiente-excepturi-quasi-ut-quasi', 'Maiores dicta est pariatur sint quibusdam.', 'Dolores maiores exercitationem optio est. Adipisci qui quia iste est odit minima. Optio alias ut non molestiae veritatis non. Alias reprehenderit voluptatem reprehenderit inventore officia dolores.', '<p>Optio laudantium corporis vitae quae illo. Saepe ut modi ipsam provident cum aut. Et ut necessitatibus reiciendis pariatur sit quaerat omnis et. Unde dolores sed dolor et. At itaque suscipit molestiae animi hic qui. Porro adipisci quod voluptatem mollitia autem nobis. Autem hic quia dolores corrupti quidem et et. Laboriosam minus fugiat in minima laboriosam vel. Rerum voluptatem repudiandae similique atque.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(10, 2, 5, 'Dolorem ut animi sed rerum animi.', 'maiores-cum-nobis-optio-et-ullam-sit-id', 'Optio eos assumenda voluptatum magnam cupiditate natus explicabo aliquid explicabo eaque non molestias deleniti aliquid et.', 'Aut quam et ut veniam sapiente. Ut ut ratione magnam. Ea natus soluta sint libero tempore saepe.', '<p>Occaecati aut vel qui quod deserunt ut. Eum aspernatur possimus eius ipsam. Sapiente exercitationem asperiores aut molestiae sint culpa sunt. Quia voluptas et impedit atque. Ut praesentium adipisci voluptatem velit aliquam culpa nesciunt. Earum dolorem est nobis eius. Est dolorem recusandae vero rerum aut nemo aut. Illo consequatur a tempore nihil quibusdam. Quod veritatis quod totam voluptates ratione modi veritatis. Distinctio magni et vel voluptatibus autem deserunt dolorem voluptas. Perferendis enim sed excepturi nulla praesentium deserunt saepe. Fugiat facere fugiat ullam odio. Nihil veritatis dolores deserunt. Dolorum adipisci aut at odio libero temporibus.</p>', NULL, '2021-12-08 12:06:17', '2021-12-08 12:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dacin Natsir', 'usimbolon@google.com', 'hasta.nurdiyanti', '2021-12-08 12:06:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fuOpMG3SSPwE6YjwZVCnKA9pNLJqmfuepzhroVeKnuH3iZtqpVggTOoINpXo', '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(2, 'Mariadi Waluyo S.T.', 'isuartini@google.com', 'tania.pudjiastuti', '2021-12-08 12:06:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mS3pu8a6ta', '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(3, 'Bambang Pranowo', 'nainggolan.gading@example.com', 'pangestu.mutia', '2021-12-08 12:06:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Re2hrtMxZL', '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(4, 'Lala Aryani M.Pd', 'daliman.marpaung@example.org', 'widodo.vanya', '2021-12-08 12:06:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vptnSNV7cu', '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(5, 'Parman Nainggolan', 'heryanto51@example.net', 'hutagalung.raden', '2021-12-08 12:06:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WsnhVUSXim', '2021-12-08 12:06:17', '2021-12-08 12:06:17'),
(17, 'aafafaf', 'ageng3000@gmail.com', 'afafafaf', NULL, '$2y$10$EHKMiAUGj9BJN2PZS8I2yuN4vf0vMiYiAyKKy4J6bEBtMPY/lHnq2', NULL, '2021-12-10 22:36:48', '2021-12-10 22:36:48'),
(18, 'Jojo', 'durothan3000@gmail.com', 'Jojo3000', NULL, '$2y$10$qKBhlp4q8bI4lZwSUBJyi.cgRrN5umAVt.8wqR4a6wM/nW2y1QS/u', NULL, '2021-12-11 06:09:31', '2021-12-11 06:09:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
