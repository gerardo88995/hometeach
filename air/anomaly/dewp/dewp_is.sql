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
		雪時,
		round( (雪時  ) / cast((36) as double), 2)  as is_
	from cleanair2
)
select 
	t1.dt,
	dewp,
	is_,
	(dewp - is_) as diff
from t1
join t2 on t1.dt = t2.dt
where diff  < 0
;