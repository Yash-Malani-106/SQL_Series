SHOW DATABASES;
CREATE DATABASE trendytech;

USE trendytech;
SELECT DATABASE();

CREATE TABLE employee
(name VARCHAR(50),
 age INT,
 salary INT
);

SHOW TABLES;

DESCRIBE employee;
DESC employee;

DROP TABLE employee;
SHOW TABLES;

DROP DATABASE trendytech;
SELECT DATABASE();

CREATE DATABASE trendytech;
CREATE TABLE trendytech.employee
(name VARCHAR(50),
 age INT,
 salary INT
);

DROP TABLE employee;

USE trendytech;

SELECT DATABASE();

CREATE TABLE salaries
(name VARCHAR(20),
grade VARCHAR(10),
hourly_rate INT,
salary INT
);

DESC salaries;

CREATE TABLE employee
(firstname VARCHAR(20),
middlename VARCHAR(20),
lastname VARCHAR(20),
age INT,
salary INT,
location VARCHAR(20)
);

SHOW TABLES;
DESC employee;

SELECT * FROM employee;

INSERT INTO employee VALUES('Kapil','Kumar','Yadav',28,50000,'Banglore');

INSERT INTO employee(firstname,middlename,lastname,age,salary,location) 
VALUES('Satish','Kumar','Yadav',28,50000,'Banglore');

SELECT * FROM employee;

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES('Rahul','Yadav',33,100000,'Banglore');

SELECT * FROM employee;

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES("Yas'h",'Malani',21,90000,'Banglore');

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES("Yas'h",'Malani',21,90000,'Banglore');

SELECT * FROM employee;

DROP TABLE employee;

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES("Part\'ik",'Kumar',26,71000,'Banglore');

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES("Part\'ikpokmutrwdchjjnnk",'Kumar',26,71000,'Banglore');

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES("Part\'ik",'Kumar',twenty,71000,'Banglore');

INSERT INTO employee(middlename,lastname,age,salary,location) 
VALUES("Sonu",'Kumar',26,71000,'Banglore');

CREATE TABLE employee
(firstname VARCHAR(20) NOT NULL,
middlename VARCHAR(20),
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location VARCHAR(20) NOT NULL);

DESC employee;

INSERT INTO employee(middlename,lastname,age,salary,location) 
VALUES("Sonu",'Kumar',26,71000,'Banglore'); 

DROP TABLE employee;

CREATE TABLE employee
(firstname VARCHAR(20) NOT NULL,
middlename VARCHAR(20),
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location VARCHAR(20) DEFAULT 'Banglore');

DESC employee;

INSERT INTO employee(firstname,lastname,age,salary) 
VALUES("Partik",'Kumar',20,71000);

SELECT * FROM employee;

DROP TABLE employee;

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES("Partik",'Kumar',24,85000,'Hyderabad');

INSERT INTO employee(firstname,lastname,age,salary,location) 
VALUES("Partik",'Kumar',24,85000,NULL);

CREATE TABLE employee
(firstname VARCHAR(20) NOT NULL,
middlename VARCHAR(20),
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location VARCHAR(20) NOT NULL DEFAULT 'Banglore');

INSERT INTO employee(firstname,lastname,age,salary) 
VALUES("Partik",'Kumar',24,85000);

INSERT INTO employee(firstname,lastname,age,salary) 
VALUES("Partik",'Kumar',24,85000);

SELECT * FROM employee;

DROP TABLE employee;

CREATE TABLE employee
(id INT,
firstname VARCHAR(20) NOT NULL,
middlename VARCHAR(20),
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location VARCHAR(20) NOT NULL DEFAULT 'Banglore');

INSERT INTO employee(id,firstname,lastname,age,salary) 
VALUES(1,"Partik",'Kumar',24,85000);

CREATE TABLE employee
(id INT PRIMARY KEY,
firstname VARCHAR(20) NOT NULL,
middlename VARCHAR(20),
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location VARCHAR(20) NOT NULL DEFAULT 'Banglore');

DESC employee;

DROP TABLE employee;

