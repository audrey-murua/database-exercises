USE employees;

# write a query that shows each department along with the name of the current manager for that department.
SELECT CONCAT (e.first_name, ' ', e.last_name) AS dept_manager, d.dept_name
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT (e.first_name, ' ', e.last_name) AS dept_manager, d.dept_name
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT title, COUNT(title)
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN titles AS t
ON t.emp_no = e.emp_no
WHERE t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
AND dept_no = 'd009'
GROUP BY title;

SELECT CONCAT (e.first_name, ' ', e.last_name) AS dept_manager, d.dept_name, s.salary
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
JOIN salaries AS s
ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

