with feature_statistic  as(
	select 
		1 as ID,
		12.16 as std,
		avg(氣溫) as avg_temp,
		氣溫
	from air
),
feature as(
	select 
		1 as ID,
		氣溫
	from air
)

select 
		feature.氣溫 as temperature,
	case 
		when (feature.氣溫 - avg_temp) / std >= 3 then "high_outlier"
		when (feature.氣溫 - avg_temp) / std < -3 then "low_outlier"
		else "normal"
	end as result
from feature_statistic
join feature on feature_statistic.ID = feature.ID
;
