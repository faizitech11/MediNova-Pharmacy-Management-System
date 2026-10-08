CREATE DATABASE IF NOT EXISTS medinova_pharmacy CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE medinova_pharmacy;
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS payment_transactions,order_items,orders,products,categories,newsletter_subscribers,users;
SET FOREIGN_KEY_CHECKS=1;
CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(120) NOT NULL,email VARCHAR(190) UNIQUE NOT NULL,password VARCHAR(255) NOT NULL,phone VARCHAR(40) NULL,role ENUM('customer','admin') NOT NULL DEFAULT 'customer',created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB;
CREATE TABLE categories (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL UNIQUE,slug VARCHAR(120) NOT NULL UNIQUE,description VARCHAR(255) NULL,image VARCHAR(255) NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB;
CREATE TABLE products (id INT AUTO_INCREMENT PRIMARY KEY,category_id INT NULL,name VARCHAR(180) NOT NULL,slug VARCHAR(200) NOT NULL UNIQUE,description TEXT,price DECIMAL(10,2) NOT NULL,stock INT NOT NULL DEFAULT 0,image VARCHAR(255) NULL,is_featured TINYINT(1) NOT NULL DEFAULT 0,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,FOREIGN KEY(category_id) REFERENCES categories(id) ON DELETE SET NULL) ENGINE=InnoDB;
CREATE TABLE orders (id INT AUTO_INCREMENT PRIMARY KEY,user_id INT NOT NULL,total DECIMAL(10,2) NOT NULL,status ENUM('pending','confirmed','processing','shipped','delivered','cancelled') NOT NULL DEFAULT 'pending',payment_method VARCHAR(40) NOT NULL DEFAULT 'cod',payment_status ENUM('pending','paid','failed') NOT NULL DEFAULT 'pending',shipping_name VARCHAR(120) NOT NULL,shipping_phone VARCHAR(40) NOT NULL,shipping_address TEXT NOT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,FOREIGN KEY(user_id) REFERENCES users(id)) ENGINE=InnoDB;
CREATE TABLE order_items (id INT AUTO_INCREMENT PRIMARY KEY,order_id INT NOT NULL,product_id INT NOT NULL,product_name VARCHAR(180) NOT NULL,price DECIMAL(10,2) NOT NULL,quantity INT NOT NULL,FOREIGN KEY(order_id) REFERENCES orders(id) ON DELETE CASCADE,FOREIGN KEY(product_id) REFERENCES products(id)) ENGINE=InnoDB;
CREATE TABLE payment_transactions (id INT AUTO_INCREMENT PRIMARY KEY,order_id INT NOT NULL,provider VARCHAR(40) NOT NULL,transaction_ref VARCHAR(80) NOT NULL UNIQUE,amount DECIMAL(10,2) NOT NULL,status ENUM('initiated','paid','failed','cancelled') NOT NULL DEFAULT 'initiated',response_code VARCHAR(30) NULL,response_message VARCHAR(255) NULL,raw_response TEXT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,FOREIGN KEY(order_id) REFERENCES orders(id) ON DELETE CASCADE) ENGINE=InnoDB;
CREATE TABLE newsletter_subscribers (id INT AUTO_INCREMENT PRIMARY KEY,email VARCHAR(190) UNIQUE NOT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB;
INSERT INTO categories(name,slug,description) VALUES
('Medicines','medicines','Everyday pharmacy medicines and essentials.'),('Wellness','wellness','Vitamins, supplements and daily wellness.'),('Skincare','skincare','Gentle skincare and personal care.'),('First Aid','first-aid','Home and travel first-aid essentials.'),('Baby Care','baby-care','Everyday baby and mother care products.'),('Personal Care','personal-care','Hygiene and personal care essentials.');
INSERT INTO products(category_id,name,slug,description,price,stock,is_featured) VALUES
(1,'Pain Relief Tablets','pain-relief-tablets','Pharmacy pain relief product. Follow the label and pharmacist guidance.',180,50,1),
(1,'Cold & Flu Relief','cold-flu-relief','Everyday cold and flu support product.',320,35,1),
(2,'Daily Balance Vitamins','daily-balance-vitamins','Everyday vitamin support.',2499,30,1),
(2,'Omega 3 Capsules','omega-3-capsules','Daily omega-3 supplement.',1899,25,1),
(3,'Hydra Calm Serum','hydra-calm-serum','Lightweight hydration serum.',2999,18,1),
(3,'Barrier Repair Cream','barrier-repair-cream','Comforting daily skin barrier cream.',2199,20,1),
(4,'Digital Thermometer','digital-thermometer','Fast digital temperature reading.',899,35,1),
(4,'First Aid Kit','first-aid-kit','Compact home first-aid essentials.',1699,12,1),
(5,'Baby Gentle Wash','baby-gentle-wash','Mild everyday cleansing care.',1199,18,0),
(6,'Gentle Face Cleanser','gentle-face-cleanser','Gentle cleanser for everyday use.',1299,16,0);
INSERT INTO users(name,email,password,phone,role) VALUES ('MediNova Admin','admin@medinova.local','$2y$12$GaKYPeXHWa.SV0/wbnmOT.HtAyq9PeeJftJJ.uLjbf1ZWdbGAvQ5m','03000000000','admin');
