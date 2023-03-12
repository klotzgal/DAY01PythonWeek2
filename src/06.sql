select customer_id, birth_date
from customers
order by extract(month from birth_date),  extract(day from birth_date);