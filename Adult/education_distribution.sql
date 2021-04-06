select education,
           count(*) as Num
from adult
where education is not null
group by education
;