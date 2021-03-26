with amount as (
    select count(*) as TTL
	from adult
	where education = 'Doctorate'
)

SELECT 
        education,
		round( count(education) / cast ( TTL as double), 2) as ratio,
		TTL
from adult, amount
where education = 'Doctorate' and salary = '>50K';