CREATE TABLE employee
(id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(20) NOT NULL,
middlename VARCHAR(20),
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location VARCHAR(20) NOT NULL DEFAULT 'Banglore');

INSERT INTO employee(firstname,lastname,age,salary) 
VALUES("Partik",'Kumar',24,85000);

INSERT INTO employee(firstname,lastname,age,salary) 
VALUES("Yash",'MALANI',21,65000);

SELECT * FROM employee;
DROP TABLE employee;

CREATE TABLE employee
(
firstname VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
PRIMARY KEY(firstname,lastname)
);

DESC employee;

INSERT INTO employee(firstname,lastname,age) 
VALUES("Partik",'Kumar',24);

INSERT INTO employee(firstname,lastname,age) 
VALUES("Partik",'Yadav',24);

DROP TABLE employee;

CREATE TABLE employee
(
id INT UNIQUE KEY,
firstname VARCHAR(20),
lastname VARCHAR(20),
age INT NOT NULL);

DESC employee;
INSERT INTO employee(id,firstname,lastname,age) 
VALUES(NULL,"Partik",'Yadav',24);

CREATE TABLE sales
(id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(30) NOT NULL,
price INT NOT NULL ,
quantity INT
);

SHOW TABLES;

DESC sales;

DROP DATABASE trendytech;

CREATE DATABASE trendytech;
SHOW DATABASES;
USE trendytech;
SHOW TABLES;

CREATE TABLE employee
(id INT PRIMARY KEY,
firstname VARCHAR(20) NOT NULL,
middlename VARCHAR(20),
lastname VARCHAR(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location VARCHAR(30) NOT NULL DEFAULT "Banglore"
);

DESC employee;

INSERT INTO employee(id, firstname, lastname,age, salary) 
VALUES(1,"Yash","Malani",21,50000);

INSERT INTO employee(id, firstname, lastname,age, salary) 
VALUES(2,"Mahesh","Sharma",23,40000),(3,"Ramjet","Malani",26,45000);

SELECT * FROM employee;

SELECT firstname, lastname FROM employee;

SELECT * FROM employee
WHERE age > 23;

SELECT * FROM employee
WHERE BINARY firstname = "ramjet";

SELECT * FROM employee
WHERE firstname = "ramjet";

SELECT firstname, lastname FROM employee;

SELECT firstname AS name, lastname AS surname FROM employee;

SELECT * FROM employee;

UPDATE employee SET lastname='Sinha'  WHERE firstname='Mahesh';

UPDATE employee SET lastname="yadav" WHERE firstname="yash";

SELECT * FROM employee;

UPDATE employee SET location= "Hyderabad"
WHERE firstname="Yash";

UPDATE employee SET salary = salary + 5000;

UPDATE employee SET salary = 60000 WHERE firstname="Yash" AND location="Hyderabad";

DELETE FROM employee WHERE id=3;

DESC employee;
ALTER TABLE employee ADD COLUMN jobtitle VARCHAR(50);

ALTER TABLE employee DROP COLUMN jobtitle;

ALTER TABLE employee MODIFY COLUMN firstname VARCHAR(30);

SELECT * FROM employee;

ALTER TABLE employee DROP PRIMARY KEY;
ALTER TABLE employee ADD PRIMARY KEY(id);

TRUNCATE TABLE employee;

CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY,
student_fname VARCHAR(30) NOT NULL,
student_lname VARCHAR(30) NOT NULL,
student_mname VARCHAR(30),
student_email VARCHAR(30) UNIQUE KEY NOT NULL,
student_phone VARCHAR(20) UNIQUE KEY NOT NULL ,
student_alternatePhone VARCHAR(20),
enrollment_date TIMESTAMP NOT NULL,
years_of_exp INT NOT NULL,
student_company VARCHAR(40),
batch_date VARCHAR(30) NOT NULL,
source_of_joining VARCHAR (30) NOT NULL,
location VARCHAR(30) NOT NULL
);

DESC students;

ALTER TABLE students  MODIFY COLUMN 
enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;

INSERT INTO students 
(student_fname, student_lname, student_email, student_phone, 
 years_of_exp, student_company, batch_date, source_of_joining,location)
 VALUES
