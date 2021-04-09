with summ as(
		select 
					workclass,
					count(*)	as ttl			
from adult
where workclass is not null and workclass is not '?'
group by workclass
),

son as(
			select 
						workclass,
						count(*) as large50_ttl
from adult
where workclass is not null and workclass is not '?' and salary = '>50K'
group by workclass
)

select 
			summ.workclass,
			case 
			when large50_ttl is Null then 0 
			else round(large50_ttl / cast(ttl as double), 3) 
			end as '>50k_ratio'
from summ
left join son on summ.workclass = son.workclass