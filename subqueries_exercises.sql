USE employees;
# 1 work, below allows me to verify I got the right result
SELECT first_name, last_name, hire_date, emp_no
FROM employees
WHERE emp_no = '101010';

# Shows everyone with the SAME HIRE_DATE as emp no 101010
SELECT first_name, last_name, hire_date, emp_no
FROM employees
WHERE hire_date IN (SELECT hire_date
                    FROM employees
                    WHERE emp_no = '101010');
# 2
SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name = 'Aamod');
# 2.unique aka distinct
SELECT DISTINCT title
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name = 'Aamod');

# 3
SELECT first_name, last_name
FROM employees
WHERE gender = 'F'
AND emp_no IN (SELECT emp_no
                 FROM dept_manager
                   WHERE to_date LIKE '9999%');

#BONUS 1
SELECT dept_name
FROM departments
WHERE dept_no IN (SELECT dept_no
                  FROM dept_manager
                  WHERE emp_no IN (SELECT emp_no
                                   FROM employees
                                   WHERE gender = 'F'
                                     AND to_date LIKE '9999%'));
# BONUS 2
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM salaries
                 ORDER BY salary);
# I need to work on this logic thanks Jordon
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM salaries
                 WHERE salary = (SELECT MAX(salary)
                                 FROM salaries));
