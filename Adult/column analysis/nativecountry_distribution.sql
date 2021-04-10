select 
	nativecountry,
	count(*) as num_50k
from adult
where nativecountry is not null and nativecountry is not '?' and salary is '>50K'
group by nativecountry
order by num_50k DESC
;
