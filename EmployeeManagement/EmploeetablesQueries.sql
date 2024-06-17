SELECT employee_id, first_name, last_name, department_id, hire_date
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

SELECT d.department_name, SUM(s.salary) AS total_salary_expenditure
FROM salaries s
JOIN employees e ON s.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

SELECT e.employee_id, e.first_name, e.last_name, d.department_name, s.salary
FROM salaries s
JOIN employees e ON s.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
ORDER BY s.salary DESC
LIMIT 5;

