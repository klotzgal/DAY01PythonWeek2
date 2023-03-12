select extract(month from sale_date) as month, count(product_id) as count_of_sales
from sales
group by extract(month from sale_date)
;