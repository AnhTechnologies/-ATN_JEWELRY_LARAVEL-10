-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 28, 2024 lúc 02:23 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_jewelry`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$7VLRCZIgkY4I3Vfg7edih.MEBBc..kbS3SM4B8l6mxJLOst5bcpK.', '0779363295', NULL, 'DCCNTT11.10.4', 'Ninh Bình', 1, 1, '2024-04-21__1694550644230.jpg', '2024-04-16 17:15:17', '2024-04-17 17:15:17'),
(6, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$MgeOs4dwAV7dFEsI9jbivureUP4.vUJw67/yEzCEYvgkLSjvMXLUm', '012345678', NULL, NULL, NULL, 2, 1, NULL, '2024-04-17 17:15:17', '2024-05-05 05:13:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `a_name` varchar(191) NOT NULL,
  `a_slug` varchar(191) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `a_avatar` varchar(191) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(2, 'Top 5 trang sức ECZ PNJ được ưa chuộng nhất tháng 6/2023', 'top-5-trang-suc-ecz-pnj-duoc-ua-chuong-nhat-thang-62023', 1, 1, 3, '2023-07-04__top-5-trang-suc-ecz-pnj-duoc-ua-chuong-nhat-thang-6-2023.jpg', '<p><strong><em>Bật n&uacute;t hứng khởi trong &ldquo;bản &acirc;m hưởng&rdquo; trang sức m&ugrave;a h&egrave; với những item lấp l&aacute;nh v&agrave; lộng lẫy, biến c&ocirc; n&agrave;ng th&agrave;nh trung t&acirc;m của mọi &aacute;nh nh&igrave;n.</em></strong></p>\r\n\r\n<p>Trang sức ECZ lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của những n&agrave;ng y&ecirc;u th&iacute;ch sự sang trọng v&agrave; tinh tế. Với top 5 trang sức được ưa chuộng nhất th&aacute;ng 6/2023, ECZ lại một lần nữa chứng tỏ sức h&uacute;t đặc biệt của m&igrave;nh. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; v&agrave; t&igrave;m hiểu chi tiết về m&oacute;n trang sức thu h&uacute;t n&agrave;y để lựa chọn cho m&igrave;nh điểm nhấn tỏa s&aacute;ng v&agrave; đầy &yacute; nghĩa n&agrave;ng nh&eacute;!</p>', '2023-07-04 01:34:29', 1, 1, '2024-04-18 18:09:56'),
(3, 'Top 5 trang sức Kim Cương PNJ được ưa chuộng nhất tháng 6/2023', 'top-5-trang-suc-kim-cuong-pnj-duoc-ua-chuong-nhat-thang-62023', 1, 1, 4, '2024-04-21__2023-07-04-top-5-trang-suc-kim-cuong-pnj-duoc-ua-chuong-nhat-thang-6-2023.jpg', '<p><strong><em>Kim cương được coi l&agrave; quy chuẩn v&agrave;ng của vẻ đẹp ho&agrave;n hảo, kh&ocirc;ng g&igrave; c&oacute; thể so s&aacute;nh với sự lấp l&aacute;nh v&agrave; sang trọng của những vi&ecirc;n đ&aacute; qu&yacute; n&agrave;y. C&ugrave;ng điểm qua những tuyệt t&aacute;c từ tinh thể long lanh &ldquo;l&agrave;m dậy s&oacute;ng&rdquo; bao tr&aacute;i tim của ph&aacute;i đẹp nh&eacute;!</em></strong></p>\r\n\r\n<p>Kim cương v&agrave; người phụ nữ đều c&oacute; đặc điểm về sự ho&agrave;n mỹ v&agrave; vẻ đẹp tuyệt đối. Kh&aacute;c với những b&ocirc;ng hoa tươi tắn chỉ sống trong m&ugrave;a xu&acirc;n, kim cương lại toả s&aacute;ng v&agrave; lấp l&aacute;nh tr&ecirc;n từng vi&ecirc;n đ&aacute; qu&yacute;, trường tồn m&atilde;i theo thời gian. Tương tự, n&eacute;t đẹp của người phụ nữ cũng kh&ocirc;ng chỉ nổi bật trong một khoảnh khắc nhất định, m&agrave; l&agrave; sự kết hợp h&agrave;i h&ograve;a của vẻ ngo&agrave;i, t&acirc;m hồn v&agrave; t&igrave;nh cảm. Ch&iacute;nh v&igrave; vậy, kim cương v&agrave; người phụ nữ đều c&oacute; sức cuốn h&uacute;t m&atilde;nh liệt v&agrave; to&aacute;t l&ecirc;n vẻ đẹp ho&agrave;n mỹ khiến cho người nh&igrave;n kh&ocirc;ng thể rời mắt.</p>\r\n\r\n<p>Trong b&agrave;i viết n&agrave;y, PNJ sẽ giới thiệu đến qu&yacute; c&ocirc; top 5 điểm nhấn kim cương được ưa chuộng nhất th&aacute;ng 6/2023 với những thiết kế tinh xảo v&agrave; chất lượng ho&agrave;n hảo. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; v&agrave; ch&igrave;m đắm trong sự m&ecirc; hoặc của kim cương để t&ocirc;n l&ecirc;n n&eacute;t quyến rũ, đầy sức h&uacute;t của qu&yacute; c&ocirc; nh&eacute;!</p>', '2024-04-18 18:08:13', 1, 1, '2024-04-21 14:25:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) UNSIGNED NOT NULL,
  `atb_name` varchar(191) NOT NULL,
  `atb_slug` varchar(191) NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(16, 'Test', 'test', 1, 16, '2024-04-18 17:35:06', '2024-04-18 17:35:19'),
(17, 'Nữ', 'nu', 2, 16, '2024-04-18 17:35:58', '2024-04-18 17:36:22'),
(18, 'Nam', 'nam', 2, 16, '2024-04-18 17:37:08', '2024-04-18 17:37:33'),
(19, 'Pnj', 'pnj', 1, 16, '2024-04-18 17:38:02', '2024-04-22 13:29:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `c_name` varchar(191) NOT NULL,
  `c_slug` varchar(191) NOT NULL,
  `c_avatar` varchar(191) DEFAULT NULL,
  `c_description` varchar(191) DEFAULT NULL,
  `c_parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(16, 'Trang sức vàng', 'trang-suc-vang', '2024-04-21__2023-07-03-trang-suc-vang.png', NULL, 0, 1, 1, '2024-04-18 17:30:08', '2024-04-27 14:28:21'),
