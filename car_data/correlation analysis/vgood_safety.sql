with amount as (
  select 
    count(*) as TTL
	from car
	where ratings = 'vgood'	
)
select 
  ratings,
  safety,
  round ( count (safety) / cast(ttl as double), 2)	 as ratio ,
	TTL
from car, amount
where ratings = 'vgood' 
group by ratings, safety
;