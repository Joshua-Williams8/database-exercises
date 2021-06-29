USE employees;

DESCRIBE employees;
DESCRIBE dept_manager;
DESCRIBE dept_emp;
DESCRIBE departments;

# 2
SELECT  d.dept_name AS Department_Name,CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY Department_Name;
# 3
SELECT  d.dept_name AS Department_Name,CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
AND e.gender = 'F'
ORDER BY Department_Name;
# 4

SELECT employees.titles.title, count(employees.titles.title) as Total
FROM titles
         JOIN dept_emp
              ON dept_emp.emp_no = titles.emp_no
WHERE dept_emp.dept_no = 'd009'
  AND YEAR(titles.to_date) = '9999'
GROUP BY employees.titles.title
ORDER BY count(employees.titles.title) DESC;

# 5
DESCRIBE salaries;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY Department_Name;

# Study
USE employees;
#
SELECT t.title,
       COUNT(de.emp_no) AS Count
FROM dept_emp AS de
# I can have multiple conditions in my JOIN logic. Only current employees and current titles.
         JOIN titles AS t ON de.emp_no = t.emp_no
    AND t.to_date > CURDATE()
    AND de.to_date > CURDATE()
# I can have multiple conditions in my JOIN logic. Only the Customer Service department.
         JOIN departments AS d ON d.dept_no = de.dept_no
    AND dept_name = 'Customer Service'
GROUP BY t.title;
