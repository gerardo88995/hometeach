with amount as (
  select
    count(*) as ttl
	from car
)

select 
  ratings,
  round ( count (safety) / cast(ttl as double), 2)	as number,
	ttl
from car, amount
group by ratings
;
