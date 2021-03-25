with amount as (
    select count(sex) as female_num
from adult
where sex = 'Female'
)

select 
            round(count(sex) / cast(female_num as double ), 2) * 100 as  female_50k_ratio,
						female_num
from adult, amount
where sex = 'Female' and salary = '>50K';