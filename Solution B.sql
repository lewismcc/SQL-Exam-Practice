-- Request 1
SELECT Last_Name, First_Name, Employee_No 
FROM employees 
WHERE Last_Name LIKE 'M%';

-- Request 2 
SELECT Last_Name, First_Name,Phone_Number 
FROM employees
WHERE Hire_Date >='1998-03-24'
ORDER BY Last_Name ASC;

-- Request Three
SELECT * 
FROM jobs
WHERE Min_Salary <= '4500'
ORDER BY Min_Salary DESC;

-- Request four
SELECT * FROM jobs;
SELECT *
FROM departments;

-- Request five
SELECT * FROM employees;

-- Request 6
SELECT * FROM employees;
SELECT Last_Name, First_Name
FROM employees
WHERE MONTH(Hire_Date) LIKE '06' OR '08'
ORDER BY Last_Name ASC;

-- Request seven
SELECT ROUND(Annual_Salary,2) AS 'Monthly Salary'
FROM employees;

-- Request eight
SELECT * FROM employees;
SELECT ROUND(AVG(Annual_Salary),0) 
FROM employees
WHERE Department_No IN (80,60);

-- Request nine

-- Request ten


-- Request eleven
SELECT department_no, department_name FROM departments
WHERE department_no NOT IN (SELECT department_no FROM employees WHERE job_id LIKE 'sa_rep' );

-- Request twelve
SELECT * FROM jobs;
INSERT INTO Jobs (Job_Id, Job_Title, Min_Salary, Max_Salary)
VALUES ('IT_ASST', 'IT Assistant', 5000,8000 );

-- Request thirteen
SELECT * FROM jobs;
UPDATE Jobs 
SET Min_Salary = Min_Salary + 500;

-- Request fifteen


-- Request sixteen


-- Request seventeen
DROP TABLE IF EXISTS job_History;


-- Request eighteen

CREATE TABLE IF NOT EXISTS SAL_HISTORY(
EMPID INT NOT NULL, FIRSTNAME VARCHAR(25),
LASTNAME VARCHAR(25) NOT NULL , HIREDATE DATE NOT NULL,
Annual_Salary decimal(8,2) );
