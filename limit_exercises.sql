-- Distinct keyword will only return unique results from our queries
-- 2.
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC LIMIT 10;
-- 3.
SELECT DISTINCT emp_no
FROM salaries
ORDER BY salary DESC LIMIT 5;
-- 4.
SELECT DISTINCT emp_no
FROM salaries
ORDER BY salary DESC LIMIT 5
OFFSET 45;

