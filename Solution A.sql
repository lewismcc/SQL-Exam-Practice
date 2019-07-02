USE CGDatabase;
-- Assignment A Solution --
-- Request one
SELECT Last_Name, First_Name, Employee_No 
FROM employees
WHERE Job_ID = 'IT_PROG' AND Hire_Date >= '1991-05-21'
ORDER BY Last_Name ASC;
-- Request two
SELECT Department_No, Last_Name,Annual_Salary
FROM employees
WHERE hire_Date BETWEEN '1987-09-16' AND '1996-05-12'
ORDER BY Department_No ASC, Last_Name ASC;
-- Request three
SELECT * FROM jobs 
WHERE Max_Salary >= '15000'
ORDER BY Max_Salary DESC; 

-- Request four
SELECT Last_Name, First_Name, Job_ID, Commission_Percent 
FROM employees
WHERE Commission_Percent !='null'
ORDER BY Last_Name ASC, First_Name ASC; 

-- Request five it id = 50 sales id=60
SELECT DISTINCT Job_ID 
FROM employees 
WHERE Department_No ='50' OR Department_No='60';

-- Request six
SELECT Last_Name, ROUND(Annual_Salary/12, 2 ) AS 'Monthly Salary'
FROM employees
WHERE Department_No ='50' OR Department_No='90'
ORDER BY Last_Name DESC;

-- Request seven
SELECT ROUND(SUM(Annual_Salary)/12, 0) 
FROM employees; 

-- Request eight
SELECT COUNT(Employee_No) AS 'Employee Count' 
FROM employees;

-- Request nine
SELECT * FROM jobs;


-- Request thirteen
UPDATE jobs SET Max_Salary = Max_Salary + 1000
WHERE Min_Salary != null ;
SELECT * FROM jobs;

-- Request fourteen
SELECT * 
FROM jobs
ORDER BY Job_ID ASC;

SELECT * 
FROM employees 
WHERE Last_Name LIKE 'W%'
ORDER BY Last_Name ASC;

-- Request eleven
SELECT department_No, department_Name
FROM departments
WHERE Department_No NOT IN (SELECT Department_No FROM employees WHERE Job_Id LIKE '%Prog');

SELECT * FROM employees
WHERE Department_No = 50;


-- find employee 100,112,115,123,250,255 order by last name alpha

SELECT * 
FROM employees 
WHERE Employee_No in (100,112,115,123,250,255)
ORDER BY Last_Name ASC;

SELECT * FROM departments;
SELECT Department_No, Department_Name 
FROM departments
WHERE Department_No NOT IN (
SELECT DISTINCT department_No 
FROM employees 
WHERE Job_ID LIKE '%PROG'
);

-- Request twelve
SELECT * FROM jobs;
INSERT INTO  jobs (Job_ID, Job_Title, Min_Salary, Max_Salary)
VALUE ('IT_ANAL',  'System Analyst', 10000,15000 );

DELETE FROM employees
WHERE employee_no = '696';

-- Request thirteen
UPDATE Jobs 
SET Max_Salary = Max_Salary + 1000;

-- Request fourteen


-- Request fifteen
DELETE FROM job_history
WHERE Employee_No ='102';

SELECT * 
FROM job_history 
ORDER BY Employee_No ASC;

-- Request sixteen
SELECT * FROM departments;
SELECT '5%' AS '% Raise',employee_No, Annual_Salary As 'Old Salary', Annual_Salary * 1.05 AS 'New Salary' 
FROM employees
WHERE Department_No IN (10, 20)
UNION
SELECT '10%' AS '% Raise',employee_No, Annual_Salary As 'Old Salary', Annual_Salary * 1.1 AS 'New Salary' 
FROM employees
WHERE Department_No IN (50,80,90,110)
UNION 
SELECT '0%' AS '% Raise',employee_No, Annual_Salary As 'Old Salary', Annual_Salary  AS 'New Salary' 
FROM employees
WHERE Department_No NOT IN(10,20,50,80,90,110);

-- Request seventeen
CREATE OR REPLACE VIEW Manager_Details AS 
SELECT * FROM employees WHERE employee_No = Manager_ID
WITH CHECK OPTION;
SELECT * FROM Manager_Details;


-- request nineteen
CREATE USER 'test@testmail.com' IDENTIFIED BY 'Passw0rd1';
GRANT SELECT ON ManagerDetails TO 'test@testmail.com';

-- Request twenty
CREATE INDEX LOC_POSTAL_CODE 
ON Locations (Postal_Code);
SHOW INDEX FROM LOC_POSTAL_CODE;
SELECT * FROM locations;