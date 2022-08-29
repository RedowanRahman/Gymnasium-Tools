CREATE DATABASE shop_db
USE shop_db


CREATE TABLE users (
  id int PRIMARY KEY IDENTITY(1,1),
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  user_type varchar(20) NOT NULL DEFAULT 'user'
) 


CREATE TABLE products (
  id int PRIMARY KEY IDENTITY(1,1),
  name varchar(100) NOT NULL,
  price int NOT NULL,
  image varchar(100) NOT NULL
) 


CREATE TABLE cart (
	id int PRIMARY KEY IDENTITY(1,1),
	user_id int FOREIGN KEY REFERENCES users(id) NOT NULL,
	name varchar(100) NOT NULL,
	price int NOT NULL,
	quantity int NOT NULL,
	image varchar(100) NOT NULL
)


CREATE TABLE orders (
  id int PRIMARY KEY IDENTITY(1,1),
  user_id int NOT NULL,
  name varchar(100) NOT NULL,
  number varchar(12) NOT NULL,
  email varchar(100) NOT NULL,
  method varchar(50) NOT NULL,
  address varchar(500) NOT NULL,
  total_products varchar(1000) NOT NULL,
  total_price int NOT NULL,
  placed_on varchar(50) NOT NULL,
  payment_status varchar(20) NOT NULL DEFAULT 'pending'
) 


CREATE TABLE message (
  id int PRIMARY KEY IDENTITY(1,1),
  user_id int FOREIGN KEY REFERENCES users(id) NOT NULL,
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  number varchar(12) NOT NULL,
  message varchar(500) NOT NULL
) 


SELECT * FROM  users WHERE email = '$email' AND password = '$pass'

INSERT INTO  users (name, email, password, user_type) 
VALUES('$name', '$email', '$cpass', '$user_type')

SELECT * FROM cart WHERE name = '$product_name' AND user_id = '$user_id'

INSERT INTO cart (user_id, name, price, quantity, image) 
VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')

SELECT * FROM products LIMIT 6

SELECT * FROM orders WHERE name = '$name' AND number = '$number' AND email = '$email' AND method = '$method' 
AND address = '$address' AND total_products = '$total_products' AND total_price = '$cart_total'

INSERT INTO orders(user_id, name, number, email, method, address, total_products, total_price, placed_on) 
VALUES('$user_id', '$name', '$number', '$email', '$method', '$address', '$total_products', '$cart_total', '$placed_on')

DELETE FROM cart WHERE user_id = '$user_id'