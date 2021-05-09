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
		round( (風速 - 0.45 ) / cast((585 - 0.45) as double), 2)  as iws
	from cleanair2
)
select 
	t1.dt,
	dewp,
	iws,
	(dewp - iws) as diff
from t1
join t2 on t1.dt = t2.dt
where diff  < 0
;