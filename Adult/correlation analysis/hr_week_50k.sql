with hr_per_week as(
	select 
		count(*) as population,
		case 
			when hoursperweek>= 1 and hoursperweek<=10 then '1-10'
			when hoursperweek>=11 and hoursperweek<=20 then '11-20'
			when hoursperweek>=21 and hoursperweek<=30 then '21-30'
			when hoursperweek>=31 and hoursperweek<=40 then '31-40' 
			when hoursperweek>=41 and hoursperweek<=50 then '41-50' 
			when hoursperweek>=51 and hoursperweek<=60 then '51-60'
			when hoursperweek>=61 and hoursperweek<=70 then '61-70'
			when hoursperweek>=71 and hoursperweek<=80 then '71-80'
			when hoursperweek>=81 and hoursperweek<=90 then '81-90'
			when hoursperweek>=91 and hoursperweek<=99 then '91-99'
		end as hoursperweek_range
from adult
where hoursperweek_range is not NULL
group by hoursperweek_range
),

high_salary as(
	select 
		count(*) as ttl_num,
		case 
			when hoursperweek>= 1 and hoursperweek<=10 then '1-10'
			when hoursperweek>=11 and hoursperweek<=20 then '11-20'
			when hoursperweek>=21 and hoursperweek<=30 then '21-30'
			when hoursperweek>=31 and hoursperweek<=40 then '31-40' 
			when hoursperweek>=41 and hoursperweek<=50 then '41-50' 
			when hoursperweek>=51 and hoursperweek<=60 then '51-60'
			when hoursperweek>=61 and hoursperweek<=70 then '61-70'
			when hoursperweek>=71 and hoursperweek<=80 then '71-80'
			when hoursperweek>=81 and hoursperweek<=90 then '81-90'
			when hoursperweek>=91 and hoursperweek<=99 then '91-99'
		end as hoursperweek_range
from adult
where hoursperweek_range is not NULL and salary is ">50K"
group by hoursperweek_range
)

SELECT
	hr_per_week.hoursperweek_range,
	population,
	round( ttl_num / cast(population as double), 3   ) as "50k_ratio"
FROM hr_per_week
JOIN high_salary on hr_per_week.hoursperweek_range = high_salary.hoursperweek_range
;
