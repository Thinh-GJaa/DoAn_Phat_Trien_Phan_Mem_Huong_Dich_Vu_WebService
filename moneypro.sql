-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2024 lúc 09:32 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `moneypro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_accounts`
--

CREATE TABLE `mp_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `balance` decimal(65,2) NOT NULL,
  `accountnumber` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_accounts`
--

INSERT INTO `mp_accounts` (`id`, `user_id`, `name`, `balance`, `accountnumber`, `description`, `created_at`, `updated_at`) VALUES
(81, 1, 'Prudential Bank', 12500065.00, '0312000076160000', 'Ngan Hang Trung Uong Viet Nam', '2022-05-12 15:52:04', '2022-05-18 09:39:24'),
(91, 88, 'hshshd', 21548.00, '1255', 'hdhdhd', '2022-05-17 21:00:00', '2022-05-17 21:00:00'),
(93, 1, 'BIDV', 20000.00, '3123123', 'Tài khoản ngân hàng BIDV', '2022-05-18 09:05:52', '2022-05-28 16:42:08'),
(96, 90, 'thinhbank', 0.00, '12345678', 'dfgds', '2024-06-10 21:06:16', '2024-06-10 21:06:16'),
(97, 90, 'Nguyễn Xuân Thịnh', 8990999.00, '12341234', '', '2024-06-11 01:10:09', '2024-06-11 01:10:09'),
(99, 91, 'ThinhBank', 100000.00, '88889999', 'thnh', '2024-06-12 00:10:29', '2024-06-12 03:10:46'),
(100, 91, 'ttt', 50000.00, '99998888', '', '2024-06-12 03:11:32', '2024-06-12 03:11:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_budgets`
--

CREATE TABLE `mp_budgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_budgets`
--

INSERT INTO `mp_budgets` (`id`, `user_id`, `category_id`, `amount`, `fromdate`, `todate`, `description`) VALUES
(1, 1, 20, 1500000.00, '2025-01-01', '2025-01-31', 'Tiết kiệm mua xe tăng hạng nhẹ T-34'),
(4, 1, 2, 125000.00, '2022-01-01', '2022-01-30', 'Tiền tiết kiệm mua xe tăng Thụy Điển EMIL 1951'),
(5, 1, 20, 23.00, '2022-02-10', '2022-02-12', 'Tiết kiệm mua xe tăng hạng nhẹ RU-215'),
(44, 80, 40, 50000.00, '2022-05-01', '2022-05-31', 'hâhha'),
(45, 80, 40, 50000.00, '2022-05-01', '2022-05-31', 'hâhha'),
(80, 90, 59, 70000.00, '2024-12-01', '2024-12-31', 'thịnh'),
(81, 90, 58, 100000.00, '2025-06-01', '2025-06-30', 'thịnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_categories`
--

CREATE TABLE `mp_categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(10) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_categories`
--

INSERT INTO `mp_categories` (`id`, `user_id`, `description`, `name`, `color`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Phương tiện chiến đấu bọc thép', 'Panzerkampfwagen', 'C5FF3F', 1, '2022-01-14 00:00:00', '2022-05-10 10:11:13'),
(2, 1, 'Xe tăng hạng nặng', 'Heavy Tank', '4C97FF', 1, '2022-01-15 10:22:27', '2022-03-31 23:55:08'),
(3, 1, 'Pháo tự hành chống tăng', 'Anti-tank destroyer', 'AE44FF', 1, '2022-01-15 10:22:46', '2022-05-12 19:55:28'),
(13, 1, 'Phương tiện chiến đấu bọc thép', 'Panzerkampfwagen', 'B92D5C', 2, '2022-02-07 11:42:57', '2022-04-06 07:53:36'),
(19, 1, 'A submarine is a ship capable of operation under-water', 'U-boat', '831100', 2, '2022-02-07 17:00:57', '2022-05-14 09:12:57'),
(20, 1, 'Pháo chống tăng', 'Tank Destroyer', '6CFF5B', 2, '2022-02-07 17:01:45', '2022-05-12 14:49:45'),
(40, 80, 'desfritio', 'test', '626000', 1, '2022-05-10 16:12:03', '2022-05-10 16:12:03'),
(52, 1, 'An aircraft carries is a war ship', 'Aircraft Carrier', '2E343F', 1, '2022-05-12 22:09:52', '2022-05-14 09:06:40'),
(53, 1, 'A submarine is a watercraft capable of independent operation under-water', 'Submarine', 'FF0000', 1, '2022-05-14 09:11:04', '2022-05-14 09:11:04'),
(58, 90, 'hihi', 'Được cho', 'FF3C75', 1, '2024-06-10 21:05:03', '2024-06-10 22:38:51'),
(59, 90, 'ruet', 'Trọ', 'FFFFFF', 2, '2024-06-10 22:20:58', '2024-06-10 22:20:58'),
(60, 90, 'Bán hàng', 'Bán hàng', '676A6F', 1, '2024-06-10 22:38:10', '2024-06-10 22:38:10'),
(61, 90, '', 'Bán hàng', 'FFFFFF', 1, '2024-06-12 01:43:31', '2024-06-12 01:43:31'),
(62, 91, '', 'jdjdjds', 'FF0000', 1, '2024-06-12 03:07:12', '2024-06-12 03:07:12'),
(63, 91, '', 'jdjdj', 'FF0000', 2, '2024-06-12 03:07:20', '2024-06-12 03:07:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_general_data`
--

CREATE TABLE `mp_general_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_general_data`
--

INSERT INTO `mp_general_data` (`id`, `name`, `data`) VALUES
(1, 'settings', '{\"site_name\":\"Money Pro\",\"site_description\":\"Access to track daily expenses and manage your budgets from PC\\u2019s browsers. It\\u2019s super fast and convenient, no installation required. Seamless experience across devices, from mobile app to computer.\",\"site_keywords\":\"money lover, money manager, budgeting app, personal finance management, expense tracker, money management web, budgeting web app\",\"currency\":\"\\u0111\",\"logomark\":\"https:\\/\\/timeswriter.xyz\\/assets\\/uploads\\/images\\/logo.png\",\"logotype\":\"https:\\/\\/timeswriter.xyz\\/assets\\/uploads\\/images\\/logo.png\",\"site_slogan\":\"Your personal finance manager on browser\",\"language\":\"vi-VN\"}'),
(2, 'integrations', '{\"analytics\":{\"property_id\":\"\"}}'),
(3, 'smtp', '{\"host\":\"smtp.gmail.com\",\"port\":\"587\",\"encryption\":\"tls\",\"auth\":true,\"username\":\"n20dccn160@student.ptithcm.edu.vn\",\"password\":\"def50200967ea035f1303b3ecab7dcdb741df71dacfd8fece10f02b482429dc282383f0d946c8c3edb27530fad87dd33f6e1d13ea1d65f54efc1223d4affd2705bcce709644e7cc8120dfac40d24314593f4ab4223854ec13bb4403501a8086b58d1155737401e\",\"from\":\"n20dccn160@student.ptithcm.edu.vn\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_goals`
--

CREATE TABLE `mp_goals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `deposit` decimal(10,2) NOT NULL,
  `deadline` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_goals`
--

INSERT INTO `mp_goals` (`id`, `user_id`, `name`, `balance`, `amount`, `deposit`, `deadline`, `status`) VALUES
(1, 1, 'Mua pháo', 10000.00, 2000000.00, 23341.00, '2022-05-29', 1),
(2, 1, 'Mua xe tăng chiến đấu chủ lực Type 71', 19000000.00, 535000.00, 12302246.00, '2022-01-31', 2),
(21, 1, 'Nghiên cứu modules E-100', 82000.00, 259000.00, 761.00, '2022-05-28', 1),
(22, 1, 'Chi phí lắp ráp E-100', 20242.00, 6100000.00, 0.00, '2022-05-30', 1),
(24, 1, 'Test', 456123.00, 123123.00, 0.00, '2022-05-30', 2),
(25, 1, 'Mua nhà sửa', 10000.00, 100000.00, 0.00, '2022-02-28', 1),
(26, 1, 'Test2', 12.00, 123.00, 110.00, '2022-05-30', 1),
(28, 1, 'Test', 123456.00, 123.00, 0.00, '2022-05-30', 2),
(36, 1, 'Mua nhà 2', 10000.00, 100000.00, 999.00, '2022-05-30', 1),
(37, 1, 'TestTest', 12345.00, 123.00, 0.00, '2022-05-30', 2),
(44, 1, 'Complete target', 100000.00, 100000.00, 0.00, '2022-05-14', 2),
(46, 1, 'Mua 1 suat Hadilao', 100000.00, 500000.00, 150184.00, '2022-05-15', 1),
(50, 1, 'outdated target', 400000.00, 1000000.00, 0.00, '2022-05-13', 3),
(55, 1, 'Test', 1.00, 10000000.00, 0.00, '2022-05-30', 1),
(56, 1, 'Test format', 10000000.00, 10000000.00, 0.00, '2022-05-31', 2),
(57, 1, 'Test limit', 99999999.00, 99999999.00, 0.00, '2022-05-23', 2),
(59, 1, 'Mua nhà 456', 10000.00, 100000.00, 0.00, '2022-05-30', 1),
(60, 1, 'hsh', 67.00, 6679.00, 0.00, '2022-05-19', 1),
(62, 90, 'DĐầu tư', 10.00, 100000.00, 100000.00, '2024-06-29', 2),
(63, 90, 'tjrjr', 3535.00, 35353.00, 3500.00, '2024-06-29', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_notifications`
--

CREATE TABLE `mp_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_notifications`
--

INSERT INTO `mp_notifications` (`id`, `user_id`, `title`, `content`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mục tiêu hết hạn', 'Mục tiêu đã hết hạn', 1, '2022-05-15 00:00:00', '2022-05-15 00:00:00'),
(2, 1, 'Mục tiêu sắp hết hạn', 'Mục tiêu sắp hết hạn', 1, '2022-05-15 00:00:00', '2022-05-15 00:00:00'),
(3, 1, 'Mục tiêu đã hoàn thành', 'Bạn đã hoàn thành mục tiêu', 1, '2022-05-15 00:00:00', '2022-05-15 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_transactions`
--

CREATE TABLE `mp_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `transactiondate` date NOT NULL,
  `type` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_transactions`
--

INSERT INTO `mp_transactions` (`id`, `user_id`, `category_id`, `account_id`, `name`, `amount`, `reference`, `transactiondate`, `type`, `description`) VALUES
(213, 1, 2, 81, 'Bán Air Blade', 2500.00, 'Việt Nam', '2022-06-04', 1, 'Bán xe máy Honda Airblade'),
(214, 1, 20, 81, 'E-100: Nâng cấp pháo', 150.00, 'Việt Nam', '2022-05-15', 2, 'Nâng cấp lên pháo 140mm'),
(216, 1, 53, 81, 'Lương tháng', 200000.00, 'VietNam', '2022-06-04', 1, ''),
(217, 1, 20, 81, 'Đổ xăng', 30000.00, 'Petrolimex', '2022-05-18', 2, 'Đổ xăng'),
(219, 1, 19, 81, 'Đổ xăng', 75000.00, 'Petrolimex', '2022-06-04', 2, 'Đổ 2.7 lít xăng RON-92 giá 75 nghìn'),
(220, 1, 13, 81, 'Nước giải khát StrongBow', 47000.00, 'Coca-Cola', '2022-06-04', 2, 'Nước giải khát StrongBow chai'),
(221, 1, 53, 81, 'Nhận lương', 10000000.00, 'VN', '2022-06-04', 1, 'Lương'),
(222, 1, 19, 81, 'Đóng tiền', 1000000.00, 'VN', '2022-06-04', 2, 'Hóa đơn'),
(223, 1, 1, 81, 'Ăn sáng', 15000.00, 'Vietnam', '2022-06-04', 1, ''),
(224, 1, 53, 93, 'abc', 250.00, 'Vietnam', '2022-06-04', 1, 'fhk'),
(225, 1, 1, 81, 'Mauschen', 50000.00, 'Soviet', '2022-05-08', 1, 'Bán xe giá 50.000 bạc'),
(226, 90, 59, 96, 'trọ', 10000.00, 'vn', '2024-06-10', 2, ''),
(227, 90, 58, 96, 'Được cho', 67000.00, 'vn', '2024-06-10', 1, ''),
(228, 90, 60, 96, 'Bán hàng', 670000.00, 'vn', '2024-06-10', 1, ''),
(229, 90, 58, 96, 'Được cho', 90000.00, 'vn', '2024-06-10', 1, ''),
(230, 90, 58, 96, 'Được cho', 90000.00, 'vn', '2024-06-10', 1, ''),
(231, 90, 58, 96, 'Được cho', 90000.00, 'vn', '2024-06-10', 1, ''),
(232, 90, 58, 96, 'Được cho', 90000.00, 'vn', '2024-06-10', 1, ''),
(233, 90, 58, 96, 'Được cho', 90000.00, 'vn', '2024-06-10', 1, ''),
(234, 90, 58, 96, 'Được cho', 90000.00, 'vn', '2024-06-10', 1, ''),
(235, 90, 60, 97, 'Bán hàng', 89000.00, 'vn', '2024-06-11', 1, ''),
(236, 90, 60, 97, 'Bán hàng', 89000.00, 'vn', '2024-06-11', 1, ''),
(237, 91, 62, 99, 'thth', 1200.00, 'ẻ', '2024-06-12', 1, 'đ'),
(238, 91, 63, 99, 'djxb', 36000.00, 'đ', '2024-06-12', 2, 'ffd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mp_users`
--

CREATE TABLE `mp_users` (
  `id` int(11) NOT NULL,
  `account_type` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `secret` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `language` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mp_users`
--

INSERT INTO `mp_users` (`id`, `account_type`, `email`, `password`, `firstname`, `lastname`, `is_active`, `date`, `secret`, `avatar`, `data`, `language`) VALUES
(1, 'member', '00xshen00@gmail.com', '$2y$10$d8ycN183bswLeHzGrwbwv.8abhV4H.Dyodnihmk5Mcf3uG3ccrzhW', 'Johnnyyyyy', 'Depp', 0, '2022-01-13 04:16:59', '3AB4XDKFZCMB4KSDSNZU7B3GTNQYUL723F6JE4U5HQZOK3CVO34QDGZQ4IFAE23K5IZYZR3H6KFBEGI7DONVWVDLKOGEWIPUM5INIUI', 'avatar_user_1.jpg', '{}', 'vi-VN'),
(77, 'admin', 'phongkaster@gmail.com', '$2y$10$Zhbzk/rLRdxJUIFQIlz6BOOGjkk.eNWDc9SOAhQ.AyPSar1uqhrmO', 'ph', 'ong', 0, '2022-04-21 20:26:34', '', '', '{}', 'vi-VN'),
(78, 'member', '123123@gmail.com', '$2y$10$6JtEjoj58Bat4hxCC0HBwe4S48YrPtua/QE.dQs9tj7dKz99H5z4a', '123', '123', 0, '2022-04-27 22:34:15', '', '', '{}', 'vi-VN'),
(79, 'member', 'dinhkhang151@gmail.com', '$2y$10$Imx2giuXTglw06G7Z/.k9uVI8ERdxtrbltCLaf8rcxZNMDrIG4yaK', 'Khang', 'Nguyen', 0, '2022-04-30 11:04:06', '', '', '{}', 'vi-VN'),
(80, 'member', 'dinhkhang1511@gmail.com', '$2y$10$7vm77adaKloHhmHlgnqLgOGP..dV4xIU3wedsxM6vMOGVV9N3m7ly', 'Khang', 'Luong', 0, '2022-05-03 18:03:43', 'T55FLKKGHRULTJSUIEJ6MYGY5BB7KBFS23OV4FSNB7Z45QG5OOPDRB7NHLJHWFAEY26G34IIXRZUNRWMMZGMUII5X23BYQTINDKZ3QQ', '', '{\"recoveryhash\":\"f1d68567b75cd4810acfd6a7db06915e282d6619\"}', 'vi-VN'),
(81, 'member', 'fqwfqwf@gmail.com', '$2y$10$uUUyaXcnwc08ThUDqso4Nu5MxROsDhdOWzpGD2hte59DJ5i4T8l8S', 'dwqfqfwqf', 'qwfqwfqwf', 0, '2022-05-12 13:01:29', '', '6273a92488d5b.png', '{}', 'vi-VN'),
(82, 'member', 'fewvwvwef@gmail.com', '$2y$10$lFSqjMrVRHuVqcPeGMfice3EN1JBLsRHPZwEIWUmRVo.9QilcvxGi', 'wvwevwe', 'vwevwevew', 0, '2022-05-12 13:02:32', '', '6273a92488d5b.png', '{}', 'vi-VN'),
(86, 'member', 'qesxrhuxiov@hotmail.com', '$2y$10$dyPgaLlAineI4yuITUHDiu6T/YbBQjU2JacdNtRtfwFUPjn.9UwC2', 'Ngọc', 'Thanh', 1, '2022-05-14 11:14:16', '', '627f2c97caf34.jpeg', '{}', 'vi-VN'),
(87, 'member', 'taollao201@gmail.com', '$2y$10$N7FbdjNdkhrFPZRwuqNdtuL3N.DfTirgsC.l/sfSWgmT7VK0/.9ES', 'Nhà Thuốc Lương Y', 'Lý Thị Thu Hà', 1, '2022-05-14 11:20:15', '', '627f2dff92398.png', '{}', 'vi-VN'),
(88, 'member', 'open_rhiqozl_user@tfbnw.net', '$2y$10$w9qX9zSJtpW9upc.bCoOs.tzHlJjHvlL0s9BKGI3mFZhNg0wsiWRC', 'Open', 'User', 1, '2022-05-17 20:51:37', '', '6283a86942672.jpeg', '{}', 'vi-VN'),
(89, 'member', 'vipro47333@gmail.com', '$2y$10$2GLvrKsdFlsVTcH0ZMePpOPsO31IEBCVLyuli/x1ZfEj.AH0EdpIa', 'Tuyên', 'Thanh', 1, '2022-05-17 21:01:02', '', '6283aa9e7d4ea.png', '{}', 'en-US'),
(90, 'admin', 'xth@gmail.com', '$2y$10$IbfEUyzQ4A9LiXjCjNDSXeqGZ6p/yaKotveE67tEnqc4Xzk.TCOoe', 'Xuannn', 'Thinh', 1, '2024-06-09 14:08:09', '', '6273a92488d5b.png', '{}', 'en-US'),
(91, 'member', 'thinh@gmail.com', '$2y$10$3vyZ9Av9TLV0ik6fdT.kMOyIZfEeEnnOwfr70wfLPVW8I2dqFy4Ai', 'xuan', 'thinh', 1, '2024-06-10 22:55:36', '', '6273a92488d5b.png', '{}', 'en-US'),
(92, 'member', 'nghianguyenhuu963@gmail.com', '$2y$10$35ylT6r5.CUaOP/ovUFCU.m2v9fV5kgxo/CPmFQJVHbqkj4XpFuYq', 'Hữu Nghĩa', 'Nguyễn', 1, '2024-06-12 08:44:35', '', '6668fd8237b77.png', '{}', 'en-US');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `mp_accounts`
--
ALTER TABLE `mp_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accountnumber` (`accountnumber`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `mp_budgets`
--
ALTER TABLE `mp_budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `mp_categories`
--
ALTER TABLE `mp_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_type_idx` (`user_id`,`type`) USING BTREE;

--
-- Chỉ mục cho bảng `mp_general_data`
--
ALTER TABLE `mp_general_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `mp_goals`
--
ALTER TABLE `mp_goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `mp_notifications`
--
ALTER TABLE `mp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `mp_transactions`
--
ALTER TABLE `mp_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `type_user_id_transactiondate` (`type`,`user_id`,`transactiondate`) USING BTREE;

--
-- Chỉ mục cho bảng `mp_users`
--
ALTER TABLE `mp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `mp_accounts`
--
ALTER TABLE `mp_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `mp_budgets`
--
ALTER TABLE `mp_budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `mp_categories`
--
ALTER TABLE `mp_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `mp_general_data`
--
ALTER TABLE `mp_general_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `mp_goals`
--
ALTER TABLE `mp_goals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `mp_transactions`
--
ALTER TABLE `mp_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT cho bảng `mp_users`
--
ALTER TABLE `mp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `mp_accounts`
--
ALTER TABLE `mp_accounts`
  ADD CONSTRAINT `mp_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mp_budgets`
--
ALTER TABLE `mp_budgets`
  ADD CONSTRAINT `mp_budgets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mp_budgets_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `mp_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mp_categories`
--
ALTER TABLE `mp_categories`
  ADD CONSTRAINT `mp_categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mp_goals`
--
ALTER TABLE `mp_goals`
  ADD CONSTRAINT `mp_goals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mp_notifications`
--
ALTER TABLE `mp_notifications`
  ADD CONSTRAINT `mp_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mp_transactions`
--
ALTER TABLE `mp_transactions`
  ADD CONSTRAINT `mp_transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mp_transactions_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `mp_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mp_transactions_ibfk_4` FOREIGN KEY (`account_id`) REFERENCES `mp_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
