select
	class,
    avg(Sepallength) as avg_sepal_length,
	avg(Sepalwidth) as avg_sepal_width,
	avg(petallength) as avg_petal_length,
	avg(petalwidth) as avg_petal_width
from iris_1
group by class;
