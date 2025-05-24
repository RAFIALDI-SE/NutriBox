-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 02:28 PM
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
-- Database: `ecommerce-level-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1747989817),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1747989817;', 1747989817),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1747924242),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1747924242;', 1747924242);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Low Carb Meal', 'low-carb-meal', '2025-05-23 00:45:33', '2025-05-23 00:45:33'),
(3, 'Ketogenic Plan', 'ketogenic-plan', '2025-05-23 00:46:17', '2025-05-23 00:46:17'),
(4, 'Power Protein', 'power-protein', '2025-05-23 00:46:33', '2025-05-23 00:46:33'),
(5, 'Balance Nutrition', 'balance-nutrition', '2025-05-23 00:46:49', '2025-05-23 00:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_29_163214_create_sliders_table', 1),
(5, '2024_11_29_163235_create_categories_table', 1),
(6, '2024_11_29_163236_create_products_table', 1),
(7, '2024_11_29_163328_create_settings_table', 1),
(8, '2024_11_30_081356_create_pages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_group` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image`, `name`, `is_group`, `is_active`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, '01JVY4Y3HHAG76QTYDH3CJMNHV.jpg', 'Nutrisionist', 1, 1, 'Our Nutrisionist', '<p>Healthy eating shouldn’t be complicated — and that’s where our friendly nutritionists come in. They’re here to help you feel your best with easy-to-follow, personalized advice. Whether you’re looking to boost your energy, improve your diet, or simply eat smarter, our team is ready to support you every step of the way. Come and get to know them!</p><p><br></p><p>Chat Our Contact Person!</p><p>Nutritionist 1: +6281234567890 (WhatsApp)</p><p>Nutritionist 2: +6282321654987 (WhatsApp)</p>', '2025-05-23 01:32:12', '2025-05-23 02:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `saleprice` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `description`, `price`, `saleprice`, `category_id`, `created_at`, `updated_at`) VALUES
(2, '01JVY2RRCPB90D84WN55KSAS27.jpg', 'Telur Rebus & Sayur Panggang', '<h3><strong>Deskripsi:</strong></h3><p>Menu sehat berbasis nabati yang kaya akan protein dan serat. Tahu dipanggang dengan taburan wijen yang gurih, disajikan bersama brokoli segar yang ditumis ringan dengan bawang putih dan kecap asin rendah sodium. Cocok untuk makan siang praktis yang bergizi dan lezat.</p><h3><strong>Informasi Gizi (per porsi):</strong></h3><ul><li>Kalori: ±270 kkal</li><li>Protein: 14g</li><li>Karbohidrat: 12g</li><li>Lemak: 18g</li><li>Serat: 5g</li></ul><h3><strong>Komposisi Bahan:</strong></h3><ul><li>Tahu putih – 100 gram (dipanggang)</li><li>Brokoli segar – 100 gram</li><li>Wijen sangrai – 1 sdm</li><li>Bawang putih – 2 siung (cincang)</li><li>Kecap asin rendah sodium – 1 sdm</li><li>Minyak wijen – 1 sdt</li><li>Garam laut &amp; lada secukupnya</li></ul><h3><strong>Cara Penyajian (Opsional):</strong></h3><ol><li>Potong tahu dan panggang di wajan tanpa minyak hingga kecokelatan, taburi wijen saat hangat.</li><li>Tumis bawang putih hingga harum, masukkan brokoli dan aduk sebentar. Tambahkan kecap asin dan sedikit air, masak hingga brokoli empuk namun tetap renyah.</li><li>Sajikan tahu wijen di atas tumisan brokoli, percikkan minyak wijen, garam, dan lada sesuai selera.<br><br></li></ol><p><br></p>', 6000.00, 6500.00, 2, '2025-05-23 01:04:49', '2025-05-23 02:10:19'),
(3, '01JVY2T3E91RFQBVV4V95YRV2V.jpg', 'Tahu Wijen Tumis Brokoli', '<p>Menu praktis dan sehat untuk gaya hidup aktif. Telur rebus kaya protein dipadukan dengan sayur panggang segar seperti brokoli, wortel, dan tomat cherry, dibumbui dengan olive oil dan rempah alami.</p><h3>I<strong>nformasi Gizi (per porsi):</strong></h3><ul><li>Kalori: ±250 kkal</li><li>Protein: 16g</li><li>Karbohidrat: 10g</li><li>Lemak: 12g</li><li>Serat: 4g</li><li><h3><strong>Komposisi Bahan:</strong></h3><ul><li>Telur ayam kampung – 2 butir</li><li>Brokoli segar – 100 gram</li><li>Wortel organik – 1 buah (±80 gram)</li><li>Tomat – 5 buah</li><li>Olive oil extra virgin – 1 sdm</li><li>Oregano kering – 1/2 sdt</li><li>Garam laut</li></ul></li><li><h3><strong>Cara Penyajian (Opsional):</strong></h3><ol><li>Rebus telur selama ±7–9 menit, dinginkan, kupas.</li><li>Potong brokoli dan wortel, panggang dengan olive oil ±15 menit.</li><li>Sajikan bersama tomat cherry segar, taburi oregano dan sedikit garam.<br><br></li></ol></li></ul><p><br></p>', 4000.00, 4500.00, 2, '2025-05-23 01:05:33', '2025-05-23 02:02:35'),
(4, '01JVY2V5MFJ130XM3CT5CMH62G.jpg', 'Capcay Low Oil', '<p>Capcay versi sehat dengan penggunaan minyak yang sangat minim. Berisi aneka sayuran segar seperti wortel, kembang kol, sawi, dan jamur, ditumis cepat dengan bawang putih dan sedikit kaldu sayur. Cocok untuk yang ingin makanan hangat, ringan, dan tetap bernutrisi tinggi.</p><h3><strong>Informasi Gizi (per porsi):</strong></h3><ul><li>Kalori: ±180 kkal</li><li>Protein: 7g</li><li>Karbohidrat: 18g</li><li>Lemak: 6g</li><li>Serat: 6g</li></ul><h3><strong>Komposisi Bahan:</strong></h3><ul><li>Wortel – 1 buah (iris serong)</li><li>Kembang kol – 100 gram</li><li>Sawi hijau – 50 gram</li><li>Jamur kuping/jamur tiram – 50 gram</li><li>Bawang putih – 2 siung (cincang)</li><li>Minyak zaitun – 1 sdt</li><li>Kaldu sayur – 100 ml</li><li>Garam laut &amp; lada secukupnya</li></ul><h3><strong>Cara Penyajian (Opsional):</strong></h3><ol><li>Tumis bawang putih dengan 1 sdt minyak zaitun hingga harum.</li><li>Masukkan wortel dan kembang kol terlebih dahulu, aduk rata.</li><li>Tambahkan jamur dan sawi, lalu tuang kaldu sayur. Masak cepat ±5 menit hingga sayur matang tapi tetap renyah.</li><li>Bumbui dengan garam dan lada, sajikan hangat.<br><br></li></ol>', 5000.00, 5500.00, 2, '2025-05-23 01:06:08', '2025-05-23 02:05:18'),
(5, '01JVY2WS7RJYYTBEF69EMM9YKY.jpg', 'Salad Kol & Wortel dengan Perasan Lemon', '<h3><strong>Deskripsi:</strong></h3><p>Salad segar rendah kalori yang kaya serat dan vitamin. Perpaduan kol renyah dan wortel manis yang diparut halus, disiram perasan lemon segar dan sedikit madu sebagai penyeimbang rasa. Cocok untuk camilan sehat atau pendamping makan utama.</p><h3><strong>Informasi Gizi (per porsi):</strong></h3><ul><li>Kalori: ±90 kkal</li><li>Protein: 2g</li><li>Karbohidrat: 14g</li><li>Lemak: 3g</li><li>Serat: 4g</li></ul><h3><strong>Komposisi Bahan:</strong></h3><ul><li>Kol segar – 50 gram (iris halus)</li><li>Wortel – 1 buah kecil (±60 gram, parut kasar)</li><li>Lemon – 1/2 buah (peras airnya)</li><li>Madu – 1 sdt</li><li>Minyak zaitun – 1 sdt (opsional)</li><li>Garam laut – sejumput</li></ul><h3><strong>Cara Penyajian (Opsional):</strong></h3><ol><li>Campurkan kol dan wortel dalam mangkuk besar.</li><li>Dalam wadah terpisah, aduk rata perasan lemon, madu, minyak zaitun (jika digunakan), dan sejumput garam.</li><li>Tuang dressing ke dalam mangkuk sayur, aduk rata, diamkan ±5 menit agar rasa meresap.</li><li>Sajikan dingin untuk rasa lebih segar.<br><br></li></ol>', 7000.00, 7500.00, 2, '2025-05-23 01:07:01', '2025-05-23 02:06:31'),
(6, '01JVY2YACEHV7S6A9C2YP3CYTZ.jpg', 'Tumis Sawi & Tahu Pedas', '<h3><strong>Deskripsi:</strong></h3><p>Hidangan sederhana namun menggugah selera. Tahu dipotong kotak dan ditumis hingga kecokelatan, kemudian dimasak bersama sawi hijau dan bumbu pedas berbasis cabai dan bawang. Cocok untuk pecinta makanan sehat dengan sentuhan pedas yang hangat.</p><h3><strong>Informasi Gizi (per porsi):</strong></h3><ul><li>Kalori: ±210 kkal</li><li>Protein: 11g</li><li>Karbohidrat: 8g</li><li>Lemak: 14g</li><li>Serat: 3g</li></ul><h3><strong>Komposisi Bahan:</strong></h3><ul><li>Tahu putih – 100 gram</li><li>Sawi hijau – 70 gram</li><li>Bawang putih – 2 siung (cincang)</li><li>Cabai merah – 2 buah (iris tipis)</li><li>Kecap asin – 1 sdm</li><li>Minyak kelapa/minyak goreng – 1 sdm</li><li>Garam &amp; lada – secukupnya</li></ul><h3><strong>Cara Penyajian (Opsional):</strong></h3><ol><li>Potong tahu kotak kecil, goreng/tumis hingga bagian luar kecokelatan, angkat.</li><li>Tumis bawang putih dan cabai hingga harum. Masukkan sawi, aduk cepat.</li><li>Tambahkan tahu, kecap asin, garam, dan lada. Masak ±3–5 menit hingga semua tercampur rata dan sawi layu.</li><li>Sajikan hangat sebagai lauk utama atau pendamping nasi hangat.<br><br></li></ol><p><br></p>', 8000.00, 8500.00, 5, '2025-05-23 01:07:51', '2025-05-23 02:07:30'),
(7, '01JVY30X8CX01N3XBPE0MVFPA9.jpg', 'Jamur Tiram Tumis Kemangi', '<h3><strong>Deskripsi:</strong></h3><p>Menu vegan yang harum dan menenangkan. Jamur tiram segar ditumis ringan dengan bawang putih dan cabai, lalu dipadukan dengan daun kemangi segar yang memberikan aroma khas. Cocok untuk pecinta masakan sederhana dengan rasa nusantara yang kuat.</p><h3><strong>Informasi Gizi (per porsi):</strong></h3><ul><li>Kalori: ±120 kkal</li><li>Protein: 5g</li><li>Karbohidrat: 8g</li><li>Lemak: 7g</li><li>Serat: 3g</li></ul><h3><strong>Komposisi Bahan:</strong></h3><ul><li>Jamur tiram – 100 gram (disuwir)</li><li>Daun kemangi – 1 genggam</li><li>Bawang putih – 2 siung (cincang)</li><li>Cabai rawit/cabai merah – sesuai selera</li><li>Minyak kelapa/minyak zaitun – 1 sdm</li><li>Garam &amp; lada – secukupnya</li><li>Sedikit air untuk menumis</li></ul><h3><strong>Cara Penyajian (Opsional):</strong></h3><ol><li>Tumis bawang putih dan cabai hingga harum.</li><li>Masukkan jamur tiram, aduk rata hingga layu dan keluar airnya.</li><li>Tambahkan sedikit air jika perlu, bumbui dengan garam dan lada.</li><li>Masukkan daun kemangi, aduk sebentar hingga layu dan harum.</li><li>Sajikan hangat sebagai lauk pendamping nasi atau campuran salad hangat.<br><br></li></ol><p><br></p>', 9000.00, 9500.00, 4, '2025-05-23 01:09:16', '2025-05-23 02:08:34'),
(8, '01JVY3351YSX6HP1CN1JY9MAQZ.jpg', 'Roti Gandum Isi Telur dan Sayur', '<h3><strong>Deskripsi:</strong></h3><p>Roti gandum panggang berisi telur orak-arik dan sayuran segar seperti bayam, wortel, dan tomat. Lezat, praktis, dan bergizi tinggi — cocok untuk sarapan cepat atau bekal sehat yang mengenyangkan.</p><h3><strong>Informasi Gizi (per porsi):</strong></h3><ul><li>Kalori: ±280 kkal</li><li>Protein: 13g</li><li>Karbohidrat: 28g</li><li>Lemak: 12g</li><li>Serat: 5g</li></ul><h3><strong>Komposisi Bahan:</strong></h3><ul><li>Roti gandum utuh – 2 lembar</li><li>Telur ayam – 1 butir (orak-arik)</li><li>Bayam – 1 genggam kecil (rebus sebentar)</li><li>Wortel – 1/2 buah (serut halus)</li><li>Tomat – 2 iris tipis</li><li>Minyak zaitun – 1 sdt (untuk menumis)</li><li>Garam &amp; lada secukupnya</li></ul><h3><strong>Cara Penyajian (Opsional):</strong></h3><ol><li>Tumis telur orak-arik dengan sedikit minyak zaitun, beri garam &amp; lada.</li><li>Tata sayuran (bayam, wortel, tomat) di atas selembar roti gandum.</li><li>Tambahkan telur orak-arik, lalu tutup dengan lembar roti lainnya.</li><li>Panggang sebentar di wajan anti lengket atau panini press hingga hangat dan renyah.</li><li>Sajikan hangat sebagai sarapan, bekal, atau camilan sehat.<br><br></li></ol>', 11000.00, 11500.00, 3, '2025-05-23 01:10:29', '2025-05-23 02:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4QBklYAqEYNR0SfBDl4P82LyRUZXF1xOLKGnsNnx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidlBNaHhOeUVtRWFLWmV4Tkp1ZmFLRGcyaWlyQ2x2WVNteEVIZmxrUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8/Y2F0ZWdvcnk9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQvandoMHJ1UjllN1hBRk1pRERSeG0udGEvQVBzZC5Ec09pTjI1NWhGRWlZbmwyZVNGWVBLRyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1748001534);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `maps` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, '01JVY46HT9745KD659P7YSQMWV.jpg', 'Delicious Meals for a Healthier and Happier Life', 'Nutritious, delicious meals to support your healthy lifestyle. Find the perfect meal and start your journey today.', '2025-05-23 01:14:36', '2025-05-23 01:29:49'),
(2, '01JVY47GZSH01HH7H4Q8SW9593.png', '‎Delicious Meals for a Healthier and Happier Life', 'Nutritious, delicious meals to support your healthy lifestyle. Find the perfect meal and start your journey today.', '2025-05-23 01:22:43', '2025-05-23 01:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2025-05-22 07:28:02', '$2y$12$/jwh0ruR9e7XAFMiDDRxm.ta/APsd.DsOiN255hFEiYnl2eSFYPKG', '9gxF3g7wiD', '2025-05-22 07:28:02', '2025-05-22 07:28:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categori_id` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_categori_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
