select        
	relationship,
	count(*) as Num
from adult
where relationship is not null
group by relationship
;

