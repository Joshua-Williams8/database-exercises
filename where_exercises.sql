USE
employees;
-- Part 1
-- 2.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
-- 3.
SELECT *
FROM employees
WHERE last_name LIKE 'E%';
-- 4.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';
-- Part 2.
-- 1.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';
-- 2.
SELECT *
FROM employees
WHERE first_name = 'Irena'
    AND gender = 'M'
   OR first_name = 'Vidya'
    AND gender = 'M'
   OR first_name = 'Maya'
    AND gender = 'M';
-- or
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M';
-- 3.
SELECT *
FROM employees
WHERE last_name LIKE '%e'
   OR last_name LIKE 'E%';
-- 4.
SELECT *
FROM employees
WHERE last_name LIKE '%e'
  AND last_name LIKE 'E%';
-- OR
SELECT *
FROM employees
WHERE last_name LIKE 'E%e';
-- 5.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'






