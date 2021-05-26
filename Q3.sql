with t1 as(
	select 
		dt,
		pm25,
		max(pm25) over (rows UNBOUNDED PRECEDING) as biggest
	from preprocess
)

select 
	dt,
	biggest,
	count(biggest) as num_biggest
from t1
group by biggest