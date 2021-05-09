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
)
select 
			datetime(dt, 'start of month') as m,
			round( avg(pm25),  3)  as 'avg_pm2.5'
from clean_data
where m is not NULL
group by datetime(dt, 'start of month')
;
