-- PART 3 : Data Manipulation Language

use pulsa_olshop;

-- answer 1.a
INSERT INTO operators (short_name, name) 
VALUES 	("ID", "Indosat"),
		("TS", "Telkomsel"),
        ("XL", "XL Axiata"),
        ("SF", "Smartfren"),
        ("TR", "Three");

-- answer 1.b        
INSERT INTO product_type(name) VALUES ("Pulsa"), ("Kuota Internet"), ("Paket");

-- answer 1.c, d, e
INSERT INTO product (product_type_id, operators_id)
VALUES	(1,3), (2,1), (3,4);

-- answer 1.f
UPDATE product SET product_description = "pulsa XL" WHERE id=1;
UPDATE product SET product_description = "Indosat Freedom" WHERE id=2;
UPDATE product SET product_description = "Paket Smartfren" WHERE id=3;

-- ans 1.g
INSERT INTO payment_methods(payment_name)
VALUES ("transfer bank"), ("OVO"), ("GoPay"), ("DOKU");

-- ans 1.h
INSERT INTO users (username, birthday, address, gender, created_at)
VALUES ("Lalu Zohri", "1989-12-12", "Lombok", "Pria", "2021-08-20"),
		("Anisa", "1992-11-29", "Jember", "Wanita", "2021-08-01"),
        ("Budi", "1993-02-26", "Malang", "Pria",  "2021-08-18"),
        ("Jaenuddin", "1976-11-11", "Solo", "Pria", "2021-02-22"),
        ("Wa Ode Elisa", "1991-03-22", "Maluku", "Wanita", "2021-04-10");

-- ans 1.i        
INSERT INTO transactions(user_id, transaction_date) 
VALUES 	(1,"2021-05-25 18:00:45"),
		(1,"2021-06-26 12:10:45"),
		(1,"2021-07-24 00:00:45"),
		(2,"2021-03-30 01:20:45"),
        (2,"2021-05-29 05:20:45"),
        (2,"2021-07-28 03:20:45"),
        (3,"2021-06-01 05:00:45"),
        (3,"2021-07-10 06:00:45"),
        (3,"2021-08-05 04:10:45"),
        (4,"2021-05-21 21:00:45"),
        (4,"2021-06-26 20:00:45"),
		(4,"2021-07-28 23:00:45"),
        (5,"2021-02-20 10:00:45"),
        (5,"2021-06-30 09:00:45"),
        (5,"2021-08-30 07:40:45");
        
-- ans 1.j //
INSERT INTO detail_transaction(transaction_id, product_id, status_transaction, payment_methods, price, qty)
VALUES 	(1,1,"success",1,50000,2),
		(1,2,"success",1,50000,2),
        (1,3,"success",1,50000,2),
        (2,1,"success",1,50000,2),
		(2,2,"success",1,50000,2),
        (2,3,"success",1,50000,2),
		(3,1,"success",1,50000,2),
		(3,2,"success",1,50000,2),
        (3,3,"success",1,50000,2),
		(4,1,"success",1,50000,2),
		(4,2,"success",1,50000,2),
        (4,3,"success",1,50000,2),
		(5,1,"success",1,50000,2),
		(5,2,"success",1,50000,2),
        (5,3,"success",1,50000,2),
		(6,1,"success",1,50000,2),
		(6,2,"success",1,50000,2),
        (6,3,"success",1,50000,2),
		(7,1,"success",1,50000,2),
		(7,2,"success",1,50000,2),
        (7,3,"success",1,50000,2),
		(8,1,"success",1,50000,2),
		(8,2,"success",1,50000,2),
        (8,3,"success",1,50000,2),
		(9,1,"success",1,50000,2),
		(9,2,"success",1,50000,2),
        (9,3,"success",1,50000,2),
		(10,1,"success",1,50000,2),
		(10,2,"success",1,50000,2),
        (10,3,"success",1,50000,2),
		(11,1,"success",1,50000,2),
		(11,2,"success",1,50000,2),
        (11,3,"success",1,50000,2),
		(12,1,"success",1,50000,2),
		(12,2,"success",1,50000,2),
        (12,3,"success",1,50000,2),
		(13,1,"success",1,50000,2),
		(13,2,"success",1,50000,2),
        (13,3,"success",1,50000,2),
		(14,1,"success",1,50000,2),
		(14,2,"success",1,50000,2),
        (14,3,"success",1,50000,2),
		(15,1,"success",1,50000,2),
		(15,2,"success",1,50000,2),
        (15,3,"success",1,50000,2);