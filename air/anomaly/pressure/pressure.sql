with feature_statistic as(
	select 
		1 as ID,
		6.022 as std,
		avg(氣壓) as avg_pres,
		dt
	from cleanair2
),

feature as(
	select 
		1 as ID,
	    氣壓,
		dt
	from cleanair2
)

select 
	feature.dt,
	氣壓,
	case 
		when ( (氣壓 - avg_pres) / std )  >=3 then "high_outlier"
		when ( (氣壓 - avg_pres) / std )  <3 then "low_outlier"
		else "normal"
	end as result
from feature
join feature_statistic on feature.ID = feature_statistic.ID
;
