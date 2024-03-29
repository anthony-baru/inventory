/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100139
 Source Host           : localhost:3306
 Source Schema         : testing2

 Target Server Type    : MariaDB
 Target Server Version : 100139
 File Encoding         : 65001

 Date: 06/11/2019 15:43:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `brand_status` enum('active','inactive') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 1, 'Finibus', 'active');
INSERT INTO `brand` VALUES (2, 1, 'Lorem', 'active');
INSERT INTO `brand` VALUES (3, 1, 'Ipsum', 'active');
INSERT INTO `brand` VALUES (4, 8, 'Dolor', 'active');
INSERT INTO `brand` VALUES (5, 8, 'Amet', 'active');
INSERT INTO `brand` VALUES (6, 6, 'Aliquam', 'active');
INSERT INTO `brand` VALUES (7, 6, 'Maximus', 'active');
INSERT INTO `brand` VALUES (8, 10, 'Venenatis', 'active');
INSERT INTO `brand` VALUES (9, 10, 'Ligula', 'active');
INSERT INTO `brand` VALUES (10, 3, 'Vitae', 'active');
INSERT INTO `brand` VALUES (11, 3, 'Auctor', 'active');
INSERT INTO `brand` VALUES (12, 5, 'Luctus', 'active');
INSERT INTO `brand` VALUES (13, 5, 'Justo', 'active');
INSERT INTO `brand` VALUES (14, 2, 'Phasellus', 'active');
INSERT INTO `brand` VALUES (15, 2, 'Viverra', 'active');
INSERT INTO `brand` VALUES (16, 4, 'Elementum', 'active');
INSERT INTO `brand` VALUES (17, 4, 'Odio', 'active');
INSERT INTO `brand` VALUES (18, 7, 'Tellus', 'active');
INSERT INTO `brand` VALUES (19, 7, 'Curabitur', 'active');
INSERT INTO `brand` VALUES (20, 9, 'Commodo', 'active');
INSERT INTO `brand` VALUES (21, 9, 'Nullam', 'active');
INSERT INTO `brand` VALUES (22, 11, 'Quisques', 'active');
INSERT INTO `brand` VALUES (24, 11, 'XYZ', 'active');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `category_status` enum('active','inactive') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'LED Bulb', 'active');
INSERT INTO `category` VALUES (2, 'LED Lights', 'active');
INSERT INTO `category` VALUES (3, 'LED Down Lights', 'active');
INSERT INTO `category` VALUES (4, 'LED Panel Light', 'active');
INSERT INTO `category` VALUES (5, 'LED Lamp', 'active');
INSERT INTO `category` VALUES (6, 'LED Concealed Light', 'active');
INSERT INTO `category` VALUES (7, 'LED Spot Light', 'active');
INSERT INTO `category` VALUES (8, 'LED Ceiling Light', 'active');
INSERT INTO `category` VALUES (9, 'LED Tube Light', 'active');
INSERT INTO `category` VALUES (10, 'LED Driver', 'active');
INSERT INTO `category` VALUES (11, 'Led Floods Light', 'active');
INSERT INTO `category` VALUES (13, 'LED Outdoor Lighting', 'active');
INSERT INTO `category` VALUES (14, 'LED Indoor Lights', 'active');

