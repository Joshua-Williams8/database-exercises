USE
    employees;

SELECT *
FROM employees
WHERE hire_date = '1985-01-01';

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';
-- you can pattern match with the LIKE keyword
-- the % sign means anything can being here, so if you want ot search a certain word do above.
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082
-- using BETWEEN keyword with AND, so the querys are INBETWEEN those 2 values.

-- Also don't use OR for finding multiple things form one category, for this we use a SET
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge');
-- DO NOT do this
-- WHERE last_name = 'herber';
-- OR last_name = 'Dredge';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
    AND last_name IN ('Herber', 'Dredge')
   OR last_name = 'Shridhar';
-- The or isn't following the other search queries. They're not less than 20k

SELECT *
FROM salaries
WHERE salary BETWEEN 50000 AND 100000;
--
SELECT *
FROM salaries
WHERE salary NOT BETWEEN 50000 AND 100000;
-- Above used to not work? but we are displaying all the salaries not between those values. below also does this. but I think the way it's written better?
SELECT *
FROM salaries
WHERE NOT salary BETWEEN 50000 AND 100000;

SELECT birth_date
FROM employees
WHERE NOT birth_date LIKE '195%';

SELECT birth_date, hire_date
FROM employees
WHERE birth_date NOT LIKE '195%'
  AND hire_date NOT LIKE '199%';
-- Shows us everyone who wasn't hired in the 1950s
-- and will not shows us people hired in the 1990s

SELECT birth_date, hire_date
FROM employees
WHERE birth_date NOT LIKE '195%'
  AND hire_date NOT LIKE '199%'
ORDER BY birth_date;
-- now it's order by birthdate? yes


SELECT *
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no DESC
LIMIT 25 OFFSET 20;
-- DESC makes it in DESCENDING order rather than ASC ascending order
-- Limit makes it show only this amount of entries
-- OFFSET makes it start at the 21 mark so skip 20 entries.

SELECT *
FROM employees
WHERE last_name LIKE '__e%'
-- Search for this with e in the 3rdposition

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name = 'Maya';
-- Shows all the names concated with the last_name.

SELECT hire_date
FROM employees
WHERE first_name = 'Maya';
-- BELOW only grabs the day date. Not the month of year.
SELECT DAYOFMONTH(hire_date)
from employees
WHERE first_name = 'Maya'
ORDER BY DAYOFMONTH(hire_date)
-- Orders by date.

-- Count function shows us the amount of entries.
SELECT COUNT(*)
FROM employees;
-- GROUP BY
SELECT COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*);
-- You can't group by without having something to group? in the select.

SELECT last_name
FROM employees
GROUP BY last_name;

SELECT AVG(DATEDIFF(hire_date, birth_date) / 365)
FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date) / 365)
FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date) / 365)
FROM employees;

SELECT DISTINCT title
FROM titles;
# I changed dialect on accident earlier...

# this groups everything by last name, rather than using the distinct keyword.
# group by also requires that everything using in the group  needs to be in the select.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name;

# Use of indexes is part of Query Optimization
SHOW INDEXES from employees;
# Shows meta data?

select salary from salaries
where salary between 50000 AND 70000;
# Alter table doesn't actually effect the data
# This allows us to not need to use as much processing power. When searching for data so we don't have to access EVERYTHING EVERYTIME.
ALTER TABLE salaries ADD INDEX salary_index(salary);

CREATE TABLE quotes {
    id INT NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
    };
ALTER TABLE quotes ADD UNIQUE (content);
INSERT INTO quotes (content,author)
VALUES('Test quote','authorMan');








