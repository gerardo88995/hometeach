with dewpoint as(
	select 
		1 as ID,
		14.42 as std,
		avg(露點) as avg_dew,
		露點
	from air
),
dew as(
	select 
		1 as ID,
		露點
	from air
)

select 
		dew.露點 as dewpoint_,
	case 
		when (dew.露點 - avg_dew) / std >= 3 then "high_outlier"
		when (dew.露點 - avg_dew) / std < -3 then "low_outlier"
		else "normal"
	end as result
from dewpoint
join dew on dewpoint.ID = dew.ID
;
