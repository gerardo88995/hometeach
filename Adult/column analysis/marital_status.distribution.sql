select        
	maritalstatus,
	count(*) as Num
from adult
where maritalstatus is not null
group by maritalstatus
;
