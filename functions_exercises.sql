USE
employees;

--
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

-- 2.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e'

-- 3.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE birth_date LIKE '%12-25'
-- 4
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE birth_date LIKE '%12-25'
          AND YEAR (hire_date) LIKE '199%'

-- 5
SELECT *
FROM employees
WHERE DAY (birth_date) = 25
  AND MONTH (birth_date) = 12
  AND YEAR (hire_date) LIKE '199%'
ORDER BY hire_date DESC;

-- 6
SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(CURRENT_DATE(), hire_date)
FROM employees
WHERE DAY (birth_date) = 25
  AND MONTH (birth_date) = 12
  AND YEAR (hire_date) LIKE '199%'
ORDER BY hire_date DESC;

-- or
SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(CURRENT_DATE(), hire_date)
FROM employees
WHERE birth_date LIKE '%12-25'
          AND YEAR (hire_date) LIKE '199%'
ORDER BY hire_date DESC;
