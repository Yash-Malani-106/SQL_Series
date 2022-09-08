USE trendytech;
SHOW TABLES;
SELECT 
    *
FROM
    students;
 
 ----------------------------------------
SELECT 
    *
FROM
    courses_new;
----------------------------------------------
-- WHERE vs HAVING clause in SQL;

-- Get the number of students from each souce of joining
SELECT 
    source_of_joining, COUNT(*) AS Total
FROM
    students
GROUP BY source_of_joining;

----------------------------------------------------
-- Get the number of students from each souce of joining where number of students greater than 1
SELECT 
    source_of_joining, COUNT(*) AS Total
FROM
    students
GROUP BY source_of_joining
HAVING Total > 1;

---------------------------------------------------
-- Get the number of students registered from linkedIn
SELECT 
    source_of_joining, COUNT(*) AS Total
FROM
    students
GROUP BY source_of_joining
HAVING source_of_joining = "LinkedIn";

--------------------------------------------------
SELECT 
    source_of_joining, COUNT(*) AS Total
FROM
    students
WHERE source_of_joining = "LinkedIn"
GROUP BY source_of_joining;

-----------------------------------------------------------
-- Using WHERE AND HAVING Together
-- the location where more than one student has joined and students experience more than 5 yrs
SELECT 
    location, COUNT(*) AS Total
FROM
    students
WHERE
    years_of_exp > 5
GROUP BY location
HAVING Total > 1;

----------------------------------------------------------------
-- the location where more than one student has joined and students experience more than 3 yrs
SELECT 
    location, COUNT(*) AS Total
FROM
    students
WHERE
    years_of_exp > 3
GROUP BY location
HAVING Total > 1;

-----------------------------------------------------
SHOW TABLES;
DROP TABLE employee;

------------------------------------------------------------
-- Creating a new table employee and supplying seed data
CREATE TABLE employee (
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    age INT,
    salary INT,
    location VARCHAR(20)
);

DESC employee;

INSERT INTO employee(firstname, lastname, age, salary, location) VALUES ('Virat','Kohli',34,33000,'Delhi');
INSERT INTO employee(firstname, lastname, age, salary, location) VALUES ('Rohit','Sharma',35,39000,'Mumbai');
INSERT INTO employee(firstname, lastname, age, salary, location) VALUES ('Kl','Rahul',30,32000,'Banglore');
INSERT INTO employee(firstname, lastname, age, salary, location) VALUES ('Rishab','Pant',27,27000,'Pune');
INSERT INTO employee(firstname, lastname, age, salary, location) VALUES ('Hardik','Pandya',28,29000,'Banglore');
INSERT INTO employee(firstname, lastname, age, salary, location) VALUES ('Jasprit','Bumrah',29,31000,'Pune');

----------------------------------
SELECT 
    *
FROM
    employee;

------------------------------------------------
-- How many employees work in Banglore and their avg salary
SELECT 
    COUNT(*), AVG(salary)
FROM
    employee
WHERE
    location = 'Banglore';

--------------------------------------------------------    
-- Count employees from each location and their avg. salary
SELECT 
    location,
    COUNT(*) AS Employee_Count,
    AVG(salary) AS Avg_Salary
FROM
    employee
GROUP BY location;

-------------------------------------------------------
-- Get firstname, lastname, location, employeeCount, AvgSalary
-- Long Method
SELECT 
    employee.firstname,
    employee.lastname,
    employee.location,
    temptable.Employee_Count,
    temptable.Avg_Salary
FROM
    employee
        JOIN
    (SELECT 
        location,
            COUNT(*) AS Employee_Count,
            AVG(salary) AS Avg_Salary
    FROM
        employee
    GROUP BY location) temptable ON employee.location = temptable.location;

------------------------------------------------------------------
-- Use OVER PARTITION BY  to achieve this
SELECT firstname,lastname,location,
count(location) OVER (PARTITION BY location) AS employee_count,
AVG(salary) OVER (PARTITION BY location) AS Avg_salary 
FROM employee;

--------------------------------------------------------------
-- ROW_NUM()-FUNCTION
SELECT firstname, lastname, location,salary, 
ROW_NUMBER() OVER (ORDER BY salary DESC) AS ROW_NUM 
FROM employee;

--------------------------------------------------------------
-- Find 5th highest salary
SELECT * FROM (SELECT firstname, lastname, location,salary, 
ROW_NUMBER() OVER (ORDER BY salary DESC) AS ROW_NUM 
FROM employee) temptable
WHERE ROW_NUM = 5;

----------------------------------------------------------------
-- Assign row number for partition based on each location
SELECT firstname, lastname, location,salary, 
ROW_NUMBER() OVER (PARTITION BY location ORDER BY salary DESC) AS ROW_NUM 
FROM employee;

-------------------------------------------------------------------
-- Get highest salary at each location
SELECT * FROM (SELECT firstname, lastname, location,salary, 
ROW_NUMBER() OVER (PARTITION BY location ORDER BY salary DESC) AS ROW_NUM 
FROM employee) temptable 
WHERE ROW_NUM = 1;

----------------------------------------------------------
-- Method 2
SELECT 
    *, MAX(salary)
FROM
    employee
GROUP BY location;

------------------------------------------------------------
-- Method 3
SELECT 
    *
FROM
    employee
GROUP BY location
HAVING MAX(salary);

------------------------------------------------------------ 
-- Method 4
SELECT 
    *
FROM
    employee
GROUP BY location
ORDER BY salary DESC;

----------------------------------------------------
-- RANK & DENSE --

-- row_num()--function
SELECT firstname, lastname, location,salary, 
ROW_NUMBER() OVER (ORDER BY salary DESC) AS ROW_NUM 
FROM employee;

--------------------------------------------------------
-- RANK()--function
SELECT firstname, lastname, location,salary, 
RANK() OVER (ORDER BY salary DESC) AS ROW_NUM 
FROM employee;

-------------------------------------------------
-- DENSE_RANK()--function
SELECT firstname, lastname, location,salary, 
DENSE_RANK() OVER (ORDER BY salary DESC) AS ROW_NUM 
FROM employee;



