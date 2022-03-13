-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 10:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gharbaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'muneeb', 'muneebamjad302@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL),
(2, 'admin', 'admin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL),
(3, 'AeuJEj0W', 'KfwR6YWcNKAB@mail.com', '$2y$10$D0Sn/9XXEseWwAYH32Hq6.IM4ct9byutdkt0q6/CfxIyW.ozdd4gq', 0, NULL, '2022-03-13 15:43:52', '2022-03-13 15:43:52'),
(4, 'uBso4Qwk', 'aKbQ7VM4SviP@mail.com', '$2y$10$02p8MH/NUbTn95yKW/zVqu2BD4c8qap/EALUFugR4LOtbTZkGBvGi', 0, NULL, '2022-03-13 15:43:52', '2022-03-13 15:43:52'),
(5, 'lh0uugoJ', 'vLxijmTFzXoG@mail.com', '$2y$10$51kIFFlZbC1ffjOUHhC0leU4JrfQa/ZDsmabkfeHkRNUvh50Kz4py', 0, NULL, '2022-03-13 15:43:53', '2022-03-13 15:43:53'),
(6, 'Fr7zShYc', 'IV2Mx1zzUO78@mail.com', '$2y$10$esHNhj69HsLvKiMti3mYBupR3tuflkaj5Uw1IZj/z/ZOX77JQ4CCe', 0, NULL, '2022-03-13 15:43:53', '2022-03-13 15:43:53'),
(7, 'NZZn82S8', 'CDfZ3zAWhKx0@mail.com', '$2y$10$N7hEiJRUXJOeG/2Y8DtqjuPAw/DQQChQ2BIFKL.ucAW7J4SLiSl1e', 0, NULL, '2022-03-13 15:43:53', '2022-03-13 15:43:53'),
(8, 'kEiVRdf8', 'MJbhXKnT3nyX@mail.com', '$2y$10$E93euLMYrJhf6gAm7/viguAU8pQjC00EmwEOu0EHGe0EerIw86je2', 0, NULL, '2022-03-13 15:43:53', '2022-03-13 15:43:53'),
(9, 'F8onyz7D', 'ReBZAQmMn6hQ@mail.com', '$2y$10$c4.H5eVbr6X0Du94NfHknewlkLsKjdJ6/GZmT9We4/5fS7me8MJ8O', 0, NULL, '2022-03-13 15:43:53', '2022-03-13 15:43:53'),
(10, 'awOAbJd2', 'g00ZfkrQVQ2M@mail.com', '$2y$10$ZqxVJPR6JJaWh4YN3cbnoeeu/5/gDHn3rF.LBQhoQRLZ1AWIpdtdm', 0, NULL, '2022-03-13 15:43:54', '2022-03-13 15:43:54'),
(11, 'NzcvvR0r', 'WRnYwAXYTJUr@mail.com', '$2y$10$1xMeh5JcOWxpgG9IHyNxYepp2etx7h8DptW/PsV7B2F4l/haUNNrW', 0, NULL, '2022-03-13 15:43:54', '2022-03-13 15:43:54'),
(12, 'oTqP4Sv3', 'xMX0nOJbh6Ad@mail.com', '$2y$10$cTWTj.0uGOKtLq.r/9Nx/u6/wwMlosrhcMwJQ2csjy5cZxh3hJ6qW', 0, NULL, '2022-03-13 15:43:54', '2022-03-13 15:43:54'),
(13, 'Qvcui8pc', 'UuBbDAPHS1Et@mail.com', '$2y$10$X9Y7t2sUwH62JhA4d.O4o.8QAIW7lcBTloqezyeqnDZAnBaW79v8K', 0, NULL, '2022-03-13 15:43:54', '2022-03-13 15:43:54'),
(14, 'LFfqnhER', 'yuWAWaPniQAu@mail.com', '$2y$10$k1ycOxwF8Qo4tuo7cmGTeunCwtXwIJKI6FuMUOPIKQBbXJ2hYJuAe', 0, NULL, '2022-03-13 15:43:54', '2022-03-13 15:43:54'),
(15, '985D2od5', 'C1gAziGs3POA@mail.com', '$2y$10$IBP0/2OXr15u0jlkw524CuZh6/zMGxSI52XKbLzjPVxTU3PO/mO5C', 0, NULL, '2022-03-13 15:43:54', '2022-03-13 15:43:54'),
(16, 'QP9UzTYK', 'v8OVT6VJqEIV@mail.com', '$2y$10$cM9pQEVZYcWVMkm8nK9Wl.oIqZ0P4OdhW9VElw43J5AMOMh3a4NrO', 0, NULL, '2022-03-13 15:43:55', '2022-03-13 15:43:55'),
(17, 'WRk8ZRD5', 'eJXB1vUN0SpF@mail.com', '$2y$10$km6Z0GSv6N7kEWAJp7UCVem3MfwukVkwvKfBR.OHGw5tBTq3N6xFq', 0, NULL, '2022-03-13 15:43:55', '2022-03-13 15:43:55'),
(18, 'Z2f04mSe', 'rCwpmP8JTKKQ@mail.com', '$2y$10$bjcbGL2S.AjX8mUvZ6F0i.mU.r1biVYQ0ttJsNOi7wnafv2e1FZOe', 0, NULL, '2022-03-13 15:43:55', '2022-03-13 15:43:55'),
(19, 'MTNtS4BB', 'Y5Afd0iAhfMl@mail.com', '$2y$10$gr1Uv/jqllmCPQGzFi5b0.4W5X1nmNGGEED6uPvb1I4FTy5.nI2Z2', 0, NULL, '2022-03-13 15:43:55', '2022-03-13 15:43:55'),
(20, '4yzaoKJW', 'pgUX0tNivUyY@mail.com', '$2y$10$KR/RiTQyqHzT8XaPr/uxh.dTOJL2QNfsAGSuIHP1vagj.WhF9DEx6', 0, NULL, '2022-03-13 15:43:55', '2022-03-13 15:43:55'),
(21, 'ySFgjQgJ', 'XxtCu6BQMU7P@mail.com', '$2y$10$0JLbpGfIWPyXErHyOm.h1uPOuDbO6elzY9gM2j8xQrOi9mN5ZML/m', 0, NULL, '2022-03-13 15:43:56', '2022-03-13 15:43:56'),
(22, '2g5TKFWo', 'YVFmGculFbwy@mail.com', '$2y$10$3F3/cGBkZHtiamd284ANcuDo18vHe/fg5kiyvfLrlzZhyV4vdteJa', 0, NULL, '2022-03-13 15:43:56', '2022-03-13 15:43:56'),
(23, 'oniTGvbw', 'ROzrz3QDWFXb@mail.com', '$2y$10$7JolnGmvyJXG7V.NxzkikO1wlmOhfhz3B74Gk83VJFWf0YVpFUlku', 0, NULL, '2022-03-13 15:43:56', '2022-03-13 15:43:56'),
(24, '0QxRfHBa', 'Iy73LXG3BNdn@mail.com', '$2y$10$a/V2tgv7Kct65gsBlITXTesiw8hQqPnqY.oVDmWroS1ZHLqQXFJj6', 0, NULL, '2022-03-13 15:43:56', '2022-03-13 15:43:56'),
(25, 'Gkr0T07C', '1cwsPRE1BbL0@mail.com', '$2y$10$MtBS0kza/cZiZjpMCHQnwu.rE0kvCt4kpM4z2LO2vqYPA/.cxRW2C', 0, NULL, '2022-03-13 15:43:56', '2022-03-13 15:43:56'),
(26, 'gjq6DfM8', 'r1UXlqnwQCX6@mail.com', '$2y$10$S/MqEr8qX3V8Lb8Gfiril.3gC983emIk1NodhMOVoctLOBuXkzjwy', 0, NULL, '2022-03-13 15:43:56', '2022-03-13 15:43:56'),
(27, 'MTKFtmzv', 'EcEDJLFIYH4X@mail.com', '$2y$10$d99.Ll.slHJW9WQvuLqFD.T2LU2bUwEbTIBYXiEPMPLwAWK1B4IwK', 0, NULL, '2022-03-13 15:43:57', '2022-03-13 15:43:57'),
(28, '9Af4OjME', 'Mgo39B9OufmC@mail.com', '$2y$10$Th37rdAkUz8phVL7QhCZluX1VomNWzh0OPgXocwYv/YAHhl1vnP.K', 0, NULL, '2022-03-13 15:43:57', '2022-03-13 15:43:57'),
(29, 'h8uGZmOo', 'AkPd1KiScEyh@mail.com', '$2y$10$CKYDTC5Uo1Y6N5iamDYCQeTovVjMIh5Hyn.Y7rNShDzTcNdioEHNq', 0, NULL, '2022-03-13 15:43:57', '2022-03-13 15:43:57'),
(30, 'KEPvd8Sd', 'YUzTOHCaJk6Y@mail.com', '$2y$10$XWgkkSNRtk6IxTVxVGbs0uIi8iBbqCkycYWyP.W/C1xPenqkuZ.my', 0, NULL, '2022-03-13 15:43:57', '2022-03-13 15:43:57'),
(31, 'pktH3erF', 'OvJeoXMJz1b9@mail.com', '$2y$10$NKuloJ6EPUK88jm8LtIcdupA.yJhYxdxVYXEBc0CmridzCLfoB8MO', 0, NULL, '2022-03-13 15:43:57', '2022-03-13 15:43:57'),
(32, 'uSLo6O1J', 'fW14JXIQV6Wp@mail.com', '$2y$10$cRnu6ylv1UMeHu.TvbY76.rAmTm3HtNeOMdNuhPu7P7kKozYnuN4i', 0, NULL, '2022-03-13 15:43:57', '2022-03-13 15:43:57'),
(33, 'usvNvcm2', 'XXdeFs6BV2K1@mail.com', '$2y$10$CPmmdM14zk/co1O0nbcKBuda3V5HUv6Ah6ZxpbRWOyUkrl0BtI9uu', 0, NULL, '2022-03-13 15:45:15', '2022-03-13 15:45:15'),
(34, 'n28fQgER', 'eVlDmqTBugNg@mail.com', '$2y$10$f7zwiTi3kzqyCcJWATbsSenJKfRfDnKROimlQrh5XC0eHupmr60G2', 0, NULL, '2022-03-13 15:45:15', '2022-03-13 15:45:15'),
(35, 'B6PQbyCB', 'JvbEQMsZ9DcG@mail.com', '$2y$10$bydnjTCo00aUyUyfO8lHaeMhOkZkpomO2hX0GaOfTPZ7enqs4rtoK', 0, NULL, '2022-03-13 15:45:15', '2022-03-13 15:45:15'),
(36, 'm88ZjC2e', 'LsYyxBMG2se1@mail.com', '$2y$10$KYfTWOIHfAoICXhAokOsC.7W1qvD8WZupVqLGL7978Eldb1vHcHum', 0, NULL, '2022-03-13 15:45:16', '2022-03-13 15:45:16'),
(37, 'lcqDZ1mB', '2juA45QXu6AM@mail.com', '$2y$10$wwISmK6UEUQib.mRMFjmWuHPYjibrXuNj4LFMw6UZsALvhDQeD45m', 0, NULL, '2022-03-13 15:45:16', '2022-03-13 15:45:16'),
(38, 'Bc77oHEZ', 'LrO74ngvY9mv@mail.com', '$2y$10$Oix26xNPRCGfkTipiIs/COpPWQUomIJzrffZO8I423b1ALBCfHWWm', 0, NULL, '2022-03-13 15:45:16', '2022-03-13 15:45:16'),
(39, 'rLm5Sbgo', 'kMEeVXXMlszN@mail.com', '$2y$10$disYDfj5weUO..7skrE4jeCeZ8dIousnp1v.9Mu62HxUAO./YTuIW', 0, NULL, '2022-03-13 15:45:16', '2022-03-13 15:45:16'),
(40, 'z9adS4Ho', 'ArHQq6WxAgD9@mail.com', '$2y$10$tk9ryF4yqa9mQVVzx984KOIP6mYim7gpD.uTygHVMjXNgQGtY5AOy', 0, NULL, '2022-03-13 15:45:16', '2022-03-13 15:45:16'),
(41, 'Fn2WO0KZ', '9t9w4DBFwfOJ@mail.com', '$2y$10$ieoH842BhPede3fT.pLqsuC9Zoc.0Hwn0vyHT/ujp5XtZOI/ZQagK', 0, NULL, '2022-03-13 15:45:16', '2022-03-13 15:45:16'),
(42, 'WW8VEa2y', 'zZ5QOoaJPkmj@mail.com', '$2y$10$9fmNFbV5wd9SAt8WgWH2fOjs.NEUs5fk2xDWjgtndMLox5pjvzagG', 0, NULL, '2022-03-13 15:45:17', '2022-03-13 15:45:17'),
(43, '3hQBZYr9', '2SSxw36BEFib@mail.com', '$2y$10$KaUlxkdSRLv9FishPG/pOez9rvcb28Z67ExgG7nF9PwU0WIzEdc2S', 0, NULL, '2022-03-13 15:45:17', '2022-03-13 15:45:17'),
(44, 'SBhJzNtV', '4rCHQYUECzrB@mail.com', '$2y$10$SPu5KxBKZRoOseAV7yTfQOTuaLLB4qih/L3wAscX2zi8xJgbZZ7Qu', 0, NULL, '2022-03-13 15:45:17', '2022-03-13 15:45:17'),
(45, 'sh40g55T', 'rszXVHKf7hlQ@mail.com', '$2y$10$vIkBdn9z66sbSTQ5wtfZFu4GqTdsNkzl4aercC/G0qIk.Gy6NP8P2', 0, NULL, '2022-03-13 15:45:17', '2022-03-13 15:45:17'),
(46, 'obMF60go', 'OsvOcSAlGg0O@mail.com', '$2y$10$aTJxhptmzSdf9f6VfQXxvulnP7pnOrPPHROvfXbTTmSxnH3q9Jn9.', 0, NULL, '2022-03-13 15:45:17', '2022-03-13 15:45:17'),
(47, 'LAYu0kvg', 'jsuctlNBxWvQ@mail.com', '$2y$10$X8XFb5qlOGIstPV9XrzMH.vLcEsJZXoRj3an2fNZXSVfAynfPH1Au', 0, NULL, '2022-03-13 15:45:17', '2022-03-13 15:45:17'),
(48, 'A41BUj5h', 'CnbonALyziWw@mail.com', '$2y$10$xRxPDASnMtyAUG44MSn5Jum.nhjgALZFPK76RYsTStaYbOtDRm8YS', 0, NULL, '2022-03-13 15:46:12', '2022-03-13 15:46:12'),
(49, 'LCmuF9OT', 'IDHR7hnvISqV@mail.com', '$2y$10$w5CCwmI2e40aC4EYszmkkOvESRyYCSCio2cHXISNRPDmv9lKpuYyu', 0, NULL, '2022-03-13 15:46:13', '2022-03-13 15:46:13'),
(50, 'eOGgqUiH', 'tOnq52bNeLxu@mail.com', '$2y$10$SmQu490x48lEGUe74vv/ouKVuIhUofpp1mgcRg3GoyuQp0vHFL7v6', 0, NULL, '2022-03-13 15:46:13', '2022-03-13 15:46:13'),
(51, 'd6CZ2r4u', 'GEiWLjDtYsQY@mail.com', '$2y$10$CZPW/T2.J/atZPL94Yud2.JjlG1.wQL993id.WKiFsO2ZHf8JgF.y', 0, NULL, '2022-03-13 15:46:13', '2022-03-13 15:46:13'),
(52, 'luhn5aqF', 'rCCQSBPffHlO@mail.com', '$2y$10$0sQxTXCsLOMLNfJgl4x.NeFw/4fzy/OYBwK1gVRBaUPti6dV674Hu', 0, NULL, '2022-03-13 15:46:13', '2022-03-13 15:46:13'),
(53, 'phNcd1p8', 'mMFQ37wXJmMN@mail.com', '$2y$10$u8Q3yMsefrQ7.ohluqVh1OM0.J/abczL8s12kU5clg/HjVimvH6cq', 0, NULL, '2022-03-13 15:46:13', '2022-03-13 15:46:13'),
(54, 'cS15mZ97', 'LexscRuKnnW1@mail.com', '$2y$10$O5yhHt0JOMwJ28xAdVXb/OrELpylO6IQjeDKGDcCkdsZIDOisEH4G', 0, NULL, '2022-03-13 15:46:13', '2022-03-13 15:46:13'),
(55, 'upcGulWX', '7TaI5QZHESyY@mail.com', '$2y$10$b8Z/njHSWe9IGDI3Dv01F.GUYZEBz/Es9TH5W8DIMst4YzFtQhFsa', 0, NULL, '2022-03-13 15:46:14', '2022-03-13 15:46:14'),
(56, 'abeH5Xcf', 'ZcI8JXyZdeRn@mail.com', '$2y$10$WzS.kls3fNbOtRUdTLBuWurIlZQNA.QZO9Z00w3wMHatuS7kTdPXa', 0, NULL, '2022-03-13 15:46:14', '2022-03-13 15:46:14'),
(57, 's2rpDWvl', 'EiE14A88NLfB@mail.com', '$2y$10$kvU8bg/.cmNmc2MU7S4BN.mo10ilxJ941/S.NOUwzEgnC9dA2ucoa', 0, NULL, '2022-03-13 15:46:14', '2022-03-13 15:46:14'),
(58, 'RCP33zeh', 'cYxSoAjk4QiO@mail.com', '$2y$10$xDNUy6bRn3dA/0XUK2qrCOHfRB7Iy3.xzsXcbV3NijIWc23FnrN8W', 0, NULL, '2022-03-13 15:46:14', '2022-03-13 15:46:14'),
(59, 'Dzw4aSRC', 'HFM4XcTQGvqf@mail.com', '$2y$10$wqO9SRQOIemsOlcu.4szy.G3j7nyq86FNzWi/AOXbL5GZxbC7DoMa', 0, NULL, '2022-03-13 15:46:14', '2022-03-13 15:46:14'),
(60, 'DQ7d3fxX', 'Vpl7qjuYLlc4@mail.com', '$2y$10$kuAAowzIlK.iDT1By8b1weiffakuqpKRfadFJD/9o1Gnlj0PkL8ne', 0, NULL, '2022-03-13 15:46:14', '2022-03-13 15:46:14'),
(61, '9U2dtlpb', 'BRUixbh9fLzh@mail.com', '$2y$10$QM5/ka4KLuOHLZKqKIjrjeQViRtCoXhBYERcklq6BZRZgyKprLPeK', 0, NULL, '2022-03-13 15:46:15', '2022-03-13 15:46:15'),
(62, '484MSBmu', 'bfElsqKATseO@mail.com', '$2y$10$lbPHZgHhCMlWK2IsxYDooOMnvt3OQvJ4TuAXMIAGku8h2o8/6itzy', 0, NULL, '2022-03-13 15:46:15', '2022-03-13 15:46:15'),
(63, 'R16PSbpW', 'psbS47NXJCci@mail.com', '$2y$10$zxhD3QjeGldM37x6wiZs3.w1sva.RVjxjnFSmZTSPbzr3i.3UEhg.', 0, NULL, '2022-03-13 15:47:08', '2022-03-13 15:47:08'),
(64, 'fQKRsvXO', 'vspcYV8oYYeK@mail.com', '$2y$10$C8rOVG/eR2Op3ZE8XiNWJ.XIAy/KN/xgTkOMja2uMjak74YVVdsMa', 0, NULL, '2022-03-13 15:47:08', '2022-03-13 15:47:08'),
(65, 'bSZAZoZ3', 'q9BiIWPcpL86@mail.com', '$2y$10$2NZncKMIRC8H12fKMN8Q9ewgpwJZrrcS9BuoA64qqebyxHE49gFFW', 0, NULL, '2022-03-13 15:47:09', '2022-03-13 15:47:09'),
(66, '4AyoCgOt', 'SmaQ9HhmBseZ@mail.com', '$2y$10$C/wlvwMP/0oGMbi6f23IyesUSg4o1.6qe419F.GIH628As050bmvq', 0, NULL, '2022-03-13 15:47:09', '2022-03-13 15:47:09'),
(67, 'zRfmo9Hx', 'KDYZRCaIlFev@mail.com', '$2y$10$.3zvu6dP/Kway7NwO64qwu/HCNksBJtqiPBTiTmH6K5JD6MRY6JaG', 0, NULL, '2022-03-13 15:47:09', '2022-03-13 15:47:09'),
(68, 'hBwTg7R3', 'aqWfc68ctFOh@mail.com', '$2y$10$OgnBUuszLC7wfsEjbiglaOKzdVN6ipc416rR.JHKC7knYK2D8fzgG', 0, NULL, '2022-03-13 15:47:09', '2022-03-13 15:47:09'),
(69, '4tE8bgqY', 'h8MNeuMeylcO@mail.com', '$2y$10$1VIgnqgboOYyizxJC9Ch7uYJfBd/Tdsi0Dh.v7iFtIJuM7uI3PrIa', 0, NULL, '2022-03-13 15:47:09', '2022-03-13 15:47:09'),
(70, 'KekTdkmi', '2VQWayW7ktFB@mail.com', '$2y$10$RUDya/2JCmkZeU9zf6p9zOu1OGKV4P0qNh4LQX4fycWN2GiuRw6oe', 0, NULL, '2022-03-13 15:47:09', '2022-03-13 15:47:09'),
(71, 'czUzpuN4', 'J6rruvnoc3GA@mail.com', '$2y$10$0VAQm21lSMv4FBt/4vhcOu5cHuPzG7YnJLOgjKMTgTwGeHXPoTuGK', 0, NULL, '2022-03-13 15:47:09', '2022-03-13 15:47:09'),
(72, '8NJrKIo5', '7SHANwm99o9M@mail.com', '$2y$10$NhdKHzPbTfwCVS3s/0rMo.3BcmZQrTBXHQ2tfh1mrl4n4noKt4.5G', 0, NULL, '2022-03-13 15:47:10', '2022-03-13 15:47:10'),
(73, 'xTXK3SAs', '9uwRoP1TKOhO@mail.com', '$2y$10$.TTjl12lBTOpYhrvenmIw.6Vjc7bF1Z03ZBq51ZVS7RbdwS1y4sD.', 0, NULL, '2022-03-13 15:47:10', '2022-03-13 15:47:10'),
(74, 'mAqICXcA', 'hEpBBScCFpiy@mail.com', '$2y$10$2whXs7tIgnXGfliXR2NLkOoslMtaRM/2JDfDJbyxnuOjqnQgIB14S', 0, NULL, '2022-03-13 15:47:10', '2022-03-13 15:47:10'),
(75, 'u0TXkbPR', 'mQmA9kw9UajH@mail.com', '$2y$10$hDSAdiX9hafxH2MFMORcLOluG5.p2PMQ17D9WAv7lPQdKNl0Tg14.', 0, NULL, '2022-03-13 15:47:10', '2022-03-13 15:47:10'),
(76, 'jGWMMFKk', 'nonj0FhJFzpB@mail.com', '$2y$10$THKH4/Q5Xwe619e2jaLOeetF9AhLLaRz2BHt1rogh2UjSbJBLktSW', 0, NULL, '2022-03-13 15:47:10', '2022-03-13 15:47:10'),
(77, 'Hp7QVBqO', 'GgEkBm1QtgNN@mail.com', '$2y$10$Ar/C9JYqwQlNS5L/hbO3uuCUP8KXZu.KFCJyMAk7ZCSJaisYV9uZW', 0, NULL, '2022-03-13 15:47:10', '2022-03-13 15:47:10'),
(78, 'zt0zio5G', 'mQ346E1dMbn2@mail.com', '$2y$10$7MuVAfyJR2GZ2Rn2Rt5nZeIthlc0Ewj1rILYhHZ3DJNUKSxYVQyLi', 0, NULL, '2022-03-13 16:11:43', '2022-03-13 16:11:43'),
(79, 'cyQo26jS', 'RHxHj1BwnA06@mail.com', '$2y$10$N3hBNP7r623K7LesKlkKG.evb1Tf1GpAsvkWGCJiyGphzmJ/3wz7u', 0, NULL, '2022-03-13 16:11:44', '2022-03-13 16:11:44'),
(80, 'XAdO7FAN', 'mgqVkf4dezTZ@mail.com', '$2y$10$ADcEJ9xxvD91LGzglYIofONFVxFxPD0iDlv5cEx/Z.8XzMjRKAymC', 1, NULL, '2022-03-13 16:11:44', '2022-03-13 16:11:44'),
(81, '7n3DD6FJ', 'vnQCtpz7eORy@mail.com', '$2y$10$8f2wwogoo.SG/TLT9eQKc.d1RxqMSrI85VIzjzFUWskCzB.uSZH2m', 1, NULL, '2022-03-13 16:11:44', '2022-03-13 16:11:44'),
(82, 'PqoiiUY1', '2MnwESszBzag@mail.com', '$2y$10$ivYn80t4HyuU43hmkTgy6esvr3uYpnTAphz0MhzKbE7YB04RLLnOa', 0, NULL, '2022-03-13 16:11:44', '2022-03-13 16:11:44'),
(83, 'UnGbWnf8', 'hY9vxWgvQxHY@mail.com', '$2y$10$yBLQ.cUfm8Ps424CcLQ0o.nG1oFoOtVqjiFdC7EpA6RqpB/ztW2Sy', 0, NULL, '2022-03-13 16:11:44', '2022-03-13 16:11:44'),
(84, '5efOvpjj', 'kAhQJ7P4DEtp@mail.com', '$2y$10$31HlrBNZTU6f3VTdR9BrxeK.b0Xu9bJCOHkbmxGa1pUnaW2MxXCSe', 1, NULL, '2022-03-13 16:11:44', '2022-03-13 16:11:44'),
(85, 'bK5pnCdx', 'OrtytGOSR846@mail.com', '$2y$10$Sryu2Iu/KVY9gxilX6Re1uPf1nm3vn7YSy27C1.gO14HO3ZQzYJiy', 1, NULL, '2022-03-13 16:11:45', '2022-03-13 16:11:45'),
(86, 'Jq78EkjL', 'jRlNkRXNIo1S@mail.com', '$2y$10$kpNUmGM7oVhn1q2aBi0QnOvTWkoBwjnTLJF23VE0Kp4SKTfQkTnEO', 0, NULL, '2022-03-13 16:11:45', '2022-03-13 16:11:45'),
(87, '4cFvhQ0Y', 'aZTMSgWvTbqN@mail.com', '$2y$10$GN8khwrYqQ4/qBHTDuU.jOeu405sZGguVufDwnBqndKVvLVa4Y7AO', 0, NULL, '2022-03-13 16:11:45', '2022-03-13 16:11:45'),
(88, '89T3pikZ', 'pai3P70bP7wE@mail.com', '$2y$10$OUqO8Y7YAbRAh6CvLdtePuz1nltCoyt.20nK8n.Z6OXxXroUo7.4y', 0, NULL, '2022-03-13 16:11:45', '2022-03-13 16:11:45'),
(89, 'rNSdyxoX', 'NiWykFlmDo3R@mail.com', '$2y$10$hHP30Fx8d70fUoMU8o8XyOaFxMFdNjdnIqI2ljeAuGHQDjeQp5wey', 1, NULL, '2022-03-13 16:11:45', '2022-03-13 16:11:45'),
(90, 'ObQq1J0M', 'u7GB9U4wmjx6@mail.com', '$2y$10$oWWAL1I4CkWq79mhEnxoeecEqoSaJJnNHaMZvyzcTCcLOdMoN4Dru', 1, NULL, '2022-03-13 16:11:46', '2022-03-13 16:11:46'),
(91, 'P78loDrJ', 'yGYomgkNMiVJ@mail.com', '$2y$10$vsA37by8d755FUBjKPxeweS1jn7OtA0pj5cfzhYzuL6T.WHbnOBhq', 0, NULL, '2022-03-13 16:11:46', '2022-03-13 16:11:46'),
(92, 'ANfQmj41', 'lYT65xqjBgL4@mail.com', '$2y$10$/b.UwVM40sE/4pjCFiNa0OByY1TPZpD6.tGmkVFX9RHy9S.884AL6', 0, NULL, '2022-03-13 16:11:46', '2022-03-13 16:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `bloggers`
--

CREATE TABLE `bloggers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloggers`
--

INSERT INTO `bloggers` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'blogger1', 'blogger1@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL),
(3, 'blogger', 'blogger2@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2022-03-13 12:46:44'),
(6, 'Hunter Mclaughl', 'nesec@mailinator.com', '$2y$10$S465U6ywj1cG2u9nDUYby.aAREDWjkxiFy0nYjrEujLDAoJqBWaZK', NULL, '2022-03-10 14:38:08', '2022-03-13 15:30:56'),
(7, 'Chaim Palm', 'pytudixohy@mailinator.com', '$2y$10$wI/yimwWg3E4D9DTarFkV.jDij8Ze1FY8aExt51jcdOiIXnAfmSom', NULL, '2022-03-10 14:42:42', '2022-03-13 15:30:19'),
(12, 'LNRwucuL', 'M7RNc6LD6OFx@mail.com', '$2y$10$QXfkkJaRT8ZWwt24f8HROul3gPsAXu5w4qO2bm4i.hSnYJG7sAAxC', NULL, '2022-03-13 15:43:58', '2022-03-13 15:43:58'),
(13, 'wtnV5LB9', 'bMVtpXBxG7lb@mail.com', '$2y$10$p5cfboI/FUis4JlIxbHVbu74tbj0em3Pg48afx2MVZGFvNNWsQ1Gi', NULL, '2022-03-13 15:43:58', '2022-03-13 15:43:58'),
(14, '9tfMCiLe', 'ByX60xnXjQPP@mail.com', '$2y$10$7QYkp7ih/G8rj0zVGXvuye4uaz5prWfaxXf9pT63dGT0a0rXSiSA6', NULL, '2022-03-13 15:43:58', '2022-03-13 15:43:58'),
(15, 'Dc4eKnWX', 'eyA446EX3nrU@mail.com', '$2y$10$KjcM7l6gJINHS/fg2Ix7rOTbHjaAhZkbJ2z7rURAAzrAl1no2wkjO', NULL, '2022-03-13 15:43:58', '2022-03-13 15:43:58'),
(16, 'aUeOqexE', 'KpunwnguFKHT@mail.com', '$2y$10$V8ILAOrI9rt2tdi4/WKoBeMb1a4soUcVLu3nu3VZdOv7TNPerfIXW', NULL, '2022-03-13 15:43:58', '2022-03-13 15:43:58'),
(17, 'NQuSKggk', 'NkGSLxMHJM5E@mail.com', '$2y$10$vjrLq5aGS5bahkv5P0RzC.mZ1JqFBTpjvQZvdmr2qGQe13s73Xrp.', NULL, '2022-03-13 15:43:58', '2022-03-13 15:43:58'),
(18, 'jfEMGv55', 'DqwUGCk6O77C@mail.com', '$2y$10$yoGRX.Vro6DUzUFmxNPTQeSg/Jmo6rJcSxeCeja//HzX/Ds/SYbSO', NULL, '2022-03-13 15:43:58', '2022-03-13 15:43:58'),
(19, 'gEIr9rlu', 'J1x84jyM9KVt@mail.com', '$2y$10$iZy9CTOsqyXxepb/bfBo9eNdiCieJdcV..ha0Ip/0kOknRKQymQPO', NULL, '2022-03-13 15:43:59', '2022-03-13 15:43:59'),
(20, 'gr4t9OzY', 'zP9ltBBU54j0@mail.com', '$2y$10$74S7aKtxC3TMuNDyDCsJk.UjiU1dlx6xa7Z0Q/Ia1/eRnrrJmFQ3K', NULL, '2022-03-13 15:43:59', '2022-03-13 15:43:59'),
(21, 'ZPN1PTpd', 'nK0FMTrekA9c@mail.com', '$2y$10$6mk.4hxzF9NA87VrIOENTuyYLKcUYG0ORwiy22aOtzTwhnppOqoMe', NULL, '2022-03-13 15:43:59', '2022-03-13 15:43:59'),
(22, 'qhvXlGD1', '0efP7PPKgxN2@mail.com', '$2y$10$jh/X04zsirm2iMTFuC2WLerD6ZDw3X9icH62SBg32aImSvwnEN9T.', NULL, '2022-03-13 15:43:59', '2022-03-13 15:43:59'),
(23, '4kMGyxAt', 'sQJ32AEeDxTI@mail.com', '$2y$10$dUGxSfi1TIrjZ1BXR77MW.ZiEwymeP7iegLPeIrBcWf..7DPf6HBa', NULL, '2022-03-13 15:43:59', '2022-03-13 15:43:59'),
(24, 'hQQr3Ovj', 'DjVniNChLEvu@mail.com', '$2y$10$hTzGiR2CCh4K4egHfueBd.cErvP0ItVnhnvLIsDfo4pFPP8YvEGLa', NULL, '2022-03-13 15:43:59', '2022-03-13 15:43:59'),
(25, 'JlXgQang', 'Fzoi8CMrjVTt@mail.com', '$2y$10$GADdZGpkUb0kRwdkysEcS.cV03QEUc14k5Gho2qUGRVfp2AEju4Ke', NULL, '2022-03-13 15:44:00', '2022-03-13 15:44:00'),
(26, 'VvT7qPxF', 'fxjM3yo1lv5T@mail.com', '$2y$10$r7FyEl6JLSDKz1bDP2l43.Kz6gxu7Ai98oi8iwfZ62wTZVL9AW4GW', NULL, '2022-03-13 15:44:00', '2022-03-13 15:44:00'),
(27, 'O69U0kdL', 'KIZoSeiUWJQ2@mail.com', '$2y$10$Sah8Q.7SE/WgZJLLf3BXfelXRxAsILb0vFJu5UuvHMErRmWgAkXFm', NULL, '2022-03-13 15:45:18', '2022-03-13 15:45:18'),
(28, 'NFLyBttF', 'guFc4PzMnBax@mail.com', '$2y$10$LHWImYnJYsiDhE76AuXvDeXKBBK0uKLDA8VwCsxx.RVDAIwKtO.Zm', NULL, '2022-03-13 15:45:18', '2022-03-13 15:45:18'),
(29, 'MguHme3y', 'gM5kr8vUzupe@mail.com', '$2y$10$jhW3glB3JvkDXss2UdcNI./INb.LxPSCdeBo9sCgFkO/NCyB03GGu', NULL, '2022-03-13 15:45:18', '2022-03-13 15:45:18'),
(30, 'm321MZJ5', 'afH2KrsFeONB@mail.com', '$2y$10$AuaPo0EDNG8hepcPfT0.MeGx.Wvdn/leVlMaStzYebWy6S6Dw8Bza', NULL, '2022-03-13 15:45:18', '2022-03-13 15:45:18'),
(31, '1kwyN1o9', 'PN2EWcVmgLkv@mail.com', '$2y$10$P4FPdMfPJL.dltacYMBrLefPPMm4HH0zxGkW5tTrmLzGITi3KnF/G', NULL, '2022-03-13 15:45:18', '2022-03-13 15:45:18'),
(32, 'cRfXeReU', 'cDZVpUc7avQr@mail.com', '$2y$10$RV3.J2Uz2E5WNJ82cKERb.B6Z2JKxcUacu3OFlh20RMig3mtOBLYm', NULL, '2022-03-13 15:45:18', '2022-03-13 15:45:18'),
(33, 'ZIc7Q7RE', 'S25UV7kK7YK4@mail.com', '$2y$10$sgmWHl1hVizuOxdWO01LFeg5YO3JpAsKNvx3n2a8/xfoEY1.wQWye', NULL, '2022-03-13 15:45:19', '2022-03-13 15:45:19'),
(34, 'gjIJFwqv', 'Wx83Ljg69Xlc@mail.com', '$2y$10$vbdhcIDJQrUoUTj12NP9eeHW0uxiIQUNEkySz7eC.Slqp4rm1bWJW', NULL, '2022-03-13 15:45:19', '2022-03-13 15:45:19'),
(35, 'NnzbdZWL', 'KmZpCXApnUhd@mail.com', '$2y$10$.hwHS6uLbUsowQDunoglrepNIYLaDLRwsLbZ7a5fQ70//ugp3WXSS', NULL, '2022-03-13 15:45:19', '2022-03-13 15:45:19'),
(36, 'IO6gJs9v', 'bWAOX4WA8jpS@mail.com', '$2y$10$5lKWl62aPCVOlQ86lO/iguG2AzhqqrKinp5DoZ7vSFvFmPQ35e/o6', NULL, '2022-03-13 15:45:19', '2022-03-13 15:45:19'),
(37, 'luQBLu5O', 'CmSV6nJiCzO0@mail.com', '$2y$10$FhiuNoRo2.XmMdCqXhXPw.ZdvA.H9S3sFCOk5WEqkYZUOswaI3f8i', NULL, '2022-03-13 15:45:19', '2022-03-13 15:45:19'),
(38, 'ppMCDpzK', 'LG07cq4t5ITz@mail.com', '$2y$10$AfGW8XLCwPUWDmYDfsE/Z.a3Nguj.xrIhz/gROUoGyoFypTTRtKq.', NULL, '2022-03-13 15:45:19', '2022-03-13 15:45:19'),
(39, 'mQaHEDni', '0n7jrOtzxzeQ@mail.com', '$2y$10$PU6jOJp/A0p/48qUOA3bI.lJo64W0qrmCPOtiydxBl8SXfPA6cPEi', NULL, '2022-03-13 15:45:20', '2022-03-13 15:45:20'),
(40, '1uMPY4hT', 'aoCHCPAR6Amh@mail.com', '$2y$10$JxFBWRsPhsaTRfLwLqI87Ot42azuMXahfa6WwSDlyR94fjR6uwT.S', NULL, '2022-03-13 15:45:20', '2022-03-13 15:45:20'),
(41, '9RWSCAbQ', 'N5C0H469V0gB@mail.com', '$2y$10$5rXdlPKv6Y4.2F8GlWG5Z.gqVCOwd9orgzI2N1dwRMApQ/BmW6N/a', NULL, '2022-03-13 15:45:20', '2022-03-13 15:45:20'),
(42, 'GMXdt8nY', 'nn8ubJvCyH5z@mail.com', '$2y$10$NLBC/iYuYaCE9Sn4Dw1/M.CdQsnTeCyevWa59yimWA0F9IUEmJy8m', NULL, '2022-03-13 15:46:15', '2022-03-13 15:46:15'),
(43, 'o9itci7m', 'utpexXIHq8SY@mail.com', '$2y$10$SrEiYkwAYh8g9la0HLwO.ete0tep3UCgcS57JfB8r.Xsh94DvPXZ6', NULL, '2022-03-13 15:46:15', '2022-03-13 15:46:15'),
(44, 'Am6mtIFd', 'nmrCHEpKIpEL@mail.com', '$2y$10$.g0m2mtf0j9F5XV.5M4igephgcm2l.KEK8.a7sNnAcIKXT2A7n7dK', NULL, '2022-03-13 15:46:15', '2022-03-13 15:46:15'),
(45, 'iNEF1cO5', 'hQbEMP4TLe1R@mail.com', '$2y$10$Qbxxi6JH/qLRfxysAVOEqutOxC8Ak0IjJPEBt0eSokVvogIYkb4e2', NULL, '2022-03-13 15:46:15', '2022-03-13 15:46:15'),
(46, 'yMYPZiEN', 'PeW3BSAr18vj@mail.com', '$2y$10$ovqxeif8ab.TdQaM13ZvIud9qCJXiRidpVsCmXZTLIZHb8GtRUNf2', NULL, '2022-03-13 15:46:16', '2022-03-13 15:46:16'),
(47, 'M65Uq3UR', 'Po0h2jnIHne2@mail.com', '$2y$10$hFt4OfePsGGAsqvI4aiBZeL544zj7X8ifIhz3q7iUxiYqzuyszbl6', NULL, '2022-03-13 15:46:16', '2022-03-13 15:46:16'),
(48, 'omogghCX', 'FPfZK5yY3Iju@mail.com', '$2y$10$Azbog9QycYv/VFy4GdAv1OJwX7Kc8V2x5EkuU0qNFpsgSNUh8bMWu', NULL, '2022-03-13 15:46:16', '2022-03-13 15:46:16'),
(49, 'E3YSKCCS', 'fth0RbnHjWzY@mail.com', '$2y$10$NccmypW.sz7FPWqRL2Bg8e6BanbjxjFMe6YIQRxKaBCgr0DoeuoX2', NULL, '2022-03-13 15:46:16', '2022-03-13 15:46:16'),
(50, 'RSUoh81r', 'HTiRS6umYg8d@mail.com', '$2y$10$D2ZdwyZzcpoYO84cFKagwux.IKV1wJqM5CUSgkWXTppr3GqoTdjFe', NULL, '2022-03-13 15:46:16', '2022-03-13 15:46:16'),
(51, 'IEtu2dVs', 'LEQkCb6nNsj1@mail.com', '$2y$10$ePJQ1olyP0jV8vDPG74lSOHzW8mBb.RUFOe3CYDdPNpEhEqi0emKG', NULL, '2022-03-13 15:46:16', '2022-03-13 15:46:16'),
(52, 'FWqZY6m6', 'ZgkzvlPaACCu@mail.com', '$2y$10$iY/VdCAMqIVjVdkp93O/F.PSypayuTtVx48kHxH7i5ixYsc02olSi', NULL, '2022-03-13 15:46:17', '2022-03-13 15:46:17'),
(53, 'x5xhByRj', 'wBdLndVOqEXh@mail.com', '$2y$10$tTwPvVxNQBuHufvilFmD0.N8SXdBXZre8gNYuaQ9o7h00Mg5LQt8q', NULL, '2022-03-13 15:46:17', '2022-03-13 15:46:17'),
(54, 'x5wgqGPK', 'vkcGmCaQqrmP@mail.com', '$2y$10$wVxYs1qxnBXozLD.kPrbxeFv39bwOPyxsKzzQD.ByOW/SJxXZZy26', NULL, '2022-03-13 15:46:17', '2022-03-13 15:46:17'),
(55, 'y7XFt0zX', '8g4p4Gg63Oil@mail.com', '$2y$10$fwhsa7UAMwxwH4pVyv7Yh.aoNv8veDqfX06/e9Jwd9QSrGHVHqjqO', NULL, '2022-03-13 15:46:17', '2022-03-13 15:46:17'),
(56, '7EUoIbTD', 'fcFqNxsp7L15@mail.com', '$2y$10$JTdYOjnf.gnaiwRfwP4mZ./C5WwvyHeXD4za8gDthTR180RQmUmsm', NULL, '2022-03-13 15:46:17', '2022-03-13 15:46:17'),
(57, '2VzR80BE', 'g0E4M8POvSRT@mail.com', '$2y$10$GeQaGASlIE8.JOD2vDYEV.EO8BeGnvfm.HRI3xeETFDW3S.9M3llO', NULL, '2022-03-13 15:47:11', '2022-03-13 15:47:11'),
(58, 'gFbzW1kV', '6ks9ApRrlKEF@mail.com', '$2y$10$T0itF5spomF2.H32IUzQY.Zl4Xs4lXRbs.hRkP6rxGeXeWSPOoEDm', NULL, '2022-03-13 15:47:11', '2022-03-13 15:47:11'),
(59, '8gKp3Chy', 'Yr6Jl86v6S6y@mail.com', '$2y$10$jio/MxaLc07leU7murkNvOTUvlUp8bGGb8pat6XxFApLBhcJW3Caq', NULL, '2022-03-13 15:47:11', '2022-03-13 15:47:11'),
(60, 'TvNXt7jc', 'pFemTyZOngGP@mail.com', '$2y$10$femeHHkEJ.Np8EFBCuqihOZtEv0F5HdEnhmLcdXNhqka2m68zWp5m', NULL, '2022-03-13 15:47:11', '2022-03-13 15:47:11'),
(61, 'NmVZYdzN', 'tCmljHoiCgTy@mail.com', '$2y$10$/QgRQG5bhWuIm8fiRauB3.Dig86bUbnzE9V62qcwmV2j4O/DFLQ6a', NULL, '2022-03-13 15:47:11', '2022-03-13 15:47:11'),
(62, 'gIdjfwAJ', 'ac8wmplxcWvC@mail.com', '$2y$10$Gif/mBeN9tmzUqYmJBWWoOEF0/mmXa4Pzhsx6TSzPLFYN9jbeWuha', NULL, '2022-03-13 15:47:11', '2022-03-13 15:47:11'),
(63, '0k1nDCdL', 'wA7U4w8t2tqt@mail.com', '$2y$10$uN3a1bRaAZ4vnz/8bs6uIuPxHa62BZFM689N6O7JO2vzeTiuEzjdu', NULL, '2022-03-13 15:47:11', '2022-03-13 15:47:11'),
(64, '6PQTOLv1', 'SaJjukdZqYT1@mail.com', '$2y$10$lEOlC/wPdjws8Burv3TC1.BJ5kG03du0OCKlLmRGnR/NpHt3cdHhy', NULL, '2022-03-13 15:47:12', '2022-03-13 15:47:12'),
(65, 'EtHWPgds', 'v7BQWWupKU24@mail.com', '$2y$10$vvmgv3Ry7spyKymxxJWwDuqDn8DPyz0uDHbeYhx.8Z/YWJMUUo5/.', NULL, '2022-03-13 15:47:12', '2022-03-13 15:47:12'),
(66, 'iyf4DLu7', 'cnmg7OdW6tnX@mail.com', '$2y$10$edrzp7WwDroF5OpygCMD3ORUqvh4WbPY4dh8dMvgnp5wSGkLBGSUa', NULL, '2022-03-13 15:47:12', '2022-03-13 15:47:12'),
(67, 'J99jTe5r', '9G7O4XzF49of@mail.com', '$2y$10$ZY42/V8usAcN1lHW6nmctux1.TuyutTgtPsYJ2XjznI/Q..YnGFcu', NULL, '2022-03-13 15:47:12', '2022-03-13 15:47:12'),
(68, 'Ibm1idSM', 'YRqSIZnFjxfH@mail.com', '$2y$10$7SKEN070fHZRLhKlWCKojefMrw2agbxE8aUjvlHCIO4v3nDoS7rRi', NULL, '2022-03-13 15:47:12', '2022-03-13 15:47:12'),
(69, 'BNjoWjYA', 'i3tArA3jbVXh@mail.com', '$2y$10$WJYpcT.VO/wLPEMxXKfNd.2iMy8mkPbiNfQTSVDlAZVU2C.GUXAFC', NULL, '2022-03-13 15:47:12', '2022-03-13 15:47:12'),
(70, 'H5p5kxvS', '4TO8wImeRLpU@mail.com', '$2y$10$vMyyHDdNBagOPNy9xk7pNug7ZseoPeDhav6iWAQOmAC2GBWe9c/Bm', NULL, '2022-03-13 15:47:13', '2022-03-13 15:47:13'),
(71, 'MgXptOSk', 'UIVFrQxHKWrw@mail.com', '$2y$10$HQC8Qnp1iaGB2dZT.IN/j.s3mqLpOOxTbWrG9LuXxlE5QPCJmOLi2', NULL, '2022-03-13 15:47:13', '2022-03-13 15:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogger_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blogger_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'afasfafsasf', 'asfasfas as fas fasf asf as fsf asf asf asf asf ', NULL, NULL),
(2, 3, 'asfasfasf a fs fasf asf asf asf ', 'as fasf af af f asf asf afafaf a ffffffffffffff faaaaaaaaaaaa', NULL, NULL),
(3, 7, 'sdf sdf sdf sdf', ' sdf sdf sdf sdf sdf sdf', NULL, NULL),
(5, 2, 'Enim voluptates haru', 'Sunt, anim at dolori. asdasd asd asd as fg juyk gdg', '2022-03-13 15:34:51', '2022-03-13 15:34:51'),
(6, 41, 'atque', 'Dolor vitae iusto amet ea ab repudiandae. Eius officia eum rerum ea dicta. Unde voluptatibus totam iste et. Dolorum hic et distinctio fuga officiis. Soluta quo sed dignissimos possimus. Sed consequatur totam rerum soluta magnam et rerum. Porro provident ullam harum explicabo rem optio.', '2022-03-13 16:00:40', '2022-03-13 16:00:40'),
(7, 62, 'consequatur', 'Natus et est eius esse soluta id. Quidem nihil voluptas numquam omnis consequatur. Laborum voluptatem quisquam esse et. Qui incidunt eum laborum est id soluta. Enim porro tempore sint qui illo. Ullam omnis officia quia accusantium.', '2022-03-13 16:00:40', '2022-03-13 16:00:40'),
(8, 18, 'qui', 'Maiores aspernatur tenetur exercitationem delectus quasi dolorem nam qui. A voluptatibus sint molestias porro accusantium labore. Architecto qui quasi numquam voluptatum recusandae laborum ipsum doloribus. Nihil molestias magnam eius id accusantium est. Qui sunt ex non cumque sed rem et. Vel soluta consequatur nihil et. Fugit fugiat inventore alias aliquam. Pariatur nihil repellendus non.', '2022-03-13 16:00:40', '2022-03-13 16:00:40'),
(9, 63, 'repudiandae', 'Debitis mollitia natus nihil magnam provident autem sit sint. Consequatur temporibus quas vel harum ut quasi velit esse. Iste voluptas enim reiciendis nihil praesentium aperiam. Velit totam libero eaque. Facilis voluptatem sed voluptas maxime deserunt. Ut architecto necessitatibus nulla aut. Provident porro doloribus et quisquam nesciunt quia. Excepturi libero qui tempora est laudantium alias.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(10, 26, 'autem', 'Velit deleniti eum magni provident. Incidunt velit nostrum aut necessitatibus. Voluptatem est aspernatur facere qui unde. Occaecati est temporibus facere. Voluptatem quia optio qui. Quasi ad fugiat eius et illo rerum. Harum consequatur ratione omnis non quidem eveniet. Dolor quos rerum ab sit. Voluptatum sapiente inventore nihil. Quae nemo et eligendi dolor sed culpa.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(11, 32, 'quo', 'Sed ut quia inventore architecto sequi veniam ipsum. Ut neque a quisquam architecto ut harum. Et est necessitatibus reiciendis autem soluta consequuntur est numquam. Dolores cupiditate dolor deserunt totam autem. Minus excepturi numquam laboriosam cum. Ab cupiditate aspernatur quisquam et. Quo ipsam ullam velit. Atque dolorem dolore magnam cupiditate suscipit tempore.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(12, 15, 'tempora', 'Tempore aut est numquam. Aspernatur vitae animi explicabo dolore. Deleniti eligendi adipisci aliquid. Mollitia et cum quasi aut. Et sit minima voluptas eius voluptates voluptatum assumenda. Delectus ut provident distinctio expedita repellendus esse quidem. Dicta quis asperiores reprehenderit voluptas.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(13, 6, 'voluptatem', 'Blanditiis mollitia voluptatem aut ea molestiae minima. Quia molestiae voluptas sequi voluptatem tempore autem. Ea qui non porro est. Porro cumque et consectetur voluptatem magnam. Et dolores nihil quae quia exercitationem dolor. Consequatur et consectetur consequuntur sint velit mollitia ullam. Earum commodi in omnis distinctio et et.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(14, 41, 'dolores', 'Quas non sunt aut assumenda nulla omnis ab. Et fuga maiores nam velit. Qui tempora minus dolorum blanditiis reprehenderit sequi cupiditate. Fuga ipsa corrupti mollitia aliquam et molestiae ab. Quibusdam ut at voluptate. Pariatur et exercitationem veniam culpa dolores provident.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(15, 21, 'quod', 'Vel qui numquam sit natus exercitationem ex autem iusto. Soluta aut explicabo molestias sit sequi saepe. Voluptatem porro tenetur vel praesentium in. Iure distinctio magni perferendis qui quos ipsa. Aut aut sed fugiat quibusdam omnis consequatur tempora.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(16, 38, 'quia', 'Modi omnis ullam esse reiciendis. Autem deserunt hic non deleniti. Alias porro dolores expedita dolor quia officia ut. Qui sunt animi qui saepe perferendis et. Sint aut minima quia fugit omnis dolores. Voluptatem iste dolores nostrum eum consectetur quidem. Iure optio corporis omnis doloremque debitis ab. Id quia quas et ducimus aut tempora.', '2022-03-13 16:00:41', '2022-03-13 16:00:41'),
(17, 38, 'rerum', 'Omnis esse necessitatibus exercitationem quisquam quibusdam. Qui vel nam sint consequatur fugit aliquam. Dolores et est exercitationem. Omnis voluptatem nam facilis est est eos. Vitae laudantium ut repellendus in. Ut quam numquam assumenda blanditiis officia. Doloribus labore repellat tempore earum voluptatem est et.', '2022-03-13 16:00:42', '2022-03-13 16:00:42'),
(18, 58, 'nostrum', 'Ad omnis est impedit et reiciendis suscipit. Recusandae consequuntur commodi ex. Culpa a qui velit sequi mollitia amet architecto. Quas deleniti amet quas odit. Explicabo repudiandae numquam ipsa qui aut sunt. Qui quae officia quidem molestias atque. Rerum maiores expedita aut porro ratione aliquam voluptas. Dolores ut voluptas asperiores velit voluptate.', '2022-03-13 16:00:42', '2022-03-13 16:00:42'),
(19, 48, 'et', 'Quia dolor praesentium eligendi. Omnis error labore debitis quia ad quia. Ut magni dolore a autem voluptatem ipsam necessitatibus. Voluptatem ut omnis iusto eligendi dolorum beatae qui. Fugiat maxime illum incidunt labore cum accusamus consequatur. Assumenda et aut eum debitis occaecati ipsam. Qui saepe ab voluptate error aut aut. In voluptatum deleniti modi quia. Odio non rerum ullam quis.', '2022-03-13 16:00:42', '2022-03-13 16:00:42'),
(20, 47, 'molestiae', 'Iusto tempora ea cupiditate earum voluptas. Et ipsam est dolorem numquam cumque. Ut sit molestias quisquam fugit voluptatem assumenda eum. Dignissimos sed voluptatem est id rerum molestiae. Eaque ut in quia nesciunt. Earum est id qui magnam exercitationem. Ullam similique est nostrum ratione vero necessitatibus.', '2022-03-13 16:00:42', '2022-03-13 16:00:42');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_03_08_142057_create_admins_table', 1),
(11, '2022_03_08_142144_create_bloggers_table', 1),
(13, '2022_03_10_195916_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3b6d534940d91100caff37dea1407da87b875945285b75f0dd51c5cd6f0052f2d0642017573c615d', 2, 1, 'MyApp', '[\"blogger\"]', 0, '2022-03-13 12:42:45', '2022-03-13 12:42:45', '2023-03-13 17:42:45'),
('4ca6855b7dc62e34ce8df21ed132390acada829f51c5666b0938cf876c057c373f1ec8bc3dda44f6', 2, 1, 'MyApp', '[\"blogger\"]', 0, '2022-03-13 15:32:17', '2022-03-13 15:32:17', '2023-03-13 20:32:17'),
('4f5d2ee3d26d5843cf27e85089844cb3ecd76cda98d33c9811f51b90466ecb76ca0f7ce610f5acb6', 1, 1, 'MyApp', '[\"user\"]', 0, '2022-03-13 16:03:25', '2022-03-13 16:03:25', '2023-03-13 21:03:25'),
('937e67a436af763bf30e9590b63b989c87acea4cb9c1357480534c745026e193aa1b0dce835b7aa3', 2, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-13 16:03:03', '2022-03-13 16:03:03', '2023-03-13 21:03:03'),
('968ef749f25842de78e3b88ec61040438a5a7f075b8caa929acb9165863c475f7a9ee1d5e7eddac9', 2, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-13 16:04:01', '2022-03-13 16:04:01', '2023-03-13 21:04:01'),
('99ca209410b879fed11c3f69bb94866b925eb7d870df33dcc2e4c1d506f36b57c84c4fb0963dba59', 2, 1, 'MyApp', '[\"blogger\"]', 0, '2022-03-13 12:44:30', '2022-03-13 12:44:30', '2023-03-13 17:44:30'),
('a8ad9af4d0d0ad0c6af41bba51a54108d658e451320b5cb420682a1c5b4f670a929157950c2144aa', 2, 1, 'MyApp', '[\"blogger\"]', 0, '2022-03-13 12:07:36', '2022-03-13 12:07:36', '2023-03-13 17:07:36'),
('bf5db287a63df578c94eac7cea757c4de2aa039be57e95eacac3a66d6d0f3bc699a17bd937471346', 2, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-13 15:48:00', '2022-03-13 15:48:00', '2023-03-13 20:48:00'),
('e320a0713f4b871ffb3152aa75ba890e9ec06abc656f4aef4d7b2bf2f7eb8747ae45606b7d18ee35', 2, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-13 15:37:45', '2022-03-13 15:37:45', '2023-03-13 20:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'YiX2ve2lZ7T0ogOY94sKe8X2wxnYS1Orz2i2URxy', NULL, 'http://localhost', 1, 0, 0, '2022-03-08 11:16:54', '2022-03-08 11:16:54'),
(2, NULL, 'Laravel Password Grant Client', 'Vnaf2O4gkwYgIqqeqk9oUefuj8icLk6rToCSJKXc', 'users', 'http://localhost', 0, 1, 0, '2022-03-08 11:16:54', '2022-03-08 11:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-08 11:16:54', '2022-03-08 11:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL),
(2, 'user 2', 'user2@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL),
(6, 'p80jHQvv', 'itaOoEAZzoKZ@mail.com', NULL, '$2y$10$FylIbPK0iEdAR8XKmY9xLu0q4LHX32/MZmg3h1QM432ritYVh41a6', NULL, '2022-03-13 15:45:12', '2022-03-13 15:45:12'),
(7, 'w8Ks6STE', 'df1mIN6jC4cl@mail.com', NULL, '$2y$10$NsmvAbHexsN/WG479FUY/.cACpVaSQR6i1z0gmyphw6qTAx1mIDNW', NULL, '2022-03-13 15:45:12', '2022-03-13 15:45:12'),
(8, 'afZ9Tyjb', 'xoJBAaxhUrsp@mail.com', NULL, '$2y$10$qPe1TAcMZHXjMtVPaMWSV.Yv9g.EvXLHsXDv5jEabg6W69zvJK4Vm', NULL, '2022-03-13 15:45:13', '2022-03-13 15:45:13'),
(9, 'kOH3fPLy', 'wdxjtidtlSuN@mail.com', NULL, '$2y$10$Qub17uk.ZtM.2x6R8CF9reGjNA1TAZ8UVRpKrPlLaWsugVHAgSqUK', NULL, '2022-03-13 15:45:13', '2022-03-13 15:45:13'),
(10, 'YXaH8aR1', 'JfFdTcEmXfmX@mail.com', NULL, '$2y$10$OwalCT40dfeq/headU/b9uVWVumMXd.gVzU6rRcxQkYDRMOU7Yvcq', NULL, '2022-03-13 15:45:13', '2022-03-13 15:45:13'),
(11, 'omR3UTtL', '1ScnceTMCZ3U@mail.com', NULL, '$2y$10$GEzJEVMIq9A3yIwTR6vM/OD4A8Xi87GaDz2ZvJ0dNyQcvRMMDnZ7W', NULL, '2022-03-13 15:45:13', '2022-03-13 15:45:13'),
(12, 'D4yDVFYR', 'X4rMGCQt3WUo@mail.com', NULL, '$2y$10$2VRLfgmi3v0vbuewJLoXReBClUUgQGlhvstmj5Mkgss4lJRByhHqe', NULL, '2022-03-13 15:45:14', '2022-03-13 15:45:14'),
(13, 'v95Hvdo8', 'tdhiMQOpiLra@mail.com', NULL, '$2y$10$uLoT0hk4fTHp92VMvmViz.ktrfjs/hZU.kewF6kbspKlBZfpIORpK', NULL, '2022-03-13 15:45:14', '2022-03-13 15:45:14'),
(14, 'ZaYnHHpF', 'S4QyPMT6bAYl@mail.com', NULL, '$2y$10$YcICZBw95dUp8dYUxl6pSeMP37oQFZt8QlFD34Jj0tNXjmm/H.pey', NULL, '2022-03-13 15:45:14', '2022-03-13 15:45:14'),
(15, 'LbNEN3wu', '4HxFk2mc7Br8@mail.com', NULL, '$2y$10$GD6aNUXYcAx227js79HOd.ggtF2Wz05t3iRQ/jCCwnT.qktT6GDum', NULL, '2022-03-13 15:45:14', '2022-03-13 15:45:14'),
(16, 'ymgrsh6Z', 'AOeY4Am2L05D@mail.com', NULL, '$2y$10$Y3Syuc1QwvpXP8nqqlgi.eaZ2FH5f0faKSNPZt/R.saxoYfTiJoCG', NULL, '2022-03-13 15:45:14', '2022-03-13 15:45:14'),
(17, 'irI4XorA', 'j1tatF6tgWKy@mail.com', NULL, '$2y$10$Qy.HAcV08ddUiYB20X1jt.QPTZTIKG2l0vYT/UBpcaqFrygEf.oNu', NULL, '2022-03-13 15:45:14', '2022-03-13 15:45:14'),
(18, 'bU5ycSZq', 'mG61LfJbzCQ1@mail.com', NULL, '$2y$10$NropfTLGL9F7Hz5GYQTgsu0eAF0w4sJ6TwMWWLhmmMJhEWCJwU9l.', NULL, '2022-03-13 15:45:15', '2022-03-13 15:45:15'),
(19, 'gvcrKceA', '18wpBr460VyY@mail.com', NULL, '$2y$10$iLlBnwxgqcYgD7mwxRQzoOIRN.j5OAcdXDIeEZ6imNiXnyRtuED5W', NULL, '2022-03-13 15:45:15', '2022-03-13 15:45:15'),
(20, 'tPAlZ2ly', 'DO4J4r11rWTh@mail.com', NULL, '$2y$10$PWf9yGbzDbbxtB0Xj3WbE.6LiSRenjvfIVB0S5siBFZjffTFlpice', NULL, '2022-03-13 15:45:15', '2022-03-13 15:45:15'),
(21, 'Eo4hVdVv', 'XXL8cIbgXz7P@mail.com', NULL, '$2y$10$V.Anc0MxCpl6Gq5rITI74emM5krgrZvpUj4wdgj3vOQY/VSCC7u3G', NULL, '2022-03-13 15:46:10', '2022-03-13 15:46:10'),
(22, 'OOCyieyj', '2xE0eKid25Po@mail.com', NULL, '$2y$10$ksdQArzXeTmPn4T8L4N1LOXRzMzHN12WErhNXz09lCkPWCMFT9EFe', NULL, '2022-03-13 15:46:10', '2022-03-13 15:46:10'),
(23, 'F3WrVOOm', 'JynX2TEiF9Co@mail.com', NULL, '$2y$10$iaY9m8ErcecmtYOQYi72cOXpCHslX/Z12x/8iMhGoND7A.uUzk0.K', NULL, '2022-03-13 15:46:10', '2022-03-13 15:46:10'),
(24, 'yRVYTNpA', 'QgYSxOvnfrIB@mail.com', NULL, '$2y$10$PdAJNSPs7q4LkZoSgoRDV.0raxPlZUdB3lsre6hKdo0bNBoM2v8Yq', NULL, '2022-03-13 15:46:10', '2022-03-13 15:46:10'),
(25, 'MOVjseLc', 'eVBbGIYi3QOd@mail.com', NULL, '$2y$10$AI1/gWxHcbZ7Swc9mLu5nO8E.Fctam6X937hhYqNeTXRnzXVUvTGW', NULL, '2022-03-13 15:46:10', '2022-03-13 15:46:10'),
(26, 'SoFF5M6x', 'BgxpErIAdkJq@mail.com', NULL, '$2y$10$hyjdTGz/qRlc40BU5UY5eevsa9l/PwIQWaLhVa7905A3zucW5tDMK', NULL, '2022-03-13 15:46:11', '2022-03-13 15:46:11'),
(27, 'zP4Hdxlt', 'pZMvNxxFalhn@mail.com', NULL, '$2y$10$NVWm/5/LS1ifwUeen6JaGOgRr7tx51Vd7bP0fQvPb62KcnipKkNqy', NULL, '2022-03-13 15:46:11', '2022-03-13 15:46:11'),
(28, 'qyyUy7iA', '9rGe769Tl6IR@mail.com', NULL, '$2y$10$0wJZeplNX7KoFcXFH6bhQeTXtba5W1XdN5KbPi6FzIOSQBDj4zWUO', NULL, '2022-03-13 15:46:11', '2022-03-13 15:46:11'),
(29, 'zrOKvZGk', 'cNBVmYGU6RsJ@mail.com', NULL, '$2y$10$SY7ZGgFOwDPeMW/tk6wGUuJE/xqk/xV4fNK8FzNtirR.2F6NoNYZ2', NULL, '2022-03-13 15:46:11', '2022-03-13 15:46:11'),
(30, 'VXTmbauV', 'xJYqLx2y5jJP@mail.com', NULL, '$2y$10$8QsaV.ATL2qu1fyZqE5pXuc1JVSWf9i7yhKRVFifN.dPT2FtpWy.G', NULL, '2022-03-13 15:46:11', '2022-03-13 15:46:11'),
(31, 'vfn08kgS', '235WNpiFqavQ@mail.com', NULL, '$2y$10$Bx7.BrsxqDpWkaEZtjC3Cuwb/6.1QGR7BJvtbzrW2W.nAO3lJwcmO', NULL, '2022-03-13 15:46:12', '2022-03-13 15:46:12'),
(32, 'gUQ3XFeE', 'BdgqJRtxY8UN@mail.com', NULL, '$2y$10$SqqsQWi1lW7gxlAl4nOltOK70/thm5reZz8TO.hgVFAL7lby5zvVC', NULL, '2022-03-13 15:46:12', '2022-03-13 15:46:12'),
(33, 'UC0eQwEl', '9yEoBfiINChl@mail.com', NULL, '$2y$10$c/dXAvclRTK94swrRRWAA.2gRcOIZt3w.Cxebs7NNduf//EEyqyqa', NULL, '2022-03-13 15:46:12', '2022-03-13 15:46:12'),
(34, 'Ih6uMqfg', 'wJYLMNBbaCYK@mail.com', NULL, '$2y$10$wBpqy1C7XcMZl2qjHNOyQe8VEhiThQFu3gEJMcpUTKzrj4rtATehi', NULL, '2022-03-13 15:46:12', '2022-03-13 15:46:12'),
(35, 'ARm8wl1B', 'MUTnH3lXLke1@mail.com', NULL, '$2y$10$bpwsvxwHJvd.EwOtKy6DAe2dxIkfVzZ/RQKmr8tzGuf14EHEW.WpG', NULL, '2022-03-13 15:46:12', '2022-03-13 15:46:12'),
(36, '3kAXcEna', 'K3UOVqUXLyEk@mail.com', NULL, '$2y$10$SmmnyY9G2brbyhbuPs.F.OasiyAszSZ160evguzmVUv6PIioIMOmS', NULL, '2022-03-13 15:47:06', '2022-03-13 15:47:06'),
(37, 'ZWqKijd3', 'oTCNemArO1Vn@mail.com', NULL, '$2y$10$7P7omuCqmP7RlN77HJtxUe3axGygSdK/Bf/4cH/qZ6skYgyeBCavi', NULL, '2022-03-13 15:47:06', '2022-03-13 15:47:06'),
(38, 'NDyanq0N', 'wC6ryP3AUX0L@mail.com', NULL, '$2y$10$JLQyIybqaCxZW3zzf8P65uji6hUGpmoKwgmq.Yb8.aNe.pCqMb/Y2', NULL, '2022-03-13 15:47:06', '2022-03-13 15:47:06'),
(39, 'Kmt9z0m8', 'xRLcBRsOOX4M@mail.com', NULL, '$2y$10$SM0E1w2Ep5bBp5zJ2PKFyOivlry2vWSBA1DC1g1sBhDDDpArK7loC', NULL, '2022-03-13 15:47:06', '2022-03-13 15:47:06'),
(40, 'Mhr4CHQH', 'b5AODuAAr7e1@mail.com', NULL, '$2y$10$L0qFzCkR3jYy0C9ktF0SYuNXnQkLAsag1aJIsSgfTLQf6FS/1foCy', NULL, '2022-03-13 15:47:07', '2022-03-13 15:47:07'),
(41, 'M8aTXJC0', '77DaGEi7wJcw@mail.com', NULL, '$2y$10$CrweObwe8GJTQbqC/803le4/CuOgf1rdEyziIBYlqlAJV4orPT9YO', NULL, '2022-03-13 15:47:07', '2022-03-13 15:47:07'),
(42, 'KjbRGv7G', '23okbmv082gv@mail.com', NULL, '$2y$10$/SFgZ7WYTkuhiDgzWljcp.DdhQ2dMum/qjC3pZflKuFTPYsKVKxIK', NULL, '2022-03-13 15:47:07', '2022-03-13 15:47:07'),
(43, 'Akrg5XhD', 'CRvSJ3NOzIB1@mail.com', NULL, '$2y$10$otx76g6Q/H7HlfeSiMySju8hfLcwvJA94Q8AaKXL8XTZnGA4/ScCq', NULL, '2022-03-13 15:47:07', '2022-03-13 15:47:07'),
(44, '5wtP4UFy', '9iNXeHvwnUSL@mail.com', NULL, '$2y$10$eAOWU3JQjDgQtcp5fl.OouBr5cOmiEAVOlqRQZ1l9hnm9xjeRBzSy', NULL, '2022-03-13 15:47:07', '2022-03-13 15:47:07'),
(45, 'aX72rBPn', 'pNNzKYtrJa0H@mail.com', NULL, '$2y$10$Ymgfrcbe0GTSRErbJTIuyOkZu.5eKcuQXULwxnfDuJhYPoeaJsl16', NULL, '2022-03-13 15:47:07', '2022-03-13 15:47:07'),
(46, 'X8QL1q76', 'EVqK9CxLoZwp@mail.com', NULL, '$2y$10$L.sIPAqLTcGlB9H0I6C5xeitcs/QoZRA6Pb39KYkLmzRVqb/.HXBW', NULL, '2022-03-13 15:47:08', '2022-03-13 15:47:08'),
(47, 'FOMJtjEc', 'totfooIRwaT3@mail.com', NULL, '$2y$10$/TuzBQuEZGNf.uDlN55PeutMqeCKlpZMwZ0BTUYLaP/lF1oxSQgUe', NULL, '2022-03-13 15:47:08', '2022-03-13 15:47:08'),
(48, 'nD6dtn1o', 'ucSnYfHKsADe@mail.com', NULL, '$2y$10$MLkrOFhnx70Lg.8MgPoqT.7Hr/2PCflg.GxOf3Qa.q0lEqGPS.I3q', NULL, '2022-03-13 15:47:08', '2022-03-13 15:47:08'),
(49, 'EodEob6V', '91IdPJyhDH0G@mail.com', NULL, '$2y$10$LudatRSnvnUAHBDUperpMePmHlUdvC9jE2aNLmkrGKD78FKvFntRe', NULL, '2022-03-13 15:47:08', '2022-03-13 15:47:08'),
(50, 'VJthsiIi', '6T89AZokRGN7@mail.com', NULL, '$2y$10$E0QRVnNIoXfelefBw7q4lOIVPrV3Uidcpkss1ERq021vdo5UqQ8.O', NULL, '2022-03-13 15:47:08', '2022-03-13 15:47:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `bloggers`
--
ALTER TABLE `bloggers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bloggers_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blogger_id_foreign` (`blogger_id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `bloggers`
--
ALTER TABLE `bloggers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blogger_id_foreign` FOREIGN KEY (`blogger_id`) REFERENCES `bloggers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
