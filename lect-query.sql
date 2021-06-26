USE employees;

SELECT employees.last_name, salaries.salary
FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no
LIMIT 20;
# So we are telling the server to search BOTH the employees and salary tables, and find EVERYwhere theres a MATCH.
# EVERY MATch, WE grab the employees's last name and salary and display it.

USE employees;

SELECT employees.last_name, salaries.salary
FROM employees
         JOIN salaries
              ON employees.emp_no = salaries.emp_no
LIMIT 20;

SELECT AVG(salary), gender FROM employees
                                    JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY gender;

# Stuff below is from class curiculum.

CREATE DATABASE join_test_db;
USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);
# Setup complete

# LEFT JOIN is going to show rows on the left table EVEN IF there's no result.
SELECT users.name AS user_name, roles.name AS role_name
FROM users jOIN roles
                ON users.role_id = role_id;


CREATE TABLE persons (
                         person_id INT NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT NOT NULL,
                         PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);


# JOIN or INNER JOIN
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;
#  Display's the user_names on the left and the roles_names on the right.
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;
# The left will show you even if  there's a match or not
# So Jane and mike will not have roles and show null.
# LEFT join makes the left column ...
# RIGHT JOIN same idea as left column except on right
SELECT users.name as user_name, roles.name as role_name
FROM roles
         LEFT JOIN users ON users.role_id = roles.id;
# Displays everything that has a SET ROLE, but if it doesn't have a name, it will show null for that name.
# Usually instead of writing a right join you can just flip the things in your left join.
#



# Creating a preference table
CREATE TABLE preferences (
                             person_id INT NOT NULL,
                             album_id INT NOT NULL
);

#
