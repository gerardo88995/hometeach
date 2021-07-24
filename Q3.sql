with t1 as(
	select 
		dt,
		pm25,
		max(pm25) over (rows UNBOUNDED PRECEDING) as biggest
	from preprocess
),

t2 as(
	select 
		dt,
		biggest,
		count(biggest) as num_biggest
	from t1
	group by biggest
)

SELECT
	dt,
	num_biggest,
	biggest
from t2
order by num_biggest DESC
limit 1