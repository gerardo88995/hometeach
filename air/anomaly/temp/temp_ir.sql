with t1 as(
	select 
		dt,
		氣溫,
		round( (氣溫 + 19 ) / cast((42 + 19) as double), 2) as temp
	from cleanair2
),

t2 as(
	select 
		dt,
		雨時,
		round((雨時 ) / cast( (27 ) as double) , 2) as ir
	from cleanair2
)
select 
	t1.dt,
	temp,
	ir,
	(temp - ir) as diff
from t1
join t2 on t1.dt = t2.dt
where diff < 0
;