SELECT * FROM employees;
-- Request one
SELECT First_Name, Last_Name, employee_No
FROM employees
WHERE Last_Name LIKE 'S%';
-- Request two
SELECT Last_Name, First_Name, Employee_No
FROM employees
WHERE Job_ID LIKE 'ST_CLERK' AND Hire_Date <= '1998-08-26'
ORDER BY Last_Name ASC;
-- Request three
SELECT department_No, Last_Name, Annual_Salary
From employees
WHERE Hire_Date >='1998-11-15' AND Hire_Date <='1999-12-07';
 -- Request four
 SELECT * FROM jobs;
 SELECT employees.Last_Name, jobs.Job_Title, employees.Commission_Percent
 FROM employees
 JOIN jobs ON employees.job_Id = jobs.job_Id
 WHERE Commission_Percent <=.15;
 
 -- Request five
 SELECT * FROM departments;
 SELECT * FROM Jobs;
 SELECT * FROM employees;
 SELECT Job_Title
 FROM jobs
 WHERE job_Id  LIKE 'ad%' OR job_Id LIKE 'hr%';
 
 -- Request six
 SELECT * FROM employees;
 SELECT Last_Name ,Round((Annual_Salary/12),2) AS 'Month Salary' 
 FROM employees
 WHERE Job_Id LIKE 'MK%'OR Job_Id LIKE 'SA%'
 ORDER BY Last_Name ASC;
 
 -- Request seven
 SELECT ROUND(SUM(Annual_Salary/12),0) AS 'Monthly Salary' 
 FROM employees;
 
 -- Request eight
 SELECT COUNT(Employee_No) AS 'Employees in Finance'
 FROM employees
 WHERE Job_Id LIKE 'FN%';
 
 -- Request nine
 SELECT * FROM departments;
 SELECT * FROM locations;
 SELECT Last_Name, First_Name, Hire_Date, Annual_Salary
 FROM employees
 WHERE department_No IN(
 SELECT department_No FROM departments WHERE Location_Id LIKE '2000'
 );
 
 -- Request ten
SELECT Department_No, Annual_Salary
FROM employees
GROUP BY Department_No
ORDER BY ROUND(AVG(Annual_Salary)) DESC
Limit 1;

-- Request eleven
SELECT Department_No, Department_Name
FROM departments
WHERE department_No NOT IN(
SELECT Department_No FROM employees
WHERE job_Id LIKE 'Mk_Rep');
 
-- Request twelve 
SELECT * FROM Jobs;
INSERT INTO jobs(Job_id, Job_title,Min_Salary,Max_Salary)
Values ('SA_Clerk', 'Sales Clerk', 9000, 12000);

-- Request thirteen
SELECT * FROM jobs;
UPDATE Jobs
SET Max_Salary = Max_Salary +2000;

-- Request fourteen
SELECT * 
FROM jobs
ORDER BY Max_Salary ASC;

-- Request fifteen
SELECT * FROM employees;
SELECT '5%' AS '% raise', employee_No, Annual_Salary AS 'Old Salary', (Annual_Salary*.06) AS 'New Salary'
FROM employees
WHERE department_No IN('80','90')
UNION 
SELECT '12%' AS '% raise',employee_No, Annual_Salary AS 'Old Salary', (Annual_Salary *.12) AS'New Salary' 
FROM employees
WHERE department_No IN ('20','190')
UNION
SELECT '0%' AS'% raise', employee_No, Annual_Salary AS 'Old Salary', (Annual_Salary *1) AS'New Salary'
FROM employees
WHERE department_No Not IN('80','90','20','190');

-- Request sixteen 
-- See diagram

-- Request seventeen
SELECT * FROM employees;
CREATE OR REPLACE VIEW Manager_View AS 
SELECT * FROM employees;
SELECT * FROM  Manager_View;

-- Request eighteen
-- A
DROP VIEW IF EXISTS Manager_Vew;
SELECT * FROM Manager_View;
-- B
CREATE OR REPLACE VIEW Manager_View AS
SELECT Employee_no,First_Name,Last_Name, Email, Phone_Number,
Hire_Date,Job_Id, Commission_Percent, Manager_Id, Department_No
FROM employees;
SELECT * FROM  Manager_View;
-- C



