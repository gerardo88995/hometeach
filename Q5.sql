select 
    Salary as "SecondHighestSalary"
from Employee
order by Salary desc 
limit 1,1

SELECT
	*
FROM sql_2ndhigh AS l1, 
		   sql_2ndhigh AS l2,
		   sql_2ndhigh AS l3
WHERE l1.ID +1 = l2.ID AND l2.ID +1 = l3.ID AND l1.NUM = l2.NUM = l3.NUM

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
      SELECT
        Salary
      FROM Employee
      ORDER BY Salary DESC
      LIMIT N, 1
      
  );
END
