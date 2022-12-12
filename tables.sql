DROP DATABASE IF EXISTS development;

CREATE DATABASE development;

-- Use the database
\c development;

create table employee (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	phone_number VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	zipcode VARCHAR(50) NOT NULL,
	password VARCHAR(64) NOT NULL,
	hire_date DATE NOT NULL,
	starting_amount MONEY NOT NULL,
	styling TEXT
);
insert into employee (first_name, last_name, phone_number, email, address, city, state, zipcode, password, hire_date, starting_amount) values ('Abner', 'Beardwell', '916-651-8952', 'abeardwell0@webs.com', '6 Dovetail Crossing', 'Sacramento', 'CA', '94237', 'TXFBV7w1Y0GI', '7/19/2022', 300.00);
insert into employee (first_name, last_name, phone_number, email, address, city, state, zipcode, password, hire_date, starting_amount) values ('Gavin', 'Curness', '754-584-1871', 'gcurness1@twitpic.com', '1 Morningstar Place', 'Fort Lauderdale', 'FL', '33310', 'wVTpq9B', '12/3/2021', 300.00);
insert into employee (first_name, last_name, phone_number, email, address, city, state, zipcode, password, hire_date, starting_amount) values ('Grier', 'Castellaccio', '319-376-1073', 'gcastellaccio2@github.com', '0 Pawling Street', 'Waterloo', 'IA', '50706', 'DICMpvtL0', '8/7/2022', 300.00);
insert into employee (first_name, last_name, phone_number, email, address, city, state, zipcode, password, hire_date, starting_amount) values ('Bary', 'Portman', '651-250-8114', 'bportman3@simplemachines.org', '0 Summer Ridge Plaza', 'Saint Paul', 'MN', '55146', 'MjxZ6bBKq', '9/8/2022', 292.32);
insert into employee (first_name, last_name, phone_number, email, address, city, state, zipcode, password, hire_date, starting_amount) values ('Gery', 'Elmes', '409-499-6540', 'gelmes4@cnet.com', '25 Carpenter Park', 'Galveston', 'TX', '77554', '428LJhxWhcB', '4/21/2022', 296.83);

create table product (
	sku VARCHAR(50) NOT NULL PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	brand VARCHAR(50) NOT NULL,
	summary TEXT NOT NULL,
	price MONEY NOT NULL,
	quantity INT NOT NULL,
	category VARCHAR(50) NOT NULL,
	creator INT NOT NULL,
	creation_date DATE NOT NULL,
	supplier VARCHAR(50),
    image_path VARCHAR(750)
);
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('79-114-5362', 'MX Master 3', 'Logitech', 'Ergonomic Mouse', 99.99, 61, 'Electronics', 1, '1/2/2022', 'Skinte', './imgs/products/79-114-5362.jpg');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('16-232-7508', 'Infinity Bangle', 'Swarovski', 'Symbol of Love ', 131.16, 97, 'Jewelry', 1, '12/16/2021', 'Oyope', './imgs/products/16-232-7508.jpg');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('28-122-9924', 'Cabernet Sauvignon', 'Hectare', 'American', 2.99, 24, 'Drinks', 1, '8/10/2022', 'Buzzster', './imgs/products/28-122-9924.jpg');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('32-885-9424', 'Bread', 'Wonder Bread', 'Feed Your Joy. ', 2.89, 95, 'Food', 2, '7/27/2022', 'Avamm', './imgs/products/32-885-9424.jpg');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('78-736-0229', 'Superstar', 'Adidas', 'Originally made for basketball courts in the 70s.', 67.00, 62, 'Shoes', 4, '10/17/2022', 'Roodel', './imgs/products/78-736-0229.jpg');

INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES  ('424-91-2329', 'Apple iPhone 12', 'Apple', 'The latest iPhone with 5G capabilities', 999.99, 100, 'Electronics', 1, '2022-01-01', 'Acme Corp', './imgs/products/424-91-2329.jpg');
INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES ('356-46-7229', 'Samsung Galaxy S21', 'Samsung', 'The newest Samsung smartphone with a sleek design', 899.99, 75, 'Electronics', 1, '2022-02-01', 'Acme Corp', './imgs/products/356-46-7229.jpg');
INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES ('410-57-7851', 'Sony PlayStation 5', 'Sony', 'The next-generation gaming console', 499.99, 50, 'Gaming', 1, '2022-03-01', 'Acme Corp', './imgs/products/410-57-7851.jpg');

INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES ('484-33-3169', 'Skittles Original Fruits Mix', 'Wrigley', 'A pack of Skittles Original Fruits Mix candy', 2.99, 50, 'Candy', 1, '2020-12-12 12:00:00', 'Candy supplier', './imgs/products/484-33-3169.jpg');
INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES ('519-35-2120', 'Nerds Rainbow Candy', 'Willy Wonka', 'A pack of Nerds Rainbow Candy', 1.99, 25, 'Candy', 1, '2020-12-12 12:00:00', 'Candy supplier, image_path', './imgs/products/519-35-2120.jpg');
INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES ('257-41-4595', 'Starburst Original Fruit Chews', 'Wrigley', 'A pack of Starburst Original Fruit Chews candy', 1.99, 75, 'Candy', 1, '2020-12-12 12:00:00', 'Candy supplier, image_path', './imgs/products/257-41-4595.jpg');

INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES ('720-09-8380', 'Diamond Sword', 'Mojang', 'A sharp and durable sword for all your Minecraft adventures', 19.99, 10, 'Minecraft', 1, '2022-01-01', 'Acme, Inc.', './imgs/products/720-09-8380.jpg');
INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES    ('581-36-9064', 'Diamond Shovel', 'Mojang', 'A sturdy shovel for digging in the Minecraft world', 9.99, 5, 'Minecraft', 1, '2022-01-01', 'Acme, Inc.', './imgs/products/581-36-9064.jpg');
INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES    ('724-92-6540', 'Diamond Pickaxe', 'Mojang', 'A powerful pickaxe for breaking blocks quickly in Minecraft', 24.99, 15, 'Minecraft', 1, '2022-01-01', 'Acme, Inc.', './imgs/products/724-92-6540.jpg');
INSERT INTO product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) VALUES    ('684-00-0011', 'Diamond Axe', 'Mojang', 'A sharp and durable axe for chopping wood in Minecraft', 29.99, 7, 'Minecraft', 1, '2022-01-01', 'Acme, Inc.', './imgs/products/684-00-0011.jpg');

create table discount (
	id INT NOT NULL PRIMARY KEY,
	discount_type VARCHAR(50),
	amount MONEY
);
insert into discount (id, discount_type, amount) values (1, 'Friends', 0.05);
insert into discount (id, discount_type, amount) values (2, 'Family', 0.15);
insert into discount (id, discount_type, amount) values (3, 'Military', 0.10);

create table transaction (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	date VARCHAR(50) NOT NULL,
	salesperson_id INT REFERENCES employee(id) ON DELETE SET NULL,
	total MONEY NOT NULL,
	discount MONEY NOT NULL,
	final_total MONEY NOT NULL,
	payment_type VARCHAR(50) NOT NULL,
	creditcard_type VARCHAR(64),
	creditcard_number VARCHAR(64),
	creditcard_expiration VARCHAR(64)
);
insert into transaction (date, salesperson_id, total, discount, final_total, payment_type, creditcard_type, creditcard_number, creditcard_expiration) values ('2021-10-19 14:21:55', 2, 99.99, 0.00, 99.99, 'CASH', NULL, NULL, '4/19/2022');
insert into transaction (date, salesperson_id, total, discount, final_total, payment_type, creditcard_type, creditcard_number, creditcard_expiration) values ('2021-10-19 12:11:32', 1, 131.16, 6.56, 124.60, 'CARD', 'americanexpress', '374288515952579', '11/17/2022');
insert into transaction (date, salesperson_id, total, discount, final_total, payment_type, creditcard_type, creditcard_number, creditcard_expiration) values ('2021-10-21 10:33:11', 3, 2.99, 0.30, 2.69, 'CARD', 'americanexpress', '374283762303196', '2/4/2023');
insert into transaction (date, salesperson_id, total, discount, final_total, payment_type, creditcard_type, creditcard_number, creditcard_expiration) values ('2021-10-23 15:19:19', 4, 2.89, 0.00, 2.89, 'CARD', 'mastercard', '5108750770479970', '3/9/2023');
insert into transaction (date, salesperson_id, total, discount, final_total, payment_type, creditcard_type, creditcard_number, creditcard_expiration) values ('2021-10-23 11:16:63', 2, 67.00, 3.35, 63.65, 'CASH', NULL, NULL, '5/26/2023');

-- ON CASCADE DELETE CASCADE means that if a row in the parent table is deleted, then all the rows in the child table that reference that row in the parent table are also deleted.
create table transaction_discounts (
	transaction_id INT REFERENCES transaction(id) ON UPDATE CASCADE ON DELETE CASCADE,
	discount_id INT REFERENCES discount(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table transaction_items (
    transaction_id INT REFERENCES transaction(id) ON UPDATE CASCADE ON DELETE CASCADE,
    sku VARCHAR(50) REFERENCES product(sku) ON UPDATE CASCADE ON DELETE CASCADE,
    quantity INT 
);
