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
		氣壓,
		round( (氣壓 -991) / cast((104-991 ) as double), 2)  as pressure
	from cleanair2
)
select 
	t1.dt,
	temp,
	pressure,
	(temp - pressure) as diff
from t1
join t2 on t1.dt = t2.dt
;