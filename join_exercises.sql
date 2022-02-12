USE employees;

# write a query that shows each department along with the name of the current manager for that department.
SELECT CONCAT (e.first_name, ' ', e.last_name) AS 'Dept Manager', d.dept_name AS 'Dept Name'
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE()
ORDER BY d.dept_name;

SELECT CONCAT (e.first_name, ' ', e.last_name) AS dept_manager, d.dept_name AS 'Dept Name'
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE()
AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT title, COUNT(title)
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN titles AS t
ON t.emp_no = e.emp_no
WHERE t.to_date > CURDATE()
AND de.to_date > CURDATE()
AND dept_no = 'd009'
GROUP BY title;

# Other Solution #3

SELECT t.title, COUNT(t.emp_no)
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > CURDATE()
AND d.dept_name = 'Customer Service'
AND de.to_date > CURDATE()
GROUP BY t.title;

SELECT CONCAT (e.first_name, ' ', e.last_name) AS dept_manager, d.dept_name, s.salary
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
JOIN salaries AS s
ON s.emp_no = e.emp_no
WHERE dm.to_date > CURDATE()
AND s.to_date > CURDATE()
ORDER BY d.dept_name;

# Bonus

SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee', d.dept_name,
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees AS e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager dm ON d.dept_no = dm.dept_no AND dm.to_date > CURDATE()
JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE()
ORDER BY d.dept_name;
