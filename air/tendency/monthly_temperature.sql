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
		氣溫
	from air 
),

clean_data as(
	select   
    	氣溫,
		year || "-" || month || "-" || day || " " || hour || ":00:00" as dt
	from preprocess
)

select 
	datetime(dt, "start of month") as M,
	avg(氣溫) as "平均_氣溫"
from clean_data
group by datetime(dt, "start of month")
order by 平均_氣溫
;

