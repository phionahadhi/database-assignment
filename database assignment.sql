CREATE DATABASE edu_institute1;
#creating a table inside the database create
USE edu_institute1;
CREATE TABLE students( student_id INT PRIMARY KEY, # this will create a table with these columns.
  name VARCHAR(50),
  age INT,
  gender CHAR(1),
  enroll_date DATE,
  program VARCHAR(50)
  );
  
  #we will insert records into the already existing table named students.
INSERT INTO students(student_id,name,age,gender,enroll_date,program)
VALUES
(1304,'Dasomi',23,'F','2015-09-15','Data engineer'),
(1367,'Leigh ann',30,'F','2015-09-17','Arts'),
(1335, 'Mariam',27,'F','2015-09-16','Project management'),
(1402,'Poulman',31,'M','2015-09-15','Data science'),
(1380,'Ethan',35,'M','2015-09-20','Computer Science'),
(1001, 'Phionah', 30, 'F', '2024-01-01', 'Law'),
(1091, 'Lynette', 29, 'F', '2024-01-10', 'Data science'),
(789, 'Jane', 28, 'F', '2024-01-20', 'Engineering'),
(1562, 'Judy', 27, 'F', '2024-02-02', 'International Relations'),
(2057, 'Bosii', 31, 'M', '2024-02-15', 'Chemistry');

#selecting columns where the program is data science
SELECT*FROM students WHERE program= 'Data science';

#counting all the rows and naming the results as total_students
SELECT count(*) AS total_students 
FROM students;

# query that returns the current date
SELECT current_date()
FROM students;

#query that returns students name column in upper case and enrollment column 

SELECT UPPER(name) AS students_names, enroll_date
FROM students;

#query to return the total number of students per program in descending order
SELECT COUNT(*) as no_of_students, program
FROM students
GROUP BY program
ORDER BY no_of_students DESC;

#query to return the youngest student name and their age
SELECT name,age
FROM students
ORDER BY age ASC
LIMIT 1;