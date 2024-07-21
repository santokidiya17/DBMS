-- LAB_7 : 
USE CSE_3A_154

-- PART_A :

CREATE TABLE EMP(
	EID INT,
	ENAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY INT,
	JOINDATE DATE,
	CITY VARCHAR(50)
);

INSERT INTO EMP VALUES
(101,'Rahul','Admin',56000,'1-Jan-90','Rajkot'),
(102,'Hardik','IT',18000,'25-Sep-90','Ahmedabad'),
(103,'Bhavin','HR',25000,'14-May-91','Baroda'),
(104,'Bhoomi','Admin',39000,'8-Feb-91','Rajkot'),
(105,'Rohit','IT',17000,'23-Jul-90','Jamnagar'),
(106,'Priya','IT',9000,'18-Oct-90','Ahmedabad'),
(107,'Bhoomi','HR',34000,'25-Dec-91','Rajkot')

SELECT *FROM EMP
----PART A----

-- 1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS Maximum, MIN(SALARY) AS Minimum
FROM EMP;

-- 2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
SELECT SUM(SALARY) AS Total_Sal, AVG(SALARY) AS Average_Sal
FROM EMP;

-- 3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) AS Total_Employees
FROM EMP;

-- 4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS Highest_Salary
FROM EMP
WHERE CITY = 'Rajkot';

-- 5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS Highest_Salary
FROM EMP
WHERE DEPARTMENT = 'IT';

-- 6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(*) AS Employees_After_Feb_8_91
FROM EMP
WHERE JOINDATE > '1991-02-08';

-- 7. Display average salary of Admin department.
SELECT AVG(SALARY) AS Average_Salary
FROM EMP
WHERE DEPARTMENT = 'Admin';

-- 8. Display total salary of HR department.
SELECT SUM(SALARY) AS Total_Salary
FROM EMP
WHERE DEPARTMENT = 'HR';

-- 9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS Total_Cities
FROM EMP;

-- 10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS Total_Departments
FROM EMP;

-- 11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS Minimum_Salary
FROM EMP
WHERE CITY = 'Ahmedabad';

-- 12. Find city wise highest salary.
SELECT CITY, MAX(SALARY) AS Highest_Salary
FROM EMP
GROUP BY CITY;

-- 13. Find department wise lowest salary.
SELECT DEPARTMENT, MIN(SALARY) AS Lowest_Salary
FROM EMP
GROUP BY DEPARTMENT;

-- 14. Display city with the total number of employees belonging to each city.
SELECT CITY, COUNT(*) AS Total_Employees
FROM EMP
GROUP BY CITY;

-- 15. Give total salary of each department of EMP table.
SELECT DEPARTMENT, SUM(SALARY) AS Total_Salary
FROM EMP
GROUP BY DEPARTMENT;

-- 16. Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(SALARY) AS Average_Salary
FROM EMP
GROUP BY DEPARTMENT;


----Part B----
--1. Count the number of employees living in Rajkot.
SELECT COUNT(*) FROM EMP
WHERE CITY = 'Rajkot'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE 
FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT('1-JAN-91') AS EMPLOYEES FROM EMP

----Part C----

--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(CITY) AS CITY_DISTCINT 
FROM EMP
WHERE CITY = 'RAJKOT' OR CITY = 'BARODA'

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT('1-JAN-91') AS EMPLOYEES 
FROM EMP
WHERE DEPARTMENT = 'IT'

--3. Find the Joining Date wise Total Salaries.
SELECT JOINDATE, SUM(SALARY) AS Total_Salaries 
FROM EMP
GROUP BY JOINDATE;

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT, CITY, MAX(SALARY) AS max_salary 
FROM EMP 
WHERE CITY LIKE 'R%' 
GROUP BY DEPARTMENT, CITY;


----EXTRA----
--CALCULATE THE AVERAGE SALARY OF EACH CITY
SELECT AVG(SALARY) AS DISTICNT_SALARY,CITY
FROM EMP
GROUP BY CITY

--SECOND HIGHEST SALARY
SELECT MAX(SALARY) FROM EMP
WHERE SALARY < (SELECT MAX(SALARY) FROM EMP)

--EMPLOYEES JOINED IN FIRST HALF
SELECT COUNT(*) FROM EMP
WHERE MONTH(JOINDATE) < 7

--EMPLOYEE JOINED LAST
SELECT TOP 1 ENAME,SALARY FROM EMP
ORDER BY JOINDATE DESC

--ENAME DEPARTMENT WISE HIGHEST SALARY
SELECT DEPARTMENT,ENAME,MAX(SALARY)
FROM EMP
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMP GROUP BY DEPARTMENT)
GROUP BY ENAME,DEPARTMENT
