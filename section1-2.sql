-- answer 2.a
SELECT * FROM users WHERE gender="Pria";
-- answer 2.b 
SELECT * FROM product WHERE id=3;
-- answer 2.c 
SELECT * FROM users WHERE created_at >= DATE(NOW()) - INTERVAL 7 DAY  AND username LIKE "%a%";
-- answer 2.d 
SELECT COUNT(*) FROM users WHERE gender="Wanita"; 
-- answer 2.e 
SELECT * FROM users ORDER BY username;
-- answer 2.f // *tampilkan product dengan id=3 yang terjual
SELECT * FROM detail_transaction WHERE product_id=3 LIMIT 5;
-- answer 3.a-b 
UPDATE product SET product_description="product dummy" WHERE id=1;
UPDATE detail_transaction SET qty=3 WHERE product_id=1;
-- ans 4.a-b
DELETE FROM product WHERE id=1;
DELETE FROM product WHERE product_type_id=1;