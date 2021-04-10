select 
    education,
	avg(capitalgain) as avg_capital_gain
		   
from adult
where capitalgain> 0
group by education
order by avg_capital_gain
;
