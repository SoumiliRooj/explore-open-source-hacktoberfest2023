SELECT name, MAX(salary) AS salary
FROM employee
WHERE salary < (SELECT MAX(salary) 
                 FROM employee
                 WHERE salary < (SELECT MAX(salary)
                 FROM employee)
                ); 
