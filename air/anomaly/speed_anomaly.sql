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
		風速
	from air
)

select 
		feature.風速 as speed,
	case 
		when (feature.風速 - avg_speed) / std >= 3 then "high_outlier"
		when (feature.風速 - avg_speed) / std < -3 then "low_outlier"
		else "normal"
	end as result
from feature_statistic
join feature on feature_statistic.ID = feature.ID
;
