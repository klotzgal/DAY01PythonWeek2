select product_id, round(avg(price), 2) as avg_price
from prices
where extract(year from start_date) = 2020 or
extract(year from end_date) = 2020 
group by product_id
-- order by product_id
order by 1
;