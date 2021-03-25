with amount as (
    select count(*) as num_total
		from adult
)

select salary,
       round(count(workclass) / cast(num_total as double ), 2) * 100 as  self_emp_inc_ratio,
	   num_total
from adult, amount