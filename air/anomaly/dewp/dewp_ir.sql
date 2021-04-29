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
		雨時,
		round( (雨時) / cast((27) as double), 2)  as ir_
	from cleanair2
)
select 
	t1.dt,
	dewp,
	ir_,
	(dewp - ir_) as diff
from t1
join t2 on t1.dt = t2.dt
where diff  < 0
;