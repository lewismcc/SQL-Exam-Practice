USE CGDatabase
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
SELECT * 
FROM employees;

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

SELECT * 
FROM employees
WHERE Job_ID NOT LIKE '%PRO%'
ORDER BY Annual_Salary DESC;

-- find employee 100,112,115,123,250,255 order by last name alpha

SELECT * 
FROM employees 
WHERE Employee_No in (100,112,115,123,250,255)
ORDER BY Last_Name ASC;


-- Request 1