("Rohit","Sharma","rohit@gmail.com","9191919191",
  6,"Walmart","5-02-2021","LinkedIn","Pune"),
("Virat","Kohli","virat@gmail.com","9191978691",
  4,"Meta","17-02-2021","LinkedIn","Mumbai"),
("Rahul","KL","rahul@gmail.com","9193419191",
  3,"Amazon","5-02-2021","LinkedIn","Chandigarh"),
("Hardik","Pandya","hardik@gmail.com","8991919191",
  2,"Instagram","12-02-2021","LinkedIn","Banglore"),
("Rishab","Pant","rishab@gmail.com","8991964191",
  5,"Adobe","17-02-2021","LinkedIn","Delhi"),
("Suryakumar","Yadav","surya@gmail.com","8999619191",
  2,"TCS","15-02-2021","Instagram","Mumbai"),
("Ravindra","Jadega","ravi@gmail.com","8991019191",
  8,"J P Morgan","12-02-2021","LinkedIn","Ahemdabad"),
("Jasprit","Bumrah","jassi@gmail.com","8991919456",
  7,"Citi Bank","17-02-2021","LinkedIn","Pune");

SELECT * FROM students;

CREATE TABLE courses
(course_id INT AUTO_INCREMENT PRIMARY KEY,
 course_name VARCHAR(30) NOT NULL,
 course_duration_months VARCHAR(10) NOT NULL,
 course_fee INT NOT NULL);

DESC courses;

INSERT INTO courses (course_name, course_duration_months, course_fee)
VALUES("big data",6,50000);
INSERT INTO courses (course_name, course_duration_months, course_fee)
VALUES("data science",5,55000),
("web development",4,34000),
("devops",2,25000);

SELECT * FROM courses;

DELETE FROM courses WHERE course_id >= 5;

ALTER TABLE students ADD COLUMN selected_course INT NOT NULL DEFAULT 1;

DROP TABLE students;

CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY,
student_fname VARCHAR(30) NOT NULL,
student_lname VARCHAR(30) NOT NULL,
student_mname VARCHAR(30),
student_email VARCHAR(30) UNIQUE KEY NOT NULL,
student_phone VARCHAR(20) UNIQUE KEY NOT NULL ,
student_alternatePhone VARCHAR(20),
selected_course INT NOT NULL DEFAULT 1,
enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
years_of_exp INT NOT NULL,
student_company VARCHAR(40),
batch_date VARCHAR(30) NOT NULL,
source_of_joining VARCHAR (30) NOT NULL,
location VARCHAR(30) NOT NULL
);

INSERT INTO students 
(student_fname, student_lname, student_email, student_phone, selected_course,
 years_of_exp, student_company, batch_date, source_of_joining,location)
 VALUES
("Rohit","Sharma","rohit@gmail.com","9191919191",2,
  6,"Walmart","5-02-2021","LinkedIn","Pune"),
("Virat","Kohli","virat@gmail.com","9191978691",3,
  4,"Meta","17-02-2021","LinkedIn","Mumbai"),
("Rahul","KL","rahul@gmail.com","9193419191",1,
  3,"Amazon","5-02-2021","LinkedIn","Chandigarh"),
("Hardik","Pandya","hardik@gmail.com","8991919191",4,
  2,"Instagram","12-02-2021","LinkedIn","Banglore"),
("Rishab","Pant","rishab@gmail.com","8991964191",3,
  5,"Adobe","17-02-2021","LinkedIn","Delhi"),
("Suryakumar","Yadav","surya@gmail.com","8999619191",2,
  2,"TCS","15-02-2021","Instagram","Mumbai"),
("Ravindra","Jadega","ravi@gmail.com","8991019191",1,
  8,"J P Morgan","12-02-2021","LinkedIn","Ahemdabad"),
("Jasprit","Bumrah","jassi@gmail.com","8991919456",2,
  7,"Citi Bank","17-02-2021","LinkedIn","Pune");

SELECT id,student_fname,student_lname,student_email,student_phone,selected_course,
years_of_exp, student_company, batch_date, source_of_joining, location FROM students;

