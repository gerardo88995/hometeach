with summ as(
		select 
					education,
					count(*)	as ttl			
from adult
where education is not null and workclass is not '?'
group by education
),

son as(
			select 
						education,
						count(*) as large50_ttl
from adult
where education is not null and education is not '?' and salary = '>50K'
group by education
)

select 
			summ.education,
			case 
			when large50_ttl is Null then 0 
			else round(large50_ttl / cast(ttl as double), 3) 
			end as '>50k_ratio'
from summ
left join son on summ.education = son.education
