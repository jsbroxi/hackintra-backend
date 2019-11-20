/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : ascentic

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 20/11/2019 10:42:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('070ba01d059275c379bf642e873fc3aa116b7ae3090ffd8484488fbbb851336dba6b89e324253206', 1, 3, 'MyApp', '[]', 1, '2019-11-19 23:05:11', '2019-11-19 23:05:11', '2020-11-19 23:05:11');
INSERT INTO `oauth_access_tokens` VALUES ('1be1dbb73cc423c300f9e30c9f548f197214775fa3cf7dc0548fd484a036f4f781f8f996b983d0dd', 1, 3, 'MyApp', '[]', 1, '2019-11-19 23:07:30', '2019-11-19 23:07:30', '2020-11-19 23:07:30');
INSERT INTO `oauth_access_tokens` VALUES ('25a5b26a54577c56f6b36505c057672a12c91db3c3be6e564040dad9de80659fea6ccb93b7528fc1', 1, 3, 'MyApp', '[]', 0, '2019-11-19 22:22:31', '2019-11-19 22:22:31', '2020-11-19 22:22:31');
INSERT INTO `oauth_access_tokens` VALUES ('32f9d66fd661c24a546db13ec97fa7901980b62e20f191e486eecbf343f10ec030bef49090c95bfe', 1, 3, 'MyApp', '[]', 1, '2019-11-19 23:07:03', '2019-11-19 23:07:03', '2020-11-19 23:07:03');
INSERT INTO `oauth_access_tokens` VALUES ('5e6945e009a1750dfd0b0e1b0a8b5dffa458c502818bc34465a6bafd3c3ac7b1adf5245d17767339', 1, 3, 'MyApp', '[]', 0, '2019-11-19 15:11:10', '2019-11-19 15:11:10', '2020-11-19 15:11:10');
INSERT INTO `oauth_access_tokens` VALUES ('6789c69d23879dfcb819a57bd6734dba51fdec78da7467604a30ba799b5ef803f391f90cc8da1c72', 1, 3, 'MyApp', '[]', 0, '2019-11-19 18:30:22', '2019-11-19 18:30:22', '2020-11-19 18:30:22');
INSERT INTO `oauth_access_tokens` VALUES ('6f7d059131641f6e942829b99319e12b88641ab6e3a45c9c5ac41fe4ba3aca068aca76cdd5ab5d43', 1, 3, 'MyApp', '[]', 0, '2019-11-19 16:54:22', '2019-11-19 16:54:22', '2020-11-19 16:54:22');
INSERT INTO `oauth_access_tokens` VALUES ('7a84e6c093c33371cb6e366a7c6a595ae72cfe948857944a8b9d6ad69079d62b50b8f0e3cd8aeaad', 1, 3, 'MyApp', '[]', 0, '2019-11-19 19:25:53', '2019-11-19 19:25:53', '2020-11-19 19:25:53');
INSERT INTO `oauth_access_tokens` VALUES ('84ac0be1701af6d18f4bcf2dc8851023dc86d085a6e18b1acfc7b1d10b7dd20ec2e79d1ac20bc256', 1, 3, 'MyApp', '[]', 0, '2019-11-19 23:00:44', '2019-11-19 23:00:44', '2020-11-19 23:00:44');
INSERT INTO `oauth_access_tokens` VALUES ('881fb9374a56542acebf8745ef4a9ebdfa0203a0242115293aa811f7248c4a1bbea93815abe6759a', 1, 3, 'MyApp', '[]', 0, '2019-11-19 15:41:09', '2019-11-19 15:41:09', '2020-11-19 15:41:09');
INSERT INTO `oauth_access_tokens` VALUES ('924ffb8a287cbcb97331103d25315cdd5dee22d6bcee516245aab0ee68e40a0bc52119c1503f3716', 1, 3, 'MyApp', '[]', 0, '2019-11-19 15:40:25', '2019-11-19 15:40:25', '2020-11-19 15:40:25');
INSERT INTO `oauth_access_tokens` VALUES ('93b3ae80655bd3060f14d2352acf6d8cc0a4b51b2a23f86eee93a9d9e6c7bfe5e29aa233df5ce7e7', 1, 3, 'MyApp', '[]', 0, '2019-11-19 16:56:41', '2019-11-19 16:56:41', '2020-11-19 16:56:41');
INSERT INTO `oauth_access_tokens` VALUES ('9bb6c36448202faccc466c8f16701a606b434dd8e35d56b7a9f1aa64af3d218c9b89e3158603e0a2', 1, 3, 'MyApp', '[]', 0, '2019-11-19 18:30:14', '2019-11-19 18:30:14', '2020-11-19 18:30:14');
INSERT INTO `oauth_access_tokens` VALUES ('bc76bda5e0e18f9770ca7c9be9bccc7e94c43f5c8d882d3e237ad388e05afc67062625ba7be73076', 1, 3, 'MyApp', '[]', 0, '2019-11-19 16:55:54', '2019-11-19 16:55:54', '2020-11-19 16:55:54');
INSERT INTO `oauth_access_tokens` VALUES ('d21cc9197189327823bb78ed80947e3de553676d631a8838f9a38fa28d500e032790219337df874f', 1, 3, 'MyApp', '[]', 1, '2019-11-19 23:07:14', '2019-11-19 23:07:14', '2020-11-19 23:07:14');
INSERT INTO `oauth_access_tokens` VALUES ('dfa09d84bb3abbdd125e644f37befe35309bcf0bcfef67a1e5416c8ab74612c3801bf629a8f5f852', 1, 3, 'MyApp', '[]', 0, '2019-11-19 16:56:07', '2019-11-19 16:56:07', '2020-11-19 16:56:07');
INSERT INTO `oauth_access_tokens` VALUES ('ecce6e492de27892d3253d00f87818ce5fb9e8205522a8fa8c36ef422a0557715f6792bd5cbe2ab3', 1, 3, 'MyApp', '[]', 0, '2019-11-19 15:10:11', '2019-11-19 15:10:11', '2020-11-19 15:10:11');
INSERT INTO `oauth_access_tokens` VALUES ('f79c72d8e78d663ed0fa8f75c5a0cb710b6ee0690b83498f0c334311e3db3d538a0b19a6fe6be699', 1, 3, 'MyApp', '[]', 1, '2019-11-19 22:49:17', '2019-11-19 22:49:17', '2020-11-19 22:49:17');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'D3BClD1kfKtplzn1aWXmws3nDH1vw3se1sGPCtIy', 'http://localhost', 1, 0, 0, '2019-11-19 13:40:00', '2019-11-19 13:40:00');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'GgHuDquZ5Vd7y9JZAZL8DrXEQKFABzpOnFl8frGr', 'http://localhost', 0, 1, 0, '2019-11-19 13:40:00', '2019-11-19 13:40:00');
INSERT INTO `oauth_clients` VALUES (3, NULL, 'Laravel Personal Access Client', '2JTanPKPW46ta8DAhtlNoURDrtODDGOj3H2Jb2Gb', 'http://localhost', 1, 0, 0, '2019-11-19 14:55:29', '2019-11-19 14:55:29');
INSERT INTO `oauth_clients` VALUES (4, NULL, 'Laravel Password Grant Client', 'u7skueKOthLxW3DnX6urSlzf7SYeug4t0NxYn9CT', 'http://localhost', 0, 1, 0, '2019-11-19 14:55:30', '2019-11-19 14:55:30');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-11-19 13:40:00', '2019-11-19 13:40:00');
INSERT INTO `oauth_personal_access_clients` VALUES (2, 3, '2019-11-19 14:55:29', '2019-11-19 14:55:29');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for trn_brands
-- ----------------------------
DROP TABLE IF EXISTS `trn_brands`;
CREATE TABLE `trn_brands`  (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trn_brands
-- ----------------------------
INSERT INTO `trn_brands` VALUES (1, 'Puma');
INSERT INTO `trn_brands` VALUES (2, 'Adidas');
INSERT INTO `trn_brands` VALUES (3, 'Nike');
INSERT INTO `trn_brands` VALUES (4, 'Under Armour');

-- ----------------------------
-- Table structure for trn_clothes
-- ----------------------------
DROP TABLE IF EXISTS `trn_clothes`;
CREATE TABLE `trn_clothes`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `short_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cost` float(11, 2) NULL DEFAULT NULL,
  `selling_price` float(11, 2) NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `size` enum('M','XS','S','L','XL','XXL','XXXL') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `brand_id`(`brand_id`) USING BTREE,
  CONSTRAINT `trn_clothes_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `trn_brands` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trn_clothes
-- ----------------------------
INSERT INTO `trn_clothes` VALUES (28, 'shirtbb', '123123', '123123', 100.00, 215.00, 3, 'tttrrr', 'L');
INSERT INTO `trn_clothes` VALUES (29, 'shirt', '123123', '123123', 100.00, 215.00, 3, 'tttrrr', 'M');
INSERT INTO `trn_clothes` VALUES (30, 'shirt', '123123', '123123', 100.00, 110.00, 4, 'tttrrr', 'M');
INSERT INTO `trn_clothes` VALUES (31, '345', '1234', '20560', 100.00, 115.00, 2, 'red', 'M');
INSERT INTO `trn_clothes` VALUES (32, '345345', 'sampath', '+94788475744', 100.00, 110.00, 4, '12345', 'M');

-- ----------------------------
-- Table structure for trn_users
-- ----------------------------
DROP TABLE IF EXISTS `trn_users`;
CREATE TABLE `trn_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trn_users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'janaka', 'janaka@email.com', NULL, '$2y$10$AJ6abfA/2bGTTO3.DnBdIOmvE3U5GvEF.JrAULQ17F0qUgpRtwexC', NULL, '2019-11-19 15:05:33', '2019-11-19 15:05:33');

SET FOREIGN_KEY_CHECKS = 1;
