CREATE TABLE `Products` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`alias` VARCHAR(255) NOT NULL,
	`price` INT NOT NULL DEFAULT '0',
	`quantity` INT NOT NULL DEFAULT '0',
	`group_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Products groups` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`alias` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`category_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Categories` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`alias` VARCHAR(255) NOT NULL,
	`left` INT NOT NULL,
	`right` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attributes` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`attribute_type_id` INT NOT NULL,
	`attributable_id` INT NOT NULL,
	`attributable_type` VARCHAR(255) NOT NULL,
	`value_id` INT NOT NULL,
	`value_type` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attributes_values_text` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`value` VARCHAR(255) NOT NULL,
	`html` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attributes_types` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`alias` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attributes_values_link` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`value` VARCHAR(255) NOT NULL,
	`url` VARCHAR(255) NOT NULL,
	`html` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attributes_values_number` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`value` INT NOT NULL,
	`html` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attributes_values_range` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`from` DECIMAL NOT NULL,
	`to` DECIMAL NOT NULL,
	`html` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `options` (
	`id` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `orders` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`subtotal` INT NOT NULL,
	`shipping` INT NOT NULL,
	`total` INT NOT NULL,
	`tax` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `order_item` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`order_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`price` INT NOT NULL,
	`shipping_price` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `coupones` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`coupon_type_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `coupones_types` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);
