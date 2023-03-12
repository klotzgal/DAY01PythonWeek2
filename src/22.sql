select surname, count(name) as n
from customers
where surname is not null
group by surname
;