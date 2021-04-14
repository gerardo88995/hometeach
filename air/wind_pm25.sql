with feature_statistic  as(
	select 
		1 as ID,
		50 as std,
		avg(風速) as avg_speed,
		風速
	from air
),
feature as(
	select 
		1 as ID,
		風速,
		month,
		year,
		day,
		hour
	from air
),

final as(
select 
	cast(month as int) as month,
	count(*) as num_of_abnormal,
	case 
		when (feature.風速 - avg_speed) / std >= 3 then "high_outlier"
		when (feature.風速 - avg_speed) / std < -3 then "low_outlier"
		else "normal"
	end as result
from feature_statistic
join feature on feature_statistic.ID = feature.ID
where result is not "normal"
group by month
order by month
),
month_pm25 as(
select 
	cast(month as int) as month,
	avg(pm25) as avg_pm25
from air
where pm25 is not null
group by month
order by month
)