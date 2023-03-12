select count(sale_date)
from
(select sale_date, count(product_id) as count_of_sales
from sales
group by sale_date
having count(product_id) > 186000) as e
;