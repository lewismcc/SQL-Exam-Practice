USE CGDatabase;

-- this is a comment
SELECT * FROM departments;

SELECT * FROM jobs ;

SELECT Job_title FROM JOBS;

-- grab first & last name + annual salary for all employees 
SELECT * FROM employees;

SELECT First_Name, Last_Name, Annual_Salary from employees;

-- where clause demo
SELECT First_Name, Last_Name,Annual_Salary FROM employees WHERE Annual_Salary < '10000';

SELECt Last_Name, Annual_Salary FROM employees WHERE Annual_Salary > '20000';

SELECT * FROM employees WHERE Last_Name = 'Marsh' AND Annual_Salary > '20000';

SelEcT Job_ID, Job_Title FrOm jobs WhErE Max_Salary <= '25000' AnD min_Salary >='10000';

SELECT * FROM employees;

SELECT Employee_No, First_Name, Last_Name, Phone_Number, Job_ID, Annual_Salary
FROM employees 
WHERE Annual_Salary >= '15000' AND Annual_Salary <='35000';  

SELECT DISTINCT Job_ID FROM employees WHERE Annual_Salary >='15000';

-- get all employees in department 50
SELECT * FROM employees WHERE Department_No='50' ORDER BY Last_Name ASC;

SELECT Department_No, department_Name FROM departments ORDER BY Department_Name ASC; 

SELECT Employee_No, First_Name, Last_Name, Hire_Date, Department_No
FROM employees 
WHERE Department_no ='50' ORDER BY Hire_Date DESC;
SELECT * FROM departments;
SElECT * FROM employees WHERE Employee_No ='107';
SELECT * FROM locations;
SELECT * FROM departments WHERE Location_ID = '1700';
SELECT * FROM departments WHERE Location_ID = '2000';
SELECT * FROM departments WHERE Department_No = '70';

SELECT First_Name, Last_Name, Annual_Salary, Job_ID FROM employees WHERE Employee_No = '250';

-- first name, lastname, annual salary from department 50 order by lastname asc

SELECT  Last_Name,First_Name, ROUND(Annual_Salary/52) AS 'Weekly salary' 
FROM employees
WHERE Department_No ='50'
ORDER BY Last_Name ASC;

-- find job name , minimum weekly salary and maximum salary weekly to 0 decimal places 
SELECT Job_Title, ROUND(Min_Salary/ 52, 0) AS 'MIN Weekly salary', ROUND(Max_Salary/52,0) AS 'MAX Weekly salary' 
FROM jobs ORDER BY Max_Salary ASC;

SELECT  ROUND(SUM(Annual_Salary)/12, 2) AS 'IT Department Pay' 
FROM employees 
WHERE Department_No ='50' AND Job_ID != 'IT_MGR';
SELECT * FROM employees ORDER BY Annual_Salary DESC LIMIT 5;

/*
	INSERT INTO Table ('ROW','ROW','ROW')
    VALUES ('value', 'value', 'value')
*/
Insert Into Employees 
(Employee_No, First_Name, Last_Name, Email, Phone_Number,Hire_Date, Job_ID, Annual_Salary, Department_No) 
Values (696,'Lewis','McCormac','LMcCormac','222 696 969','2019-06-25','IT_MGR',35000,50);

SELECT * FROM employees WHERE Department_No ='50';
UPDATE employees
SET Annual_Salary = Annual_Salary* 2
WHERE Employee_No = '696';
SELECT * FROM employees;

UPDATE employees
SET Annual_Salary = Annual_Salary-1000
WHERE Employee_No != '696';

SELECT * 
FROM employees
WHERE Department_No ='50';

UPDATE employees 
SET First_Name = 'Robert'
WHERE First_Name = 'Roberto' 
AND Last_Name = 'Mace';

SELECT * FROM Jobs;
UPDATE jobs
SET Max_Salary = Max_Salary + 1000;

-- give a list of departments with the number of jobs in each
-- give a list of job_ids with the number of employees that have that job 
-- give  a list of annual salaries with the number of people who earn that amount
 SELECT Department_no AS 'Department Number', COUNT(DISTINCT Job_Id) AS 'jobs per department'
 FROM employees
 GROUP BY Department_No;
 
 SELECT Job_id, COUNT(Employee_No) AS 'Number of employees' 
 FROM employees
 GROUP BY job_Id;
 
 SELECT Annual_Salary, COUNT(Employee_No) AS 'Number of employees in pay bracket'
 FROM employees
 GROUP BY Annual_Salary
 ORDER BY Count(Employee_No) DESC;

-- first and last name of all employees who have movied job within the company
-- also show the previous job title
-- when they started/ ended it

/*
Give a list of first & last names, department names. city names 
of everyone working in Americas ordered by salary descending
*/
SELECT * FROM regions;
SELECT employees.First_Name, employees.Last_Name, departments.Department_Name, locations.City
FROM departments
INNER JOIN employees ON employees.Department_No = departments.Department_No
INNER JOIN locations ON departments.Location_ID = locations.Location_ID
INNER JOIN countries ON locations.Country_Id = countries.Country_Id
INNER JOIN regions ON countries.Region_Id = regions.Region_Id
WHERE regions.Region_Name = 'Americas'
ORDER BY employees.Annual_Salary DESC;



