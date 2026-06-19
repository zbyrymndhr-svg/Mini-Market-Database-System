select
sales.sale_id,
product.product_name,
product.price,
sales.quantity_sold,
(product.price*sales.quantity_sold) as total_revenue,
sales.sale_date
from sales
inner join product
on sales.product_id=product.product_id
order by total_revenue desc;
select
 product.product_id,
 product.product_name,
 product.price,
 sales.sale_id,
 sales.quantity_sold
from product
left join sales
on product.product_id=sales.product_id;
 

