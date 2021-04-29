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
		雪時,
		round((雪時 ) / cast( (36 ) as double) , 2) as is_
	from cleanair2
)
select 
	t1.dt,
	temp,
	is_,
	(temp - is_) as diff
from t1
join t2 on t1.dt = t2.dt
where diff < 0
;