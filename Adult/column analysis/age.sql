select 
    salary,     
	avg(age) as Avg_Age
from adult
group by salary
having salary is not null
;