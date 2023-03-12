select product_id
from (select product_id, count(product_id)
from sales
where customer_id is null
group by product_id
order by 2 desc) as r
limit 1
;