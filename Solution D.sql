SELECT * FROM employees;
-- Request two
SELECT Last_Name, First_Name, Employee_No
FROM employees
WHERE Job_ID LIKE 'ST_CLERK' AND Hire_Date <= '1998-08-26'
ORDER BY Last_Name ASC;