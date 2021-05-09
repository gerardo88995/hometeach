with t1 as(
	select 
		dt,
		雪時,
		round( (雪時  ) / cast(( 36) as double), 2) as is_
	from cleanair2
),

t2 as(
	select 
		dt,
		雨時,
		round((  雨時) / cast( (27 ) as double) , 2) as ir
	from cleanair2
)
select 
	t1.dt,
	is_,
	ir,
	(is_ - ir ) as diff
from t1
join t2 on t1.dt = t2.dt
where diff < 0
;