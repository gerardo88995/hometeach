select 
    occupation,
    count(*) as Num
from adult
where occupation is not '?' and occupation is not NULL
group by occupation
;
	