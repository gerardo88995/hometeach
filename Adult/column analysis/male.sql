with amount as (
  select count(sex) as male_num
from adult
where sex = 'Male'
)
select 
  round(count(sex) / cast(male_num as double ), 2) * 100 as  male_50k_ratio,
	male_num
from adult, amount
where sex = 'Male' and salary = '>50K'
;