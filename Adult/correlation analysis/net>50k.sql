select 
    COUNT(*) AS Num,
    (capitalgain - capitalloss) as net,
	salary
from adult
where net > 0 and salary = '>50K'
;
