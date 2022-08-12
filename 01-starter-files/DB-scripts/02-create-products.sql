-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Burgers');
INSERT INTO product_category(category_name) VALUES ('Pizzas');
INSERT INTO product_category(category_name) VALUES ('Beverages');
INSERT INTO product_category(category_name) VALUES ('Snacks');

-- -----------------------------------------------------
-- Burgers
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1000', 'Burger Bistro', 'Juicy, big, loaded with toppings of my choice.', 'assets/images/products/burgers/burger-1000.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1001', 'Smokin Burger', 'Juicy, big, loaded with toppings of my choice.', 'assets/images/products/burgers/burger-1001.png', 1, 100, 20.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1002', 'Euphoria Burger', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger6.png?alt=media&token=f2b8febd-f0f8-48d7-9e1a-72d26b7bb36b', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1003', 'Sassy Burger', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger5.png?alt=media&token=e8963c79-af46-4f33-a28d-059f98f464e3', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1004', 'Jazz Burger', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger4.png?alt=media&token=f219c72c-22b5-484a-9135-34bbb84e7faa', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1005', 'Healthy Buns', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger5.png?alt=media&token=e8963c79-af46-4f33-a28d-059f98f464e3', 1, 100, 23.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1006', 'Burger Crave', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger6.png?alt=media&token=f2b8febd-f0f8-48d7-9e1a-72d26b7bb36b', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1007', 'Cheese Grilled', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger3.png?alt=media&token=0ebe8311-6378-411b-9b6e-d7a6d2a106a2', 1, 100, 16.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1008', 'Chicken Tops ', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger2.png?alt=media&token=b256ed7a-fe35-4051-9bf5-24f39b79f2b2', 1, 100, 25.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BURGER-1009', 'Cheese Lettuce', 'Juicy, big, loaded with toppings of my choice.', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fburger1.png?alt=media&token=319dfbe9-462b-46ea-8f38-6ca7a20319e0', 1, 100, 23.99, 1, NOW());

-- -----------------------------------------------------
-- Pzzas
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1000', 'Pizza - Margherita', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'assets/images/products/pizzas/pizza-1000.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1001', 'Pizza - Peppy Paneer', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'assets/images/products/pizzas/pizza-1001.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1002', 'Pizza - Double Cheese', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fpizza1.png?alt=media&token=7ffbc681-5d86-4429-888b-9597f3e800e8', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1003', 'Pizza - Farm House', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fpizza2.png?alt=media&token=e9b65d7f-bd12-4c33-b172-729f1dfcf461', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1004', 'Pizza - Veg Extrava', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fpizza3.png?alt=media&token=4dea85ad-c36d-405a-adcd-a9dfd0c63a6a', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1005', 'Pizza - Deluxe Veggie', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fpizza4.png?alt=media&token=1e5259ff-3431-4c76-830e-80e9d7dcc01e', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1006', 'Pizza - Worthing', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fpizza5.png?alt=media&token=42bafbe4-f993-4aeb-93ee-57ea04b7cf1b', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1007', 'Pizza - Tacho', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fpizza6.png?alt=media&token=72a1e335-68d0-4b1c-8bbd-f28c656ce3b5', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1008', 'Pizza - Tachyon', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'https://firebasestorage.googleapis.com/v0/b/food-delivery-37c59.appspot.com/o/Images%2Fpizza2.png?alt=media&token=e9b65d7f-bd12-4c33-b172-729f1dfcf461', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('PIZZA-1009', 'Pizza - Pan Corn', 'Flattened bread dough spread with a savory mixture usually including tomatoes and cheese and more!', 'assets/images/products/pizzas/pizza-1000.png', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
-- Beverages
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1000', 'Lemonade', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1000.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1001', 'Coca-Cola', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1001.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1002', 'Blue Curacao Mojito', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1002.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1003', 'Red Bull', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1003.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1004', 'Sprite', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1004.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1005', 'Ice Cola', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1005.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1006', 'Monster Energy', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1006.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1007', 'Pepsi', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1007.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1008', 'Sting', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1008.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('BEVERAGE-1009', 'Mocktail', 'Mild, Pleasant. Try it now!', 'assets/images/products/beverages/beverage-1009.png', 1, 100, 17.99, 3, NOW());
-- -----------------------------------------------------
-- snacks
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1000', 'Popcorn', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1000.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1001', 'Cookies', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1001.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1002', 'Aloo Chaat', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1002.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1003', 'Chips-Cheetos', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1003.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1004', 'Potato Fries', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1004.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1005', 'BBQ Almonds', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1005.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1006', 'Samosas', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1006.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1007', 'BBQ Prawns', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1007.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1008', 'Grilled Chicken Wings', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1008.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('SNACK-1009', 'Pops twister fries', 'A snack is a small serving of food between meals. Try it now!', 'assets/images/products/snacks/snack-1009.png', 1, 100, 16.99, 4, NOW());

