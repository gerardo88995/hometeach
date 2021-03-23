select DISTINCT(safety)  as safety_type_of_goodcar
from car
where ratings == 'vgood' or ratings =='good';
