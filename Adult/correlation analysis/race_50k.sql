with summ as(
	select 
		race,
		count(*) as ttl			
from adult
where race is not null and race is not '?'
group by race
),

son as(
	select 
		race,
		count(*) as large50_ttl
from adult
where race is not null and race is not '?' and salary = '>50K'
group by race
)

select 
	summ.race,
	case 
		when large50_ttl is Null then 0 
		else round(large50_ttl / cast(ttl as double), 3) 
	end as '>50k_ratio'
from summ
left join son on summ.race = son.race
;