(17, 'Trang sức bạc', 'trang-suc-bac', '2024-04-21__2023-07-03-trang-suc-bac.png', NULL, 0, 1, 1, '2024-04-18 17:31:02', '2024-04-21 10:08:19'),
(18, 'Nhẫn cưới', 'nhan-cuoi', '2024-04-21__2023-07-03-nhan-cuoi.png', NULL, 0, 1, 1, '2024-04-18 17:31:55', '2024-04-21 15:09:32'),
(19, 'Dây chuyền vàng', 'day-chuyen-vang', '2024-04-21__2023-07-03-day-chuyen-vang.png', NULL, 0, 0, 1, '2024-04-18 17:32:37', '2024-04-21 10:09:22'),
(20, 'Nhẫn Kim Cương', 'nhan-kim-cuong', '2024-04-21__2023-07-03-nhan-kim-cuong.png', NULL, 0, 0, 1, '2024-04-18 17:33:22', '2024-04-21 10:09:35'),
(21, 'Bông Tai', 'bong-tai', '2024-04-21__2023-07-03-bong-tai-vang.png', NULL, 0, 0, 1, '2024-04-18 17:34:15', '2024-04-21 10:09:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(2, 'fsdfasdfasdadasdasdasdasdasda', 0, 6, 0, 3, 0, 0, '2024-04-17 19:31:12', NULL),
(3, 'adasdasdasdasdasd', 0, 35, 0, 4, 0, 0, '2024-04-21 14:57:56', NULL),
(4, 'ádasdasdasdasd', 0, 35, 0, 4, 0, 0, '2024-04-21 15:17:00', NULL),
(5, 'Sản phẩm tốt', 0, 35, 0, 3, 0, 0, '2024-05-05 23:09:41', NULL),
(6, '@Dev Mastery: sdfsdfsdfsd', 5, 35, 0, 3, 0, 0, '2024-05-05 23:11:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) UNSIGNED NOT NULL,
  `c_title` varchar(191) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(191) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(1, 'Đổi trả hàng', '0779363295', 'hoanganh.eaut@gmail.com', 'Hàng bị lỗi', '2024-04-17 22:21:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` int(11) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(2, 'abc', 3, '2024-04-19 01:03:00', '2024-05-19 01:03:00', 10, '2024-04-18 18:03:54', '2024-04-24 07:36:21'),
(3, 'xyz', 16, '2024-04-19 01:04:00', '2024-05-19 01:04:00', 5, '2024-04-18 18:04:58', '2024-04-21 19:59:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(11) UNSIGNED NOT NULL,
  `e_name` varchar(191) DEFAULT NULL,
  `e_banner` varchar(191) DEFAULT NULL,
  `e_link` varchar(191) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(4, 'Event 1', '2024-04-21__2023-07-03-thiet-ke-banner-dep-2-1.jpg', 'http', 1, 0, 0, 0, '2024-04-21 14:26:55', '2024-04-21 14:26:55'),
(5, 'Event 2', '2024-04-21__2023-07-04-danh-gia-hop-dung-trang-suc-ca-nhan-cao-cap-nhan-hieu-wrist-an-do-2.jpg', 'http', 0, 1, 0, 0, '2024-04-21 14:27:12', '2024-04-21 14:27:12'),
(6, 'Event 3', '2024-04-21__2023-07-04-1.webp', 'http', 0, 0, 1, 0, '2024-04-21 14:27:26', '2024-04-21 14:27:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exports`
--

CREATE TABLE `exports` (
  `id` int(11) UNSIGNED NOT NULL,
  `w_order_id` int(11) UNSIGNED NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) UNSIGNED NOT NULL,
  `k_name` varchar(191) NOT NULL,
  `k_slug` varchar(191) NOT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `mn_name` varchar(191) NOT NULL,
  `mn_slug` varchar(191) NOT NULL,
  `mn_description` varchar(191) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(3, 'Tin Hữu Ích', 'tin-huu-ich', NULL, 0, 1, '2024-04-18 18:06:35', NULL),
(4, 'Mẹo Hay', 'meo-hay', NULL, 0, 1, '2024-04-18 18:06:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `od_product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(6, 3, 3, 5, 1, 37449000, '2024-04-17 04:32:37', NULL),
(7, 4, 3, 5, 1, 37449000, '2024-04-17 19:06:13', NULL),
(8, 5, 6, 0, 1, 27031000, '2024-04-17 19:28:24', NULL),
(9, 6, 9, 0, 1, 830000, '2024-04-18 13:26:19', NULL),
(10, 7, 38, 5, 1, 37449000, '2024-04-18 18:36:34', NULL),
(11, 7, 39, 0, 1, 6310000, '2024-04-18 18:36:34', NULL),
(12, 8, 35, 0, 1, 27031000, '2024-04-18 18:38:43', NULL),
(13, 8, 30, 0, 1, 715000, '2024-04-18 18:38:43', NULL),
(14, 9, 35, 0, 1, 27031000, '2024-04-20 14:56:49', NULL),
(15, 10, 35, 0, 1, 27031000, '2024-04-21 14:31:10', NULL),
(16, 10, 36, 11, 1, 31773000, '2024-04-21 14:31:10', NULL),
(17, 10, 34, 0, 1, 32546000, '2024-04-21 14:31:10', NULL),
(18, 11, 35, 0, 1, 27031000, '2024-04-21 15:08:28', NULL),
(19, 12, 35, 0, 1, 27031000, '2024-04-21 19:59:16', NULL),
(20, 13, 35, 0, 1, 27031000, '2024-04-22 11:10:38', NULL),
(21, 14, 38, 5, 1, 37449000, '2024-04-24 07:33:46', NULL),
(22, 14, 35, 0, 1, 27031000, '2024-04-24 07:33:46', NULL),
(23, 15, 30, 0, 1, 715000, '2024-04-24 07:36:22', NULL),
(24, 16, 38, 5, 1, 37449000, '2024-04-27 10:36:38', NULL),
(26, 18, 30, 0, 1, 715000, '2024-06-28 00:07:12', NULL),
(27, 19, 34, 0, 1, 32546000, '2024-06-28 00:08:28', NULL),
(28, 20, 30, 0, 1, 715000, '2024-06-28 00:11:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(11) UNSIGNED NOT NULL,
  `ph_code` varchar(191) NOT NULL,
  `ph_user_id` int(11) UNSIGNED NOT NULL,
  `ph_debit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_debit`, `ph_balance`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 1, 124943000, 0, 1, 7, 2023, '2023-07-04 02:22:43', NULL),
(2, 'PAYOUT2', 2, 14444000, 0, 1, 7, 2023, '2023-07-04 14:45:51', NULL),
(3, 'PAYOUT3', 3, 37449000, 0, 1, 4, 2024, '2024-04-17 04:32:37', NULL),
(4, 'PAYOUT4', 3, 37449000, 0, 1, 4, 2024, '2024-04-17 19:06:13', NULL),
(5, 'PAYOUT5', 3, 27031000, 0, 1, 4, 2024, '2024-04-17 19:28:24', NULL),
(6, 'PAYOUT6', 3, 830000, 0, 1, 4, 2024, '2024-04-18 13:26:19', NULL),
(7, 'PAYOUT7', 3, 39383100, 0, 1, 4, 2024, '2024-04-18 18:36:34', NULL),
(8, 'PAYOUT8', 3, 26358700, 0, 1, 4, 2024, '2024-04-18 18:38:43', NULL),
(9, 'PAYOUT9', 3, 27031000, 0, 1, 4, 2024, '2024-04-20 14:56:49', NULL),
(10, 'PAYOUT10', 4, 91350000, 0, 1, 4, 2024, '2024-04-21 14:31:11', NULL),
(11, 'PAYOUT11', 4, 24327900, 0, 1, 4, 2024, '2024-04-21 15:08:28', NULL),
(12, 'PAYOUT12', 4, 25679450, 0, 1, 4, 2024, '2024-04-21 19:59:17', NULL),
(13, 'PAYOUT13', 4, 24327900, 0, 1, 4, 2024, '2024-04-22 11:10:38', NULL),
(14, 'PAYOUT14', 4, 58032000, 0, 1, 4, 2024, '2024-04-24 07:33:46', NULL),
(15, 'PAYOUT15', 4, 643500, 0, 1, 4, 2024, '2024-04-24 07:36:22', NULL),
(16, 'PAYOUT16', 4, 37449000, 0, 1, 4, 2024, '2024-04-27 10:36:38', NULL),
(17, 'PAYOUT17', 4, 27031000, 0, 1, 4, 2024, '2024-04-27 14:08:17', NULL),
(18, 'PAYOUT18', 3, 715000, 0, 1, 6, 2024, '2024-06-28 00:07:12', NULL),
(19, 'PAYOUT19', 3, 32546000, 0, 1, 6, 2024, '2024-06-28 00:08:28', NULL),
(20, 'PAYOUT20', 3, 715000, 0, 1, 6, 2024, '2024-06-28 00:11:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(11) UNSIGNED NOT NULL,
  `pi_user_id` int(11) UNSIGNED NOT NULL,
  `pi_admin_id` int(11) UNSIGNED NOT NULL,
  `pi_provider` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(11) UNSIGNED NOT NULL,
  `po_user_id` int(11) UNSIGNED NOT NULL,
  `po_transaction_id` int(11) UNSIGNED NOT NULL,
  `po_money` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 124943000, 1, 7, 2023, '2023-07-04 02:22:43', NULL),
(2, 2, 2, 14444000, 1, 7, 2023, '2023-07-04 14:45:51', NULL),
(3, 3, 3, 37449000, 1, 4, 2024, '2024-04-17 04:32:37', NULL),
(4, 3, 4, 37449000, 1, 4, 2024, '2024-04-17 19:06:13', NULL),
(5, 3, 5, 27031000, 1, 4, 2024, '2024-04-17 19:28:24', NULL),
(6, 3, 6, 830000, 1, 4, 2024, '2024-04-18 13:26:19', NULL),
(7, 3, 7, 39383100, 1, 4, 2024, '2024-04-18 18:36:34', NULL),
(8, 3, 8, 26358700, 1, 4, 2024, '2024-04-18 18:38:43', NULL),
(9, 3, 9, 27031000, 1, 4, 2024, '2024-04-20 14:56:49', NULL),
(10, 4, 10, 91350000, 1, 4, 2024, '2024-04-21 14:31:11', NULL),
(11, 4, 11, 24327900, 1, 4, 2024, '2024-04-21 15:08:28', NULL),
(12, 4, 12, 25679450, 1, 4, 2024, '2024-04-21 19:59:16', NULL),
(13, 4, 13, 24327900, 1, 4, 2024, '2024-04-22 11:10:38', NULL),
(14, 4, 14, 58032000, 1, 4, 2024, '2024-04-24 07:33:46', NULL),
(15, 4, 15, 643500, 1, 4, 2024, '2024-04-24 07:36:22', NULL),
(16, 4, 16, 37449000, 1, 4, 2024, '2024-04-27 10:36:38', NULL),
(17, 4, 17, 27031000, 1, 4, 2024, '2024-04-27 14:08:17', NULL),
(18, 3, 18, 715000, 1, 6, 2024, '2024-06-28 00:07:12', NULL),
(19, 3, 19, 32546000, 1, 6, 2024, '2024-06-28 00:08:28', NULL),
(20, 3, 20, 715000, 1, 6, 2024, '2024-06-28 00:11:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_slug` varchar(191) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_category_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `updated_at`) VALUES
(24, 'Product 15', 'product-15', 2300000, 17, 1, 0, 0, '2024-04-21__1.png', 1, 0, 1, 0, '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 0, 0, 0, '2024-04-18 17:40:30', 20, '2024-04-21 20:41:58'),
(25, 'Nhẫn Kim cương Vàng 18K Disney', 'nhan-kim-cuong-vang-18k-disney', 7222000, 16, 1, 0, 0, '2024-04-21__2.png', 1, 0, 1, 0, '<p>Kim cương vốn l&agrave; m&oacute;n trang sức mang đến niềm ki&ecirc;u h&atilde;nh v&agrave; cảm hứng thời trang bất tận. Sở hữu ri&ecirc;ng cho m&igrave;nh m&oacute;n trang sức kim cương ch&iacute;nh l&agrave; điều m&agrave; ai cũng mong muốn. Chiếc&nbsp;<a href=\"https://www.pnj.com.vn/\">nhẫn</a>&nbsp;được chế t&aacute;c từ v&agrave;ng 18K c&ugrave;ng điểm nhấn kim cương với 57 gi&aacute;c cắt chuẩn x&aacute;c, tạo n&ecirc;n m&oacute;n trang sức đầy sự sang trọng v&agrave; đẳng cấp.</p>\r\n\r\n<p>Kim cương đ&atilde; đẹp,&nbsp;<a href=\"https://www.pnj.com.vn/\">trang sức kim cương</a>&nbsp;lại c&agrave;ng mang sức hấp dẫn kh&oacute; cưỡng. Sự kết hợp mới mẻ n&agrave;y chắc chắn sẽ tạo n&ecirc;n dấu ấn thời trang hiện đại v&agrave; gi&uacute;p qu&yacute; c&ocirc; trở n&ecirc;n nổi bật, tự tin v&agrave; thu h&uacute;t sự ngưỡng mộ của mọi người.</p>', 0, 0, 0, '2024-04-18 17:42:29', 28, '2024-04-21 20:49:43'),
(26, 'Nhẫn cưới Kim cương Vàng 18K PNJ The Moment DDDDY000728', 'nhan-cuoi-kim-cuong-vang-18k-pnj-the-moment-ddddy000728', 28690000, 20, 1, 0, 0, '2024-04-21__3.png', 1, 0, 1, 0, '<p>Vượt qua h&agrave;nh tr&igrave;nh m&agrave;i giũa dưới b&agrave;n tay của c&aacute;c nghệ nh&acirc;n, kim cương gắn liền với biểu tượng của t&igrave;nh y&ecirc;u thủy chung, son sắt. Với sắc v&agrave;ng chuẩn mực 18K rực rỡ c&ugrave;ng vẻ đẹp lấp l&aacute;nh v&agrave; tinh khiết của kim cương, PNJ mang đến&nbsp;<a href=\"https://www.pnj.com.vn/\">nhẫn cướ</a>i hiện đại nhưng vẫn giữ được n&eacute;t truyền thống vốn c&oacute;.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; vai tr&ograve; l&agrave; vật đ&iacute;nh ước thi&ecirc;ng li&ecirc;ng, nhẫn cưới&nbsp;<a href=\"https://www.pnj.com.vn/\">kim cương</a>&nbsp;c&ograve;n thể hiện c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch của mỗi cặp đ&ocirc;i. Tại PNJ, c&aacute;c cặp đ&ocirc;i lu&ocirc;n c&oacute; thể sở hữu những thiết kế nhẫn cưới kim cương vừa hợp l&iacute; về t&agrave;i ch&iacute;nh, vừa đẹp về mẫu m&atilde;.</p>', 0, 0, 0, '2024-04-18 17:44:10', 29, '2024-04-21 10:36:47'),
(27, 'Dây chuyền Vàng 18K PNJ 0000X000041', 'day-chuyen-vang-18k-pnj-0000x000041', 112300000, 16, 1, 0, 0, '2024-04-21__4.png', 0, 0, 1, 0, '<p>Bằng việc kết hợp chất liệu v&agrave;ng&nbsp;18K c&ugrave;ng thiết kế tinh tế, sợi&nbsp;<a href=\"https://www.pnj.com.vn/\">d&acirc;y chuyền</a>&nbsp;ch&iacute;nh l&agrave; điểm nhấn nổi bật, t&ocirc; điểm th&ecirc;m vẻ đẹp thanh lịch v&agrave; duy&ecirc;n d&aacute;ng cho n&agrave;ng. D&acirc;y đeo mảnh th&iacute;ch hợp với những bộ trang phục c&oacute; nhiều họa tiết, đồng thời tạo điểm nh&igrave;n c&acirc;n bằng với c&aacute;c phụ kiện to bản kh&aacute;c.</p>\r\n\r\n<p>D&ugrave; diện l&ecirc;n bộ c&aacute;nh dạ tiệc hay đơn giản l&agrave; oufit thường ng&agrave;y, chiếc d&acirc;y chuyền sẽ tạo điểm nhấn tuyệt đối xung quanh xương quai xanh v&agrave; khơi gợi &aacute;nh nh&igrave;n xung quanh.</p>', 0, 0, 0, '2024-04-18 17:45:28', 20, '2024-04-21 10:42:46'),
(28, 'Cặp nhẫn cưới Kim cương Vàng 18K PNJ Chung Đôi 00990-00976', 'cap-nhan-cuoi-kim-cuong-vang-18k-pnj-chung-doi-00990-00976', 2183000, 16, 1, 0, 0, '2024-04-21__5.png', 0, 0, 1, 0, '<p>Vượt qua h&agrave;nh tr&igrave;nh m&agrave;i giũa dưới b&agrave;n tay của c&aacute;c nghệ nh&acirc;n, kim cương gắn liền với biểu tượng của t&igrave;nh y&ecirc;u thủy chung, son sắt. Với sắc v&agrave;ng 18K rực rỡ c&ugrave;ng vẻ đẹp lấp l&aacute;nh v&agrave; tinh khiết của kim cương, PNJ mang đến&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;atm_medium=nhanvang&amp;atm_campaign=&amp;atm_content=\">nhẫn v&agrave;ng</a>&nbsp;hiện đại nhưng vẫn giữ được n&eacute;t truyền thống vốn c&oacute;.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; vai tr&ograve; l&agrave; vật đ&iacute;nh ước thi&ecirc;ng li&ecirc;ng,&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-cuoi/nhan/?atm_source=pdp&amp;atm_medium=nhancuoivang&amp;atm_campaign=&amp;atm_content=\">nhẫn cưới</a>&nbsp;kim cương c&ograve;n thể hiện c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch của mỗi cặp đ&ocirc;i. Tại PNJ, c&aacute;c cặp đ&ocirc;i lu&ocirc;n c&oacute; thể sở hữu những thiết kế nhẫn cưới kim cương vừa hợp l&iacute; về t&agrave;i ch&iacute;nh, vừa đẹp về mẫu m&atilde;.</p>', 0, 0, 0, '2024-04-18 17:46:56', 40, '2024-04-21 10:42:19'),
(29, 'Cặp nhẫn cưới Kim cương Vàng trắng 14K PNJ Chung Đôi 00380-00374', 'cap-nhan-cuoi-kim-cuong-vang-trang-14k-pnj-chung-doi-00380-00374', 8500000, 17, 1, 0, 0, '2024-04-21__5.png', 0, 0, 1, 0, '<p>Kim cương vốn l&agrave; m&oacute;n trang sức mang đến niềm ki&ecirc;u h&atilde;nh v&agrave; cảm hứng thời trang bất tận. Sở hữu ri&ecirc;ng cho m&igrave;nh m&oacute;n trang sức kim cương ch&iacute;nh l&agrave; điều m&agrave; ai cũng mong muốn. Chiếc&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-vang/?itm_source=pdp&amp;itm_medium=nhanvang&amp;itm_campaign=&amp;itm_content=\">nhẫn</a>&nbsp;được chế t&aacute;c từ v&agrave;ng 14K c&ugrave;ng điểm nhấn kim cương với 57 gi&aacute;c cắt chuẩn x&aacute;c, tạo n&ecirc;n m&oacute;n trang sức đầy sự sang trọng v&agrave; đẳng cấp.</p>\r\n\r\n<p>Kim cương đ&atilde; đẹp,&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-kim-cuong/?itm_source=pdp&amp;itm_medium=trangsuckimcuong&amp;itm_campaign=&amp;itm_content=\">trang sức kim cương</a>&nbsp;lại c&agrave;ng mang sức hấp dẫn kh&oacute; cưỡng. Sự kết hợp mới mẻ n&agrave;y chắc chắn sẽ tạo n&ecirc;n dấu ấn thời trang hiện đại v&agrave; gi&uacute;p qu&yacute; c&ocirc; trở n&ecirc;n nổi bật, tự tin v&agrave; thu h&uacute;t sự ngưỡng mộ của mọi người.</p>', 0, 0, 0, '2024-04-18 17:48:10', 20, '2024-04-21 10:33:33'),
(30, 'Nhẫn nam bạc đính đá PNJSilver XMXMK000167', 'nhan-nam-bac-dinh-da-pnjsilver-xmxmk000167', 715000, 17, 1, 0, 0, '2024-04-21__7.png', 2, 1, 1, 4, '<h2>Nhẫn bạc nam PNJSilver đ&iacute;nh đ&aacute;</h2>\r\n\r\n<p>Những m&oacute;n trang sức như nhẫn, đồng hồ kh&ocirc;ng chỉ gi&uacute;p cho c&aacute;c c&ocirc; n&agrave;ng trở n&ecirc;n xinh đẹp m&agrave; c&ograve;n gi&uacute;p ph&aacute;i mạnh tr&ocirc;ng lịch l&atilde;m v&agrave; phong độ hơn. Sở hữu thiết kế c&oacute; kiểu d&aacute;ng bản to nổi bật với vẻ đẹp s&aacute;ng lấp l&aacute;nh của những vi&ecirc;n đ&aacute; CZ nhỏ xinh được điểm xuyến tinh tế xung quanh viền nhẫn, chiếc&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-bac/?features_hash=38-19890_43-19702\">nhẫn bạc nam PNJSilver</a>&nbsp;mang vẻ đẹp lịch l&atilde;m v&agrave; trẻ trung.</p>\r\n\r\n<h3>Nhẫn bạc nam PNJSilver sở hữu thiết kế hiện đại v&agrave; mạnh mẽ</h3>\r\n\r\n<p><img alt=\"Nhẫn PNJSilver mang vẻ đẹp thời trang \" src=\"https://www.pnj.com.vn/images/content/trang-suc-bac/nhan/sbd2kn12491.100-nhan-bac-nam-pnjsilver-dinh-da.jpg?1531217730017\" /></p>\r\n\r\n<p>Nhẫn bạc nam PNJSilver gi&uacute;p ch&agrave;ng trở n&ecirc;n phong độ v&agrave; nam t&iacute;nh</p>\r\n\r\n<p>Nếu đ&aacute; CZ gi&uacute;p n&agrave;ng rạng rỡ, tỏa s&aacute;ng th&igrave; đối với ch&agrave;ng đ&aacute; CZ sẽ gi&uacute;p ch&agrave;ng trở n&ecirc;n phong độ v&agrave; nam t&iacute;nh. Sở hữu kiểu d&aacute;ng bản to kết hợp với vẻ s&aacute;ng lấp l&aacute;nh của đ&aacute; được thợ nữ trang đ&iacute;nh một c&aacute;ch chắc chắn, chiếc nhẫn bạc sẽ l&agrave; thiết kế ph&ugrave; hợp d&agrave;nh ri&ecirc;ng cho ph&aacute;i mạnh. Ngo&agrave;i ra, với chất liệu bạc cao cấp, PNJSilver lu&ocirc;n mang đến độ bền chắc cho c&aacute;c sản phẩm&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-bac/\">trang sức</a>&nbsp;v&agrave; an to&agrave;n cho người sử dụng.</p>\r\n\r\n<h3>Phong độ v&agrave; lịch l&atilde;m với nhẫn bạc nam PNJSilver</h3>\r\n\r\n<p>Nếu&nbsp;<a href=\"https://www.pnj.com.vn/dong-ho/\">đồng hồ</a>&nbsp;l&agrave; phụ kiện gi&uacute;p qu&yacute; &ocirc;ng thể hiện vẻ đẹp nam t&iacute;nh th&igrave; nhẫn l&agrave; trang sức gi&uacute;p ch&agrave;ng tự tin v&agrave; cuốn h&uacute;t trong từng khoảnh khắc. Với mẫu nhẫn nam n&agrave;y, ph&aacute;i mạnh c&oacute; thể phối c&ugrave;ng phụ kiện kh&aacute;c như đồng hồ hoặc trang phục kh&aacute;c t&ugrave;y v&agrave;o sở th&iacute;ch hoặc t&iacute;nh c&aacute;ch của mỗi người.</p>', 0, 0, 0, '2024-04-18 17:49:26', 18, '2024-04-21 10:41:45'),
(31, 'Nhẫn bạc đính đá PNJSilver XM00K000129', 'nhan-bac-dinh-da-pnjsilver-xm00k000129', 338000, 17, 1, 0, 0, '2024-04-21__8.png', 0, 1, 1, 0, '<h2>Nhẫn Bạc PNJSilver đ&iacute;nh đ&aacute;</h2>\r\n\r\n<p>Những cặp đ&ocirc;i đang y&ecirc;u thường t&igrave;m c&aacute;ch để lưu giữ lại những khoảnh khắc hạnh ph&uacute;c b&ecirc;n nhau, họ tặng nhau những m&oacute;n qu&agrave; nhỏ đong đầy y&ecirc;u thương, d&agrave;nh cho nhau những lời n&oacute;i ngọt ng&agrave;o, sự quan t&acirc;m ch&acirc;n th&agrave;nh&hellip; c&ugrave;ng nhau mặc đồ đ&ocirc;i, đi gi&agrave;y đ&ocirc;i, đeo trang sức đ&ocirc;i v&agrave; kh&ocirc;ng thể kh&ocirc;ng kể đến nhẫn đ&ocirc;i.Nắm bắt xu hướng đ&oacute;, thương hiệu PNJSilver đ&atilde; cho ra mắt những cặp nhẫn đ&ocirc;i cực kỳ &ldquo;chất&rdquo; kh&ocirc;ng bao giờ &ldquo;lỗi mốt&rdquo;.</p>\r\n\r\n<h3>Tạo điểm nhấn với nhẫn bạc PNJSilver</h3>\r\n\r\n<p><img alt=\"Nhẫn bạc đính đá pnjsilver xm00k000129 | pnj.com.vn\" src=\"https://www.pnj.com.vn/images/content/trang-suc-bac/nhan/snd2kn12480.100-nhan-bac-pnjsilver-dinh-da.jpg?1511164290295\" /></p>\r\n\r\n<p>Nhẫn bạc nữ PNJSilver d&agrave;nh tặng cho người thương</p>\r\n\r\n<p>Nhẫn bạc được xem l&agrave; &ldquo;trang sức diệu kỳ&rdquo; của chị em phụ nữ. Ngo&agrave;i nhẫn bạc đ&iacute;nh đ&aacute; nh&ocirc; sang trọng, th&igrave; nhẫn cặp của nữ thương hiệu PNJSilver với kiểu d&aacute;ng mềm mại, nữ t&iacute;nh, bằng chất liệu bạc 92.5 cao cấp cũng được nhiều chị em kh&aacute; y&ecirc;u th&iacute;ch. B&ecirc;n cạnh đ&oacute;, nhẫn bạc c&ograve;n bền vững, kh&ocirc;ng han rỉ, kh&ocirc;ng phai m&agrave;u v&agrave; mang tới biểu tượng cho t&igrave;nh y&ecirc;u bền vững. N&ecirc;n nhẫn bạc PNJSilver sẽ l&agrave; m&oacute;n qu&agrave; tuyệt vời m&agrave; ph&aacute;i mạnh c&oacute; thể d&agrave;nh tặng cho nữa kia trong những dịp đặc biệt của hai người.</p>\r\n\r\n<h3>Nhẫn bạc PNSilver - V&ograve;ng tr&ograve;n t&igrave;nh y&ecirc;u</h3>\r\n\r\n<p>Nhẫn đ&ocirc;i PNJSilver được thiết kế kh&aacute; tương đồng về kiểu d&aacute;ng, tượng trưng cho t&igrave;nh y&ecirc;u chung thủy, của hai t&acirc;m hồn đồng điệu hay cho một v&ograve;ng tay dịu &ecirc;m, một c&aacute;i nh&igrave;n tr&igrave;u mến, lời quan t&acirc;m ngọt ng&agrave;o&hellip; kể cả khi người ấy kh&ocirc;ng gần b&ecirc;n. V&agrave; minh chứng cho chuyện t&igrave;nh y&ecirc;u đang thăng hoa.</p>', 0, 0, 0, '2024-04-18 17:50:42', 20, '2024-04-21 14:32:20'),
(32, 'Nhẫn bạc đính đá PNJSilver XMXMK000124', 'nhan-bac-dinh-da-pnjsilver-xmxmk000124', 830000, 17, 1, 0, 0, '2024-04-21__9.png', 0, 1, 1, 0, '<h2>Nhẫn bạc đ&iacute;nh đ&aacute; PNJSilver XMXMK000124</h2>\r\n\r\n<p>Phụ kiện từ l&acirc;u đ&atilde; trở th&agrave;nh m&oacute;n đồ kh&ocirc;ng thể thiếu đối với chị em phụ nữ, sẽ k&eacute;m nổi bật nếu bạn ra đường m&agrave; kh&ocirc;ng trang bị cho m&igrave;nh một m&oacute;n nữ trang n&agrave;o đ&oacute;.&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-bac/\">Nhẫn</a>&nbsp;bạc dưới đ&acirc;y l&agrave; sự phối hợp nhuần nhuyễn giữa yếu tố h&agrave;i h&ograve;a v&agrave; tinh tế, chắc chắn sẽ đem đến sự hiện đại cho c&aacute;c qu&yacute; c&ocirc;.</p>\r\n\r\n<h3>Điểm nổi bật của nhẫn bạc đ&iacute;nh đ&aacute;</h3>\r\n\r\n<p><img alt=\"Nhẫn bạc đính đá pnjsilver xmxmk000124 | pnj.com.vn\" src=\"https://www.pnj.com.vn/images/content/trang-suc-bac/nhan/snd2kn09657.100-nhan-bac-pnjsilver-dinh-da.jpg?1513932085596\" /></p>\r\n\r\n<p>Chiếc nhẫn với tạo h&igrave;nh lấp l&aacute;nh ấn tượng</p>\r\n\r\n<p>Nhẫn PNJSilver đ&iacute;nh đ&aacute; ghi điểm ấn tượng với người đối diện ở kh&acirc;u thiết kế phần mặt. Vi&ecirc;n đ&aacute; s&aacute;ng cỡ lớn được gắn nh&ocirc; cao, nổi bật giữa d&agrave;n đ&aacute; cỡ nhỏ được nạm ph&iacute;a b&ecirc;n dưới. Th&acirc;n nhẫn d&aacute;ng tr&ograve;n v&agrave; trơn, khi đeo sẽ &ocirc;m s&aacute;t ng&oacute;n tay người đeo, giảm thiểu t&igrave;nh trạng bị rơi hay tuột. Ngo&agrave;i ra, gam m&agrave;u trung t&iacute;nh của trang sức bạc l&agrave; ưu điểm vượt trội của sản phẩm để dễ d&agrave;ng kết hợp với mọi trang phục.</p>\r\n\r\n<h3>Nhẫn bạc PNJSilver l&agrave; sự lựa chọn tuyệt vời</h3>\r\n\r\n<p>Sự h&agrave;i l&ograve;ng v&agrave; tin d&ugrave;ng đến từ c&aacute;c bạn ch&iacute;nh l&agrave; động lực để&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-bac/\">PNJSilver</a>&nbsp;nỗ lực ph&aacute;t triển hơn nữa. Kh&ocirc;ng chỉ nỗ lực trong việc ho&agrave;n thiện thiết kế của những m&oacute;n trang sức m&agrave; PNJSilver c&ograve;n lựa chọn chất liệu bạc tốt nhất d&agrave;nh cho c&aacute;c sản phẩm của m&igrave;nh. Với chất liệu bạc 925 cao cấp nhập khẩu, c&aacute;c ch&agrave;ng trai, c&aacute;c c&ocirc; g&aacute;i h&atilde;y y&ecirc;n t&acirc;m lựa chọn v&agrave; sử dụng những m&oacute;n phụ kiện đến từ PNJSilver nh&eacute;.</p>', 0, 0, 0, '2024-04-18 17:51:53', 19, '2024-04-21 14:32:24'),
(33, 'Nhẫn Bạc đính ngọc trai PNJSilver PMXMW000001', 'nhan-bac-dinh-ngoc-trai-pnjsilver-pmxmw000001', 795000, 17, 1, 0, 0, '2024-04-21__10.png', 0, 1, 1, 0, '<p>Với kiểu d&aacute;ng thời thượng c&ugrave;ng những vi&ecirc;n đ&aacute; đ&iacute;nh xung quanh bề mặt chiếc nhẫn tr&ecirc;n chất liệu bạc 92.5, PNJSilver mang đến chiếc&nbsp;<a href=\"https://www.pnj.com.vn/\">nhẫn</a>&nbsp;với vẻ đẹp trẻ trung nhưng kh&ocirc;ng k&eacute;m phần ph&aacute; c&aacute;ch, gi&uacute;p c&aacute;c c&ocirc; g&aacute;i tr&ocirc;ng thật nổi bật.</p>\r\n\r\n<p><a href=\"https://www.pnj.com.vn/\">PNJSilver</a>&nbsp;hiểu rằng, c&aacute;c c&ocirc; g&aacute;i lu&ocirc;n c&oacute; đặc quyền được l&agrave;m đẹp v&agrave; tỏa s&aacute;ng để tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng của ch&iacute;nh m&igrave;nh. Để thỏa sức s&aacute;ng tạo với lựa chọn ri&ecirc;ng của từng c&ocirc; g&aacute;i, n&agrave;ng c&oacute; thể kết hợp nhiều items kh&aacute;c để dễ d&agrave;ng mix&amp;match với nhau t&ugrave;y theo c&aacute; t&iacute;nh thời trang v&agrave; lu&ocirc;n refresh diện mạo mỗi ng&agrave;y nh&eacute;.</p>', 0, 0, 0, '2024-04-18 17:53:03', 20, '2024-04-21 10:40:48'),
(34, 'Nhẫn nam Vàng 18K đính đá Citrine PNJ CTXMY000552', 'nhan-nam-vang-18k-dinh-da-citrine-pnj-ctxmy000552', 32546000, 16, 1, 0, 0, '2024-04-21__11.png', 1, 1, 1, 2, '<p>Nổi bật với sắc v&agrave;ng cam n&oacute;ng bỏng, đ&aacute; Citrine lu&ocirc;n mang vẻ đẹp rạng rỡ v&agrave; tỏa s&aacute;ng khi đeo tr&ecirc;n người. Chiếc&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;atm_medium=nhanvang&amp;atm_campaign=&amp;atm_content=\">nhẫn</a>&nbsp;được chế t&aacute;c từ v&agrave;ng 18K c&ugrave;ng đ&aacute; Citrine, mang đến m&oacute;n trang sức sang trọng v&agrave; mạnh mẽ cho qu&yacute; &ocirc;ng. B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-da-quy/trang-suc-citrine/?atm_source=pdp&amp;atm_medium=trangsuccitrine&amp;atm_campaign=&amp;atm_content=\">trang sức Citrine</a>&nbsp;cũng kh&aacute; ph&ugrave; hợp với nhiều lứa tuổi kh&aacute;c nhau, v&agrave; ngự trị tr&ecirc;n l&agrave;n da n&agrave;o cũng to&aacute;t l&ecirc;n được vẻ đẹp ri&ecirc;ng biệt.</p>\r\n\r\n<p>Ngo&agrave;i ra, Citrine cũng mang nguồn năng lượng từ mặt trời n&ecirc;n n&oacute; mang lại sự t&iacute;ch cực cũng như gi&uacute;p cơ thể tr&agrave;n đầy sức sống.</p>', 0, 0, 0, '2024-04-18 17:54:20', 19, '2024-04-21 10:40:01'),
(35, 'Nhẫn nam Vàng 18K đính đá Citrine PNJ CTXMY000555', 'nhan-nam-vang-18k-dinh-da-citrine-pnj-ctxmy000555', 27031000, 16, 1, 0, 0, '2024-04-21__12.png', 10, 1, 1, 8, '<p style=\"text-align:justify\">Nổi bật với sắc v&agrave;ng cam n&oacute;ng bỏng, đ&aacute; Citrine lu&ocirc;n mang vẻ đẹp rạng rỡ v&agrave; tỏa s&aacute;ng khi đeo tr&ecirc;n người. Chiếc&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;atm_medium=nhanvang&amp;atm_campaign=&amp;atm_content=\">nhẫn</a>&nbsp;được chế t&aacute;c từ v&agrave;ng 18K c&ugrave;ng đ&aacute; Citrine, mang đến m&oacute;n trang sức sang trọng v&agrave; mạnh mẽ cho qu&yacute; &ocirc;ng. B&ecirc;n cạnh đ&oacute;,&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-da-quy/trang-suc-citrine/?atm_source=pdp&amp;atm_medium=trangsuccitrine&amp;atm_campaign=&amp;atm_content=\">trang sức Citrine</a>&nbsp;cũng kh&aacute; ph&ugrave; hợp với nhiều lứa tuổi kh&aacute;c nhau, v&agrave; ngự trị tr&ecirc;n l&agrave;n da n&agrave;o cũng to&aacute;t l&ecirc;n được vẻ đẹp ri&ecirc;ng biệt.</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra, Citrine cũng mang nguồn năng lượng từ mặt trời n&ecirc;n n&oacute; mang lại sự t&iacute;ch cực cũng như gi&uacute;p cơ thể tr&agrave;n đầy sức sống.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:657.6px; top:143px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 2, 10, 5, '2024-04-18 17:55:40', 23, '2024-05-05 23:09:51'),
(36, 'Nhẫn nam Vàng 18K đính đá Ruby PNJ RBXMY001154', 'nhan-nam-vang-18k-dinh-da-ruby-pnj-rbxmy001154', 35700000, 16, 1, 0, 11, '2024-04-21__13.png', 2, 1, 1, 1, '<p style=\"text-align:justify\">Được chế t&aacute;c từ v&agrave;ng 18K c&ugrave;ng vẻ đẹp huyền b&iacute; của vi&ecirc;n đ&aacute; Ruby, PNJ mang đến sản phẩm&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;atm_medium=nhanvang&amp;atm_campaign=&amp;atm_content=\">nhẫn</a>&nbsp;sang trọng v&agrave; quyến rũ d&agrave;nh cho ph&aacute;i mạnh. Đ&aacute; Ruby sở hữu vẻ quyến rũ, khi được cộng hưởng &aacute;nh sắc của d&atilde;y đ&aacute; trắng lấp l&aacute;nh, h&agrave;i h&ograve;a theo từng đường n&eacute;t thiết kế đ&atilde; tạo n&ecirc;n một m&oacute;n trang sức đẹp m&ecirc; hồn.</p>\r\n\r\n<p style=\"text-align:justify\">Đặc biệt hơn, một chiếc nhẫn đ&iacute;nh đ&aacute; Ruby thuận theo phong thủy sẽ mang lại may mắn cũng như nguồn năng lượng t&iacute;ch cực. V&agrave; người sở hữu&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-da-quy/trang-suc-ruby/?atm_source=pdp&amp;atm_medium=trangsucruby&amp;atm_campaign=&amp;atm_content=\">trang sức Ruby</a>&nbsp;kh&ocirc;ng chỉ c&oacute; được những năng lượng tốt n&agrave;y m&agrave; cuộc sống sẽ ng&agrave;y c&agrave;ng khởi sắc.</p>', 0, 0, 0, '2024-04-18 17:57:06', 18, '2024-04-21 10:39:10'),
(37, 'Nhẫn nam Vàng Trắng 14K đính đá Sapphire PNJ SPXMW000496', 'nhan-nam-vang-trang-14k-dinh-da-sapphire-pnj-spxmw000496', 39179000, 17, 1, 0, 0, '2024-04-21__14.png', 0, 1, 1, 0, '<p style=\"text-align:justify\">Trang sức ng&agrave;y nay kh&ocirc;ng chỉ t&ocirc; điểm cho n&eacute;t mỏng manh, sự nữ t&iacute;nh của ph&aacute;i đẹp m&agrave; c&ograve;n gi&uacute;p c&aacute;nh đ&agrave;n &ocirc;ng rắn rỏi v&agrave; nam t&iacute;nh hơn. Chiếc&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;atm_medium=nhanvang&amp;atm_campaign=&amp;atm_content=\">nhẫn</a>&nbsp;sở hữu thiết kể bản to với sự phối hợp của v&agrave;ng 18K chuẩn mực c&ugrave;ng sắc xanh đen của&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-da-quy/trang-suc-sapphire/?atm_source=pdp&amp;atm_medium=trangsucsapphire&amp;atm_campaign=&amp;atm_content=\">đ&aacute; Sapphire</a>, mang đến mẫu trang sức đậm chất c&aacute; t&iacute;nh v&agrave; mạnh mẽ.</p>\r\n\r\n<p style=\"text-align:justify\">Chiếc nhẫn n&agrave;y sẽ lu&ocirc;n l&agrave; sự lựa chọn ho&agrave;n hảo cho ph&aacute;i mạnh để ho&agrave;n thiện vẻ ngo&agrave;i phong độ v&agrave; thể hiện sự lịch l&atilde;m của m&igrave;nh. Đ&acirc;y sẽ l&agrave; l&agrave;n gi&oacute; mới trong xu hướng l&agrave;m đẹp với trang sức, mang đến cho ch&agrave;ng th&ecirc;m nhiều sự lựa chọn.</p>', 0, 0, 0, '2024-04-18 17:59:03', 20, '2024-04-21 10:38:44'),
(38, 'Nhẫn Nam Vàng 18K đính đá Ruby PNJ RBXMY001168', 'nhan-nam-vang-18k-dinh-da-ruby-pnj-rbxmy001168', 39420000, 16, 1, 0, 5, '2024-04-21__15.png', 3, 1, 1, 3, '<p style=\"text-align:justify\">Được chế t&aacute;c từ v&agrave;ng 18K c&ugrave;ng vẻ đẹp huyền b&iacute; của vi&ecirc;n đ&aacute; Ruby, PNJ mang đến sản phẩm&nbsp;<a href=\"https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;atm_medium=nhanvang&amp;atm_campaign=&amp;atm_content=\">nhẫn</a>&nbsp;sang trọng v&agrave; quyến rũ d&agrave;nh cho ph&aacute;i mạnh. Đ&aacute; Ruby sở hữu vẻ quyến rũ, khi được cộng hưởng &aacute;nh sắc của d&atilde;y đ&aacute; trắng lấp l&aacute;nh, h&agrave;i h&ograve;a theo từng đường n&eacute;t thiết kế đ&atilde; tạo n&ecirc;n một m&oacute;n trang sức đẹp m&ecirc; hồn.</p>\r\n\r\n<p style=\"text-align:justify\">Đặc biệt hơn, một chiếc nhẫn đ&iacute;nh đ&aacute; Ruby thuận theo phong thủy sẽ mang lại may mắn cũng như nguồn năng lượng t&iacute;ch cực. V&agrave; người sở hữu&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-da-quy/trang-suc-ruby/?atm_source=pdp&amp;atm_medium=trangsucruby&amp;atm_campaign=&amp;atm_content=\">trang sức Ruby</a>&nbsp;kh&ocirc;ng chỉ c&oacute; được những năng lượng tốt n&agrave;y m&agrave; cuộc sống sẽ ng&agrave;y c&agrave;ng khởi sắc</p>', 0, 0, 0, '2024-04-18 18:00:30', 15, '2024-04-21 15:18:38'),
(39, 'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ DD00W000356', 'mat-day-chuyen-kim-cuong-vang-trang-14k-pnj-dd00w000356', 6310000, 17, 1, 0, 0, '2024-04-21__16.png', 2, 1, 1, 1, '<p style=\"text-align:justify\">PNJ xin giới thiệu một m&oacute;n trang sức đặc biệt, gi&uacute;p n&agrave;ng thu h&uacute;t mọi sự ch&uacute; &yacute; xung quanh với chiếc&nbsp;<a href=\"https://www.pnj.com.vn/day-chuyen/mat-day-chuyen/mat-day-chuyen-vang/?atm_source=pdp&amp;atm_medium=matdaychuyenvang&amp;atm_campaign=&amp;atm_content=\">mặt d&acirc;y chuyền</a>&nbsp;v&agrave;ng 14K&nbsp;sở hữu chi tiết Kim cương đ&iacute;nh một c&aacute;ch tỉ mỉ tr&ecirc;n chất liệu v&agrave;ng 14K.</p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng chỉ sang trọng,&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-kim-cuong/?atm_source=pdp&amp;atm_medium=trangsuckimcuong&amp;atm_campaign=&amp;atm_content=\">kim cương</a>&nbsp;c&ograve;n l&agrave; loại đ&aacute; cứng cỏi, bền bỉ bậc nhất hiện nay, gi&uacute;p cho m&oacute;n trang sức của bạn trường tồn giữa d&ograve;ng thời gian. Với sự kết hợp đồng điệu giữa v&agrave;ng 14K v&agrave; kim cương, chiếc mặt d&acirc;y chuyền PNJ sở hữu một vẻ đẹp vừa trẻ trung, vừa to&aacute;t l&ecirc;n kh&iacute; chất của người phụ nữ quyền lực.</p>', 0, 0, 0, '2024-04-18 18:01:38', 19, '2024-04-21 20:50:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` int(11) UNSIGNED NOT NULL,
  `pa_product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(16, 1, 3),
(17, 1, 2),
(18, 1, 5),
(19, 1, 6),
(20, 1, 0),
(21, 2, 8),
(22, 2, 9),
(23, 3, 8),
(24, 3, 9),
(25, 4, 8),
(26, 4, 9),
(27, 5, 8),
(28, 5, 9),
(29, 6, 8),
(30, 6, 9),
(31, 7, 8),
(32, 7, 9),
(33, 8, 8),
(34, 8, 10),
(35, 9, 8),
(36, 9, 10),
(37, 10, 8),
(38, 10, 10),
(39, 11, 8),
(40, 11, 9),
(41, 12, 8),
(42, 12, 0),
(43, 13, 8),
(44, 13, 0),
(45, 14, 8),
(46, 14, 10),
(47, 15, 8),
(48, 15, 9),
(49, 16, 8),
(50, 16, 9),
(51, 17, 8),
(52, 17, 9),
(53, 18, 15),
(54, 18, 9),
(55, 19, 15),
(56, 19, 9),
(57, 20, 15),
(58, 20, 9),
(65, 21, 15),
(66, 21, 10),
(67, 22, 15),
(68, 22, 0),
(69, 23, 15),
(70, 23, 0),
(103, 24, 0),
(104, 24, 0),
(105, 29, 16),
(106, 29, 0),
(113, 26, 19),
(114, 26, 18),
(115, 39, 19),
(116, 39, 17),
(117, 38, 19),
(118, 38, 18),
(119, 37, 16),
(120, 37, 18),
(121, 36, 16),
(122, 36, 18),
(123, 35, 19),
(124, 35, 18),
(127, 34, 19),
(128, 34, 18),
(129, 33, 16),
(130, 33, 17),
(131, 32, 19),
(132, 32, 17),
(133, 31, 16),
(134, 31, 18),
(135, 30, 19),
(136, 30, 18),
(137, 28, 16),
(138, 28, 0),
(139, 27, 19),
(140, 27, 17),
(147, 25, 19),
(148, 25, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` int(11) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `pi_name` varchar(191) DEFAULT NULL,
  `pi_slug` varchar(191) DEFAULT NULL,
  `pi_product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `pi_name`, `pi_slug`, `pi_product_id`, `created_at`, `updated_at`) VALUES
(1, '1.png', '2024-04-21__1png.png', 24, '2024-04-21 10:17:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) UNSIGNED NOT NULL,
  `r_user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `r_product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_content`, `created_at`, `updated_at`) VALUES
(4, 3, 6, 5, 'Sản phẩm tuyệt vời', '2024-04-17 19:31:06', '2024-04-17 19:31:06'),
(6, 4, 35, 5, 'ádasdasdasd', '2024-04-21 15:16:56', '2024-04-21 15:16:56'),
(7, 3, 35, 5, 'tuyệt vời', '2024-05-05 23:09:51', '2024-05-05 23:09:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) UNSIGNED NOT NULL,
  `sd_title` varchar(191) DEFAULT NULL,
  `sd_link` varchar(191) DEFAULT NULL,
  `sd_image` varchar(191) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(4, 'Slide 1', 'https://www.geeksforgeeks.org/', '2024-04-21__2023-07-03-egift-t7-1972x640cta-1.jpg', 1, 1, 0, '2024-04-21 14:26:01', '2024-04-22 11:54:39'),
(5, 'Slide 2', 'https://www.geeksforgeeks.org/', '2024-04-21__2023-07-03-pnj-fast-x-ahamove-20230308t114624z-001-1972x640ldp-cta-2.jpg', 1, 1, 0, '2024-04-21 14:26:20', '2024-04-21 14:26:20'),
(6, 'Slide 3', 'https://www.geeksforgeeks.org/', '2024-04-21__2023-08-09-tab-sale-chung-t8-1200x450cta-3.jpg', 1, 1, 0, '2024-04-21 14:26:36', '2024-04-21 14:26:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(11) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` int(11) UNSIGNED NOT NULL,
  `s_title` varchar(191) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_type`, `s_content`, `created_at`, `updated_at`) VALUES
(3, 'Hướng Dẫn Mua Hàng', 1, '<h2 style=\"text-align:justify\">Hướng dẫn mua h&agrave;ng</h2>\r\n\r\n<h4 style=\"text-align:justify\">C&aacute;ch 1: Li&ecirc;n hệ hotline</h4>\r\n\r\n<p style=\"text-align:justify\">Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ hotline (miễn ph&iacute;) của PNJ&nbsp;<a href=\"calto:1800545457\">1800 54 54 57</a>&nbsp;được phục vụ một c&aacute;ch tốt nhất. Thời gian từ 8h &ndash; 21h (kể cả chủ nhật &amp; trừ ng&agrave;y lễ), đội ngũ chuy&ecirc;n vi&ecirc;n tư vấn tại PNJ lu&ocirc;n sẵn s&agrave;ng phục vụ.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;ch 2: Đặt h&agrave;ng trực tiếp tại website&nbsp;<a href=\"https://pnj.com.vn/\">pnj.com.vn</a></strong></p>\r\n\r\n<p style=\"text-align:justify\"><em>Bước 1: Chọn sản phẩm</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh1.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh2.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Với thanh&nbsp;<strong>menu sản phẩm v&agrave; bộ lọc sản phẩm</strong>, qu&yacute; kh&aacute;ch c&oacute; thể dễ d&agrave;ng t&igrave;m kiếm đặc t&iacute;nh của từng d&ograve;ng sản phẩm</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh3.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Tại&nbsp;<strong>trang chủ</strong>, PNJ lu&ocirc;n hiển thị gợi &yacute; về những sản phẩm hot nhất với v&ocirc; v&agrave;n ưu đ&atilde;i hấp dẫn</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh4.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>C&ocirc;ng cụ t&igrave;m kiếm</strong>&nbsp;tại đầu trang c&oacute; thể trở th&agrave;nh trợ thủ đắc lực c&ugrave;ng qu&yacute; kh&aacute;ch t&igrave;m kiếm sản phẩm y&ecirc;u th&iacute;ch nhanh nhất</em></p>\r\n\r\n<p style=\"text-align:justify\"><em>Bước 2: Chọn size sản phẩm</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh5.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Đừng qu&ecirc;n&nbsp;<strong>chọn ni, size</strong>&nbsp;đối với những sản phẩm nhẫn, kiềng, d&acirc;y chuyền, d&acirc;y cổ, v&ograve;ng v&agrave; lắc trước khi thực hiện thao t&aacute;c MUA NGAY</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh6.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Trường hợp qu&yacute; kh&aacute;ch chưa chọn được ni, size ph&ugrave; hợp, đừng lo đ&atilde; c&oacute;&nbsp;<strong>c&ocirc;ng cụ hướng dẫn chọn k&iacute;ch thước sản phẩm</strong>&nbsp;từ PNJ đ&acirc;y rồi</em></p>\r\n\r\n<p style=\"text-align:justify\"><em>Bước 3: Đặt mua sản phẩm</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh7.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Chọn&nbsp;<strong>XEM H&Agrave;NG TẠI SHOWROOM</strong>&nbsp;khi qu&yacute; kh&aacute;ch chọn dịch vụ Click &amp; Collect - Đặt trước online v&agrave; nhận h&agrave;ng tại cửa h&agrave;ng</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh8.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Chọn&nbsp;<strong>MUA TRẢ G&Oacute;P</strong>&nbsp;khi qu&yacute; kh&aacute;ch sử dụng dịch vụ trả g&oacute;p với l&atilde;i suất 0% được li&ecirc;n kết c&ugrave;ng thẻ t&iacute;n dụng của 24 ng&acirc;n h&agrave;ng</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh9.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Chọn&nbsp;<strong>MUA NGAY</strong>&nbsp;khi qu&yacute; kh&aacute;ch sử dụng c&aacute;c h&igrave;nh thức thanh to&aacute;n như: Tiền mặt, VN Pay, qua link, chuyển khoản, thẻ quốc tế, thẻ ATM v&agrave; trả g&oacute;p</em></p>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;ch 3: Đặt mua h&agrave;ng trực tuyến tr&ecirc;n Zalo v&agrave; Facebook</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh10.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh11.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Đội ngũ chuy&ecirc;n vi&ecirc;n tư vấn tại&nbsp;<strong>Fanpage PNJ</strong>&nbsp;lu&ocirc;n sẵn s&agrave;ng tư vấn v&agrave; hỗ trợ qu&yacute; kh&aacute;ch đặt h&agrave;ng nhanh ch&oacute;ng.</em></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh12.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://cdn.pnj.io/images/image-update/2021/12/muahang-thanhtoan/hinh13.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><em>Đội ngũ chuy&ecirc;n vi&ecirc;n tư vấn tại k&ecirc;nh&nbsp;<strong>Zalo Official Trang Sức PNJ&nbsp;</strong>lu&ocirc;n sẵn s&agrave;ng tư vấn v&agrave; hỗ trợ qu&yacute; kh&aacute;ch đặt h&agrave;ng nhanh ch&oacute;ng. Ngo&agrave;i ra, với n&uacute;t chọn &quot;V&agrave;o Shop&quot;, qu&yacute; kh&aacute;ch c&oacute; thể tham khảo th&ecirc;m v&ocirc; v&agrave;n sản phẩm cũng như đặt h&agrave;ng tiện lợi</em></p>', '2024-04-18 18:20:09', NULL),
(4, 'Chính sách đổi trả', 2, '<h2 style=\"text-align:justify\">Cơ sở l&yacute; thuyết về ph&acirc;n t&iacute;ch v&agrave; thiết kế hệ thống th&ocirc;ng tin theo phương ph&aacute;p hướng đối tượng cho đề t&agrave;i đồ &aacute;n &quot;Ph&aacute;t triển website quản l&yacute; v&agrave; kinh doanh đồ trang sức sử dụng Laravel&quot;</h2>\r\n\r\n<p style=\"text-align:justify\"><strong>1. Ph&acirc;n t&iacute;ch hệ thống:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Ph&acirc;n t&iacute;ch y&ecirc;u cầu:</strong>\r\n\r\n	<ul>\r\n		<li>X&aacute;c định c&aacute;c đối tượng người d&ugrave;ng v&agrave; nhu cầu của họ.</li>\r\n		<li>X&aacute;c định c&aacute;c chức năng ch&iacute;nh của hệ thống.</li>\r\n		<li>X&aacute;c định c&aacute;c r&agrave;ng buộc của hệ thống.</li>\r\n	</ul>\r\n	</li>\r\n	<li style=\"text-align: justify;\"><strong>Ph&acirc;n t&iacute;ch m&ocirc; h&igrave;nh:</strong>\r\n	<ul>\r\n		<li>Lập m&ocirc; h&igrave;nh nghiệp vụ để m&ocirc; tả c&aacute;c quy tr&igrave;nh kinh doanh của hệ thống.</li>\r\n		<li>Lập m&ocirc; h&igrave;nh dữ liệu để m&ocirc; tả c&aacute;c cấu tr&uacute;c dữ liệu của hệ thống.</li>\r\n	</ul>\r\n	</li>\r\n	<li style=\"text-align: justify;\"><strong>Ph&acirc;n t&iacute;ch giao diện:</strong>\r\n	<ul>\r\n		<li>Thiết kế giao diện người d&ugrave;ng (UI) cho c&aacute;c chức năng ch&iacute;nh của hệ thống.</li>\r\n		<li>Thiết kế giao diện người quản trị (UI) cho c&aacute;c chức năng quản trị của hệ thống.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>2. Thiết kế hệ thống:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Thiết kế hướng đối tượng:</strong>\r\n\r\n	<ul>\r\n		<li>X&aacute;c định c&aacute;c lớp học v&agrave; c&aacute;c đối tượng trong hệ thống.</li>\r\n		<li>X&aacute;c định c&aacute;c mối quan hệ giữa c&aacute;c lớp học.</li>\r\n		<li>Thiết kế c&aacute;c phương thức cho c&aacute;c lớp học.</li>\r\n	</ul>\r\n	</li>\r\n	<li style=\"text-align: justify;\"><strong>Thiết kế cơ sở dữ liệu:</strong>\r\n	<ul>\r\n		<li>Lựa chọn hệ quản trị cơ sở dữ liệu (DBMS) ph&ugrave; hợp.</li>\r\n		<li>Thiết kế cấu tr&uacute;c bảng dữ liệu.</li>\r\n		<li>Thiết kế c&aacute;c truy vấn cơ sở dữ liệu.</li>\r\n	</ul>\r\n	</li>\r\n	<li style=\"text-align: justify;\"><strong>Thiết kế kiến tr&uacute;c hệ thống:</strong>\r\n	<ul>\r\n		<li>Lựa chọn kiến tr&uacute;c phần mềm ph&ugrave; hợp (v&iacute; dụ: 3 tầng, MVC).</li>\r\n		<li>Thiết kế c&aacute;c th&agrave;nh phần của hệ thống.</li>\r\n		<li>Thiết kế c&aacute;c giao diện giữa c&aacute;c th&agrave;nh phần của hệ thống.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>3. Triển khai hệ thống:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Lựa chọn ng&ocirc;n ngữ lập tr&igrave;nh v&agrave; framework ph&ugrave; hợp (v&iacute; dụ: Laravel).</li>\r\n	<li style=\"text-align: justify;\">Viết m&atilde; nguồn cho hệ thống.</li>\r\n	<li style=\"text-align: justify;\">Kiểm thử hệ thống.</li>\r\n	<li style=\"text-align: justify;\">Triển khai hệ thống v&agrave;o m&ocirc;i trường thực.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>4. Vận h&agrave;nh v&agrave; bảo tr&igrave; hệ thống:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Gi&aacute;m s&aacute;t hệ thống v&agrave; khắc phục sự cố.</li>\r\n	<li style=\"text-align: justify;\">Cập nhật hệ thống khi cần thiết.</li>\r\n	<li style=\"text-align: justify;\">Bảo tr&igrave; hệ thống định kỳ.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>C&ocirc;ng nghệ Laravel:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Laravel l&agrave; một framework m&atilde; nguồn mở phổ biến cho việc ph&aacute;t triển ứng dụng web PHP. Laravel cung cấp nhiều t&iacute;nh năng hữu &iacute;ch để ph&aacute;t triển ứng dụng web, bao gồm:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Hệ thống định tuyến</li>\r\n	<li style=\"text-align: justify;\">Hệ thống templating</li>\r\n	<li style=\"text-align: justify;\">Hệ thống x&aacute;c thực v&agrave; ủy quyền</li>\r\n	<li style=\"text-align: justify;\">Hệ thống quản l&yacute; cơ sở dữ liệu</li>\r\n	<li style=\"text-align: justify;\">Hệ thống xử l&yacute; lỗi</li>\r\n	<li style=\"text-align: justify;\">Hệ thống thử nghiệm</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">Laravel l&agrave; một lựa chọn tốt cho việc ph&aacute;t triển website quản l&yacute; v&agrave; kinh doanh đồ trang sức v&igrave; n&oacute; cung cấp nhiều t&iacute;nh năng cần thiết cho loại ứng dụng n&agrave;y.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Kết luận:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Ph&acirc;n t&iacute;ch v&agrave; thiết kế hệ thống th&ocirc;ng tin theo phương ph&aacute;p hướng đối tượng l&agrave; một quy tr&igrave;nh quan trọng để ph&aacute;t triển một hệ thống phần mềm hiệu quả v&agrave; dễ bảo tr&igrave;. Laravel l&agrave; một framework m&atilde; nguồn mở phổ biến cho việc ph&aacute;t triển ứng dụng web PHP v&agrave; cung cấp nhiều t&iacute;nh năng hữu &iacute;ch cho việc ph&aacute;t triển website quản l&yacute; v&agrave; kinh doanh đồ trang sức.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>T&agrave;i liệu tham khảo:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Ph&acirc;n t&iacute;ch v&agrave; thiết kế hướng đối tượng: [đ&atilde; xo&aacute; URL kh&ocirc;ng hợp lệ]</li>\r\n	<li style=\"text-align: justify;\">Laravel:&nbsp;<a href=\"https://laravel.com/\" rel=\"noopener noreferrer\" target=\"_blank\">https://laravel.com/</a></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>Lưu &yacute;:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Đ&acirc;y chỉ l&agrave; t&oacute;m tắt cơ bản về cơ sở l&yacute; thuyết cho đề t&agrave;i đồ &aacute;n. Bạn cần nghi&ecirc;n cứu th&ecirc;m t&agrave;i liệu để c&oacute; kiến thức đầy đủ về ph&acirc;n t&iacute;ch v&agrave; thiết kế hệ thống th&ocirc;ng tin theo phương ph&aacute;p hướng đối tượng v&agrave; Laravel.</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra, bạn cũng cần tham khảo c&aacute;c t&agrave;i liệu hướng dẫn sử dụng Laravel để c&oacute; thể sử dụng framework n&agrave;y một c&aacute;ch hiệu quả.</p>\r\n\r\n<p style=\"text-align:justify\">Ch&uacute;c bạn th&agrave;nh c&ocirc;ng với đề t&agrave;i đồ &aacute;n của m&igrave;nh!</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>', '2024-04-18 18:20:53', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` int(11) UNSIGNED NOT NULL,
  `sl_name` varchar(191) DEFAULT NULL,
  `sl_phone` varchar(191) DEFAULT NULL,
  `sl_email` varchar(191) DEFAULT NULL,
  `sl_address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Huy Thành Jewelry', '0989275330', 'ncc1@gmail.com', 'Hà Nội', '2024-04-21 13:10:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `tst_user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 93170000, 'Nguyễn Thanh Lâm', 'nguyenthanhlam@gmail.com', '0989275330', '55A Điện Biên Phủ TP Hồ Chí Minh', 'OK', 3, 2, '2023-07-04 02:22:42', '2023-07-04 02:26:00'),
(2, 2, 1, 14444000, 'Nguyễn Thành Trung', 'nguyenthanhtrung@gmail.com', '0999999999', '55A Điện Biên Phủ TP Hồ Chí Minh', 'OK', 3, 2, '2023-07-04 14:45:51', '2023-07-04 14:46:27'),
(3, 3, 0, 37449000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', NULL, -1, 2, '2024-04-17 04:32:37', '2024-04-17 04:40:18'),
(4, 3, 1, 37449000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', NULL, 3, 2, '2024-04-17 19:06:13', '2024-04-17 19:29:47'),
(5, 3, 1, 27031000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', 'Ninh Bình', 3, 2, '2024-04-17 19:28:24', '2024-04-17 19:29:43'),
(6, 3, 1, 830000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', 'Không có', 3, 2, '2024-04-18 13:26:19', '2024-04-18 13:27:57'),
(7, 3, 1, 39383100, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', 'Xóm 9, Khánh Hồng, Yên Khánh, Ninh Bình', 3, 2, '2024-04-18 18:36:34', '2024-04-18 18:37:24'),
(8, 3, 1, 26358700, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', 'hihi', 3, 2, '2024-04-18 18:38:43', '2024-04-18 18:38:54'),
(9, 3, 1, 27031000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Hà Nội', NULL, 3, 2, '2024-04-20 14:56:49', '2024-04-21 11:48:06'),
(10, 4, 1, 91350000, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'N', NULL, 3, 2, '2024-04-21 14:31:10', '2024-04-21 14:34:40'),
(11, 4, 1, 24327900, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'Hà Nội', NULL, 3, 2, '2024-04-21 15:08:28', '2024-04-21 15:19:32'),
(12, 4, 1, 25679450, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'Hà Nội', 'hihi', 3, 2, '2024-04-21 19:59:16', '2024-04-24 07:35:26'),
(13, 4, 1, 24327900, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'Hà Nội', NULL, 3, 2, '2024-04-22 11:10:38', '2024-04-24 07:35:30'),
(14, 4, 1, 58032000, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'Hà Nội', 'no', 3, 2, '2024-04-24 07:33:46', '2024-04-24 07:35:34'),
(15, 4, 1, 643500, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'Hà Nội', NULL, 3, 2, '2024-04-24 07:36:22', '2024-04-24 07:36:34'),
(16, 4, 1, 37449000, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'Hà Nội', NULL, 3, 2, '2024-04-27 10:36:38', '2024-04-27 10:52:33'),
(17, 4, 0, 0, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', '0349239321', 'Hà Nội', NULL, 1, 2, '2024-04-27 14:08:17', NULL),
(18, 3, 0, 715000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', NULL, 1, 2, '2024-06-28 00:07:12', NULL),
(19, 3, 0, 32546000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', NULL, 1, 2, '2024-06-28 00:08:28', NULL),
(20, 3, 0, 715000, 'Dev Mastery', 'hoanganh.eaut@gmail.com', '0779363295', 'Ninh Bình', NULL, 1, 2, '2024-06-28 00:11:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Dev Mastery', 'hoanganh.eaut@gmail.com', NULL, '$2y$10$WMfcdPQHZY2Cjz0VIo1FnOdBxU63NQF0/lVoWSm2G4eg/WJ4zn6d6', '0779363295', -229507800, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T04:22:44.645749Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T08:36:00.438164Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T08:36:02.043096Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T11:04:41.342962Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T14:55:32.977475Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T18:59:23.479051Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T19:45:16.089345Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-17T19:53:07.784042Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-18T11:13:15.143602Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-18T11:21:33.236390Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-18T11:23:16.526592Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-18T13:25:02.988502Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"123.0.0.0\",\"time\":\"2024-04-18T18:21:57.175389Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-20T18:35:45.422738Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-21T13:34:35.890034Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-05-04T11:43:06.896110Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-05-05T22:45:20.088738Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-05-07T07:45:39.050753Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-05-20T09:43:41.466787Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-05-20T14:09:30.962136Z\"}]', 3, NULL, '2024-04-21__hoang-anh.jpg', NULL, '2024-04-10 16:52:47', '2024-04-21 14:28:35'),
(4, 'Nguyễn Hoàng Anh', 'hoanganhnguyen.eaut@gmail.com', NULL, '$2y$10$RfalCHa47KIf5rOU9mi6N.2dunj9YZkqURH5/UNuqwBxmgYBltgcW', '0349239321', -288840750, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-21T14:57:03.747713Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-21T15:06:41.480611Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-21T15:15:10.011900Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-21T18:55:49.920314Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-22T08:25:46.519520Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-22T10:17:04.773568Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-22T10:39:36.635624Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-22T10:50:55.562992Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-22T10:54:34.745633Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-22T11:43:06.153308Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-24T07:33:07.776611Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-27T10:21:29.503471Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-27T10:23:31.410934Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-27T13:53:58.565473Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-27T21:37:18.936355Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-27T21:38:56.403419Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"124.0.0.0\",\"time\":\"2024-04-28T17:00:44.951177Z\"}]', 2, 'Hà Nội', '2024-04-21__1694550644230.jpg', NULL, '2024-04-21 14:30:11', '2024-04-21 14:31:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` int(11) UNSIGNED NOT NULL,
  `uf_product_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `uf_user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(5, 5, 3),
(6, 6, 3),
(1, 16, 2),
(7, 35, 3),
(13, 35, 4),
(10, 36, 4),
(12, 38, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) UNSIGNED NOT NULL,
  `w_product_id` int(11) UNSIGNED NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `warehouses`
--

INSERT INTO `warehouses` (`id`, `w_product_id`, `w_price`, `w_qty`, `created_at`, `updated_at`) VALUES
(1, 24, 2222, 12, '2024-04-21 11:50:13', '2024-04-21 11:50:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_w_order_id_index` (`w_order_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Chỉ mục cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Chỉ mục cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_unique` (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Chỉ mục cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_w_product_id_index` (`w_product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `exports`
--
ALTER TABLE `exports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
