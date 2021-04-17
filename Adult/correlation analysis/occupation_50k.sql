with summ as(
	select 
		occupation,
		count(*) as ttl			
from adult
where occupation not null and occupation  is not '?'
group by occupation
),

son as(
	select 
		occupation,
		count(*) as large50_ttl
from adult
where occupation is not null and occupation  is not '?' and salary = '>50K'
group by occupation
)

select 
	summ.occupation,
	case 
		when large50_ttl is Null then 0 
		else round(large50_ttl / cast(ttl as double), 3) 
	end as '>50k_ratio'
from summ
left join son on summ.occupation = son.occupation
order by '>50k_ratio' desc
;

