select *
from prices
where (extract(year from end_date) = 2020 and extract(month from end_date) = 02) or
(extract(year from start_date) = 2020 and extract(month from start_date) = 02)
;