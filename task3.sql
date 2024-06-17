//SQL DISTINCT Usage//
SELECT DISTINCT d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

//SQL COUNT Usage//
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

//SQL BETWEEN Usage//
SELECT e.name, e.age, e.department_id
FROM Employees e
WHERE e.age BETWEEN 25 AND 30;