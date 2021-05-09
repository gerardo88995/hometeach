with feature_statistic as(
	select 
		1 as ID,
		5.378 as std,
		avg(氣溫) as avg_temp,
		dt
	from cleanair2
),

feature as(
	select 
		1 as ID,
	    氣溫,
		dt
	from cleanair2
)

select 
	feature.dt,
	氣溫,
	case 
		when ( (氣溫 - avg_temp) / std )  >=3 then "high_outlier"
		when ( (氣溫 - avg_temp) / std )  <3 then "low_outlier"
		else "normal"
	end as result
from feature
join feature_statistic on feature.ID = feature_statistic.ID
;
