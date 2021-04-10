select 	
	race,
	round( avg(educationtime) , 3) as Education_time
from adult
where race is not NULL
group by race
;