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
		"pm2.5"
	from air 
),

clean_data as(
	select   
    	"pm2.5",
		year || "-" || month || "-" || day || " " || hour || ":00:00" as dt
	from preprocess
)
select 
	* 
from clean_data
where dt BETWEEN '2010-01-01' and datetime(date('2010-03-01'), '-1 month')
;
