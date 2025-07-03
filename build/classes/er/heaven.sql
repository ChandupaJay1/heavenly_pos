/*
 Navicat Premium Dump SQL

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : heaven

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 02/07/2025 22:35:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idcategory`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (4, 'Kottu', 'active');
INSERT INTO `category` VALUES (5, 'Rice', 'active');
INSERT INTO `category` VALUES (6, 'Noodles', 'active');
INSERT INTO `category` VALUES (7, 'Dishes', 'active');
INSERT INTO `category` VALUES (8, 'Special Noodles', 'active');
INSERT INTO `category` VALUES (9, 'Kottu Special', 'active');
INSERT INTO `category` VALUES (10, 'Special Rice', 'active');
INSERT INTO `category` VALUES (11, 'Chopsey', 'active');
INSERT INTO `category` VALUES (12, 'Chopsey Rice', 'active');
INSERT INTO `category` VALUES (13, 'Set Menu', 'active');
INSERT INTO `category` VALUES (14, 'Starters', 'active');
INSERT INTO `category` VALUES (15, 'Soup', 'active');
INSERT INTO `category` VALUES (16, 'Special Beverages', 'active');
INSERT INTO `category` VALUES (17, 'Fresh Juice', 'active');
INSERT INTO `category` VALUES (18, 'Mojito', 'active');
INSERT INTO `category` VALUES (19, 'Dessert', 'active');

-- ----------------------------
-- Table structure for category_backup
-- ----------------------------
DROP TABLE IF EXISTS `category_backup`;
CREATE TABLE `category_backup`  (
  `idcategory` int NOT NULL DEFAULT 0,
  `categoryname` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_backup
-- ----------------------------
INSERT INTO `category_backup` VALUES (4, 'Kottu', 'active');
INSERT INTO `category_backup` VALUES (5, 'Rice', 'active');
INSERT INTO `category_backup` VALUES (6, 'Noodles', 'active');
INSERT INTO `category_backup` VALUES (7, 'Dishes', 'active');
INSERT INTO `category_backup` VALUES (8, 'Special Noodles', 'active');
INSERT INTO `category_backup` VALUES (9, 'Kottu Special', 'active');
INSERT INTO `category_backup` VALUES (10, 'Special Rice', 'active');
INSERT INTO `category_backup` VALUES (11, 'Chopsey', 'active');
INSERT INTO `category_backup` VALUES (12, 'Chopsey Rice', 'active');
INSERT INTO `category_backup` VALUES (13, 'Set Menu', 'active');
INSERT INTO `category_backup` VALUES (14, 'Starters', 'active');
INSERT INTO `category_backup` VALUES (15, 'Soup', 'active');
INSERT INTO `category_backup` VALUES (16, 'Special Beverages', 'active');
INSERT INTO `category_backup` VALUES (17, 'Fresh Juice', 'active');
INSERT INTO `category_backup` VALUES (18, 'Mojito', 'active');
INSERT INTO `category_backup` VALUES (19, 'Dessert', 'active');

-- ----------------------------
-- Table structure for grn
-- ----------------------------
DROP TABLE IF EXISTS `grn`;
CREATE TABLE `grn`  (
  `idGRN` int NOT NULL,
  `GRNcol` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idGRN`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grn
-- ----------------------------

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int NOT NULL,
  `subtotal` decimal(10, 2) NOT NULL,
  `service_charge` decimal(10, 2) NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  `paid` decimal(10, 2) NOT NULL,
  `balance` decimal(10, 2) NOT NULL,
  `is_dine_in` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `invoice_number`(`invoice_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES (1, '1', 1, 1000.00, 200.00, 1200.00, 1200.00, 0.00, 1, '2025-07-02 04:30:17');
INSERT INTO `invoice` VALUES (2, '2', 1, 2460.00, 246.00, 2706.00, 3000.00, 294.00, 0, '2025-07-02 05:37:05');
INSERT INTO `invoice` VALUES (3, '3', 1, 2460.00, 246.00, 2706.00, 3000.00, 294.00, 1, '2025-07-02 11:30:34');
INSERT INTO `invoice` VALUES (4, '4', 1, 4500.00, 450.00, 4950.00, 5000.00, 50.00, 0, '2025-07-02 11:34:11');
INSERT INTO `invoice` VALUES (5, '5', 1, 3690.00, 369.00, 4059.00, 5000.00, 941.00, 0, '2025-07-02 11:38:11');
INSERT INTO `invoice` VALUES (6, '6', 1, 3690.00, 369.00, 4059.00, 5000.00, 941.00, 0, '2025-07-02 12:10:15');
INSERT INTO `invoice` VALUES (7, '7', 1, 4920.00, 492.00, 5412.00, 6000.00, 588.00, 0, '2025-07-02 12:16:56');
INSERT INTO `invoice` VALUES (8, '8', 1, 3690.00, 369.00, 4059.00, 5000.00, 941.00, 0, '2025-07-02 12:20:51');
INSERT INTO `invoice` VALUES (9, '9', 1, 4500.00, 450.00, 4950.00, 5000.00, 50.00, 0, '2025-07-02 14:03:06');
INSERT INTO `invoice` VALUES (10, '10', 2, 4500.00, 450.00, 4950.00, 5000.00, 50.00, 0, '2025-07-02 14:16:41');
INSERT INTO `invoice` VALUES (17, '11', 1, 1230.00, 123.00, 1353.00, 2000.00, 647.00, 0, '2025-07-02 16:01:21');
INSERT INTO `invoice` VALUES (18, '18', 2, 1230.00, 123.00, 1353.00, 2000.00, 647.00, 0, '2025-07-02 16:19:51');
INSERT INTO `invoice` VALUES (19, '19', 1, 1230.00, 123.00, 1353.00, 2000.00, 647.00, 0, '2025-07-02 16:23:32');
INSERT INTO `invoice` VALUES (20, '20', 2, 1230.00, 123.00, 1353.00, 5000.00, 3647.00, 0, '2025-07-02 16:29:49');
INSERT INTO `invoice` VALUES (23, '21', 1, 3690.00, 369.00, 4059.00, 5000.00, 941.00, 0, '2025-07-02 21:10:17');
INSERT INTO `invoice` VALUES (24, '24', 1, 3690.00, 369.00, 4059.00, 5000.00, 941.00, 0, '2025-07-02 21:16:02');
INSERT INTO `invoice` VALUES (25, '25', 1, 3690.00, 369.00, 4059.00, 5000.00, 941.00, 0, '2025-07-02 21:45:39');
INSERT INTO `invoice` VALUES (26, '26', 1, 2100.00, 210.00, 2310.00, 3000.00, 690.00, 0, '2025-07-02 22:29:25');

-- ----------------------------
-- Table structure for invoice_item
-- ----------------------------
DROP TABLE IF EXISTS `invoice_item`;
CREATE TABLE `invoice_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `product_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `portion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10, 2) NOT NULL,
  `total_price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE,
  CONSTRAINT `invoice_item_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_item
-- ----------------------------
INSERT INTO `invoice_item` VALUES (2, 1, '1', 'KOTTU', 'FULL', 1, 1200.00, 1200.00);
INSERT INTO `invoice_item` VALUES (3, 2, '2', 'Noodles', 'half', 2, 1230.00, 2460.00);
INSERT INTO `invoice_item` VALUES (4, 3, '2', 'Noodles', 'half', 2, 1230.00, 2460.00);
INSERT INTO `invoice_item` VALUES (5, 4, '1', 'KOTTU', 'Full', 3, 1500.00, 4500.00);
INSERT INTO `invoice_item` VALUES (6, 5, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (7, 6, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (8, 7, '2', 'Noodles', 'half', 4, 1230.00, 4920.00);
INSERT INTO `invoice_item` VALUES (9, 8, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (10, 9, '1', 'KOTTU', 'Full', 3, 1500.00, 4500.00);
INSERT INTO `invoice_item` VALUES (11, 10, '1', 'KOTTU', 'Full', 3, 1500.00, 4500.00);
INSERT INTO `invoice_item` VALUES (14, 17, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (15, 18, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (16, 19, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (17, 20, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (18, 23, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (19, 24, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (20, 25, '2', 'Noodles', 'half', 3, 1230.00, 3690.00);
INSERT INTO `invoice_item` VALUES (21, 26, '1', 'Egg', 'Full', 2, 700.00, 1400.00);
INSERT INTO `invoice_item` VALUES (22, 26, '1', 'Egg', 'Full', 1, 700.00, 700.00);

-- ----------------------------
-- Table structure for kot
-- ----------------------------
DROP TABLE IF EXISTS `kot`;
CREATE TABLE `kot`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoice_id`(`invoice_id` ASC) USING BTREE,
  CONSTRAINT `kot_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kot
-- ----------------------------
INSERT INTO `kot` VALUES (1, 1, 'Active', '2025-07-02 04:33:12');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `idproducts` int NOT NULL AUTO_INCREMENT,
  `category_idcategory` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `portion` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `description` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cost` double NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idproducts`) USING BTREE,
  INDEX `fk_products_category_idx`(`category_idcategory` ASC) USING BTREE,
  CONSTRAINT `fk_products_category` FOREIGN KEY (`category_idcategory`) REFERENCES `category` (`idcategory`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 4, 'Egg', 'Full', 'not available', 0, 700, 'active');
INSERT INTO `products` VALUES (2, 4, 'Chicken', 'Full', 'N/A', 0, 800, 'active');
INSERT INTO `products` VALUES (3, 4, 'Seafood', 'Full', 'N/A', 0, 1000, 'active');
INSERT INTO `products` VALUES (4, 4, 'Mixed', 'Full', '(egg,chicken,cuttle fish,fish,pork,sausage)', 0, 12000, 'active');
INSERT INTO `products` VALUES (5, 4, 'Cheese  Addition', 'Other', 'Add cheese', 0, 250, 'active');
INSERT INTO `products` VALUES (6, 4, 'Egg', 'Half', 'N/A', 0, 500, 'active');
INSERT INTO `products` VALUES (7, 4, 'Chicken', 'Half', 'N/A', 0, 600, 'active');
INSERT INTO `products` VALUES (8, 4, 'Seafood', 'Half', 'N/A', 0, 800, 'active');
INSERT INTO `products` VALUES (9, 4, 'Mixed', 'Half', '(egg,chicken,cuttle fish,fish,pork,sausage)', 0, 1000, 'active');
INSERT INTO `products` VALUES (10, 5, 'Vegetable', 'Full', 'N/A', 0, 500, 'active');
INSERT INTO `products` VALUES (11, 5, 'Egg', 'Full', 'N/A', 0, 650, 'active');
INSERT INTO `products` VALUES (12, 5, 'Chicken', 'Full', 'N/A', 0, 700, 'active');
INSERT INTO `products` VALUES (13, 5, 'Sea Food', 'Full', 'N/A', 0, 850, 'active');
INSERT INTO `products` VALUES (14, 5, 'Mixed', 'Full', 'mix meat', 0, 1000, 'active');
INSERT INTO `products` VALUES (15, 5, 'Vegetable', 'Half', 'N/A', 0, 300, 'active');
INSERT INTO `products` VALUES (16, 5, 'Egg', 'Half', 'N/A', 0, 450, 'active');
INSERT INTO `products` VALUES (17, 5, 'Chicken', 'Half', 'N/A', 0, 500, 'active');
INSERT INTO `products` VALUES (18, 5, 'Mixed', 'Half', 'mix meat', 0, 800, 'active');
INSERT INTO `products` VALUES (19, 6, 'Vegetable', 'Full', 'N/A', 0, 500, 'active');
INSERT INTO `products` VALUES (20, 6, 'Egg', 'Full', 'N/A', 0, 650, 'active');
INSERT INTO `products` VALUES (21, 6, 'Chicken', 'Full', 'N/A', 0, 700, 'active');
INSERT INTO `products` VALUES (22, 6, 'Sea Food', 'Full', 'N/A', 0, 850, 'active');
INSERT INTO `products` VALUES (23, 6, 'Mixed', 'Full', 'mix meat', 0, 1000, 'active');
INSERT INTO `products` VALUES (24, 6, 'Vegetable', 'Half', 'N/A', 0, 300, 'active');
INSERT INTO `products` VALUES (25, 6, 'Egg', 'Half', 'N/A', 0, 450, 'active');
INSERT INTO `products` VALUES (26, 6, 'Chicken', 'Half', 'N/A', 0, 500, 'active');
INSERT INTO `products` VALUES (27, 6, 'Sea Food', 'Half', 'N/A', 0, 650, 'active');
INSERT INTO `products` VALUES (28, 6, 'Mixed', 'Half', 'mix meat', 0, 800, 'active');
INSERT INTO `products` VALUES (29, 7, 'Chicken/Fish', 'Other', 'Stew,Curry,Devilled,Fried', 0, 1200, 'active');
INSERT INTO `products` VALUES (30, 7, 'Pork', 'Other', 'Stew,Curry,Devilled,Fried', 0, 1400, 'active');
INSERT INTO `products` VALUES (31, 7, 'Prawns/ Cuttle Fish', 'Other', 'Curry,Devilled,Fried', 0, 1500, 'active');
INSERT INTO `products` VALUES (32, 7, 'Devilled Sausage', 'Other', 'N/A', 0, 800, 'active');
INSERT INTO `products` VALUES (33, 8, 'Thai Noodles Chicken', 'Special', 'N/A', 0, 950, 'active');
INSERT INTO `products` VALUES (34, 8, 'Thai Noodles Seafood', 'Special', 'N/A', 0, 1200, 'active');
INSERT INTO `products` VALUES (35, 8, 'Mongolian Noodles Chicken', 'Special', 'N/A', 0, 950, 'active');
INSERT INTO `products` VALUES (36, 8, 'Mongolian Noodles Seafood', 'Special', 'N/A', 0, 1200, 'active');
INSERT INTO `products` VALUES (37, 9, 'Dolphin Chicken', 'Special', 'N/A', 0, 1600, 'active');
INSERT INTO `products` VALUES (38, 9, 'Dolphin Seafood', 'Special', 'N/A', 0, 1800, 'active');
INSERT INTO `products` VALUES (39, 9, 'Dolphin Mixed', 'Special', 'mix meat ', 0, 2000, 'active');
INSERT INTO `products` VALUES (40, 10, 'Thai Rice Chicken', 'Special', 'N/A', 0, 950, 'active');
INSERT INTO `products` VALUES (41, 10, 'Thai Rice Seafood', 'Special', 'N.A', 0, 1200, 'active');
INSERT INTO `products` VALUES (42, 10, 'Mongolian Rice Chicken', 'Special', 'N/A', 0, 950, 'active');
INSERT INTO `products` VALUES (43, 10, 'Mongolian Rice Seafood', 'Special', 'N/A', 0, 1200, 'active');
INSERT INTO `products` VALUES (44, 10, 'Nasigurang Rice Chicken ', 'Special', 'N/A', 0, 1050, 'active');
INSERT INTO `products` VALUES (45, 10, 'Nasigurang Rice Seafood', 'Special', 'N/A', 0, 1250, 'active');
INSERT INTO `products` VALUES (46, 11, 'Vegetable', 'Other', 'N/A', 0, 1200, 'active');
INSERT INTO `products` VALUES (47, 11, 'Chicken', 'Other', 'N/A', 0, 1500, 'active');
INSERT INTO `products` VALUES (48, 11, 'Seafood', 'Other', 'N/A', 0, 1800, 'active');
INSERT INTO `products` VALUES (49, 11, 'Mixed', 'Other', 'mix meat', 0, 2000, 'active');
INSERT INTO `products` VALUES (50, 12, 'Vegetable', 'Other', 'N/A', 0, 1400, 'active');
INSERT INTO `products` VALUES (51, 12, 'Chicken', 'Other', 'N/A', 0, 1800, 'active');
INSERT INTO `products` VALUES (52, 12, 'Sea Food', 'Full', 'N/A', 0, 2000, 'active');
INSERT INTO `products` VALUES (53, 12, 'Mixed', 'Other', 'mix meat', 0, 2300, 'active');
INSERT INTO `products` VALUES (54, 13, 'Chicken Set Menu(pp)', 'Other', 'N/A', 0, 850, 'active');
INSERT INTO `products` VALUES (55, 13, 'Nasigurang Chicken set menu(pp)', 'Other', 'N/A', 0, 900, 'active');
INSERT INTO `products` VALUES (56, 14, 'French Fries', 'Other', 'N/A', 0, 650, 'active');
INSERT INTO `products` VALUES (57, 14, 'Cheese Cutlet', 'Other', 'N/A', 0, 650, 'active');
INSERT INTO `products` VALUES (58, 15, 'Vegetable', 'Other', 'N/A', 0, 350, 'active');
INSERT INTO `products` VALUES (59, 15, 'Chicken Soup', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (60, 15, 'Chicken Mushroom', 'Other', 'N/A', 0, 450, 'active');
INSERT INTO `products` VALUES (61, 15, 'Chicken & Noodles', 'Full', 'N/A', 0, 450, 'active');
INSERT INTO `products` VALUES (62, 15, 'Seafood Soup', 'Other', 'N/A', 0, 550, 'active');
INSERT INTO `products` VALUES (63, 15, 'Thai Tom Yum', 'Other', 'N/A', 0, 650, 'active');
INSERT INTO `products` VALUES (64, 15, 'Add on Creame', 'Other', 'Add Creame ', 0, 150, 'active');
INSERT INTO `products` VALUES (65, 16, 'Milkshake', 'Other', '(Vanila, Chocolate, Strawberry)', 0, 450, 'active');
INSERT INTO `products` VALUES (66, 16, 'Falooda Special', 'Other', 'not available', 0, 500, 'active');
INSERT INTO `products` VALUES (67, 16, 'Sweet Lassi', 'Other', 'N/A', 0, 450, 'active');
INSERT INTO `products` VALUES (68, 16, 'Banana Smoothie', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (69, 16, 'Mango Smoothie', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (70, 16, 'Pinacalado', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (71, 17, 'Water Melon', 'Other', 'N/A', 0, 200, 'active');
INSERT INTO `products` VALUES (72, 17, 'Avocado', 'Other', 'N/A', 0, 250, 'active');
INSERT INTO `products` VALUES (73, 17, 'Wood Apple', 'Other', 'N/A', 0, 250, 'active');
INSERT INTO `products` VALUES (74, 17, 'Pineapple', 'Other', 'N/A', 0, 300, 'active');
INSERT INTO `products` VALUES (75, 17, 'Papaya', 'Other', 'N/A', 0, 200, 'active');
INSERT INTO `products` VALUES (76, 17, 'Mango', 'Other', 'N/A', 0, 200, 'active');
INSERT INTO `products` VALUES (77, 17, 'Lime', 'Other', 'N/A', 0, 200, 'active');
INSERT INTO `products` VALUES (78, 17, 'Carrot & Orange', 'Other', 'N/A', 0, 450, 'active');
INSERT INTO `products` VALUES (79, 17, 'Orange', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (80, 17, 'Apple & Lime', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (81, 17, 'Star Fruit', 'Other', 'N/A', 0, 200, 'active');
INSERT INTO `products` VALUES (82, 17, 'Cucumber', 'Other', 'N/A', 0, 200, 'active');
INSERT INTO `products` VALUES (83, 17, 'Passion', 'Other', 'N/A', 0, 200, 'active');
INSERT INTO `products` VALUES (84, 18, 'Lime Mojito', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (85, 18, 'Passion Mojito', 'Other', 'N/A', 0, 400, 'active');
INSERT INTO `products` VALUES (86, 18, 'Pineapple Mojito ', 'Other', 'N/A', 0, 450, 'active');
INSERT INTO `products` VALUES (87, 19, 'Fruit Salad', 'Other', 'N/A', 0, 250, 'active');
INSERT INTO `products` VALUES (88, 19, 'Fruit Salad with Ice cream ', 'Other', 'N/A', 0, 300, 'active');
INSERT INTO `products` VALUES (89, 19, 'Ice cream ', 'Other', 'Chocolate, Vanila,Strawberry', 0, 250, 'active');
INSERT INTO `products` VALUES (90, 19, 'Jelly Cup', 'Other', 'N/A', 0, 150, 'active');
INSERT INTO `products` VALUES (91, 19, 'Curd', 'Other', 'N/A', 0, 300, 'active');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `idstock` int NOT NULL AUTO_INCREMENT,
  `productname` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `buyprice` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sellprice` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `quantity` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idstock`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (1, 'kottu', '2', '2', '30', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `lname` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `usertype` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iduser`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', '123456', 'admin', '123', 'admin', 'active');
INSERT INTO `user` VALUES (2, 'user', 'user', '123456', 'user', '123', 'user', 'active');

SET FOREIGN_KEY_CHECKS = 1;
