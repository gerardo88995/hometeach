with t1 as(
	select 
		strftime('%Y', dt) as year,
		max(pm25) over (PARTITION by datetime(dt, "start of year") rows UNBOUNDED PRECEDING) as yr_max_pm25,
		max(氣溫) over (PARTITION by datetime(dt, "start of year") rows UNBOUNDED PRECEDING) as yr_max_temp
	from prep_temp
),

group_by as(
	SELECT
		year,
		yr_max_pm25,
		yr_max_temp,
		count(yr_max_temp) as num_
	from t1
	group by year, yr_max_pm25
),

yr_count as(
	SELECT
		strftime('%Y', dt) as year
	from preprocess
),

yr_count_gpby as(
	SELECT
		year,
		count(year) as yr_num
	from yr_count
	group by year
),

ratio as(
	select 
		* 
	from group_by
	join yr_count_gpby on group_by.year = yr_count_gpby.year
)

select 
	year,
	yr_max_pm25,
	yr_max_temp,
	round( num_ / cast(yr_num as double), 5) as ratio
from ratio
	
	
	