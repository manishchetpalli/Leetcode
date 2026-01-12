SELECT p.product_name,s.year,s.price
FROM sales As s
INNER JOIN product as p
ON p.product_id=s.product_id