with t1 as(
	select 
		dt,
		風速,
		round( (風速 - 0.45 ) / cast(( 585.6 - 0.45) as double), 2) as iws
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
	iws,
	ir,
	(iws - ir ) as diff
from t1
join t2 on t1.dt = t2.dt
where diff < 0
;