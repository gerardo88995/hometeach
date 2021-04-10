select 
	count(*) as ttl_num,
	case 
		when age>=11 and age<=20 then '11-20'
		when age>=21 and age<=30 then '21-30'
		when age>=31 and age<=40 then '31-40' 
		when age>=41 and age<=50 then '41-50' 
		when age>=51 and age<=60 then '51-60'
		when age>=61 and age<=70 then '61-70'
		when age>=71 and age<=80 then '71-80'
		when age>=81 and age<=90 then '81-90'
	end as age_range
from adult
where age_range is not NULL
group by age_range
;
