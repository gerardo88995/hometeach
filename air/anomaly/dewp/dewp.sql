with feature_statistic as(
	select 
		1 as ID,
		5.466 as std,
		avg(露點) as avg_DEWP,
		dt
	from cleanair2
),

feature as(
	select 
		1 as ID,
		露點,
		dt
	from cleanair2
)

select 
	feature.dt,
	露點,
	case 
		when ( (露點 - avg_DEWP) / std )  >=3 then "high_outlier"
		when ( (露點 - avg_DEWP) / std )  <3 then "low_outlier"
		else "normal"
	end as result
from feature
join feature_statistic on feature.ID = feature_statistic.ID
;