-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3309
-- Thời gian đã tạo: Th5 08, 2021 lúc 03:39 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `be2_nhom4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` double(8,2) NOT NULL,
  `create_date` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_check_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bills_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_bills`
--

DROP TABLE IF EXISTS `detail_bills`;
CREATE TABLE IF NOT EXISTS `detail_bills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count_product` int(11) NOT NULL,
  `count_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_bills_bill_id_foreign` (`bill_id`),
  KEY `detail_bills_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evalutes`
--

DROP TABLE IF EXISTS `evalutes`;
CREATE TABLE IF NOT EXISTS `evalutes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evalutes_user_id_foreign` (`user_id`),
  KEY `evalutes_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_products`
--

DROP TABLE IF EXISTS `image_products`;
CREATE TABLE IF NOT EXISTS `image_products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_products_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`id`, `manu_name`, `created_at`, `updated_at`) VALUES
(1, 'Guuci', NULL, NULL),
(2, 'Adidas', NULL, NULL),
(3, 'Tommy', NULL, NULL),
(4, 'Chanel', NULL, NULL),
(5, 'Hermas', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_05_01_091019_create_type_users_table', 1),
(4, '2021_05_01_091259_create_contacts_table', 1),
(5, '2021_05_01_091419_create_partners_table', 1),
(6, '2021_05_01_091525_create_manufactures_table', 1),
(7, '2021_05_01_091711_create_type_products_table', 1),
(8, '2021_05_01_091913_create_evalutes_table', 1),
(9, '2021_05_01_092510_create_bills_table', 1),
(10, '2021_05_01_092647_create_detail_bills_table', 1),
(11, '2021_05_01_092745_create_products_table', 1),
(12, '2021_05_05_022844_create_image_products_table', 1),
(13, '2021_05_05_023003_create_colors_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `sold` int(11) DEFAULT '0',
  `size` double NOT NULL,
  `hot` tinyint(4) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` date NOT NULL,
  `view` int(11) DEFAULT '0',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_type_id_foreign` (`type_id`),
  KEY `products_manu_id_foreign` (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `image`, `count`, `price`, `sold`, `size`, `hot`, `note`, `create_date`, `view`, `color`, `gender`, `type_id`, `manu_id`, `created_at`, `updated_at`) VALUES
(2, 'Gucci thun nữ x1', '1620481213_440103_X3F05_1508_002_100_0000_Light.jpg', 32, 50.00, 0, 27, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 1, 1, NULL, NULL),
(3, 'Gucci 161', '1620481344_539080_XJA9C_7136_001_100_0000_Light-Oversize-T-shirt-with-Gucci-logo.jpg', 25, 32.00, 0, 31, 0, 'Chất liệu: Thun Cotton cao cấp Mịn mát.', '2021-05-08', 0, '0', '0', 1, 1, NULL, NULL),
(4, 'Gucci blade-print', '1620481473_565806_XJAZY_1141_002_100_0000_Light-T-shirt-with-Gucci-Blade-print.jpg', 120, 72.00, 0, 29, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 1, 1, NULL, NULL),
(5, 'Gucci light-xg', '1620481593_615044_XJDGQ_1082_002_100_0000_Light.jpg', 55, 72.00, 0, 28, 0, 'Chất liệu: Cotton / Xuất Xứ: Việt Nam', '2021-05-08', 0, '0', '0', 1, 1, NULL, NULL),
(6, 'Gucci 645-j', '1620481662_645251_XJC6F_7121_002_100_0000_Light.jpg', 213, 12.00, 0, 32, 0, 'Áo Thun Nam màu trơn Cổ Bẻ Ngắn Tay', '2021-05-08', 0, '0', '1', 1, 1, NULL, NULL),
(7, 'Gucci thun nam', '1620481715_aothunnamGucci_650.jpg', 23, 14.00, 0, 25, 1, 'ÁO Phông Nam Dáng Ôm Thời Trang cao cấp', '2021-05-08', 0, '0', '1', 1, 1, NULL, NULL),
(8, 'Gucci cotton-polo', '1620481751_645251_XJC6F_7252_001_100_0000_Light-Striped-cotton-polo-with-patch.jpg', 12, 32.00, 0, 29, 1, 'Áo Thun Nam màu trơn Cổ Bẻ Ngắn Tay', '2021-05-08', 0, '0', '1', 1, 1, NULL, NULL),
(9, 'Gucci nam 161', '1620481786_aothunnamGucci161_650.jpg', 11, 64.00, 0, 35, 1, 'Áo Thun Nam màu trơn Cổ Bẻ Ngắn Tay', '2021-05-08', 0, '0', '1', 1, 1, NULL, NULL),
(10, 'Gucci nam x2', '1620481881_aothunnamGucci131_650.jpg', 2, 57.00, 0, 31, 1, 'Chất liệu: Polyester, mềm mại.', '2021-05-08', 0, '0', '1', 1, 1, NULL, NULL),
(11, 'Gucci logy', '1620481921_655459_XJDLY_5904_001_100_0000_Light-T-shirt-with-25-Gucci-Eschatology-in-Pink-1921-print.jpg', 13, 45.00, 0, 34, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 1, 1, NULL, NULL),
(12, 'Adidas dream', '1620481980_all-day-i-dream_700.jpg', 9, 45.00, 0, 32, 1, 'Mát mẻ thoải mái.', '2021-05-08', 0, '0', '1', 1, 2, NULL, NULL),
(13, 'Adidas cropped-tea', '1620482016_cropped-tee_700.jpg', 5, 256.00, 0, 26, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 1, 2, NULL, NULL),
(14, 'Áo thun Adidas linear', '1620482067_linear-repeat_850.jpg', 21, 45.00, 0, 29, 0, 'Áo thun nam là trang phục giúp các chàng trai làm mới phong cách của chính mình', '2021-05-08', 0, '0', '1', 1, 2, NULL, NULL),
(15, 'The run adidas', '1620482107_o-tank-top-chạy-bộ-adidas-own-the-run-primeblue_550.jpg', 21, 54.00, 0, 25, 1, 'Thiết kế cổ bẻ xẻ trụ đơn giản, cực kỳ năng động', '2021-05-08', 0, '0', '0', 1, 2, NULL, NULL),
(16, 'Thun Adidas b2', '1620482151_o-thun_850.jpg', 98, 25.00, 0, 36, 0, 'àng phối cùng nhiều kiểu jeans bụi phủi,', '2021-05-08', 0, '0', '0', 1, 2, NULL, NULL),
(17, 'Áo thun adidas graphic', '1620482191_o-thun-graphic-primeblue-fast_800.jpg', 5, 32.00, 0, 65, 0, 'Hàng có sẵn đủ size: M, L, XL, XX️', '2021-05-08', 0, '0', '1', 1, 2, NULL, NULL),
(18, 'Ao thun adidas street', '1620482219_o-thun-graphic-street_700.jpg', 25, 25.00, 0, 65, 1, 'Thiết kế cổ bẻ xẻ trụ đơn giản', '2021-05-08', 0, '0', '0', 1, 2, NULL, NULL),
(19, 'Thun thể thao adidas', '1620482261_o-thun-graphic-thể-thao-tech_550.jpg', 25, 45.00, 0, 64, 0, 'Áo phông nam cổ bẻ việt nam', '2021-05-08', 0, '0', '0', 1, 2, NULL, NULL),
(20, 'Ao thun ncessi', '1620482292_o-thun-necessi-tee_650.jpg', 25, 7.00, 0, 35, 1, 'Áo Thun Nam màu trơn Cổ Bẻ Ngắn Tay', '2021-05-08', 0, '0', '0', 1, 2, NULL, NULL),
(21, 'Thun 3 sọc', '1620482324_o-thun-slim-3-sọc-primeblue-aeroready_700.jpg', 78, 31.00, 0, 33, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 1, 2, NULL, NULL),
(22, 'Sơ mi nam 75', '1620482384_7-5.jpg', 12, 75.00, 0, 29, 1, 'Chất liệu cao cấp mềm mại', '2021-05-08', 0, '0', '1', 1, 3, NULL, NULL),
(23, 'Thun tommy g9', '1620482414_918jmn9+2YL._SS350_AC_.jpg', 123, 5.00, 0, 33, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '1', 1, 3, NULL, NULL),
(24, 'Thun bd', '1620482456_tải xuống.jpg', 6, 100.00, 0, 35, 1, 'Form dáng body vừa người , phù hợp du lịch', '2021-05-08', 0, '0', '0', 1, 3, NULL, NULL),
(25, 'Thun nam tommy h1', '1620482504_rsz_2064887_l.jpg', 25, 44.00, 0, 55, 0, 'chất liệu cao cấp, giá thành hợp lý, sỉ lẻ giá tốt', '2021-05-08', 0, '0', '1', 1, 3, NULL, NULL),
(26, 'Thun tommy paita-aics', '1620482549_lyhythihainen-t-paita-asics-running-essentials-12-zip-top-f0bdf.jpg', 23, 4.00, 0, 78, 1, 'Dáng Ôm Thời Trang Cam Cấp', '2021-05-08', 0, '0', '1', 1, 3, NULL, NULL),
(27, 'Thun chanel đủ loại', '1620482603_2d090e98d4d832c5935c5742a0c53c87jfif.jpg', 654, 45.00, 0, 45, 0, 'Hàng có sẵn đủ size: M, L, XL, XX️', '2021-05-08', 0, '0', '0', 1, 4, NULL, NULL),
(28, 'Chanel blue', '1620482647_5fc38711c27ca7a8f1eb734850ace95d-600x494.jpg', 82, 456.00, 0, 64, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 1, 4, NULL, NULL),
(29, 'Chanel purple', '1620482678_873646fc-a42b-4ce9-a58a-7fda09ecce04.jpg', 25, 455.00, 0, 45, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 1, 4, NULL, NULL),
(30, 'chanel wb', '1620482715_74397285_138671914199766_3078203838432280576_n.jpg', 3, 654.00, 0, 34, 1, 'Lên mua', '2021-05-08', 0, '0', '0', 1, 4, NULL, NULL),
(31, 'shirt chanel hr', '1620482757_1555694983-527-dung-ao-50-trieu-dong-phuong-chanel-co-dep-hon-sieu-sao-quoc-te-vq4r-huqrnan3642600-1555561272-width600height749.jpg', 65, 54.00, 0, 54, 0, '....', '2021-05-08', 0, '0', '0', 1, 4, NULL, NULL),
(32, 'Thanh chanel shirt', '1620482796_Chanel-thanh.jpg', 1, 9999.00, 0, 66, 0, 'cry', '2021-05-08', 0, '0', '1', 1, 4, NULL, NULL),
(33, 'Chanel thun nam hàng hiệu', '1620482827_o-thun-nam-hàng-hiệu-chanel-siêu-cấp_1490.jpg', 6, 45.00, 0, 35, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '1', 1, 4, NULL, NULL),
(34, 'shirt chanel q2', '1620482856_q2-48-1-hong.jpg', 12, 456.00, 0, 54, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 1, 4, NULL, NULL),
(35, 'Thun cam', '1620482891_9ac835939dfa3031d8db4c61b456ab71.png', 65, 32.00, 0, 45, 1, 'Áo Thun Nam màu trơn Cổ Bẻ Ngắn Tay', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(36, 'Thun đẹp hermes hàng hiệu', '1620482929_áo-hermes-hàng-hiệu.png', 2, 998.00, 0, 32, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(37, 'Áo phông nam đẹp', '1620482957_ao-phong-nam-dep-hang-hieu-hermes-tuyet-dep-1500932948-59766b5400298.jpg', 12, 54.00, 0, 45, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(38, 'Thun cổ be hermes', '1620482983_ao-thun-co-be-hermes-nam-den.jpg', 32, 32.00, 0, 45, 0, 'Áo Thun Nam màu trơn Cổ Bẻ Ngắn Tay', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(39, 'Thun nam coco', '1620483022_ao-thun-nam-co-co-la-bay-rsp034-6.jpg', 78, 98.00, 0, 35, 0, 'Chất liệu mát mẻ', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(40, 'Thun cổ be xanh', '1620483049_ao-thun-co-be-hermes-nam-xanh-ly.jpg', 234, 33.00, 0, 33, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(41, 'Thun cổ be trắng', '1620483080_ao-thun-co-be-hermes-nam-trang.jpg', 32, 43.00, 0, 25, 0, 'Áo Thun Nam màu trơn Cổ Bẻ Ngắn Tay', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(42, 'Áo hermes a15', '1620483114_54b140349caf84a9d26b47b0c55ec5a1.jpg', 24, 23.00, 0, 45, 0, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '1', 1, 5, NULL, NULL),
(43, 'Quần gucci pre', '1620483161_30S---GUCCI_PRE---605437XJB9I2103.jpg', 32, 234.00, 0, 43, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 2, 1, NULL, NULL),
(44, 'Gucci quần nam 7ee', '1620483190_73eebe35-aa4d-4a80-a811-6f1d652197c1.jpg', 23, 43.00, 0, 43, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 2, 1, NULL, NULL),
(45, 'Quần cộc gucci nâu vàng', '1620483221_597837Z403L2286beige-01.jpg', 23, 43.00, 0, 53, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 2, 1, NULL, NULL),
(46, 'Gucci blue trousers', '1620483258_gucci-blue-trousers-with-embroidery-brand-size-48-598647-zabk2-4240.jpg', 645, 321.00, 0, 32, 1, 'chất lượng sản phẩm tốt Cam kết sản phẩm 100% giống ảnh và giới thiệu', '2021-05-08', 0, '0', '1', 2, 1, NULL, NULL),
(47, 'Gucci straightleg', '1620483289_gucci-straightleg-tailored-trousers-brand-size-40-596963-zad88-6055.jpg', 23, 53.00, 0, 43, 0, 'Quần vải gió (vải dù) nhập khẩu cao cấp túi khóa và phù hợp vận động mạnh', '2021-05-08', 0, '0', '1', 2, 1, NULL, NULL),
(48, 'Gucci viscose', '1620483328_viscose-gucci-trousers-11004734-1_1.jpg', 321, 43.00, 0, 56, 1, 'mặc thoáng mát và thoải mái', '2021-05-08', 0, '0', '0', 2, 1, NULL, NULL),
(49, 'Versace medusa', '1620483352_versace-medusa-print-straightleg-jeans-brand-size-32-a85058a232789a8005.jpg', 23, 43.00, 0, 54, 0, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '1', 2, 1, NULL, NULL),
(50, 'satel adidas', '1620483386_astel316161a564_q6_2-0_UX357_QL90_.jpg', 654, 123.00, 0, 40, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 2, 2, NULL, NULL),
(51, 'astel đen', '1620483425_astel315961071b_q1_2-0.jpg', 65, 87.00, 0, 54, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 2, 2, NULL, NULL),
(52, 'Big logo track', '1620483455_Big_Logo_Track_Pants_Blue_FM2560.jpg', 432, 25.00, 0, 45, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 2, 2, NULL, NULL),
(53, 'Jpers adidas', '1620483484_jpers4077712741_q6_2-0_UX357_QL90_.jpg', 432, 235.00, 0, 43, 1, 'Thể thao', '2021-05-08', 0, '0', '0', 2, 2, NULL, NULL),
(54, 'track pants black', '1620483513_Track_Pants_Black_GK6169_21_model.jpg', 55, 99.00, 0, 43, 0, 'Thể thao', '2021-05-08', 0, '0', '0', 2, 2, NULL, NULL),
(55, 'Track pants beige', '1620483544_Track_Pants_Beige_ED7457_01_laydown.jpg', 321, 254.00, 0, 45, 1, 'Bộ đôi', '2021-05-08', 0, '0', '1', 2, 2, NULL, NULL),
(56, 'track pants 3 sọc', '1620483575_Track_pants_3_Soc_Ba_La_3D_Adicolor_DJen_GN3543_21_model.jpg', 44, 77.00, 0, 25, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 2, 2, NULL, NULL),
(57, 'Lgenc adidas', '1620483604_lgenc3130414fce_q6_2-0_UX357_QL90_.jpg', 3354, 11.00, 0, 55, 0, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '1', 2, 2, NULL, NULL),
(58, 'Plant tommy m1', '1620483637_1M87647781_017_alternate4.jpg', 96, 65.00, 0, 35, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 2, 3, NULL, NULL),
(59, 'h2 47', '1620483681_42778574iv_14_f.jpg', 34, 44.00, 0, 43, 0, 'Chất liệu: Thun', '2021-05-08', 0, '0', '1', 2, 3, NULL, NULL),
(60, 'DM001', '1620483708_DM0DM10125_C87_main.jpg', 23, 32.00, 0, 44, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 2, 3, NULL, NULL),
(61, 'Tommy jeans tracksuit', '1620483776_tommy-jeans-tracksuit-pant-002-black-iris_1.jpg', 5, 23.00, 0, 44, 1, 'form dáng suông trẻ trung tạo cảm giác thoải mái cho người mặc', '2021-05-08', 0, '0', '1', 2, 3, NULL, NULL),
(62, 'Tommy hilgiger', '1620483801_tommy-hilfiger-pant-lwk-100752_1.jpg', 665, 58.00, 0, 88, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '1', 2, 3, NULL, NULL),
(63, 'quần chnel 132', '1620483858_132341-5.jpg', 43, 24.00, 0, 32, 0, 'dáng suông rộng trẻ trung', '2021-05-08', 0, '0', '1', 2, 4, NULL, NULL),
(64, 'Chanel 1b2', '1620483894_b657554a60d01b85c22b870ff6148e42.jpg', 65, 43.00, 0, 45, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 2, 4, NULL, NULL),
(65, 'beige wool chanel', '1620483924_beige-wool-chanel-pants.jpg', 35, 54.00, 0, 54, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 2, 4, NULL, NULL),
(66, 'pants navy blue', '1620483960_pants-navy-blue-cotton-tweed-cotton-tweed-packshot-alternative-p70076v61614nb347-8836705976350.jpg', 23, 32.00, 0, 27, 0, 'Hạn chế dùng nước xả vải với quần jeans. Nước xả vải có tác dụng làm mềm vải, dễ khiến quần jeans mất dáng', '2021-05-08', 0, '0', '0', 2, 4, NULL, NULL),
(67, 'pink other chanel', '1620483987_pink-other-chanel-trousers-1522834-1_1.jpg', 23, 555.00, 0, 32, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 2, 4, NULL, NULL),
(68, 'pants pinl late eure', '1620484030_pants-pink-pale-pink-ecru-tweed-tweed-packshot-default-p70016v60002n6537-8834205679646.jpg', 8, 1000.00, 0, 43, 1, 'orm dáng suông rộng trẻ trung', '2021-05-08', 0, '0', '0', 2, 4, NULL, NULL),
(69, 'pants navy cotton', '1620484071_pants-navy-blue-cotton-tweed-cotton-tweed-packshot-default-p70076v61614nb347-8836708597790.jpg', 32, 786.00, 0, 45, 0, 'Form rộng thoải mái.', '2021-05-08', 0, '0', '0', 2, 4, NULL, NULL),
(70, 'Plant hermas 114', '1620486156_114-201710021935_2.jpg', 34, 45.00, 0, 54, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 2, 5, NULL, NULL),
(71, 'Plant hermas 163', '1620486144_beige-synthetic-hermes-trousers-12051656-2_1.jpg', 23, 32.00, 0, 44, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 2, 5, NULL, NULL),
(108, 'Saint germain fitted', '1620486093_saint-germain-fitted-pants--155040H360-worn-2-0-0-1000-1000_b.jpg', 20, 1000.00, 0, 32, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '1', 2, 5, NULL, NULL),
(75, 'Dress gucci xk37', '1620484283_606017_XKA4A_6367_002_100_0000_Light.jpg', 22, 554.00, 0, 45, 1, 'không còn đứng phom', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(76, 'GG jackquard', '1620484316_GG-jacquard.jpg', 43, 64.00, 0, 54, 0, 'Vải thoáng mát', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(77, 'za gucci dress', '1620484344_643352_ZAFGT_3408_002_100_0000_Light.jpg', 54, 7.00, 0, 52, 0, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(78, 'Available gucci dress', '1620484384_Available-in.jpg', 42, 122.00, 0, 43, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(79, 'Bn dress gucci', '1620484427_644559_XKBNV_4311_002_100_0000_Light.jpg', 342, 431.00, 0, 34, 0, 'Chất liệu: Bò Phong cách: Dạo phố', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(80, 'Dress light Gucci', '1620484464_657935_ZAGVN_4337_002_100_0000_Light.jpg', 566, 65.00, 0, 28, 1, 'Ống quần: Dáng suông Chiều dài quần (cm): 100', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(81, 'Dress g6', '1620484494_657911_ZAG6V_9285_002_100_0000_Light.jpg', 435, 324.00, 0, 32, 1, 'loại quần: Quần dài Xuất Xứ: Việt Nam', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(82, 'dress lt', '1620484536_652081_ZAGK8_3251_002_100_0000_Light.jpg', 65, 453.00, 0, 34, 0, 'Phong cách: Dạo phố Ống quần: Dáng suông', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(83, 'Dress gucci cotton polo', '1620484647_653303_XKBSK_9087_001_100_0000_Light-Fine-wool-cotton-polo-dress.jpg', 3, 77.00, 0, 32, 1, 'Phong cách: Dạo phố Ống quần: Dáng suông', '2021-05-08', 0, '0', '0', 3, 1, NULL, NULL),
(84, 'Dress adidas 140', '1620484680_14023826_18288663_1000.jpg', 32, 43.00, 0, 26, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 2, NULL, NULL),
(85, 'Dress adidas 18', '1620484703_1703311492-18.jpg', 23, 42.00, 0, 43, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 2, NULL, NULL),
(86, 'adicolor 3d', '1620484726_Adicolor_3D_Trefoil_Tee_Dress_Red_GD2267_21_model.jpg', 23, 42.00, 0, 43, 1, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 3, 2, NULL, NULL),
(87, 'Classics roll up lack', '1620484749_Adicolor_Classics_Roll-Up_Sleeve_Tee_Dress_Black_GN2777_21_model.jpg', 32, 32.00, 0, 32, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 2, NULL, NULL),
(88, 'Large logo tee', '1620484775_Large_Logo_Tee_Dress_Black_FS7234_21_model.jpg', 23, 323.00, 0, 43, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 2, NULL, NULL),
(89, 'Large dress gay', '1620484795_Large_Logo_Tee_Dress_Grey_FS7233.jpg', 32, 333.00, 0, 32, 0, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 3, 2, NULL, NULL),
(90, 'Logo tee dress orange', '1620484825_Logo_Tee_Dress_Orange_FR7172.jpg', 323, 33.00, 0, 33, 1, 'loại quần: Quần dài Xuất Xứ: Việt Nam', '2021-05-08', 0, '0', '0', 3, 2, NULL, NULL),
(91, 'Dress tommy d3', '1620484871_31DaR5Naj1L.jpg', 32, 3.00, 0, 32, 0, 'loại quần: Quần dài Xuất Xứ: Việt Nam', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(92, 'Dress tommy 31', '1620484922_31-SQ96-UgL.jpg', 25, 31.00, 0, 55, 1, 'Dáng đầm: Đầm dáng xòe Họa Tiết: Trơn', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(93, 'Dress tommy Xm', '1620484954_31XmD8uZQsL.jpg', 32, 31.00, 0, 44, 1, 'Loại trang phục: Trang phục buổi tối Chất liệu: vải nhập dày mịn, thấm hút mồ hôi Xuất xứ: Việt Nam', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(94, 'Dress tommy FNT', '1620484994_76A5859_991_FNT.jpg', 3, 76.00, 0, 32, 0, 'Họa Tiết: Trơn', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(95, 'Dress tommy b01', '1620485037_76B0734_412_FNT.jpg', 43, 789.00, 0, 34, 1, 'ĐẦM ĐẸP MÚN XỈU lunn á', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(96, 'Dress cổ vuông', '1620485079_76J1193_641_FNT.jpg', 33, 641.00, 0, 43, 1, 'ÁI GÌ CÓ THỂ THIẾU CHỨ ĐẦM ĐEN THÌ KHÔNG THỂ THIẾU', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(97, 'Dress tommy Uw', '1620485110_UW02865_600_FNT.jpg', 32, 600.00, 0, 26, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(98, 'Dress len', '1620485178_1104946-z.jpg', 25, 46.00, 0, 32, 0, 'Dáng đầm: Đầm dáng xòe Họa Tiết: Trơn Kiểu tay: ngắn tay Loại trang phục: Chất liệu: Vải cát nhật dày mịn có lót', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(99, 'Dress tommy A0', '1620485205_A0FC151C_001_FNT.jpg', 22, 44.00, 0, 33, 0, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 3, 3, NULL, NULL),
(100, 'Dress chanel h2', '1620485262_h2_19732972a_b_large.jpg', 97, 197.00, 0, 32, 1, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 4, NULL, NULL),
(101, 'Dress vest', '1620485326_e85454e9543dd70f92ade05fb388f952.jpg', 32, 85.00, 0, 36, 0, 'Dáng đầm: Đầm trang trọng Họa Tiết: Trơn', '2021-05-08', 0, '0', '0', 3, 4, NULL, NULL),
(102, 'Dress getty', '1620485374_gettyimages-1178359361-594x594.jpg', 32, 117.00, 0, 33, 0, 'túi nắp là túi thật cho các chị em đựng tiền hay', '2021-05-08', 0, '0', '0', 3, 4, NULL, NULL),
(103, 'Victoria fall', '1620485425_Victoria-Beckham-Fall-2010-T5Clz5tMM5mx.jpg', 4, 200.00, 0, 33, 0, 'Chất liệu : Cotton 100%', '2021-05-08', 0, '0', '0', 3, 5, NULL, NULL),
(104, 'Dress hermas m5', '1620485462_m_5d7317acfe19c7e580a2e165.jpg', 33, 731.00, 0, 32, 0, 'Chất liệu: Polyester', '2021-05-08', 0, '0', '0', 3, 5, NULL, NULL),
(105, 'Dress gettyi', '1620485501_gettyimages-1039847430-612x612.jpg', 123, 612.00, 0, 33, 1, 'Chất liệu: tuyết mưa hàn quốc Xuất xứ: Việt Nam', '2021-05-08', 0, '0', '0', 3, 5, NULL, NULL),
(106, 'Dress yellow hermas', '1620485550_gettyimages-1251995958-612x612.jpg', 23, 125.00, 0, 32, 0, 'ko bị mất fom', '2021-05-08', 0, '0', '0', 3, 5, NULL, NULL),
(107, 'Fashion chnel vintage', '1620485604_340493c99c6f6d462b7a3f646b0d2504--coco-chanel-fashion-chanel-vintage.jpg', 5, 340.00, 0, 50, 0, 'EM NÀY là VÁY ĐẦM FOM A nên dễ mặc', '2021-05-08', 0, '0', '0', 3, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

DROP TABLE IF EXISTS `type_products`;
CREATE TABLE IF NOT EXISTS `type_products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', NULL, NULL),
(2, 'Trouser', NULL, NULL),
(3, 'Dress', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_users`
--

DROP TABLE IF EXISTS `type_users`;
CREATE TABLE IF NOT EXISTS `type_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `login_cart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_cart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_type_user_id_foreign` (`type_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
