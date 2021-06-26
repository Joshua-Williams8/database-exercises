USE
    employees;
# 2
SELECT DISTINCT title
FROM titles;
# 3 COME BACK TODO
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name;
# 4
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY first_name, last_name;
# 5
SELECT COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
# 6
SELECT count(gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

