-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 22, 2022 lúc 08:35 AM
-- Phiên bản máy phục vụ: 10.5.15-MariaDB-cll-lve
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sunmomos_tranhscam247`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `band_ip`
--

CREATE TABLE `band_ip` (
  `id` int(11) NOT NULL,
  `ip_band` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `id_xep` int(11) DEFAULT NULL,
  `namectk` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `namestk` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `id_xep`, `namectk`, `namestk`, `img`, `status`, `url_config`) VALUES
(12, 10000, 'Phạm Thị Thắm', '0858140439', 'https://upanh.cf/y4r0ynzbni.png', 1, 'AUTOTUONGTAC.SITE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cron_momo`
--

CREATE TABLE `cron_momo` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(6) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `imei` varchar(100) DEFAULT NULL,
  `AAID` varchar(100) DEFAULT NULL,
  `TOKEN` varchar(300) DEFAULT NULL,
  `ohash` varchar(100) DEFAULT NULL,
  `SECUREID` varchar(100) DEFAULT NULL,
  `rkey` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `rowCardId` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `authorization` varchar(2000) NOT NULL DEFAULT 'undefined',
  `agent_id` varchar(100) NOT NULL DEFAULT 'undefined',
  `setupKeyDecrypt` varchar(150) DEFAULT NULL,
  `setupKey` varchar(200) DEFAULT NULL,
  `sessionkey` varchar(150) DEFAULT ' ',
  `RSA_PUBLIC_KEY` text DEFAULT NULL,
  `REFRESH_TOKEN` text DEFAULT NULL,
  `BALANCE` int(11) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `hardware` varchar(50) DEFAULT NULL,
  `facture` varchar(50) DEFAULT NULL,
  `MODELID` varchar(100) DEFAULT NULL,
  `sitename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cron_momo`
--

