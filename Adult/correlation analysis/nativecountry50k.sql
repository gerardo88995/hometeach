with mom as(
select 
	nativecountry,
	count(*) as total_num
from adult
where nativecountry is not null and nativecountry is not '?'
group by nativecountry
),

son as(
select 
	nativecountry,
	count(*) as num_50k
from adult
where nativecountry is not null and nativecountry is not '?' and salary is '>50K'
group by nativecountry
)

select 
	*,
	case 
		when num_50k is Null then 0
		else round(num_50k / cast(total_num as double), 3) 
	end as '>50k_ratio'
from mom left join son
on mom.nativecountry = son.nativecountry
where num_50k is not NULL
order by '>50k_ratio' desc
;

