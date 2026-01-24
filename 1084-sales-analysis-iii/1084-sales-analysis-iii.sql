select distinct p.product_id,p.product_name
from product p 
join sales s 
on p.product_id = s.product_id  and p.product_id not in (select product_id from sales where sale_date > '2019-03-31' or sale_date <  '2019-01-01' )
where s.sale_date between '2019-01-01' and '2019-03-31'


