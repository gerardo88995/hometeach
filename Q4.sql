with t1 as(
	select 
		dt,
		pm25,
		max(pm25) over (PARTITION by datetime(dt, "start of year") rows UNBOUNDED PRECEDING) as yr_max
	from preprocess
),

t2 as(
	SELECT
		strftime('%Y', dt) as year,
		yr_max
	from t1
),

t3 as(
	SELECT
		year,
		yr_max,
		count(yr_max) as num_of_pm25
	from t2
	group by year, yr_max
),

count_yr as(
	select 
		year,
		count(year) as num_of_yr
	from preprocess_yr
	group by year
),

t4 as(
SELECT
	*
from t3
join count_yr on t3.year = count_yr.year
)

SELECT
	year,
	yr_max,
	round ( num_of_pm25 / cast ( num_of_yr as double ), 5 ) as yr_ratio
from t4


