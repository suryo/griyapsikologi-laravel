/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : mylaracool

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 18/09/2022 10:21:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 0_product_models
-- ----------------------------
DROP TABLE IF EXISTS `0_product_models`;
CREATE TABLE `0_product_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_category_product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 0_product_models
-- ----------------------------
INSERT INTO `0_product_models` VALUES (1, '1', 'supresso luwak', 'uuuu', '2022-09-15 14:46:41', '2022-09-15 09:24:21');
INSERT INTO `0_product_models` VALUES (2, '2', 'umbre', 'test3', '2022-09-15 08:51:29', '2022-09-15 08:51:29');
INSERT INTO `0_product_models` VALUES (3, '2', 'costa rica', 'test4', '2022-09-15 08:52:05', '2022-09-15 08:52:05');
INSERT INTO `0_product_models` VALUES (4, '2', 'brazilia', 'test5', '2022-09-15 08:52:41', '2022-09-15 08:52:41');
INSERT INTO `0_product_models` VALUES (5, '2', 'mix blend', 'qwer', '2022-09-15 08:53:46', '2022-09-15 09:13:57');
INSERT INTO `0_product_models` VALUES (6, '6', 'flores', 'tes', '2022-09-15 09:17:40', '2022-09-15 09:17:40');
INSERT INTO `0_product_models` VALUES (7, '34', '44444444', NULL, '2022-09-15 09:18:39', '2022-09-15 09:18:39');
INSERT INTO `0_product_models` VALUES (8, 'asd', 'asd', 'asd', '2022-09-15 09:18:52', '2022-09-15 09:18:52');
INSERT INTO `0_product_models` VALUES (9, 'asd', 'rty', 'rty', '2022-09-15 09:19:01', '2022-09-15 09:19:01');
INSERT INTO `0_product_models` VALUES (10, 'asd', 'hj', 'ghj', '2022-09-15 09:24:13', '2022-09-15 09:24:13');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_09_16_060614_create_permission_tables', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'role-list', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (2, 'role-create', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (3, 'role-edit', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (4, 'role-delete', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (5, 'product-list', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (6, 'product-create', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (7, 'product-edit', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (8, 'product-delete', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (9, 'permission-list', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (10, 'permission-create', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (11, 'permission-edit', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (12, 'permission-delete', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (13, 'menu-permission', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');

-- ----------------------------
-- Table structure for product_barcode_models
-- ----------------------------
DROP TABLE IF EXISTS `product_barcode_models`;
CREATE TABLE `product_barcode_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_barcode_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_barcode_sku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_barcode_vend` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_barcode_barcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_barcode`(`product_code` ASC) USING BTREE,
  CONSTRAINT `product_barcode_models_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `product_models` (`product_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_barcode_models
-- ----------------------------

-- ----------------------------
-- Table structure for product_category_models
-- ----------------------------
DROP TABLE IF EXISTS `product_category_models`;
CREATE TABLE `product_category_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_category_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_category_code`(`product_category_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_category_models
-- ----------------------------
INSERT INTO `product_category_models` VALUES (1, '123', 'coffee', NULL);
INSERT INTO `product_category_models` VALUES (2, '124', 'machine', NULL);
INSERT INTO `product_category_models` VALUES (3, '125', 'accessories', NULL);

-- ----------------------------
-- Table structure for product_discount_models
-- ----------------------------
DROP TABLE IF EXISTS `product_discount_models`;
CREATE TABLE `product_discount_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_discount_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_discount_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_discount_currency` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_discount_value` double NOT NULL,
  `product_discount_start` datetime NOT NULL,
  `product_discount_end` datetime NOT NULL,
  `product_discount_valid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_discount_status` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_code`(`product_code` ASC) USING BTREE,
  CONSTRAINT `product_discount_models_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `product_models` (`product_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_discount_models
-- ----------------------------

-- ----------------------------
-- Table structure for product_img_models
-- ----------------------------
DROP TABLE IF EXISTS `product_img_models`;
CREATE TABLE `product_img_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_img_src` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_img_priority` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_img`(`product_code` ASC) USING BTREE,
  CONSTRAINT `product_img_models_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `product_models` (`product_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_img_models
-- ----------------------------

-- ----------------------------
-- Table structure for product_models
-- ----------------------------
DROP TABLE IF EXISTS `product_models`;
CREATE TABLE `product_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_brand` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_variant` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_shortdesc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_weight` double NOT NULL,
  `product_length` double NOT NULL,
  `product_width` double NOT NULL,
  `product_height` double NOT NULL,
  `product_category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_product`(`product_category_code` ASC) USING BTREE,
  INDEX `product_code`(`product_code` ASC) USING BTREE,
  CONSTRAINT `product_models_ibfk_1` FOREIGN KEY (`product_category_code`) REFERENCES `product_category_models` (`product_category_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_models
-- ----------------------------
INSERT INTO `product_models` VALUES (1, '8993320116808', 'supresso', 'aceh gayo', '', NULL, NULL, 0, 0, 0, 0, '123', NULL, NULL);
INSERT INTO `product_models` VALUES (2, '8993320882321', 'ucafe', 'pure coffee', '', NULL, NULL, 0, 0, 0, 0, '123', NULL, NULL);

-- ----------------------------
-- Table structure for product_price_models
-- ----------------------------
DROP TABLE IF EXISTS `product_price_models`;
CREATE TABLE `product_price_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_price_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price_currency` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price_value` double NOT NULL,
  `product_price_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_prices`(`product_code` ASC) USING BTREE,
  CONSTRAINT `product_price_models_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `product_models` (`product_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_price_models
-- ----------------------------

-- ----------------------------
-- Table structure for product_url_models
-- ----------------------------
DROP TABLE IF EXISTS `product_url_models`;
CREATE TABLE `product_url_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_url_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_url_website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_url_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_url`(`product_code` ASC) USING BTREE,
  CONSTRAINT `product_url_models_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `product_models` (`product_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_url_models
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (5, 2);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'web', '2022-09-16 08:26:44', '2022-09-16 08:26:44');
INSERT INTO `roles` VALUES (2, 'staff', 'web', '2022-09-16 08:36:15', '2022-09-16 08:36:15');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Hardik Savani', 'admin@gmail.com', NULL, '$2y$10$d/zDcHAcZPMi5ynYOXQUFud7692E/9ekSf3CI80z3EcNdiCRwgpDm', NULL, '2022-09-16 08:26:44', '2022-09-16 08:26:44');
INSERT INTO `users` VALUES (2, 'staff', 'dm@indraco.com', NULL, '$2y$10$yPwdRFYrpaRNIzJNv3zLcuhMaq/kBGTVG5EMTBWML1tm69qlLqTlG', NULL, '2022-09-16 08:36:35', '2022-09-16 08:36:35');
INSERT INTO `users` VALUES (3, 'asikin', 'asikin@asik.com', NULL, '$2y$10$AEvwlrJegigHuOMx0xgTZOuIXC8q/2lWSIjQvU1PZzOjibza3YbAq', NULL, '2022-09-16 08:53:02', '2022-09-16 08:53:02');

SET FOREIGN_KEY_CHECKS = 1;
