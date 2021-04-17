select 
	count(*) as ttl,
    sex
from adult
where sex is not NULL
group by sex
;
