with t1 as(
	select 
		dt,
		露點,
	    (露點 + 2 ) / cast((-27 +2) as double) as dewp
	from cleanair2
),

t2 as(
	select 
		dt,
		氣溫,
		(氣溫 + 2 ) / cast((-27 +2) as double) as temp
	from cleanair2
)
select 
	t1.dt,
	dewp,
	temp,
	(dewp - temp) as diff
from t1
join t2 on t1.dt = t2.dt
where diff  < 0
;