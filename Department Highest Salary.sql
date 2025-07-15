SELECT dep.name 
AS Department, emp.name 
AS Employee, emp.salary 
AS Salary 
FROM Employee emp 
JOIN Department dep 
ON emp.departmentId = dep.id
WHERE (emp.salary, emp.departmentId)
IN (SELECT max(salary) 
AS salary, departmentId 
FROM Employee
GROUP BY departmentId)
