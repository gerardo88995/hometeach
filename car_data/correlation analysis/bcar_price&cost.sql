select 
    selling_price, 
    maintenance, 
    safety
from car
where rating == 'unacc' or rating == 'acc'
;
