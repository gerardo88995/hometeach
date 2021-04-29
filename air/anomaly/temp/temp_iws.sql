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
		風速,
		round((風速 -0.45) / cast((585.6-0.45 ) as double) , 2) as iws
	from cleanair2
)
select 
	t1.dt,
	temp,
	iws,
	(temp - iws) as diff
from t1
join t2 on t1.dt = t2.dt
where diff<0
;