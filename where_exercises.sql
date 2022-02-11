USE employees;

# PART ONE

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

# PART TWO

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya';

SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'M'
    AND (first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya');

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
    OR last_name LIKE '%E';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E';

# OTHER SOLUTION FOR #4

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';