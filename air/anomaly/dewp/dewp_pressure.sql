with t1 as(
	select 
		dt,
		露點,
		round( (露點 + 40 ) / cast((28 + 40) as double), 2) as dewp
	from cleanair2
),

t2 as(
	select 
		dt,
		氣壓,
		round( (氣壓 - 991 ) / cast((1046 - 991) as double), 2)  as pressure
	from cleanair2
)
select 
	t1.dt,
	dewp,
	pressure,
	(dewp - pressure) as diff
from t1
join t2 on t1.dt = t2.dt
where diff  > 0
;