INSERT INTO `cron_momo` (`id`, `phone`, `password`, `Name`, `imei`, `AAID`, `TOKEN`, `ohash`, `SECUREID`, `rkey`, `rowCardId`, `authorization`, `agent_id`, `setupKeyDecrypt`, `setupKey`, `sessionkey`, `RSA_PUBLIC_KEY`, `REFRESH_TOKEN`, `BALANCE`, `device`, `hardware`, `facture`, `MODELID`, `sitename`) VALUES
(3, '0528115572', NULL, NULL, 'd3ab4a13-11e2-c095-a054-6a8a27ca9768', '3db6019b-b77c-aa98-98c5-2a82274e742a', 'fV8gZL1LhvA0bcxNKm8T5G:5hcpeHKqq-Zlzgkkh6BNHBZT8MEvUy-BBDSO37wNxWN-Sv3dQlj-r8038Uc-UyHP6irJafMiMAPInIerW5NgwWgz4bMZJtOPMgzXvmfiW51kNfMKk-A0RxhrBsd_BbHq1tGArcX-GuUM', '2c06ac7d20f62c46651eff28de7f4bab78fc5d342982b1a610f30566eb6fc542', 'b140c63d72143aadb', '3dcMOUWhJBUd1sX9MYZd', NULL, 'undefined', 'undefined', 'd6ac61ec-10b0-41fd-973c-d04e3bd7c190', 'lfUf/rrd850I86Pmhg+m+9X4aG4mhOx8GjSMzUMIKpbTX4Y8CiToRn0i7teQoSXr', ' ', NULL, NULL, NULL, 'MI 9', 'equuleus', 'Xiaomi', 'Xiaomi equuleus', 'AUTOTUONGTAC.SITE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `device` varchar(50) DEFAULT NULL,
  `hardware` varchar(50) DEFAULT NULL,
  `facture` varchar(50) DEFAULT NULL,
  `MODELID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `device`
--

INSERT INTO `device` (`id`, `device`, `hardware`, `facture`, `MODELID`) VALUES
(1, 'SM-G532F', 'mt6735', 'samsung', 'samsung sm-g532gmt6735r58j8671gsw'),
(3, 'SM-A102U', 'a10e', 'Samsung', 'Samsung SM-A102U'),
(4, 'SM-A305FN', 'a30', 'Samsung', 'Samsung SM-A305FN'),
(5, 'HTC One X9 dual sim', 'htc_e56ml_dtul', 'HTC', 'HTC One X9 dual sim'),
(6, 'HTC 7060', 'cp5dug', 'HTC', 'HTC HTC_7060'),
(7, 'HTC D10w', 'htc_a56dj_pro_dtwl', 'HTC', 'HTC htc_a56dj_pro_dtwl'),
(8, 'Oppo realme X Lite', 'RMX1851CN', 'Oppo', 'Oppo RMX1851'),
(9, 'MI 9', 'equuleus', 'Xiaomi', 'Xiaomi equuleus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ds_sitecon`
--

CREATE TABLE `ds_sitecon` (
  `id_site` int(11) NOT NULL,
  `username` varchar(999) NOT NULL,
  `domain` varchar(999) NOT NULL,
  `token` varchar(999) DEFAULT NULL,
  `ip` varchar(999) NOT NULL,
  `date` varchar(999) NOT NULL,
  `site_me` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `site_con` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ds_sitecon`
--

INSERT INTO `ds_sitecon` (`id_site`, `username`, `domain`, `token`, `ip`, `date`, `site_me`, `site_con`, `url_config`, `status`) VALUES
(1, 'thanhvucoder', 'shopchientuong.fun', 'eyJhbGciONjPQggngUOLBwzkJOmAmOPTgYxhvUhYkKQcEHIxTWRxFrQquncWRdzPMbnEatlIUoXjnxebviCZjYklcRRTsfzcvplhTQjbUVYEm1654340664MmZjNzY4NDdkNmY5MGQ0YTgzZGFiZjcyODYyOTgyYmM==', '103.82.27.174', '2022-06-05 10:24:20', 'AUTOTUONGTAC.SITE', 'SHOPCHIENTUONG.FUN', 'AUTOTUONGTAC.SITE', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_buy`
--

CREATE TABLE `history_buy` (
  `id` int(11) NOT NULL,
  `username` varchar(999) NOT NULL,
  `type` varchar(999) DEFAULT NULL,
  `hinh_thuc` varchar(999) DEFAULT NULL,
  `soluong` varchar(999) DEFAULT NULL,
  `number_star` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `number_end` int(255) NOT NULL,
  `buff` int(11) DEFAULT NULL,
  `time_buy` int(255) NOT NULL,
  `tong_tien` varchar(999) DEFAULT NULL,
  `link_buy` varchar(999) DEFAULT NULL,
  `server_buy` varchar(999) DEFAULT NULL,
  `list_msg` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `ghichu` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` varchar(999) DEFAULT NULL,
  `ma_gd` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `history_buy`
--

INSERT INTO `history_buy` (`id`, `username`, `type`, `hinh_thuc`, `soluong`, `number_star`, `number_end`, `buff`, `time_buy`, `tong_tien`, `link_buy`, `server_buy`, `list_msg`, `ghichu`, `status`, `ma_gd`, `date`, `url_config`) VALUES
(6, 'demo_code', 'sub_speed', 'Login Website', '500', '13439', 501, NULL, 0, '3500', '100065195607019', '1', '', '', 'Success', 'FbSubSpeed_PO0MWE2GWDBA', '2022-05-19 15:07:56', 'AUTOVIET.PRO'),
(7, 'thanhvucoder', 'sub_vip', 'Login Website', '500000', '', 0, NULL, 0, '500000', '100052813938530', '4', '', '', 'Pendding', '', '2022-06-05 10:23:56', 'AUTOTUONGTAC.SITE'),
(8, 'thanhvucoder', 'sub_vip', 'Login Website', '500', '', 0, NULL, 0, '500', '100052813938530', '4', '', '', 'Pendding', '', '2022-06-05 10:31:26', 'SHOPCHIENTUONG.FUN'),
(9, 'thanhvucoder', 'sub_vip', 'Site Auto', '500', '', 0, NULL, 0, '500', '100052813938530', '4', '', '', 'Pendding', '', '2022-06-05 10:31:26', 'AUTOTUONGTAC.SITE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_naptien`
--

CREATE TABLE `history_naptien` (
  `id` int(11) NOT NULL,
  `type` varchar(999) NOT NULL,
  `username` varchar(999) NOT NULL,
  `loaithe` varchar(999) DEFAULT NULL,
  `menhgia` varchar(999) NOT NULL,
  `sothe` varchar(999) DEFAULT NULL,
  `soseri` varchar(999) DEFAULT NULL,
  `thucnhan` varchar(999) DEFAULT NULL,
  `trangthai` varchar(999) NOT NULL,
  `date` varchar(999) DEFAULT NULL,
  `namemomo` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `phonemomo` varchar(999) DEFAULT NULL,
  `tranid` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `history_naptien`
--

INSERT INTO `history_naptien` (`id`, `type`, `username`, `loaithe`, `menhgia`, `sothe`, `soseri`, `thucnhan`, `trangthai`, `date`, `namemomo`, `phonemomo`, `tranid`, `url_config`) VALUES
(7, 'napthe', 'demo_code', 'VIETTEL', '10000', '011040706499321', '10008579549663', '0', '0', '1652948655', NULL, NULL, '307588992', 'AUTOVIET.PRO'),
(8, 'napthe', 'demo_code', 'VIETTEL', '20000', '011040706499323', '10008579549663', '0', '1', '1652949106', NULL, NULL, '405400100', 'AUTOVIET.PRO'),
(9, 'napthe', 'demo_code', 'VIETTEL', '20000', '011040706499322', '10008579549665', '0', '2', '1652949486', NULL, NULL, '889062107', 'AUTOVIET.PRO'),
(10, 'napthe', 'thanhvucoder', 'VIETTEL', '10000', '664646446644777', '10000004777777', '0', '2', '2022-06-05 10:41:39', NULL, NULL, '136134356', 'AUTOTUONGTAC.SITE'),
(11, 'napthe', 'thanhvucoder', 'VIETTEL', '10000', '516167293839397', '10008855121774', '7500', '1', '2022-06-05 10:43:29', NULL, NULL, '799218392', 'AUTOTUONGTAC.SITE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_api`
--

CREATE TABLE `list_api` (
  `id` int(11) NOT NULL,
  `username` varchar(999) DEFAULT NULL,
  `token` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `name_api` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `link_callback` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_hotro`
--

CREATE TABLE `list_hotro` (
  `id` int(11) NOT NULL,
  `username` varchar(999) DEFAULT NULL,
  `loai_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `tieu_de_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `id_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `noi_dung_hotro` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `noi_dung_xuly` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_site`
--

CREATE TABLE `log_site` (
  `id` int(11) NOT NULL,
  `username` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `ip` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `log_site`
--

INSERT INTO `log_site` (`id`, `username`, `note`, `ip`, `date`, `url_config`) VALUES
(1, 'nhquang', 'Đăng kí tài khoản', '171.229.69.204', '2022-05-12 19:46:19', 'AUTOVIET.PRO'),
(2, 'nhquang', '', '171.229.69.204', '2022-05-12 19:52:30', 'AUTOVIET.PRO'),
(3, 'Ltt009', 'Đăng kí tài khoản', '123.19.208.221', '2022-05-12 20:36:20', 'AUTOVIET.PRO'),
(4, 'anhtugood', 'Đăng kí tài khoản', '171.247.153.2', '2022-05-13 11:08:02', 'AUTOVIET.PRO'),
(5, 'Buliem123', 'Đăng kí tài khoản', '1.52.248.223', '2022-05-13 11:08:28', 'AUTOVIET.PRO'),
(6, 'Nhannhan', 'Đăng kí tài khoản', '171.234.11.197', '2022-05-13 13:07:31', 'AUTOVIET.PRO'),
(7, 'okvnss', 'Đăng kí tài khoản', '113.186.56.130', '2022-05-13 15:06:19', 'AUTOVIET.PRO'),
(8, 'nddcoder', 'Đăng kí tài khoản', '117.6.169.13', '2022-05-13 15:46:02', 'AUTOVIET.PRO'),
(9, 'Vanlam123', 'Đăng kí tài khoản', '113.178.218.253', '2022-05-13 17:34:08', 'AUTOVIET.PRO'),
(10, 'xuandung19049x', 'Đăng kí tài khoản', '117.7.100.21', '2022-05-13 19:49:46', 'AUTOVIET.PRO'),
(11, '000999', 'Đăng kí tài khoản', '113.189.13.145', '2022-05-13 21:00:08', 'AUTOVIET.PRO'),
(12, 'giahungg', 'Đăng kí tài khoản', '116.111.155.53', '2022-05-14 05:59:05', 'AUTOVIET.PRO'),
(13, 'giahungg', '', '116.111.155.53', '2022-05-14 05:59:32', 'AUTOVIET.PRO'),
(14, 'Concac3007', 'Đăng kí tài khoản', '14.236.213.50', '2022-05-14 20:50:46', 'AUTOVIET.PRO'),
(15, 'manh0044', 'Đăng kí tài khoản', '116.104.63.47', '2022-05-14 23:36:11', 'AUTOVIET.PRO'),
(16, 'vuongtu123', 'Đăng kí tài khoản', '171.245.231.253', '2022-05-15 12:09:53', 'AUTOVIET.PRO'),
(17, 'nhquang', 'Đăng kí tài khoản', '27.78.5.71', '2022-05-15 21:05:47', 'AUTOVIET.PRO'),
(18, 'Hobaphuoc', 'Đăng kí tài khoản', '59.153.233.74', '2022-05-16 06:09:13', 'AUTOVIET.PRO'),
(19, 'admin123', 'Đăng kí tài khoản', '14.230.170.35', '2022-05-16 09:18:54', 'AUTOVIET.PRO'),
(20, 'nhquang', 'Đăng kí tài khoản', '171.255.69.175', '2022-05-16 11:50:56', 'AUTOVIET.PRO'),
(21, 'nhquang', '', '171.255.69.175', '2022-05-16 12:06:12', 'AUTOVIET.PRO'),
(22, 'admin999', 'Đăng kí tài khoản', '27.68.156.101', '2022-05-16 19:11:51', 'AUTOVIET.PRO'),
(23, 'thanhvucoder', 'Đăng kí tài khoản', '113.188.42.246', '2022-05-16 19:22:31', 'AUTOVIET.PRO'),
(24, 'demo_code', 'Đăng kí tài khoản', '125.235.14.144', '2022-05-16 19:36:11', 'AUTOVIET.PRO'),
(25, 'Abcd1234', 'Đăng kí tài khoản', '14.247.98.199', '2022-05-16 19:43:58', 'AUTOVIET.PRO'),
(26, 'demo_code', '', '171.255.70.197', '2022-05-16 20:01:22', 'AUTOVIET.PRO'),
(27, 'anhtugood', 'Đăng kí tài khoản', '125.235.209.11', '2022-05-16 23:22:25', 'AUTOVIET.PRO'),
(28, 'thanhvucoder', 'Đăng kí tài khoản', '113.188.42.246', '2022-05-16 23:26:33', 'AUTOVIET.PRO'),
(29, 'ngothanhdoan', 'Đăng kí tài khoản', '59.153.243.67', '2022-05-17 12:08:03', 'AUTOVIET.PRO'),
(30, 'Admin2002', 'Đăng kí tài khoản', '171.236.209.118', '2022-05-18 00:46:37', 'AUTOVIET.PRO'),
(31, 'demo_code', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 6000', '171.229.72.122', '2022-05-18 11:40:22', 'AUTOVIET.PRO'),
(32, 'hjgjhjk', 'Đăng kí tài khoản', '123.19.208.221', '2022-05-18 15:18:34', 'AUTOVIET.PRO'),
(33, 'tovankhuong', 'Đăng kí tài khoản', '171.232.62.117', '2022-05-18 19:51:02', 'AUTOVIET.PRO'),
(34, 'demo_code', ' Đã Tạo Giao Dịch sub-speed Với Số Tiền 3500', '171.229.85.87', '2022-05-19 15:07:56', 'AUTOVIET.PRO'),
(35, 'demo_code', 'Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-05-19 15:24:15', '171.229.85.87', '2022-05-19 15:24:15', 'AUTOVIET.PRO'),
(36, 'demo_code', 'Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-05-19 15:31:46', '171.229.85.87', '2022-05-19 15:31:46', 'AUTOVIET.PRO'),
(37, 'demo_code', 'Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-05-19 15:38:06', '171.229.85.87', '2022-05-19 15:38:06', 'AUTOVIET.PRO'),
(38, 'hoadz99', 'Đăng kí tài khoản', '115.75.34.237', '2022-05-19 16:12:53', 'AUTOVIET.PRO'),
(39, 'Nhan77', 'Đăng kí tài khoản', '171.234.10.96', '2022-05-19 16:16:32', 'AUTOVIET.PRO'),
(40, 'adminbinh', 'Đăng kí tài khoản', '171.251.236.64', '2022-05-19 16:44:44', 'AUTOVIET.PRO'),
(41, 'dothevi', 'Đăng kí tài khoản', '117.5.147.220', '2022-05-19 18:14:41', 'AUTOVIET.PRO'),
(42, 'kienvu', 'Đăng kí tài khoản', '14.175.32.201', '2022-05-19 23:05:43', 'AUTOVIET.PRO'),
(43, 'Nqa2007', 'Đăng kí tài khoản', '171.234.9.177', '2022-05-21 06:31:13', 'AUTOVIET.PRO'),
(44, 'Binhpudz', 'Đăng kí tài khoản', '27.68.136.97', '2022-05-21 12:20:54', 'AUTOVIET.PRO'),
(45, 'Ppp111', 'Đăng kí tài khoản', '27.67.73.238', '2022-05-21 13:52:08', 'AUTOVIET.PRO'),
(46, 'okvnss', 'Đăng kí tài khoản', '125.212.156.37', '2022-05-23 12:59:19', 'AUTOVIET.PRO'),
(47, 'bjhfghjhj', 'Đăng kí tài khoản', '123.19.208.221', '2022-05-23 18:56:01', 'AUTOVIET.PRO'),
(48, 'harune1120', 'Đăng kí tài khoản', '42.118.2.57', '2022-05-23 21:09:33', 'AUTOVIET.PRO'),
(49, 'TKtiendezet', 'Đăng kí tài khoản', '14.191.24.105', '2022-06-04 13:29:54', 'TRUMSUBRE.COM'),
(50, 'duynam244', 'Đăng kí tài khoản', '14.190.80.21', '2022-06-04 13:31:04', 'TRUMSUBRE.COM'),
(51, 'nvn32vip', 'Đăng kí tài khoản', '125.212.159.141', '2022-06-04 13:32:48', 'TRUMSUBRE.COM'),
(52, 'Luuhamancute', 'Đăng kí tài khoản', '113.187.166.194', '2022-06-04 13:32:54', 'TRUMSUBRE.COM'),
(53, 'anhviet2607', 'Đăng kí tài khoản', '1.53.198.159', '2022-06-04 13:33:32', 'TRUMSUBRE.COM'),
(54, 'adminbinh', 'Đăng kí tài khoản', '171.251.237.12', '2022-06-04 13:33:53', 'TRUMSUBRE.COM'),
(55, 'Levanquan2927', 'Đăng kí tài khoản', '171.237.155.128', '2022-06-04 13:35:24', 'TRUMSUBRE.COM'),
(56, 'admin123', 'Đăng kí tài khoản', '113.166.248.95', '2022-06-04 13:36:43', 'TRUMSUBRE.COM'),
(57, 'nhanvu147', 'Đăng kí tài khoản', '113.170.208.180', '2022-06-04 13:45:27', 'TRUMSUBRE.COM'),
(58, 'dung25102000444', 'Đăng kí tài khoản', '113.179.216.3', '2022-06-04 13:48:29', 'TRUMSUBRE.COM'),
(59, 'nqt1111', 'Đăng kí tài khoản', '42.1.70.141', '2022-06-04 13:49:51', 'TRUMSUBRE.COM'),
(60, 'lamthanhdat213', 'Đăng kí tài khoản', '14.250.4.204', '2022-06-04 13:56:47', 'TRUMSUBRE.COM'),
(61, 'TrieuVyahiicuto', 'Đăng kí tài khoản', '116.96.77.92', '2022-06-04 13:57:37', 'TRUMSUBRE.COM'),
(62, 'thanhvucoder', 'Đăng kí tài khoản', '103.180.149.88', '2022-06-04 18:04:24', 'AUTOTUONGTAC.SITE'),
(63, 'thanhvucoder', '', '103.180.149.88', '2022-06-04 18:15:36', 'AUTOTUONGTAC.SITE'),
(64, 'hello123', 'Đăng kí tài khoản', '2402:800:61a4:a38f::6', '2022-06-04 18:23:36', 'AUTOTUONGTAC.SITE'),
(65, 'bhdtbgaming12', 'Đăng kí tài khoản', '42.118.34.232', '2022-06-05 09:30:53', 'AUTOTUONGTAC.SITE'),
(66, 'thiendz', 'Đăng kí tài khoản', '113.183.247.47', '2022-06-05 09:32:51', 'AUTOTUONGTAC.SITE'),
(67, 'thanhvucoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 500000', '103.82.27.174', '2022-06-05 10:23:57', 'AUTOTUONGTAC.SITE'),
(68, 'thanhvucoder', 'Đăng kí website con', '103.82.27.174', '2022-06-05 10:24:20', 'AUTOTUONGTAC.SITE'),
(69, 'Thanhvucoder', '', '103.82.27.174', '2022-06-05 10:29:55', 'SHOPCHIENTUONG.FUN'),
(70, 'thanhvucoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 500', '103.82.27.174', '2022-06-05 10:31:28', 'SHOPCHIENTUONG.FUN'),
(71, 'thanhvucoder', ' Đã Tạo Giao Dịch sub-vip Với Số Tiền 500', '103.82.27.174', '2022-06-05 10:31:28', 'AUTOTUONGTAC.SITE'),
(72, 'thanhvucoder', ' Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-06-05 10:41:39', '103.82.27.174', '2022-06-05 10:41:39', 'AUTOTUONGTAC.SITE'),
(73, 'thanhvucoder', ' Vừa nạp thẻ VIETTEL với mệnh giá  vào lúc 2022-06-05 10:43:29', '103.82.27.174', '2022-06-05 10:43:29', 'AUTOTUONGTAC.SITE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mbbank`
--

CREATE TABLE `mbbank` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refNo` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `deviceIdCommon` varchar(255) DEFAULT NULL,
  `appVersion` varchar(255) NOT NULL DEFAULT 'ndroid_13.1_',
  `softTokenId` text DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `IDMB` text DEFAULT NULL,
  `custId` varchar(255) DEFAULT NULL,
  `chrgAcctCd` text DEFAULT NULL,
  `createdBy` text DEFAULT NULL,
  `custSectorCd` varchar(11) DEFAULT NULL,
  `entrustId` text DEFAULT NULL,
  `phoneNo` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `birthday` text DEFAULT NULL,
  `spiUsrCd` text DEFAULT NULL,
  `srvcPcCd` text DEFAULT NULL,
  `acct_list` text DEFAULT NULL,
  `cardList` text DEFAULT NULL,
  `softTokenList` text DEFAULT NULL,
  `biomatricAuthDeviceList` text DEFAULT NULL,
  `defaultAccount` text DEFAULT NULL,
  `custjson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mbbankauto`
--

CREATE TABLE `mbbankauto` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `accountno` varchar(255) DEFAULT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_thongbao`
--

CREATE TABLE `note_thongbao` (
  `id` int(11) NOT NULL,
  `nguoidang` varchar(999) NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(999) NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `note_thongbao`
--

INSERT INTO `note_thongbao` (`id`, `nguoidang`, `noidung`, `date`, `url_config`) VALUES
(2, 'adminkhanh', 'HỆ THỐNG BẢO TRÌ ĐẾN 05/06 VUI LÒNG QUAY LẠI SAU', '2022-06-04 08:43:55', 'TRUMSUBRE.COM'),
(21, 'nhquang', 'xin chào mọi người !', '2022-05-12 19:48:52', 'TRUMSUBRE.COM'),
(22, 'nhquang', 'AUTOVIET.PRO Hệ Thống Dịch Vụ Mạng Xã Hội Chất Lượng !', '2022-05-16 13:22:05', 'TRUMSUBRE.COM'),
(24, 'demo_code', 'Mua Mã Nguồn Tại: https://www.facebook.com/profile.php?id=100065669571969', '2022-05-20 19:49:27', 'TRUMSUBRE.COM'),
(25, 'demo_code', 'Facebook Cũ Bị Mất, Liên Hệ Facebook Này Nhé https://www.facebook.com/profile.php?id=100065669571969', '2022-05-20 19:50:23', 'TRUMSUBRE.COM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `key`, `value`) VALUES
(1, 'url_admin', 'AUTOTUONGTAC.SITE'),
(2, 'trang_thai_auto', 'ON'),
(3, 'token_auto_dvfb', 'Gắn token của b vào'),
(4, 'link_host', 'https://c11.vinahost.vn/cpanel'),
(5, 'ip_host', '123.30.136.246'),
(6, 'username_host', 'jwadqnkh'),
(7, 'password_host', '974LhqYhf4'),
(8, 'id_cloud_flare', '00576c0b1201c0e7142dcccf38ca4263'),
(9, 'key_cloud_flare', '081c3c78fa0d38da3d7238f779d86e4b78a64'),
(10, 'email_cloud_flare', 'cloudflare.luutru@gmail.com'),
(11, 'name_sv1', 'dee.ns.cloudflare.com'),
(12, 'name_sv2', 'trey.ns.cloudflare.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `server_service`
--

CREATE TABLE `server_service` (
  `id` int(11) NOT NULL,
  `code_service` varchar(999) DEFAULT NULL,
  `server_service` varchar(999) DEFAULT NULL,
  `rate_service` varchar(999) DEFAULT NULL,
  `title_service` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `server_name` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status_service` int(11) DEFAULT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `server_service`
--

INSERT INTO `server_service` (`id`, `code_service`, `server_service`, `rate_service`, `title_service`, `server_name`, `status_service`, `url_config`) VALUES
(1, 'sub_vip', '1', '2.6', 'Sub dạng mới, cực bá, không hỗ trợ pro5, bảo hành 7 ngày (độc quyền cực VIP đang mua rất nhiều)', '- Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max không giới hạn, không chạy cho pro5, (đến đơn 100k chỉ trong 5p - 20p xong).', 1, 'AUTOVIET.PRO'),
(2, 'sub_vip', '2', '2.6', 'Sub dạng mới, cực bá, không hỗ trợ pro5, bảo hành 7 ngày(độc quyền cực VIP đang mua rất nhiều)', '- Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h max không giới hạn, không chạy cho pro5, (đến đơn 100k chỉ trong 5p - 20p xong).', 1, 'AUTOVIET.PRO'),
(3, 'sub_vip', '3', '1.4', 'Sub dạng mới, cực bá, không hỗ trợ pro5, bảo hành 7 ngày, đang sale độc quyền tại Việt Nam', '- Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max 2m / 1 ID Facebook, không chạy cho pro5.', 1, 'AUTOVIET.PRO'),
(4, 'sub_vip', '4', '1.2', 'Sub dạng mới, cực bá, không hỗ trợ pro5, đang sale độc quyền tại Việt Nam', '- Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max 300k / 1 ID Facebook, mỗi ngày mua được 10 đơn, không chạy cho pro5.', 1, 'AUTOVIET.PRO'),
(8, 'like_post_sale', '9', '5', 'Like clone nuôi, max 1m5 like', '- Tốc độ ổn 1k -&gt; 3k/ngày, không hỗ trợ bài viết chia sẻ video, bài viết trong nhóm, bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(9, 'like_post_sale', '10', '7.5', 'Like clone nuôi, max 1m5 like', '- Tốc độ ổn 2k -&gt; 10k/ngày, không hỗ trợ bài viết chia sẻ video, bài viết trong nhóm, bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(10, 'like_post_sale', '11', '10', 'Like clone nuôi, max 1m5 like', '- Tốc độ ổn 2k -&gt; 20k/ngày, không hỗ trợ bài viết chia sẻ video, bài viết trong nhóm, bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(11, 'like_post_sale', '12', '8', 'Like clone nuôi, max 1m5 like', '- Tốc độ ổn 1k -&gt; 3k/ngày, không hỗ trợ bài viết chia sẻ video, bài viết trong nhóm, bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(12, 'like_post_sale', '13', '12', 'Like clone nuôi, max 1m5 like', '- Tốc độ ổn 2k -&gt; 13k/ngày, không hỗ trợ bài viết chia sẻ video, bài viết trong nhóm, bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(13, 'like_post_sale', '14', '14', 'Like clone nuôi, max 1m5 like', '- Tốc độ ổn 2k -&gt; 20k/ngày, không hỗ trợ bài viết chia sẻ video, bài viết trong nhóm, bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(14, 'like_post', '1', '14', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', '- Tốc độ lên nhanh, max 100k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(16, 'like_post', '3', '5.5', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', '- Tốc độ lên nhanh, max 10k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(17, 'like_post', '4', '8', 'Like clone tốc độ ổn', '- Tốc độ lên nhanh, max 10k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(18, 'like_post', '5', '9', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', '- Tốc độ lên ổn, max 10k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(19, 'like_post', '6', '2', 'Like tây tốc độ nhan', 'Tốc độ lên ổn, max 30k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(20, 'like_post', '7', '6.5', 'Like via người dùng thật tốc độ ổn', 'Tốc độ lên ổn ngày 3k -&gt; 10k, max 100k like, bảo hành 7 ngày', 1, 'AUTOVIET.PRO'),
(21, 'like_post', '8', '5', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', '- Tốc độ lên ổn, max 20k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(22, 'like_post', '9', '3', 'Like clone giá rẻ', '- Tốc độ ổn 2k - 10k/ngày, max 10k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(23, 'like_cmt', '1', '35', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ lên ổn, max 100k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(24, 'like_cmt', '2', '65', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ lên ổn, max 10k like, không bảo hành', 1, 'AUTOVIET.PRO'),
(25, 'cmt_sale', '5', '35', 'Comment clone nuôi, max 1m5 comment, không bảo hành', '- Tốc độ ổn 50 -&gt; 200/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(26, 'cmt_sale', '6', '42', 'Comment clone nuôi, max 1m5 comment, không bảo hành', 'Tốc độ ổn 500 -&gt; 800/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(27, 'cmt_sale', '7', '50', 'Comment clone nuôi, max 1m5 comment, không bảo hành', 'Tốc độ ổn 1k -&gt; 3k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(28, 'cmt', '1', '160', 'Comment người dùng chéo, tài khoản tên Việt, có Avatar', '- Tốc độ ổn max 10k comment, không bảo hành, không hỗ trợ cho các bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(29, 'cmt', '2', '460', 'Comment người dùng chéo, tài khoản tên Việt, có Avatar', '- Tốc độ nhanh max 10k comment, không bảo hành, không hỗ trợ cho các bài viết hoặc video đang chạy ads.', 1, 'AUTOVIET.PRO'),
(30, 'cmt', '3', '222', 'Comment via người dùng thật', '- Tốc độ ổn max 5k comment, không bảo hành, không chạy bài viết nhóm', 1, 'AUTOVIET.PRO'),
(31, 'sub_quality', '1', '20', 'Sub via, cực kì chất lượng', 'Tốc độ lên ổn ngày 1k -&gt; 3k, sub via nên gần như không tụt, loại sub này max 100k (bảo hành 3 tháng).', 1, 'AUTOVIET.PRO'),
(32, 'sub_quality', '2', '15', 'Sub via, cực kì chất lượng', 'Tốc độ lên ổn ngày 3k -&gt; 10k, sub via nên gần như không tụt, loại sub này max 100k (bảo hành 2 tháng).', 1, 'AUTOVIET.PRO'),
(33, 'sub_quality', '3', '10', 'Sub via, cực kì chất lượng', 'Tốc độ lên ổn ngày 3k -&gt; 5k, sub via nên gần như không tụt, loại sub này max 100k (bảo hành 1 tháng).', 1, 'AUTOVIET.PRO'),
(34, 'sub_quality', '4', '25', 'Sub via, cực kì chất lượng', 'Tốc độ lên ổn ngày 1k -&gt; 2k, sub bấm tay lên lên theo kết bạn hoặc theo dõi, loại sub này max 200k sub, không bảo hành.', 1, 'AUTOVIET.PRO'),
(35, 'sub_quality', '5', '22', 'Sub via, cực kì chất lượng', 'Tốc độ lên ổn ngày 1k -&gt; 3k, sub bấm tay lên lên theo kết bạn hoặc theo dõi, loại sub này max 200k sub, bảo hành 1 tháng.', 1, 'AUTOVIET.PRO'),
(36, 'sub_quality', '6', '40', 'Sub via, cực kì chất lượng', 'Tốc độ lên ổn ngày 1k -&gt; 10k, sub bấm tay lên lên theo kết bạn hoặc theo dõi, loại sub này max 200k sub, bảo hành 3 tháng.', 1, 'AUTOVIET.PRO'),
(37, 'sub_quality', '7', '60', 'Sub người dùng thật, cực kì chất lượng', 'Tốc độ lên ổn ngày 500 - 1l, sub bấm tay lên lên theo kết bạn hoặc theo dõi, loại sub này max 60k sub, không bảo hành.', 1, 'AUTOVIET.PRO'),
(38, 'sub_speed', '6', '8', 'Clone nuôi, max 1m5 sub, bảo hành 7 ngày', 'Tốc độ ổn 1k -&gt; 3k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(39, 'sub_speed', '7', '17', 'Clone nuôi, max 1m5 sub, bảo hành 7 ngày', 'Tốc độ ổn 2k -&gt; 10k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(40, 'sub_sale', '8', '20', 'Clone nuôi, max 1m5 sub, bảo hành 7 ngày', 'Tốc độ ổn 2k -&gt; 20k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(41, 'sub_sale', '5', '5', 'Clone nuôi, max 8m sub, sub khuyến mại', 'Tốc độ chậm (mua 1k/ 1 lần, mua tối đa 5 lần trong ngày, chạy xong mới mua tiếp), mỗi ngày ngày nhận 200 đơn, reset vào 12h đêm.', 1, 'AUTOVIET.PRO'),
(42, 'sub_speed', '2', '25', 'Sub người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ lên nhanh, max 20k không bảo hành.', 1, 'AUTOVIET.PRO'),
(43, 'sub_speed', '4', '45', 'Sub người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ lên nhanh, max 10k không bảo hành.', 1, 'AUTOVIET.PRO'),
(44, 'like_page_quality', '1', '30', 'Like via, cực kì chất lượng', 'Tốc độ ổn ngày 3k -&gt; 5k, like via nên gần như không tụt, loại like này max 100k (bảo hành 3 tháng).', 1, 'AUTOVIET.PRO'),
(45, 'like_page_quality', '2', '18', 'Like via, cực kì chất lượng', 'Tốc độ lên ổn ngày 3k -&gt; 10k, like via nên gần như không tụt, loại like này max 100k (bảo hành 3 tháng).', 1, 'AUTOVIET.PRO'),
(46, 'like_page_quality', '3', '15', 'Like via, cực kì chất lượng', 'Tốc độ lên ổn ngày 3k -&gt; 5k, like via nên gần như không tụt, loại like này max 100k (bảo hành 2 tháng).', 1, 'AUTOVIET.PRO'),
(47, 'like_page_quality', '4', '1000000000000000', 'Like via, cực kì chất lượng', 'Tốc độ lên ổn ngày 1k -&gt; 3k, like via nên gần như không tụt, loại like này max 100k (bảo hành 1 tháng).', 1, 'AUTOVIET.PRO'),
(48, 'like_page_sale', '5', '8.5', 'Like clone nuôi, max 1m5 like, bảo hành 7 ngày, nếu chạy cho page pro5 thì sang mục sub sale cài nhé', 'Tốc độ ổn 1k -&gt; 3k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(49, 'like_page_sale', '6', '17', 'Like clone nuôi, max 1m5 like, bảo hành 7 ngày, nếu chạy cho page pro5 thì sang mục sub sale cài nhé', 'Tốc độ ổn 2k -&gt; 10k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(50, 'like_page_sale', '7', '20', 'Like clone nuôi, max 1m5 like, bảo hành 7 ngày, nếu chạy cho page pro5 thì sang mục sub sale cài nhé', 'Tốc độ ổn 2k -&gt; 20k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(51, 'like_page_speed', '1', '35', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ ổn max 50k không bảo hành.', 1, 'AUTOVIET.PRO'),
(52, 'like_page_speed', '2', '22', 'Sub beta, không có like', 'Tốc độ nhanh max 1m sub cho page, không bảo hành (hiện tại k tụt), chỉ nhận page thường ko nhận pro5.', 1, 'AUTOVIET.PRO'),
(53, 'like_page_speed', '3', '17', 'Sub page, không có like', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h max không giới hạn, (đến đơn 100k chỉ trong 5p - 20p xong), không bảo hành (hiện tại k tụt), gói này chuyên chạy cho ad break - bao xanh B1 trong studio, chỉ nhận page thường ko nhận pro5.', 1, 'AUTOVIET.PRO'),
(54, 'mat_live', '1', '5', 'VIP', 'Hệ thống sẽ tăng từ 90% - 120% số mắt đã cài (Máy chủ VIP).', 1, 'AUTOVIET.PRO'),
(55, 'mat_live', '2', '3.5', 'Trung Bình', 'Hệ thống sẽ tăng từ 80% - 120% số mắt đã cài (Máy chủ thường).', 1, 'AUTOVIET.PRO'),
(56, 'mat_live', '3', '3', 'Rẻ', 'Hệ thống sẽ tăng từ 70% - 120% số mắt đã cài (Máy chủ rẻ).', 1, 'AUTOVIET.PRO'),
(57, 'mat_live', '4', '1.7', 'Cực Rẻ', 'Hệ thống sẽ tăng từ 60% - 120% số mắt đã cài (Máy chủ cực rẻ).', 1, 'AUTOVIET.PRO'),
(58, 'view_video', '1', '5', 'Trung bình, lên ổn định', 'Tốc độ ổn', 1, 'AUTOVIET.PRO'),
(59, 'view_video', '2', '4', 'Rẻ, không ổn định', 'Tốc độ lên ổn', 1, 'AUTOVIET.PRO'),
(60, 'view_video', '3', '12', 'Vip, ngon nhất', 'Tốc độ max cmn nhanh', 1, 'AUTOVIET.PRO'),
(61, 'share', '1', '1000', 'Share người dùng chéo, tài khoản tên Việt, có Avatar)', 'Tốc độ lên ổn, max 30k share.', 1, 'AUTOVIET.PRO'),
(62, 'share', '2', '250', 'Share clone rẻ', 'Tốc độ lên ổn, max 1k share.', 1, 'AUTOVIET.PRO'),
(63, 'share', '3', '25', 'Share ảo, rẻ', 'Tốc độ lên nhanh, max không giới hạn share.', 1, 'AUTOVIET.PRO'),
(64, 'share', '4', '500', 'Share via, rẻ', 'Tốc độ lên ổn, max 50k share.', 1, 'AUTOVIET.PRO'),
(65, 'mem_gr', '5', '55', 'Clone Việt, có Avatar, max 50k member', 'Tốc độ 10k -&gt; 50k/ngày, không bảo hành.', 1, 'AUTOVIET.PRO'),
(66, 'mem_gr', '6', '10', 'Member via, max 100k member', 'Tốc độ 3k - 10k /ngày, bảo hành 3 tháng.', 1, 'AUTOVIET.PRO'),
(67, 'mem_gr', '7', '15', 'Member page, max 500k member', 'Tốc độ 5k -&gt; 50k/1 ngày, bảo hành 1 tháng (gần như hiện tại không tụt), phải mở phê duyệt page tham gia.', 1, 'AUTOVIET.PRO'),
(68, 'mem_gr', '8', '16', 'Member page, max 1m member', 'Tốc độ 10k -&gt; 50k/ ngày, không bảo hành (gần như hiện tại không tụt), phải mở phê duyệt page tham gia.', 1, 'AUTOVIET.PRO'),
(69, 'view_story', '1', '7', 'View rẻ', 'Tốc độ ổn, max 2k view, không bảo hành', 1, 'AUTOVIET.PRO'),
(70, 'vip_like', '1', '35', 'Like Via có avt', 'Tốc độ nhanh, 5 bài 1 ngày.', 1, 'AUTOVIET.PRO'),
(71, 'vip_like', '2', '40', 'Like Via có avt', 'Tốc độ ổn, 7 bài 1 ngày.', 1, 'AUTOVIET.PRO'),
(72, 'vip_like', '3', '50', 'Like Via có avt', 'Tốc độ ổn, 5 bài 1 ngày.', 1, 'AUTOVIET.PRO'),
(73, 'vip_like', '4', '28', 'Like clone có avt', 'Tốc độ lên từ từ như người thật, 5 bài 1 ngày.', 1, 'AUTOVIET.PRO'),
(74, 'sub_ins', '1', '35', 'Sub người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ nhanh (bảo hành tự động 1 tháng), max 50k sub.', 1, 'AUTOVIET.PRO'),
(75, 'sub_ins', '2', '15', 'Sub tây, giá rẻ', 'Tốc độ ổn, không bảo hành, max 200k sub (có thể lên thiếu).', 1, 'AUTOVIET.PRO'),
(76, 'sub_ins', '3', '100', 'Sub việt nhanh', 'Tốc độ nhanh, không bảo hành, max 100k sub không bảo hành.', 1, 'AUTOVIET.PRO'),
(77, 'sub_ins', '4', '22', 'Sub tây, giá rẻ', 'Tốc độ ổn, không bảo hành, max 100k sub (có thể lên thiếu).', 1, 'AUTOVIET.PRO'),
(78, 'sub_ins', '5', '35', 'Sub tây, giá rẻ', 'Tốc độ ổn, max 1m sub (bảo hành 3 tháng).', 1, 'AUTOVIET.PRO'),
(79, 'sub_ins', '6', '17', 'Sub tây, giá rẻ', 'Tốc độ ổn, không bảo hành, max 100k sub (có thể lên thiếu).', 1, 'AUTOVIET.PRO'),
(80, 'sub_ins', '7', '30', 'Sub tây, giá rẻ', 'Tốc độ ổn, max 800k sub (bảo hành 1 tháng).', 1, 'AUTOVIET.PRO'),
(81, 'sub_ins', '8', '20', 'Sub người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ ổn, không bảo hành, max 50k sub.', 1, 'AUTOVIET.PRO'),
(82, 'like_ins', '1', '25', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ 5k -&gt; 10k/ ngày, (bảo hành tự động 1 tháng), max 50k like.', 1, 'AUTOVIET.PRO'),
(83, 'like_ins', '2', '3', 'Like tây, giá rẻ', 'Tốc độ nhanh, không bảo hành, max 100k like, không bảo hành.', 1, 'AUTOVIET.PRO'),
(84, 'like_ins', '3', '15', 'Like người dùng chéo, tài khoản tên Việt, có Avatar', 'Tốc độ 2k -&gt; 10k/ ngày, không bảo hành, max 50k like.', 1, 'AUTOVIET.PRO'),
(85, 'like_tiktok', '1', '25', 'Like việt', 'Tài nguyên max 10k -&gt; 15k like, không bảo hành, có thể lên thiếu hoặc bị tụt trong quá trình tăng.', 1, 'AUTOVIET.PRO'),
(86, 'like_tiktok', '6', '35', 'Like việt chất lượng', 'Tài nguyên max 50k like, bảo hành 1 tháng, tốc độ lên ổn.', 1, 'AUTOVIET.PRO'),
(87, 'like_tiktok', '7', '15', 'Like việt, người dùng bấm tay', 'Tốc độ 500 - 2k like / ngày, tài nguyên max 5k - 7k like, không bảo hành, ít tụt', 1, 'AUTOVIET.PRO'),
(88, 'like_tiktok', '8', '25', 'Like việt, người dùng bấm tay', 'Tốc độ ổn 500 - 2k like / ngày, tài nguyên max 10k like, không bảo hành.', 1, 'AUTOVIET.PRO'),
(89, 'cmt_tiktok', '1', '300', 'Comment việt', 'Tốc độ ổn, tài nguyên max 5k bình luận.', 1, 'AUTOVIET.PRO'),
(90, 'share_tiktok', '1', '25', 'Share tây giá rẻ', 'Tốc độ lên ổn, tài nguyên max 100k share, không bảo hành, có thể lên thiếu hoặc bị tụt trong quá trình tăng.', 1, 'AUTOVIET.PRO'),
(91, 'share_tiktok', '2', '1', 'Share ảo giá rẻ', 'Tốc độ cực nhanh, tài nguyên max không giới hạn, không bảo hành.', 1, 'AUTOVIET.PRO'),
(92, 'sub_tiktok', '4', '45', 'Sub việt', 'Tài nguyên max 200k sub, bảo hành 1 tháng (tốc độ 500 -&gt; 3k / 1 ngày).', 1, 'AUTOVIET.PRO'),
(93, 'sub_tiktok', '5', '25', 'Sub việt, người dùng bấm tay', 'Tốc độ lên ổn, tài nguyên max 10k sub không bảo hành.', 1, 'AUTOVIET.PRO'),
(94, 'sub_tiktok', '6', '50', 'Sub việt, người dùng bấm tay', 'Tốc độ ổn 300 - 2k sub / ngày, tài nguyên max 10k sub, không bảo hành.', 1, 'AUTOVIET.PRO'),
(95, 'view_tiktok', '4', '5', 'View trending thật, có thể tương tác (like hoặc follow', 'Tài nguyên max 500k, tốc độ lên ổn.', 1, 'AUTOVIET.PRO'),
(96, 'view_tiktok', '5', '7', 'View chất lượng', 'Tài nguyên max 10m, tốc độ lên ổn.', 1, 'AUTOVIET.PRO'),
(97, 'like_youtube', '1', '20', 'Like tây', 'Tài nguyên max 100k like, không bảo hành, có thể lên thiếu hoặc bị tụt trong quá trình tăng.', 1, 'AUTOVIET.PRO'),
(98, 'sub_twitter', '1', '111', 'Sub việt', 'Tài nguyên max 10k -&gt; 15k sub, không bảo hành, có thể lên thiếu hoặc bị tụt trong quá trình tăng (tốc độ 500 - 2k / 1 ngày, đơn có thể lên sau 24h).', 1, 'AUTOVIET.PRO'),
(99, 'like_twitter', '1', '65', 'Like việt', 'Tốc độ ổn, tài nguyên max 10k like, không bảo hành, có thể lên thiếu hoặc bị tụt trong quá trình tăng.', 1, 'AUTOVIET.PRO'),
(100, 'sub_speed', '1', '7', 'Sub người dùng chéo, chạy qua đường kết bạn', 'Tốc độ ổn 1k - 5k/ ngày, max 5k sub, không bảo hành (phải mở nút kết bạn mới lên được).', 1, 'AUTOVIET.PRO'),
(101, 'sub_vip', '4', '1', 'Sub vip vcl', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max 2m / 1 ID Facebook, không chạy cho pro5.', 1, 'AUTOTUONGTAC.SITE'),
(102, 'sub_tiktok', '1', '10', '1', 'Tốc độ cực nhanh, gần như lên ngay sau 5s - 1h, max 2m / 1 ID Facebook, không chạy cho pro5.', 1, 'AUTOTUONGTAC.SITE'),
(103, 'sub_vip', '4', '1', 'Cực vip', '', 1, 'SHOPCHIENTUONG.FUN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `partner_id` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `partner_key` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `facebook` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `token_facebook` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `id_page` longtext CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `id_page_chat` int(255) NOT NULL,
  `mail_config` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pass_mail_config` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `base_url` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `cuphap` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `site_napthe` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `logo` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `trangthai_auto` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `full_name_admin` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone_zalo` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `rate_ctv` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `rate_daily` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `rate_admin` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ten_website` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `logo_user` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `favicon` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `api_automm` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `callback_momo` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `script_live_chat` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `bao_tri` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `logo_mini` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `tu_khoa` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `anhbia` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `user_auto_dvfb` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pass_auto_dvfb` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_ctv` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_dl` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_npp` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `gioi_thieu_web` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_user` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `thongbao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `anh_thong_bao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ck_thecao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `trang_thai_lam_tron` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `token_auto_dvfb` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `theme_home` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `theme_login` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `theme_landing` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `so_du_tao_site` int(11) NOT NULL,
  `so_tieu_tao_site` int(11) NOT NULL,
  `cap_bac_tao_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `bot_tele` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `id_chat_tele` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `thong_bao_mail` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `nap_km_bank` int(255) NOT NULL,
  `color_web` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `bg_header_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `bg_navbar_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `icon_color_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `text_color_site` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `modal_color` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `img_1` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `img_2` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `img_3` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `partner_id`, `partner_key`, `facebook`, `token_facebook`, `id_page`, `id_page_chat`, `mail_config`, `pass_mail_config`, `base_url`, `cuphap`, `site_napthe`, `logo`, `trangthai_auto`, `full_name_admin`, `phone_zalo`, `rate_ctv`, `rate_daily`, `rate_admin`, `ten_website`, `logo_user`, `favicon`, `api_automm`, `callback_momo`, `script_live_chat`, `bao_tri`, `logo_mini`, `tu_khoa`, `anhbia`, `user_auto_dvfb`, `pass_auto_dvfb`, `ck_ctv`, `ck_dl`, `ck_npp`, `gioi_thieu_web`, `ck_user`, `thongbao`, `anh_thong_bao`, `ck_thecao`, `trang_thai_lam_tron`, `token_auto_dvfb`, `theme_home`, `theme_login`, `theme_landing`, `so_du_tao_site`, `so_tieu_tao_site`, `cap_bac_tao_site`, `status`, `bot_tele`, `id_chat_tele`, `thong_bao_mail`, `nap_km_bank`, `color_web`, `bg_header_site`, `bg_navbar_site`, `icon_color_site`, `text_color_site`, `modal_color`, `img_1`, `img_2`, `img_3`, `url_config`) VALUES
(1, '1052952561', '4dcfe0451711d5dd81841b977369d758', 'https://www.facebook.com/vudegaming', 'Token facebook', '4', 0, 'Thanhvubt0408@gmail.com', 'ucvlvhbeaagmxgny', 'https://AUTOTUONGTAC.SITE', 'NAPTIEN_', 'gachthe1s', 'https://upanh.cf/1fxxvf7pky.png', 'ON', 'AUTOTUONGTAC.SITE', '+84528115572', '100000', '5000000', '10000000', 'AUTOTUONGTAC.SITE', 'https://ui-avatars.com/api/?background=random&name=', 'https://subgiare.vn/assets/images/favicon.ico', '1', 'https://NTIENDAT.CLICK/callback/callback_bank.php', '', 'ON', 'https://i.imgur.com/9yZhV9g.jpg', 'AUTOTUONGTAC.SITE, automxh, Tăng like Facebook, tuongtaccheo, traodoisub, tăng like, tăng follow facebook, tiktok, instagram, miễn phí, tương tác chéo, trao đổi sub. Hệ thống mua like uy tín, Tăng like giá rẻ , Dịch vụ tăng like tăng sub giá rẻ, tăng view video FB, Tăng người xem Livestream, tăng theo dõi, tăng like Facebook, tuongtaccheo, traodoisub, tăng like, tăng follow facebook, tiktok, instagram, miễn phí, tương tác chéo, trao đổi sub, giá rẻ đảm bảo uy tín, chất lượng...', 'https://skillking.fpt.edu.vn/wp-content/uploads/2021/04/social-media-marketing-gom-nhung-gi-cach-thuc-do-luong-hieu-qua-social-media-marketing.png', 'Điền tk sgr', 'Điền pass sgr', '7', '5', '2', 'AUTOTUONGTAC.SITE - Hệ Thống Dịch Vụ Mạng Xã Hội Chất Lượng !', '8', 'FB ADMIN: https://fb.com/100065669571969', '', '25', 'OFF', 'Gắn token của b vào', '1', '3', '5', 10000, 10000, '1', 'active', '5153316757:AAFz_PtCuaBLIHy2ROLIGsctp7gcZY4BRHY', '1933553707', 'OFF', 0, 'dark', '', '', '', '', '', 'https://ngaocontent.com/wp-content/uploads/2020/11/Social-content-la-gi-2.jpg', 'https://i.imgur.com/bRHvcCN.png', 'https://prodima.vn/wp-content/uploads/2021/06/social-content-la-gi-chien-luoc-xay-dung-noi-dung-social-dinh-cao-1.jpg', 'AUTOTUONGTAC.SITE'),
(2, '', '', '', '', '', 0, '', '', 'https://shopchientuong.fun/', 'NAPTIEN', 'theviet', '', 'ON', '', '+84', '1000000', '3500000', '15000000', 'SHOPCHIENTUONG.FUN', 'https://ui-avatars.com/api/?background=random&name=', 'https://i.imgur.com/9yZhV9g.jpg', '', 'https://shopchientuong.fun/callback/callback_bank.php', '', 'ON', 'https://i.imgur.com/9yZhV9g.jpg', 'Tăng like Facebook, tuongtaccheo, traodoisub, tăng like, tăng follow facebook, tiktok, instagram, miễn phí, tương tác chéo, trao đổi sub. Hệ thống mua like uy tín, Tăng like giá rẻ , Dịch vụ tăng like tăng sub giá rẻ, tăng view video FB, Tăng người xem Livestream, tăng theo dõi, tăng like Facebook, tuongtaccheo, traodoisub, tăng like, tăng follow facebook, tiktok, instagram, miễn phí, tương tác chéo, trao đổi sub, giá rẻ đảm bảo uy tín, chất lượng...', 'https://skillking.fpt.edu.vn/wp-content/uploads/2021/04/social-media-marketing-gom-nhung-gi-cach-thuc-do-luong-hieu-qua-social-media-marketing.png', '', '', '8', '5', '2', 'Trang Dịch Vụ Mạng Xã Hội Số 1 !', '10', '', 'https://i.imgur.com/3qFEGjW.jpg', '30', 'ON', 'eyJhbGciONjPQggngUOLBwzkJOmAmOPTgYxhvUhYkKQcEHIxTWRxFrQquncWRdzPMbnEatlIUoXjnxebviCZjYklcRRTsfzcvplhTQjbUVYEm1654340664MmZjNzY4NDdkNmY5MGQ0YTgzZGFiZjcyODYyOTgyYmM==', '1', '3', '5', 100000, 100000, '1', 'active', '', '', '', 0, 'dark', '#f5f4fe', '#2f3542', '#212529', '#ffffff', '', 'https://ngaocontent.com/wp-content/uploads/2020/11/Social-content-la-gi-2.jpg', 'https://i.imgur.com/bRHvcCN.png', 'https://prodima.vn/wp-content/uploads/2021/06/social-content-la-gi-chien-luoc-xay-dung-noi-dung-social-dinh-cao-1.jpg', 'SHOPCHIENTUONG.FUN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thesieureauto`
--

CREATE TABLE `thesieureauto` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cookie` text DEFAULT NULL,
  `sitename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_bao_modal`
--

CREATE TABLE `thong_bao_modal` (
  `id` int(11) NOT NULL,
  `loai_tb` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `text_thong_bao` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thong_bao_modal`
--

INSERT INTO `thong_bao_modal` (`id`, `loai_tb`, `text_thong_bao`, `status`, `url_config`) VALUES
(1, 'like_post', '', 'OFF', 'TRUMSUBRE.COM'),
(2, 'sub_sale', '', 'OFF', 'TRUMSUBRE.COM'),
(3, 'cx_post', '', 'OFF', 'TRUMSUBRE.COM'),
(4, 'cmt', '', 'OFF', 'TRUMSUBRE.COM'),
(5, 'like_page_sale', '', 'OFF', 'TRUMSUBRE.COM'),
(6, 'share', '', 'OFF', 'TRUMSUBRE.COM'),
(7, 'mat_live', '', 'OFF', 'TRUMSUBRE.COM'),
(8, 'view_video', '', 'OFF', 'TRUMSUBRE.COM'),
(9, 'like_cmt', '', 'OFF', 'TRUMSUBRE.COM'),
(10, 'view_story', '', 'OFF', 'TRUMSUBRE.COM'),
(11, 'mem_gr', '', 'OFF', 'TRUMSUBRE.COM'),
(12, 'like_ins', '', 'OFF', 'TRUMSUBRE.COM'),
(13, 'cmt_ins', '', 'OFF', 'TRUMSUBRE.COM'),
(14, 'sub_ins', '', 'OFF', 'TRUMSUBRE.COM'),
(15, 'like_tiktok', '', 'OFF', 'TRUMSUBRE.COM'),
(16, 'cmt_tiktok', '', 'OFF', 'TRUMSUBRE.COM'),
(17, 'sub_tiktok', '', 'OFF', 'TRUMSUBRE.COM'),
(18, 'sub_youtube', '', 'OFF', 'TRUMSUBRE.COM'),
(19, 'like_youtube', '', 'OFF', 'TRUMSUBRE.COM'),
(20, 'nap_the', '', 'OFF', 'TRUMSUBRE.COM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(999) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `token` varchar(999) DEFAULT NULL,
  `capbac` varchar(999) DEFAULT NULL,
  `money` varchar(999) DEFAULT NULL,
  `tongnap` varchar(999) DEFAULT NULL,
  `tongtru` varchar(999) DEFAULT NULL,
  `banned` varchar(999) DEFAULT NULL,
  `time_banned` varchar(999) DEFAULT NULL,
  `ip` varchar(999) DEFAULT NULL,
  `cuphap` varchar(999) DEFAULT NULL,
  `date` varchar(999) DEFAULT NULL,
  `lastdate` varchar(999) DEFAULT NULL,
  `otp_code` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `url_config` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `email`, `token`, `capbac`, `money`, `tongnap`, `tongtru`, `banned`, `time_banned`, `ip`, `cuphap`, `date`, `lastdate`, `otp_code`, `url_config`) VALUES
(14, 'thanhvucoder', 'Thanh vũ', 'YjZmMmMzMmJiZDNhMzI2OTcyZTAzYjk3N2M4M2U5OTg=', 'thanhvucoder@gmail.com', 'eyJhbGciONjPQggngUOLBwzkJOmAmOPTgYxhvUhYkKQcEHIxTWRxFrQquncWRdzPMbnEatlIUoXjnxebviCZjYklcRRTsfzcvplhTQjbUVYEm1654340664MmZjNzY4NDdkNmY5MGQ0YTgzZGFiZjcyODYyOTgyYmM==', '99', '507000', '1007500', '500500', '0', NULL, '103.180.149.88', 'AUTOVIET thanhvucoder', '2022-06-04 18:04:24', '2022-06-05 09:25:11', '', 'AUTOTUONGTAC.SITE'),
(15, 'hello123', 'hello123', 'YmNmOWQ4ZjY3NTYwMWQyZWYzNDU2NzhlZGY2M2MxODE=', 'hello123@gmail.com', 'eyJhbGciOtJKjIiElplWXWAjQlGfRgTnBkzbhbxONUdwzRUThQvnEjZrmCYqYmUhgPHkzEOkeIWbDROlcgIbovPFhgmYxuyTnQOaMIcEPLxsn1654390312YzIzN2NiZTk5MGU1NzE0OTc5ZDkzM2M1NzYwZjUyMTc==', '0', '0', '0', '0', '0', NULL, '2402:800:61a4:a38f::6', 'AUTOVIET hello123', '2022-06-04 18:23:36', '2022-06-05 07:51:33', '', 'AUTOTUONGTAC.SITE'),
(16, 'bhdtbgaming12', 'Nguyễn Văn Thịnh', 'NGQxNjg1Y2UzNzE1NDYxZmZjYTM0NGFhMTAyMDBkNDU=', 'bhdtbgaming12@gmail.com', 'eyJhbGciOnRPjIlSYjmktIvTWkxFsQnQWUmvVzENHjEvDzTQubxgzPORUrOzUWlWPCUjkmELhYqbxbBgkRynhhodXiRpmJxTfclbYwIIlOEPa1654396253ODAwYzFmZjlmNDJkNWQ5NzY1MDNjY2VjNDUzOTYzMjc==', '0', '0', '0', '0', '0', NULL, '42.118.34.232', 'NAPTIEN_ bhdtbgaming12', '2022-06-05 09:30:53', NULL, '', 'AUTOTUONGTAC.SITE'),
(17, 'thiendz', 'lu huu thien', 'ODAwYWFmMzM1MTZjOTE4NmIzNGE5ODk1ZWIwYmE4M2Y=', 'thiendz011@gmail.com', 'eyJhbGciOOvRGxYhYchibUdWPwYzIngWUITQlTbjLqbzOaHBgQIjcOEcmSWlJYnmNkeIRnDkMUgvmPnbkUpljuECkzREoROlWQjmcvzPvZTrV1654396371YTg1ODRlZDVmOTVmMWNlZDkzZjEwZTM1MTZkNTkzOGU==', '99', '0', '0', '0', '0', NULL, '113.183.247.47', 'NAPTIEN_ thiendz', '2022-06-05 09:32:51', NULL, '', 'AUTOTUONGTAC.SITE'),
(18, 'thanhvucoder', 'Thanh vũ', 'YjZmMmMzMmJiZDNhMzI2OTcyZTAzYjk3N2M4M2U5OTg=', 'thanhvucoder@gmail.com', 'eyJhbGciONjPQggngUOLBwzkJOmAmOPTgYxhvUhYkKQcEHIxTWRxFrQquncWRdzPMbnEatlIUoXjnxebviCZjYklcRRTsfzcvplhTQjbUVYEm1654340664MmZjNzY4NDdkNmY5MGQ0YTgzZGFiZjcyODYyOTgyYmM==', '99', '999500', '1000000', '500', '0', NULL, '103.82.27.174', 'NAPTIEN thanhvucoder', '2022-06-05 10:24:20', '2022-06-05 10:28:42', '', 'SHOPCHIENTUONG.FUN');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `band_ip`
--
ALTER TABLE `band_ip`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cron_momo`
--
ALTER TABLE `cron_momo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ds_sitecon`
--
ALTER TABLE `ds_sitecon`
  ADD PRIMARY KEY (`id_site`);

--
-- Chỉ mục cho bảng `history_buy`
--
ALTER TABLE `history_buy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_naptien`
--
ALTER TABLE `history_naptien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_api`
--
ALTER TABLE `list_api`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_hotro`
--
ALTER TABLE `list_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log_site`
--
ALTER TABLE `log_site`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mbbank`
--
ALTER TABLE `mbbank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mbbankauto`
--
ALTER TABLE `mbbankauto`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `note_thongbao`
--
ALTER TABLE `note_thongbao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `server_service`
--
ALTER TABLE `server_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thesieureauto`
--
ALTER TABLE `thesieureauto`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_bao_modal`
--
ALTER TABLE `thong_bao_modal`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `band_ip`
--
ALTER TABLE `band_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `cron_momo`
--
ALTER TABLE `cron_momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `ds_sitecon`
--
ALTER TABLE `ds_sitecon`
  MODIFY `id_site` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `history_buy`
--
ALTER TABLE `history_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `history_naptien`
--
ALTER TABLE `history_naptien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `list_api`
--
ALTER TABLE `list_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `list_hotro`
--
ALTER TABLE `list_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `log_site`
--
ALTER TABLE `log_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `mbbank`
--
ALTER TABLE `mbbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mbbankauto`
--
ALTER TABLE `mbbankauto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `note_thongbao`
--
ALTER TABLE `note_thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `server_service`
--
ALTER TABLE `server_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thesieureauto`
--
ALTER TABLE `thesieureauto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thong_bao_modal`
--
ALTER TABLE `thong_bao_modal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
