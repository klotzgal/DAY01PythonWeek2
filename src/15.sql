select distinct customer_id
from sales
where extract(year from sale_date) = 2020 and extract(month from sale_date) = 02 and customer_id is not null
order by customer_id
;