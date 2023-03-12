select product_id, store_id
from sales
where customer_id is not null and sale_date = '2020-02-14'
;