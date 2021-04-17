with feature_statistic  as(
	select 
		1 as ID,
		10.246 as std,
		avg(氣壓) as avg_pressure,
		氣壓
	from air
),
feature as(
	select 
		1 as ID,
		氣壓
	from air
)

select 
		feature.氣壓 as pressure,
	case 
		when (feature.氣壓 - avg_pressure) / std >= 3 then "high_outlier"
		when (feature.氣壓 - avg_pressure) / std < -3 then "low_outlier"
		else "normal"
	end as result
from feature_statistic
join feature on feature_statistic.ID = feature.ID
;
