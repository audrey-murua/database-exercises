USE employees;

#1
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, emp_no DESC;

#2
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name ASC;

# OTHER SOLUTION #2

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

#3
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# 5 REVERSE ORDER
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

#4
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

# 5 REVERSE ORDER
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# Start of functions exercise

SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E';

SELECT first_name, last_name, birth_date
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25;

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25
    AND year(hire_date) BETWEEN 1990 AND 1999;

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25
    AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

SELECT first_name, last_name, birth_date, hire_date, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25
    AND year(hire_date) BETWEEN 1990 AND 1999;