-- ----------------------------
-- Table structure for inventory_order
-- ----------------------------
DROP TABLE IF EXISTS `inventory_order`;
CREATE TABLE `inventory_order`  (
  `inventory_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `inventory_order_total` double(10, 2) NOT NULL,
  `inventory_order_date` date NOT NULL,
  `inventory_order_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inventory_order_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_status` enum('cash','credit') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inventory_order_status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inventory_order_created_date` date NOT NULL,
  PRIMARY KEY (`inventory_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory_order
-- ----------------------------
INSERT INTO `inventory_order` VALUES (1, 7, 4939.20, '2017-11-08', 'David Harper', '3188 Straford Park\r\nHarold, KY 41635', 'credit', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (2, 7, 1310.40, '2017-11-08', 'Trevor Webster', '4275 Indiana Avenue\r\nHonolulu, HI 96816', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (3, 6, 265.65, '2017-11-08', 'Russell Barrett', '4687 Powder House Road\r\nJupiter, FL 33478', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (4, 6, 1546.80, '2017-11-08', 'Doloris Turner', '3057 Collins Avenue\r\nWesterville, OH 43081', 'credit', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (5, 5, 1409.00, '2017-11-08', 'Georgette Blevins', '863 Simpson Avenue\r\nSteelton, PA 17113', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (6, 5, 558.90, '2017-11-08', 'Nancy Brook', '3460 Viking Drive\r\nBarnesville, OH 43713', 'credit', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (7, 4, 1286.25, '2017-11-08', 'Joseph Smith', '190 Metz Lane\r\nCharlestown, MA 02129', 'cash', 'inactive', '2017-11-08');
INSERT INTO `inventory_order` VALUES (8, 4, 1520.00, '2017-11-08', 'Maria Lafleur', '3878 Elkview Drive\r\nPort St Lucie, FL 33452', 'credit', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (9, 4, 1604.00, '2017-11-08', 'David Smith', '4757 Little Acres Lane\r\nLoraine, IL 62349', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (10, 3, 1724.80, '2017-11-08', 'Michelle Hayes', '1140 C Street\r\nWorcester, MA 01609', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (11, 3, 1859.40, '2017-11-08', 'Brenna Hamilton', '2845 Davis Avenue\r\nPetaluma, CA 94952', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (12, 3, 2038.40, '2017-11-08', 'Robbie McKenzie', '3016 Horizon Circle\r\nEatonville, WA 98328', 'credit', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (13, 2, 573.00, '2017-11-08', 'Jonathan Allen', '2426 Evergreen Lane\r\nAlhambra, CA 91801', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (14, 2, 1196.35, '2017-11-08', 'Mildred Paige', '3167 Oakway Lane\r\nReseda, CA 91335', 'cash', 'inactive', '2017-11-08');
INSERT INTO `inventory_order` VALUES (15, 2, 1960.00, '2017-11-08', 'Elva Lott', '4032 Aaron Smith Drive\r\nHarrisburg, PA 17111', 'credit', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (16, 2, 2700.00, '2017-11-08', 'Eric Johnson', '616 Devils Hill Road\r\nJackson, MS 39213', 'cash', 'active', '2017-11-08');
INSERT INTO `inventory_order` VALUES (17, 1, 5615.20, '2017-11-09', 'Doris Oliver', '2992 Sycamore Fork Road Hopkins, MN 55343', 'cash', 'inactive', '2017-11-09');
INSERT INTO `inventory_order` VALUES (26, 1, 2278.50, '2017-11-27', 'Janet Richardsons', '4799 Ryder Avenue Everett, WA 98210', 'credit', 'inactive', '2017-11-27');
INSERT INTO `inventory_order` VALUES (27, 1, 0.00, '2019-11-22', 'Sam', '1st street', 'cash', 'active', '2019-11-05');
INSERT INTO `inventory_order` VALUES (28, 1, 4760000.00, '2019-11-21', 'John Doe', '1st street', 'cash', 'inactive', '2019-11-05');

-- ----------------------------
-- Table structure for inventory_order_product
-- ----------------------------
DROP TABLE IF EXISTS `inventory_order_product`;
CREATE TABLE `inventory_order_product`  (
  `inventory_order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10, 2) NOT NULL,
  `tax` double(10, 2) NOT NULL,
  PRIMARY KEY (`inventory_order_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory_order_product
-- ----------------------------
INSERT INTO `inventory_order_product` VALUES (3, 1, 1, 10, 141.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (4, 1, 3, 4, 800.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (5, 2, 2, 3, 350.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (6, 2, 17, 2, 60.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (7, 3, 15, 1, 125.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (8, 3, 17, 2, 60.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (12, 4, 18, 4, 90.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (13, 4, 20, 3, 100.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (14, 4, 1, 5, 141.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (15, 5, 4, 2, 550.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (16, 5, 10, 1, 150.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (17, 6, 8, 5, 15.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (18, 6, 7, 2, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (19, 7, 16, 7, 175.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (23, 8, 19, 5, 120.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (24, 8, 11, 5, 85.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (25, 8, 12, 5, 60.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (26, 9, 13, 3, 200.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (27, 9, 9, 2, 400.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (28, 10, 9, 3, 400.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (29, 10, 11, 4, 85.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (30, 11, 6, 6, 250.00, 15.00);
INSERT INTO `inventory_order_product` VALUES (31, 11, 12, 2, 60.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (32, 12, 2, 4, 350.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (33, 12, 7, 2, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (34, 13, 18, 3, 90.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (35, 13, 7, 1, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (36, 13, 8, 2, 15.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (37, 14, 6, 2, 250.00, 15.00);
INSERT INTO `inventory_order_product` VALUES (38, 14, 13, 1, 200.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (39, 14, 16, 1, 175.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (40, 14, 17, 3, 60.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (41, 15, 2, 5, 350.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (42, 16, 4, 4, 550.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (43, 16, 13, 1, 200.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (46, 17, 21, 2, 500.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (47, 17, 3, 5, 800.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (48, 17, 7, 1, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (49, 0, 23, 5, 30.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (50, 0, 12, 5, 60.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (51, 0, 16, 5, 175.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (52, 0, 6, 5, 250.00, 15.00);
INSERT INTO `inventory_order_product` VALUES (53, 0, 16, 5, 175.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (54, 0, 7, 5, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (55, 0, 7, 5, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (56, 0, 7, 5, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (57, 25, 14, 5, 250.00, 18.00);
INSERT INTO `inventory_order_product` VALUES (58, 25, 11, 5, 85.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (79, 26, 16, 6, 175.00, 5.00);
INSERT INTO `inventory_order_product` VALUES (80, 26, 7, 5, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (81, 27, 7, 0, 210.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (82, 27, 11, 0, 85.00, 12.00);
INSERT INTO `inventory_order_product` VALUES (83, 28, 11, 50000, 85.00, 12.00);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_unit` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_base_price` double(10, 2) NOT NULL,
  `product_tax` decimal(4, 2) NOT NULL,
  `product_minimum_order` double(10, 2) NOT NULL,
  `product_enter_by` int(11) NOT NULL,
  `product_status` enum('active','inactive') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_date` date NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 1, 1, '4W LED Bulb', 'Base Type	B22, E27\r\nBulb Material	Aluminium\r\nItem Width	5 (cm)\r\nItem Height	10 (cm)\r\nItem Weight	0.07 (kg)', 100, 'Nos', 141.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (2, 1, 3, '17W B22 LED Bulb', 'Item Height	14.2 (cm)\r\nColor Temperature (Kelvin)	6500\r\nItem Weight	0.19 (kg)\r\nBulb Material	Aluminium\r\nBase Color	Aluminium\r\nVoltage	240\r\nUsages	Household, Commercial, Kitchen', 150, 'Nos', 350.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (3, 8, 5, '18W LED Ceiling Light', 'Round Ceiling Light 18w', 75, 'Nos', 800.00, 5.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (4, 8, 4, 'Round LED Ceiling Light', 'Relying on our expertise in this domain, we are into offering Round LED Ceiling Light.	', 50, 'Nos', 550.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (5, 6, 6, '7W LED Concealed Light', 'Dimension \'3\" \'\r\n50000 hours burning life\r\ncost effective\r\nhigh quality led', 85, 'Nos', 240.00, 15.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (6, 6, 7, '9w LED Concealed Light', 'dimension \'3\" \'\r\n50000 hours burning life\r\ncost effective\r\nhigh quality led', 65, 'Nos', 250.00, 15.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (7, 10, 9, '24W Street Light Led Driver', 'Dc Voltage	36v\r\nRated Current	600ma\r\nRated Power	22w', 120, 'Nos', 210.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (8, 10, 8, 'BP1601 ICs', 'Backed by immense industry-experience & latest designing techniques, we are engaged in providing BP1601 ICs.', 200, 'Nos', 15.00, 18.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (9, 3, 11, '5W LED Square Downlight', 'Wattage: 5 Watt\r\nInput Voltage: 150V to 265V, 50/60Hz\r\nLumens: 500 lumen (approx)\r\nPower Factor: 0.90pf', 50, 'Nos', 400.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (10, 3, 10, '10W LED Square Downlight', 'Wattage: 10 Watt\r\nInput Voltage: 150V to 265V, 50/60Hz\r\nLumens: 1000 lumen (approx)\r\nPower Factor: 0.90pf', 40, 'Nos', 150.00, 18.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (11, 5, 13, ' 9w Deluxe LED Lamp', 'Lighting Color	Cool Daylight\r\nBase Type	B22', 100, 'Nos', 85.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (12, 5, 12, '5w LED Lamp', 'Lighting Color	Cool Daylight\r\nBody Material	Aluminum\r\nBase Type	B22', 75, 'Nos', 60.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (13, 2, 14, '15W Big LED Bay Light', 'Wattage: 15 Watt\r\nInput Voltage: 100V - 265V, 50/60Hz\r\nLumens: 1500 lumen (approx)\r\nPower Factor: 0.90pf', 60, 'Nos', 200.00, 18.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (14, 2, 15, '15W Small LED Bay Light', 'Wattage: 15 Watt\r\nInput Voltage: 100V -265V, 50/60Hz\r\nLumens: 1500 lumen (approx)\r\nPower Factor: 0.90pf', 55, 'Nos', 250.00, 18.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (15, 4, 16, '12W LED Panel Light', 'Body Material	Aluminum\r\nLighting Type	LED\r\nApplications	Hotel, House, etc', 85, 'Nos', 125.00, 5.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (16, 4, 17, '15W LED Panel Light', 'IP Rating	IP40\r\nBody Material	Aluminum\r\nLighting Type	LED', 40, 'Nos', 175.00, 5.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (17, 7, 19, '3W Round LED Spotlight', 'Lighting Color	Cool White\r\nBody Material	Aluminum\r\nCertification	ISO\r\nInput Voltage(V)	12 V\r\nIP Rating	IP33, IP40, IP44', 100, 'Nos', 60.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (18, 7, 18, '3W Square LED Spotlight', 'Lighting Color	Cool White\r\nBody Material	Aluminum\r\nInput Voltage(V)	12 V\r\nIP Rating	IP33, IP40', 85, 'Nos', 90.00, 12.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (19, 9, 20, '18W LED Tube Light', 'Tube Base Type	T5\r\nIP Rating	IP66', 180, 'Nos', 120.00, 18.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (20, 9, 21, '10W Ready Tube Light', 'Body Material	Aluminum, Ceramic\r\nPower	10W', 200, 'Nos', 100.00, 18.00, 0.00, 1, 'active', '2017-11-08');
INSERT INTO `product` VALUES (21, 11, 22, '90W LED Flood Lights', 'Lighting Color	Cool White, Pure White, Warm White\r\nBody Material	Ceramic, Chrome, Iron\r\nIP Rating	IP33, IP40, IP44, IP55, IP66', 20, 'Nos', 500.00, 18.00, 0.00, 1, 'active', '2017-11-09');
INSERT INTO `product` VALUES (23, 1, 3, '15 Watt LED Bulb', '15 Watt LED Bulb', 150, 'Nos', 30.00, 12.00, 0.00, 1, 'active', '2017-11-21');

-- ----------------------------
-- Table structure for user_details
-- ----------------------------
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_password` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_type` enum('master','user') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_status` enum('Active','Inactive') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_details
-- ----------------------------
INSERT INTO `user_details` VALUES (1, 'john_smith@gmail.com', '$2y$10$0Yo2F.EetL3yhB8l6MNvcOH8AYNS0SuXLOoAQr1qXJa3uPASWV0NC', 'John Smith', 'master', 'Active');
INSERT INTO `user_details` VALUES (2, 'donahuber@gmail.com', '$2y$10$Ex.JTn6Cu7lCHgaJoCBVeu0qer0cFp2X1qTIpPg2qfIkkuj3LjjMK', 'Dona L. Huber', 'user', 'Active');
INSERT INTO `user_details` VALUES (3, 'roy_hise@gmail.com', '$2y$10$XlyVI9an5B6rHW3SS9vQpesJssKJxzMQYPbSaR7dnpWjDI5fpxJSS', 'Roy Hise', 'user', 'Active');
INSERT INTO `user_details` VALUES (4, 'peter_goad@gmail.com', '$2y$10$n1B.FdHNwufTkmzp/pNqc.EiwjB8quQ1tBCEC7nkaldI5pS.et04e', 'Peter Goad', 'user', 'Active');
INSERT INTO `user_details` VALUES (5, 'sarah_thomas@gmail.com', '$2y$10$s57SErOPlgkIZf1lxzlX3.hMt8LSSKaYig5rusxghDm7LW8RtQc/W', 'Sarah Thomas', 'user', 'Active');
INSERT INTO `user_details` VALUES (6, 'edna_william@gmail.com', '$2y$10$mfMXnH.TCmg5tlYRhqjxu.ILly8s9.qsLKOpyxgUl6h1fZt6x/B5C', 'Edna William', 'user', 'Active');
INSERT INTO `user_details` VALUES (8, 'john_parks@gmail.com', '$2y$10$WtsZUxIIz/N4NoIW0Db.pu0VfLWcPs6TyQ8SkpVHLDLGhdNOfALC.', 'John Park', 'user', 'Active');
INSERT INTO `user_details` VALUES (10, 'peter_parker@gmail.com', '$2y$10$GoQvEZNTWEibo0FPK7h57eA5UsNkXfIdex1deGsW/CFIY8zqxyu2S', 'Mark Parker', 'user', 'Active');
INSERT INTO `user_details` VALUES (11, 'anthonybaru@gmail.com', '$2y$10$Nd9N9AePfiO4xpE6F2wGJuvAuggUx0RxbSkvZdj3yWbqpCJcPagdO', 'anthony baru', 'user', 'Active');
INSERT INTO `user_details` VALUES (12, 'sam@gmail.com', '$2y$10$qcF/yg3zGE0z3bFc3JogkewyFx4c99vyCcknWYDScFnw711Kx3/.u', 'sam', 'user', 'Active');

SET FOREIGN_KEY_CHECKS = 1;
