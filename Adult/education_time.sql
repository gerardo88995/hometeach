select salary,
       avg(education_n) as Avg_Length_of_Education
from adult
group by salary
having salary is not null;