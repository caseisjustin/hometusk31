-- 1chi vazifa
CREATE DATABASE FishMarket;
\c fishmarket;

CREATE TABLE fish_types(fish_id SERIAL PRIMARY KEY, fish_name VARCHAR(30), price_1_5kg INT, price_5_10kg INT, price_10_20kg INT);

insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Chamaelo sp.', 5087, 18598, 923676);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Tachybaptus ruficollis', 6042, 32219, 567444);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Lamprotornis chalybaeus', 5015, 38105, 925379);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Phalaropus lobatus', 1310, 21844, 530614);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Corvus brachyrhynchos', 8391, 24492, 517963);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Ateles paniscus', 4206, 71153, 304393);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Podargus strigoides', 6642, 21935, 751212);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Dicrostonyx groenlandicus', 665, 61503, 972228);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Boa constrictor mexicana', 6938, 35007, 316411);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Cebus apella', 1829, 60630, 548952);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Helogale undulata', 1262, 48955, 767388);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Trachyphonus vaillantii', 6203, 97048, 687442);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Larus fuliginosus', 6802, 17842, 336713);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Carduelis pinus', 2881, 54797, 143858);
insert into fish_types (fish_name, price_1_5kg, price_5_10kg, price_10_20kg) values ('Cynictis penicillata', 570, 75245, 736083);


-- 1.1 shart
SELECT fish_name, price_1_5kg, price_5_10kg, price_10_20kg FROM fish_types;

-- 1.2 shart
SELECT * FROM fish_types ORDER BY fish_id DESC;

-- 1.3 shart
SELECT SUM(price_1_5kg) FROM fish_types;

-- 1.4 shart
SELECT * FROM fish_types ORDER BY price_5_10kg ASC;




-- 2chi vazifa
CREATE TABLE customers(customer_id SERIAL PRIMARY KEY, customer_name VARCHAR(20), contact_info_email VARCHAR(30));

insert into customers (customer_name, contact_info_email) values ('Rosalia Coonan', 'rcoonan0@biglobe.ne.jp');
insert into customers (customer_name, contact_info_email) values ('Olivier Knolles-Green', 'oknollesgreen1@unicef.org');
insert into customers (customer_name, contact_info_email) values ('Nevsa Duffett', 'nduffett2@zimbio.com');
insert into customers (customer_name, contact_info_email) values ('Arron Aymerich', 'aaymerich3@creativecommons.org');
insert into customers (customer_name, contact_info_email) values ('Larina Keighly', 'lkeighly4@reverbnation.com');
insert into customers (customer_name, contact_info_email) values ('Selia Wauchope', 'swauchope5@devhub.com');
insert into customers (customer_name, contact_info_email) values ('Rosetta Tudball', 'rtudball6@imgur.com');
insert into customers (customer_name, contact_info_email) values ('Gratiana Garner', 'ggarner7@mysql.com');
insert into customers (customer_name, contact_info_email) values ('Lenci Shore', 'lshore8@nhs.uk');
insert into customers (customer_name, contact_info_email) values ('Gannie Gordon', 'ggordon9@bandcamp.com');
insert into customers (customer_name, contact_info_email) values ('Timmy Fosdick', 'tfosdicka@over-blog.com');
insert into customers (customer_name, contact_info_email) values ('Paula Feasey', 'pfeaseyb@dropbox.com');
insert into customers (customer_name, contact_info_email) values ('Lilias Chatainier', 'lchatainierc@aboutads.info');
insert into customers (customer_name, contact_info_email) values ('Norene Eadmeads', 'neadmeadsd@ovh.net');
insert into customers (customer_name, contact_info_email) values ('Francyne Calcott', 'fcalcotte@fastcompany.com');


-- 2.1 shart
SELECT customer_name FROM customers;

-- 2.2 shart
SELECT * FROM customers ORDER BY customer_id DESC;

-- 2.3 shart
SELECT CONCAT(customer_name, ' ', contact_info_email) AS INFORMATION  FROM customers;
-- 2chi yechim
SELECT customer_name || ' '|| contact_info_email AS INFORMATION  FROM customers;