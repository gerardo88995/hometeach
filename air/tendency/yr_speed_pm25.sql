with feature_statistic  as(
	select 
		1 as ID,
		50 as std,
		year,
		avg(風速) as avg_wind_speed,
		風速
	from air
),
feature as(
	select 
		1 as ID,
		風速
	from air
)

with feature_statistic  as(
	select 
		1 as ID,
		50 as std,
		year,
		month,
		avg(風速) as avg_wind_speed,
		風速
	from air
),
feature as(
	select 
		1 as ID,
		風速
	from air
)

select 
	feature_statistic .year,
	feature_statistic .month,
	feature.風速 as wind_speed,
	case 
		when (feature.風速 - avg_wind_speed) / std >= 3 then "high_outlier"
		when (feature.風速 - avg_wind_speed) / std < -3 then "low_outlier"
		else "normal"
	end as result
from feature_statistic
join feature on feature_statistic.ID = feature.ID
where result = "high_outlier" or   result = "low_outlier"
;
