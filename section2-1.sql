-- answer release 2
-- ans 1
create view user_transaction as
select 
	transactions.user_id, product_id, payment_methods, price 
from
	detail_transaction
left join transactions on
	transactions.id = detail_transaction.transaction_id
where 
	transactions.user_id = 1 or transactions.user_id = 2;
-- ans 2
SELECT 
	SUM(price)
FROM 
	user_transaction
where
	user_id = 1;
-- ans 3
SELECT
	SUM(price)
FROM alta_online_shop.detail_transaction
WHERE product_id IN (SELECT id FROM alta_online_shop.product 
where product_type_id = 2);
-- ans 4
select *  from product
left join product_type on 
product.product_type_id = product_type.id;
-- ans 5
select * from transactions
left join detail_transaction on detail_transaction.transaction_id = transactions.id
left join product on product.id = detail_transaction.product_id
left join product_type on product.product_type_id = product_type.id;
-- ans 6
create trigger after_transaction_delete
AFTER DELETE
ON transactions for each row
DELETE FROM detail_transaction
WHERE transaction_id = old.id;
-- ans 7
-- ans 8