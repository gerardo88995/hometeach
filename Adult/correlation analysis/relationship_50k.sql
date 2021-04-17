with summ as(
		select 
			relationship,
			count(*) as ttl			
from adult
where relationship not null and relationship  is not '?'
group by relationship
),

son as(
	select 
		relationship,
		count(*) as large50_ttl
from adult
where relationship is not null and relationship  is not '?' and salary = '>50K'
group by relationship
)

select 
	summ.relationship,
	case 
		when large50_ttl is Null then 0 
		else round(large50_ttl / cast(ttl as double), 3) 
	end as '>50k_ratio'
from summ
left join son on summ.relationship = son.relationship
order by '>50k_ratio' desc
;


