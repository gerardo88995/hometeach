with count_ as(
	SELECT
		pm25,
		count(*) as num_of_8
	from air
	where year = "2010" and month = "8" and pm25 is not null
	group by pm25
),

t1 as(
	select 
		DISTINCT(pm25) as value_1
	from air
	where year = "2010" and month = "1" and pm25 is not null
),

t18 as(
	select 
		*
	from count_
	inner join t1 on count_.pm25 = t1.value_1
)

SELECT
	*,
	max(num_of_8) as maximum_8
from t18