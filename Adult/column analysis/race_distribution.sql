select 
	race,
	count(*) as num
from adult
where race is not NULL
group by race
;