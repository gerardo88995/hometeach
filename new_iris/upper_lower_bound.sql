select 
	class,
    max(petallength) as max_petal_length,
	min(petallength) as min_petal_length,
	max(petalwidth) as max_petal_width,
	min(petalwidth) as min_petal_width
from iris_1
group by class;