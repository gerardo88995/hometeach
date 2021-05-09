with preprocess as (
	select  year,
		case 
			when length(month) = 1 then '0' || month
			else month
		end month,
		case 
			when length(day) = 1 then '0' || day
			else day
		end day,
		case 
			when length(hour) = 1 then '0' || hour
			else hour
		end hour,
		pm25
	from air 
),

clean_data as(
	select   
        pm25,
		year || "-" || month || "-" || day || " " || hour || ":00:00" as dt
	from preprocess
),

new_pm25 as(
	select 
        case 
			when pm25 = 'NA' then 0
			else pm25
		end as new_pm25
	from clean_data
	where new_pm25 >0
)

select 
	max(new_pm25) as max_pm25,
	min(new_pm25) as min_pm25,
	avg(new_pm25) as avg_pm25
from new_pm25
;