DROP TABLE students;

CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY,
student_fname VARCHAR(30) NOT NULL,
student_lname VARCHAR(30) NOT NULL,
student_mname VARCHAR(30),
student_email VARCHAR(30) UNIQUE KEY NOT NULL,
student_phone VARCHAR(20) UNIQUE KEY NOT NULL ,
student_alternatePhone VARCHAR(20),
selected_course INT NOT NULL DEFAULT 1,
enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
years_of_exp INT NOT NULL,
student_company VARCHAR(40),
batch_date VARCHAR(30) NOT NULL,
source_of_joining VARCHAR (30) NOT NULL,
location VARCHAR(30) NOT NULL,
FOREIGN KEY (selected_course) REFERENCES courses(course_id)
);

DESC students;

INSERT INTO students 
(student_fname, student_lname, student_email, student_phone, selected_course,
 years_of_exp, student_company, batch_date, source_of_joining,location)
 VALUES
("Rohit","Sharma","rohit@gmail.com","9191919191",2,
  6,"Walmart","5-02-2021","LinkedIn","Pune"),
("Virat","Kohli","virat@gmail.com","9191978691",3,
  4,"Meta","17-02-2021","LinkedIn","Mumbai"),
("Rahul","KL","rahul@gmail.com","9193419191",1,
  3,"Amazon","5-02-2021","LinkedIn","Chandigarh"),
("Hardik","Pandya","hardik@gmail.com","8991919191",4,
  2,"Instagram","12-02-2021","LinkedIn","Banglore"),
("Rishab","Pant","rishab@gmail.com","8991964191",3,
  5,"Adobe","17-02-2021","LinkedIn","Delhi"),
("Suryakumar","Yadav","surya@gmail.com","8999619191",2,
  2,"TCS","15-02-2021","Instagram","Mumbai"),
("Ravindra","Jadega","ravi@gmail.com","8991019191",1,
  8,"J P Morgan","12-02-2021","LinkedIn","Ahemdabad"),
("Jasprit","Bumrah","jassi@gmail.com","8991919456",2,
  7,"Citi Bank","17-02-2021","LinkedIn","Pune");
  
SELECT DISTINCT
    (location)
FROM
    students;
    
------------------------------------
SELECT DISTINCT
    (student_company)
FROM
    students;
    
------------------------------------------
SELECT DISTINCT
    (source_of_joining)
FROM
    students;
 
-------------------------------- 
SELECT 
    *
FROM
    students
ORDER BY years_of_exp;

----------------------------------
SELECT 
    student_fname
FROM
    students
ORDER BY student_fname;

---------------------------------------
SELECT 
    student_fname, years_of_exp
FROM
    students
ORDER BY years_of_exp DESC;

----------------------------------------
SELECT 
    *
FROM
    students
ORDER BY years_of_exp DESC
LIMIT 3;

-------------------------------------
SELECT 
    source_of_joining
FROM
    students
ORDER BY enrollment_date DESC
LIMIT 5;
 
-------------------------------------- 
SELECT DISTINCT
    (source_of_joining)
FROM
    students
ORDER BY enrollment_date DESC
LIMIT 5;

-------------------------------------
SELECT 
    *
FROM
    students
WHERE
    student_fname LIKE '%ra%';
    
----------------------------
SELECT 
    *
FROM
    students
WHERE
    student_fname LIKE 'ra%';

---------------------------------
SELECT 
    *
FROM
    students
WHERE
    student_fname LIKE '%at';

------------------------------
SELECT 
    *
FROM
    students
WHERE
    student_fname LIKE '______';

-----------------------------------
SELECT 
    COUNT(DISTINCT student_company)
FROM
    STUDENTS;

---------------------------------
SELECT 
    COUNT(DISTINCT location)
FROM
    STUDENTS;

-------------------------------
SELECT 
    COUNT(DISTINCT source_of_joining)
FROM
    STUDENTS;

-----------------------
SELECT 
    batch_date
FROM
    students;
 
--------------------------------
SELECT 
    COUNT(*)
FROM
    STUDENTS
WHERE
    batch_date LIKE '%-02-%';

