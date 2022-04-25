with t as
(
select id,name,substr(to_char(date_of_birth,'yyyy-mm-dd'),1,7) as date_of_birth,order_item
from orderDF
)

select id,name,to_date(date_of_birth,'yyyy-mm'),wm_concat(order_item)
from t 
group by id,name,to_date(date_of_birth,'yyyy-mm')
