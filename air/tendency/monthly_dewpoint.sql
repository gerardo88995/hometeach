with preprocess as (
    select  
		year,
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
		露點
	from air 
),

clean_data as(
	select   
    	露點,
		year || "-" || month || "-" || day || " " || hour || ":00:00" as dt
	from preprocess
)

select 
	datetime(dt, "start of month") as M,
	avg(露點) as "平均_露點"
from clean_data
group by datetime(dt, "start of month")
order by 平均_露點
;