-------------------------------
SELECT 
    COUNT(*)
FROM
    STUDENTS
WHERE
    batch_date LIKE '17%';
    
---------------------------
SELECT 
    source_of_joining, COUNT(*)
FROM
    students
GROUP BY source_of_joining;

---------------------------
SELECT 
    location, COUNT(*)
FROM
    students
GROUP BY location;

-----------------------------
SELECT 
    source_of_joining, location, COUNT(*)
FROM
    students
GROUP BY source_of_joining , location;
  
-----------------------------------
SELECT 
    selected_course, COUNT(*)
FROM
    students
GROUP BY selected_course;

---------------------------------------
SELECT 
    batch_date, selected_course, COUNT(*)
FROM
    students
GROUP BY batch_date , selected_course;

----------------------------------
SELECT 
    MIN(years_of_exp)
FROM
    students;
    
-------------------------------
SELECT 
    MAX(years_of_exp)
FROM
    students;  

-------------------------------------
SELECT 
    source_of_joining, MAX(years_of_exp)
FROM
    students
GROUP BY source_of_joining;

-----------------------------------------
SELECT 
    source_of_joining, SUM(years_of_exp)
FROM
    students
GROUP BY source_of_joining;

------------------------------------------
SELECT 
    source_of_joining, AVG(years_of_exp)
FROM
    students
GROUP BY source_of_joining;

-------------------------------------------------
SELECT 
    location, MAX(years_of_exp)
FROM
    students
GROUP BY location;

-----------------------------------
SELECT 
    location, AVG(years_of_exp)
FROM
    students
GROUP BY location;

----------------------------------------
SELECT 
    student_company, AVG(years_of_exp)
FROM
    students
GROUP BY student_company;

--------------------------------------------

 CREATE TABLE courses_new
(course_id INT AUTO_INCREMENT PRIMARY KEY,
 course_name VARCHAR(30) NOT NULL,
 course_duration_months DECIMAL(3,1) NOT NULL,
 course_fee INT NOT NULL);

DESC courses_new;

INSERT INTO courses_new (course_name, course_duration_months, course_fee)
VALUES("big data",5.5,50000);
INSERT INTO courses_new (course_name, course_duration_months, course_fee)
VALUES("data science",3.5,55000),
("web development",7,34000),
("devops",2.5,25000);
 
SELECT * FROM courses_new;

UPDATE courses_new SET course_fee = 37500 WHERE course_id = 3;
  
 DROP TABLE courses_new; 
 
CREATE TABLE courses_new
(
 course_id INT AUTO_INCREMENT PRIMARY KEY,
 course_name VARCHAR(30) NOT NULL,
 course_duration_months DECIMAL(3,1) NOT NULL,
 course_fee INT NOT NULL,
 changed_at TIMESTAMP DEFAULT NOW()
 );

INSERT INTO courses_new (course_name, course_duration_months, course_fee)
VALUES("big data",5.5,50000);
INSERT INTO courses_new (course_name, course_duration_months, course_fee)
VALUES("data science",3.5,55000),
("web development",7,34000),
("devops",2.5,25000);
 
 ------------------------------------------
SELECT 
    *
FROM
    courses_new;

-----------------------------------------
INSERT INTO courses_new (course_name, course_duration_months, course_fee)
VALUES("deveops",10.5,10000);

UPDATE courses_new SET course_fee = 44000 WHERE course_id = 1;

DROP TABLE courses_new;

CREATE TABLE courses_new
(
 course_id INT AUTO_INCREMENT PRIMARY KEY,
 course_name VARCHAR(30) NOT NULL,
 course_duration_months DECIMAL(3,1) NOT NULL,
 course_fee INT NOT NULL,
 changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
 );

INSERT INTO courses_new (course_name, course_duration_months, course_fee)
VALUES("big data",5.5,50000);
INSERT INTO courses_new (course_name, course_duration_months, course_fee)
VALUES("data science",3.5,55000),
("web development",7,34000),
("devops",2.5,25000);

-------------------------------------------
SELECT 
    *
FROM
    courses_new;
