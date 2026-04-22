select 
p.product_name, 
Sum(o.unit) as unit
from Orders o 
join Products p
on o.product_id = p.product_id 
where o.order_date between '2020-02-01' and '2020-02-29'
group by o.product_id,p.product_name
having sum(o.unit)>=100