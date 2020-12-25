/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : db_testingepus

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 29/11/2020 19:59:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _dokter
-- ----------------------------
DROP TABLE IF EXISTS `_dokter`;
CREATE TABLE `_dokter`  (
  `id_dokter` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dokter_nip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dokter_nama` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dokter_jenkel` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dokter_spesialis` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dokter`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _dokter
-- ----------------------------
INSERT INTO `_dokter` VALUES (21, 't5dzCjpF71yy!JOqxxOBAQ==', 'So+7rmuK6QL9rlhvz!qH6A==', '0!tufYsF0IL7qHK3F5r2zg==', 'Y2vPMTrv+kUYo3OhYQunwA==');
INSERT INTO `_dokter` VALUES (22, 'mfO6P6+t3jNarToG2AaT0Q==', 'vXlaRv7KC7VkHaXc+6DSnA==', 'sQn6i938acnyw8FFX6NYWA==', 'g5ijm9nu2yiqqdtlhMj9lw==');
INSERT INTO `_dokter` VALUES (23, 'txIkBGtO+fJ9CF46IB2H1w==', 'nRs!MknZv!obYXLnR4ei2g00l+hyGcGH2bfK5vrTDtU=', 'sQn6i938acnyw8FFX6NYWA==', 'g5ijm9nu2yiqqdtlhMj9lw==');
INSERT INTO `_dokter` VALUES (24, 'ZRzXFvv1FDTG42FYMHbtvw==', 'WKlVEEswEi0l8FVOSfEuHA==', 'sQn6i938acnyw8FFX6NYWA==', 'g5ijm9nu2yiqqdtlhMj9lw==');
INSERT INTO `_dokter` VALUES (26, 'fTxd4TCv5gW1uN86WpcyBcaFHdjoXspi40eM7G4e3Oc=', 'hKRib!PmNB3NNQFh70RFXkc9jJzz1fbDEQoU38J12I4=', 'sQn6i938acnyw8FFX6NYWA==', 'g5ijm9nu2yiqqdtlhMj9lw==');

-- ----------------------------
-- Table structure for _obat
-- ----------------------------
DROP TABLE IF EXISTS `_obat`;
CREATE TABLE `_obat`  (
  `id_obat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kd_obat` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `obat_nama` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `obat_jenis` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `obat_kadaluarsa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `obat_produsen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_obat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _obat
-- ----------------------------
INSERT INTO `_obat` VALUES (8, 'M2+kIdt03a6hLuaAX9SLzg==', 'y1n8jGu14wVCc!+qEWalkw==', 'gWtMs7R!5tQcqD6+duDuig==', 'l!lRm10RLm2b6MowjlEo7g==', 'r7HU7ECSHQBN0x2AIYMZZg==');
INSERT INTO `_obat` VALUES (9, 'DMm+a32imsQ9O7k8cRN0yw==', 'd203b1Fnm3kIPf0!wNmX8A==', 'rKoD4npU6ObqdNorraHDBQ==', '82etBgNraXeBOvU9h1MYug==', '4f1+M3FLCGmcc+SZKjqKGA==');
INSERT INTO `_obat` VALUES (11, 'DMm+a32imsQ9O7k8cRN0yw==', 'VUhg9aZhpGkETaC6jMl6Ww==', '7lo9goJuAOrD2WX8vKmxGA==', 'C0bhK1LTiKfNW50r!hzCdg==', 'zEmLKTsM3FU0vaXylnxwCQ==');
INSERT INTO `_obat` VALUES (12, 'DMm+a32imsQ9O7k8cRN0yw==', 'd56cEJZbqsQZDWkStpyrEA==', 'jbxC9LxjYuWVKXslQr9jzg==', 'zDAbzWQDKcclTsHYKc4!KA==', '4f1+M3FLCGmcc+SZKjqKGA==');
INSERT INTO `_obat` VALUES (15, 'DMm+a32imsQ9O7k8cRN0yw==', '!3dIEIaLByBUU7VuVEftlQ==', 'XAHerPPZ94rk4fQmqkJIZQ==', '3s4PHewT!ttb6Rs71eIXsA==', 'gH!7X5QoCfrwKxTySdFgsA==');

-- ----------------------------
-- Table structure for _pasien
-- ----------------------------
DROP TABLE IF EXISTS `_pasien`;
CREATE TABLE `_pasien`  (
  `id_pasien` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pasien_ktp` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_nama` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_tempatlahir` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_tgllahir` timestamp(0) NULL DEFAULT NULL,
  `pasien_telepon` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_jenkel` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_agama` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_noasuransi` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_jenisasuransi` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_goldar` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_kelurahan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_kecamatan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_kotakabupaten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_provinsi` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasien_nokk` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pasien`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _pasien
-- ----------------------------
INSERT INTO `_pasien` VALUES (10, '!5Y7RWNn68CfwENYk8rH6Q==', 'iHn0rJeOZ9JMpLCgf9iakg==', 'uSh6TkwWD3lyIdrF2OAfQQ==', 'T+1UcY8tk44VwmWAp78sHg==', '2020-06-04 07:00:00', '+JWvA1bQiQW1!Ts0IDky1Q==', '0!tufYsF0IL7qHK3F5r2zg==', 'OqeiDQ27+3KXB18+RJwKtg==', 'MGZ8YhFbVQUU5tol7Ge7iA==', 'tvZS6rmDJHT!XKOpgj!Gig==', 'UirCac1yHM1zy9ZpXorsvQ==', 'HP2hPObbgy4qluld9vbc0A==', 'sPQwrfoLoBTfjTQEJ8sitA==', 'T+1UcY8tk44VwmWAp78sHg==', 'we+xMLWr5!M9aoiFWn!kIg==', '5FXf1VQmaQ3osrYHOCntEg==');
INSERT INTO `_pasien` VALUES (11, 'idGyVvdOUIsDPkfqFb2Yjw==', 'kF8+6QdpN6TwtGSnywT7FQ==', 'noNMnoZ2remge7Z!7a2fZw==', 'IMicmiLA50PSSlW75G9I3g==', '1982-06-29 07:00:00', 'rES2s3b0ht8DSb6DYmC4yQ==', '0!tufYsF0IL7qHK3F5r2zg==', 'OqeiDQ27+3KXB18+RJwKtg==', 'ByOMOTpza!9LiDi0pF4lJA==', 'tvZS6rmDJHT!XKOpgj!Gig==', 'UirCac1yHM1zy9ZpXorsvQ==', '34K84cQJWQ0ssVltNXnFag==', '34K84cQJWQ0ssVltNXnFag==', 'T+1UcY8tk44VwmWAp78sHg==', 'we+xMLWr5!M9aoiFWn!kIg==', 'xiYGcE+OHeQSJqBG!D6IyA==');
INSERT INTO `_pasien` VALUES (13, 'idGyVvdOUIsDPkfqFb2Yjw==', '1EcbMCEdBfbjSgEXiljj3kqCCj0nGn+qF4U45D5ymXw=', 'noNMnoZ2remge7Z!7a2fZw==', 'Gui3lxzbszM+oZcDWuhzEg==', '1992-06-10 07:00:00', 'KlOZMcrx8MA15ELud4siYg==', '0!tufYsF0IL7qHK3F5r2zg==', 'OqeiDQ27+3KXB18+RJwKtg==', 'ByOMOTpza!9LiDi0pF4lJA==', 'tvZS6rmDJHT!XKOpgj!Gig==', 'UirCac1yHM1zy9ZpXorsvQ==', '34K84cQJWQ0ssVltNXnFag==', '34K84cQJWQ0ssVltNXnFag==', 'T+1UcY8tk44VwmWAp78sHg==', 'we+xMLWr5!M9aoiFWn!kIg==', 'ZHDy0bxExTR9MhBNhWrsdw==');
INSERT INTO `_pasien` VALUES (14, 'HBzNu5UTecYdDSD!Oita6Q==', 'MusQP0Ep7VdNDVIQYVpJ+7+nlb1jTfHumAQOr07FsPI=', 'Y7RALChuHEVReU6DrsQP1rZuYO3ctKpuFT6HKoa86HY=', 'sVxR8PIERYc29YTur5RXgQ==', '1992-06-03 07:00:00', '6!L1DCmFHwbETkCm!4ngww==', '0!tufYsF0IL7qHK3F5r2zg==', 'OqeiDQ27+3KXB18+RJwKtg==', 'eVFwGLsi9Ti0qyr6o2dF5w==', 'tvZS6rmDJHT!XKOpgj!Gig==', 'GPMDEBZhKTd2GS4WP+TVnw==', 'YmW7acOGST3bSv3Hd2Hmeg==', 'YmW7acOGST3bSv3Hd2Hmeg==', '5bsZEzQnWmxn!pGBKb!zdtXpBuPKScrLmBM0rPsryrQ=', 'we+xMLWr5!M9aoiFWn!kIg==', 'QQhu9HDPJSdgkzimWVJ!mw==');
INSERT INTO `_pasien` VALUES (17, 'JilmW0A8ilQ!PzTLYQul!A==', 'I9F2pMc1HH0spF2OtBeQEw==', 'NHAf+h9jrtwNVdoBxBxfcQ==', 'T+1UcY8tk44VwmWAp78sHg==', '2020-06-18 07:00:00', 'vlnq7WuWPHrc0Us3pwRicA==', '0!tufYsF0IL7qHK3F5r2zg==', 'OqeiDQ27+3KXB18+RJwKtg==', 'Qs!MGxTo!f6IspEAQHlDmw==', 'tvZS6rmDJHT!XKOpgj!Gig==', 'UirCac1yHM1zy9ZpXorsvQ==', 'HP2hPObbgy4qluld9vbc0A==', 'sPQwrfoLoBTfjTQEJ8sitA==', 'T+1UcY8tk44VwmWAp78sHg==', 'we+xMLWr5!M9aoiFWn!kIg==', 'pApoqAHcWBwMbvvuOwdtHw==');
INSERT INTO `_pasien` VALUES (20, 'CkpsRJZE4Ha2CZtHJ0H+2g==', 'UxLXGPLBmobTYo7YH4j9Zg==', 'qg85mIoPVEHIeRK32LI5LQ==', 'IMicmiLA50PSSlW75G9I3g==', '1990-09-05 07:00:00', 'PHJMPEIiablsEhzC6T4mDQ==', '0!tufYsF0IL7qHK3F5r2zg==', '73ASynsXAaXWhfUwtp2nhA==', 'FDN+iQSQPVQisoJGQV29zA==', 'tvZS6rmDJHT!XKOpgj!Gig==', 'UirCac1yHM1zy9ZpXorsvQ==', 'HP2hPObbgy4qluld9vbc0A==', 'sPQwrfoLoBTfjTQEJ8sitA==', 'i0!vsQ3u39gmxcyz4j1wZw==', 'we+xMLWr5!M9aoiFWn!kIg==', 'IWS3t1mje3RoHvkM668wIA==');

-- ----------------------------
-- Table structure for _penyakit
-- ----------------------------
DROP TABLE IF EXISTS `_penyakit`;
CREATE TABLE `_penyakit`  (
  `id_penyakit` int(11) NOT NULL AUTO_INCREMENT,
  `penyakit_nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `penyakit_deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `penyakit_jenis` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_penyakit`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _penyakit
-- ----------------------------
INSERT INTO `_penyakit` VALUES (7, '237GdbER77dM27GrPzUOmA==', '75frd6+KPBEgEnfA+pgWemF1guNnPIdBRKHcpebfw!Y=', 'fRfEFLAffqVl2JOPlYSvJQ==');
INSERT INTO `_penyakit` VALUES (8, 'RW4cqmpSTvn4ThdLaMICsw==', 'her+GZuHE8tu2JchOFTVe57agzZf8WOcZHkjpfUf+90=', 'VqsNtds6Qopao!jcqpL!Ag==');
INSERT INTO `_penyakit` VALUES (10, '4JFga!Ejay3m!+vem!c+HQ==', 'nAgVIQ245QG5eMB!bIPn1prf2vznkpKw8nXZmibl5W8=', 'fRfEFLAffqVl2JOPlYSvJQ==');
INSERT INTO `_penyakit` VALUES (11, 'UigGtM96SOgCiMF1hiOttw==', 'cwO9j97VaD7EKjC+vd8B8n9L8EpuyvTT5CR95luCor4=', 'VqsNtds6Qopao!jcqpL!Ag==');
INSERT INTO `_penyakit` VALUES (16, 'cUPqn9wGjnWd1RA0SW5GpQ==', 'OFA9jGW0pI1xi6Ln!n6SRF3qQpRQ1cr51XAkZiSzlrpVe0xvUojvHk4UsiY3QbaG', 'fRfEFLAffqVl2JOPlYSvJQ==');
INSERT INTO `_penyakit` VALUES (17, 'YNbvxHyKSvY244H+V8Q90w==', 'y7ZOKE3RmcBhiT6Wlrem2SGfvvl+WOIrqBzSt8SZPXM=', 'VqsNtds6Qopao!jcqpL!Ag==');
INSERT INTO `_penyakit` VALUES (18, 'gA7totwpe5XBcIn0cuxQ1g==', '0EK5AOgnyycvSN9bwZFhrR7Wc0lO2qWzeDH3Jqh9l0w=', 'fRfEFLAffqVl2JOPlYSvJQ==');

-- ----------------------------
-- Table structure for _rekammedis
-- ----------------------------
DROP TABLE IF EXISTS `_rekammedis`;
CREATE TABLE `_rekammedis`  (
  `rekammedis_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_dokter` int(10) UNSIGNED NOT NULL,
  `id_pasien` int(10) UNSIGNED NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `rekammedis_tglkunjungan` timestamp(0) NULL DEFAULT NULL,
  `rekammedis_keluhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rekammedis_diagnosa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rekammedis_tindakan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rekammedis_id`, `id_dokter`, `id_pasien`, `id_penyakit`) USING BTREE,
  INDEX `fk__dokter_has__pasien__pasien1_idx`(`id_pasien`) USING BTREE,
  INDEX `fk__dokter_has__pasien__dokter_idx`(`id_dokter`) USING BTREE,
  INDEX `fk__rekammedis__penyakit1_idx`(`id_penyakit`) USING BTREE,
  INDEX `rekammedis_id`(`rekammedis_id`) USING BTREE,
  CONSTRAINT `fk__dokter_has__pasien__dokter` FOREIGN KEY (`id_dokter`) REFERENCES `_dokter` (`id_dokter`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk__dokter_has__pasien__pasien1` FOREIGN KEY (`id_pasien`) REFERENCES `_pasien` (`id_pasien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk__rekammedis__penyakit1` FOREIGN KEY (`id_penyakit`) REFERENCES `_penyakit` (`id_penyakit`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _rekammedis
-- ----------------------------
INSERT INTO `_rekammedis` VALUES ('00010', 21, 10, 17, '2020-06-01 07:00:00', 'mpUVxk6!8IUkQOd0BQxTInYpiEsaZCnxePJ8ZGBrsDw=', 'rBqJpSqjcJ8sFn58rQ9R+Q==', 'sqNZ4J548XAa+BB2L1i+nUzhZ!MV3QTI5TkTQTQqoKc9MQyFEd3Wl6oWxEMIlTkLRz2MnPPV9sMRChTfwnXYjg==');
INSERT INTO `_rekammedis` VALUES ('00239-2', 22, 14, 7, '2020-06-23 07:00:00', 'jAauhErVgiRsQDeYn20dyp0JQTAICBV4L5zqmecpBO+jzoMMg+Dzl!bdxmTXy+1rGnAJPOiLE35jUH2lDlAf7A==', '!Gr8YjdUygDCmHjr6krO+A==', 'cXgeoRJBrm7A9DuD218GtP6Tg92hz+XVYfXH6vw2YCu9OXtLbBOp7inMSozj9yMU');
INSERT INTO `_rekammedis` VALUES ('1', 23, 10, 8, '2020-07-16 07:00:00', 'xoUd2OheymLjR4zsbh7c5w==', 'xoUd2OheymLjR4zsbh7c5w==', 'xoUd2OheymLjR4zsbh7c5w==');

-- ----------------------------
-- Table structure for _resepobat
-- ----------------------------
DROP TABLE IF EXISTS `_resepobat`;
CREATE TABLE `_resepobat`  (
  `id_resepobat` int(11) NOT NULL AUTO_INCREMENT,
  `rekammedis_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_obat` int(10) UNSIGNED NOT NULL,
  `resepobat_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_resepobat`, `rekammedis_id`, `id_obat`) USING BTREE,
  INDEX `fk__rekammedis_has__obat__obat1_idx`(`id_obat`) USING BTREE,
  INDEX `fk__rekammedis_has__obat__rekammedis1_idx`(`rekammedis_id`) USING BTREE,
  CONSTRAINT `fk__rekammedis_has__obat__obat1` FOREIGN KEY (`id_obat`) REFERENCES `_obat` (`id_obat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk__rekammedis_has__obat__rekammedis1` FOREIGN KEY (`rekammedis_id`) REFERENCES `_rekammedis` (`rekammedis_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _resepobat
-- ----------------------------
INSERT INTO `_resepobat` VALUES (7, '00010', 11, 'v3J6Ku8LIQxfGi6MelwgdvFH1NxzAtCyolktd0cLrSw=');
INSERT INTO `_resepobat` VALUES (8, '00010', 8, 'rcrUb1th6qL+jCoT4pyD0RA92IUVEl9Gfh56SwBbvjA=');
INSERT INTO `_resepobat` VALUES (9, '00239-2', 15, '30VAQU542LzGmq4lpkxin2iDd5w4myZOnhO486c4rZw=');

SET FOREIGN_KEY_CHECKS = 1;