----------------------------------------------
UPDATE courses_new 
SET 
    course_fee = 44000
WHERE
    course_id = 1;

----------------------------------------------------
SELECT 
    *
FROM
    students
WHERE
    location = 'Banglore';

------------------------------------------------------
SELECT 
    *
FROM
    students
WHERE
    location != 'Banglore';

--------------------------------------------------
SELECT 
    *
FROM
    courses_new
WHERE
    course_name LIKE '%data%';

--------------------------------------
SELECT 
    *
FROM
    courses_new
WHERE
    course_name NOT LIKE '%data%';

----------------------------------------------
SELECT * FROM students 
WHERE location = "Banglore" AND 
source_of_joining = "LinkdIn" AND
years_of_exp >= 3;

-------------------------------------------
SELECT 
    *
FROM
    students
WHERE
    years_of_exp < 3 OR years_of_exp > 5;
    
---------------------------------------------
SELECT 
    *
FROM
    students
WHERE
    years_of_exp NOT BETWEEN 3 AND 5;

-------------------------------------------------
SELECT * FROM students 
WHERE student_company = "Walmart" OR
student_company = "Instagram" OR
student_company = "Meta";

-----------------------------------------------------
SELECT 
    *
FROM
    students
WHERE
    student_company IN ('Walmart' , 'Instagram', 'Meta');

--------------------------------------------------------
SELECT 
    *
FROM
    students
WHERE
    student_company NOT IN ('Walmart' , 'Instagram', 'Meta');

--------------------------------------------------------
SELECT 
    *
FROM
    courses_new;

----------------------------------------------------
SELECT 
    course_id,
    course_name,
    course_fee,
    CASE
        WHEN course_duration_months > 4 THEN 'Masters'
        ELSE 'DIPLOMA'
    END AS course_type
FROM
    courses_new;

--------------------------------------------------------    
SELECT 
    *
FROM
    students;
    
----------------------------------------------------------
SELECT 
    student_fname,
    student_company,
    CASE
        WHEN student_company IN ('Walmart' , 'Meta', 'Instagram') THEN 'Product Company'
        ELSE 'Service Company'
    END AS company_type
FROM
    students;

--------------------------------------------------------------    
SELECT 
    course_name
FROM
    courses_new
WHERE
    course_id = (SELECT 
					selected_course
				FROM
					students
				WHERE
					student_fname = 'Rahul');


--------------------------------------------------------------
SELECT 
    student_fname, student_lname, course_name
FROM
    students
        JOIN
    courses_new ON students.selected_course = courses_new.course_id;

----------------------------------------------------
CREATE TABLE students_new AS SELECT * FROM
    students;
    
CREATE TABLE new_courses AS SELECT * FROM
    courses_new;

------------------------------------------------------------
SELECT 
    *
FROM
    students_new;
    
SELECT 
    *
FROM
    new_courses;
    
    
DELETE FROM new_courses 
WHERE
    course_id = 2;

-----------------------------------------------------
SELECT 
    students_new.student_fname,
    students_new.student_lname,
    new_courses.course_name
FROM
    students_new
        JOIN
    new_courses ON students_new.selected_course = new_courses.course_id;
    
-----------------------------------------------------------------
SELECT 
    students_new.student_fname,
    students_new.student_lname,
    new_courses.course_name
FROM
    students_new
        LEFT JOIN
    new_courses ON students_new.selected_course = new_courses.course_id;

---------------------------------------------------------------
SELECT 
    students_new.student_fname,
    students_new.student_lname,
    new_courses.course_name
FROM
    students_new
        RIGHT JOIN
    new_courses ON students_new.selected_course = new_courses.course_id;
    
---------------------------------------------------------------------
(SELECT 
    students_new.student_fname,
    students_new.student_lname,
    new_courses.course_name
FROM
    students_new
        LEFT JOIN
    new_courses ON students_new.selected_course = new_courses.course_id) UNION (SELECT 
    students_new.student_fname,
    students_new.student_lname,
    new_courses.course_name
FROM
    students_new
        RIGHT JOIN
    new_courses ON students_new.selected_course = new_courses.course_id);

SHOW TABLES;


