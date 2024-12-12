REM   Script: listaselect2
REM   select2

SELECT first_name || ' ' || last_name AS full_name
FROM employees
ORDER BY first_name, last_name;

SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name
FROM employees
ORDER BY last_name DESC;

SELECT *
FROM employees
ORDER BY department_id;

SELECT *
FROM employees
WHERE salary > 5000
ORDER BY last_name;

SELECT *
FROM employees
WHERE salary BETWEEN 3000 AND 6000
ORDER BY salary;

SELECT first_name, phone_number
FROM employees
WHERE department_id IN (10, 30);

SELECT hire_date, first_name
FROM employees
ORDER BY hire_date DESC;

SELECT *
FROM employees
WHERE hire_date BETWEEN TO_DATE('2001-01-01', 'YYYY-MM-DD') AND TO_DATE('2005-12-31', 'YYYY-MM-DD');

SELECT *
FROM employees
WHERE manager_id IS NULL OR commission_pct IS NULL;

SELECT *
FROM employees
WHERE commission_pct IS NOT NULL;

SELECT DISTINCT job_id
FROM employees;

SELECT department_id
FROM employees
WHERE job_id LIKE '%MAN%' OR job_id LIKE '%MGR%';

SELECT first_name || ' ' || last_name AS full_name, LENGTH(full_name) AS name_length
FROM employees
ORDER BY name_length;

SELECT *
FROM employees
WHERE first_name LIKE 'B%';

SELECT *
FROM employees
WHERE job_id = 'IT_PROG'
ORDER BY salary DESC;

SELECT department_id, manager_id
FROM departments;

SELECT *
FROM employees
WHERE first_name LIKE 'B%' AND last_name LIKE '%n%';

SELECT first_name || ' ' || last_name AS full_name, salary + (salary * NVL(commission_pct, 0)) AS total_salary
FROM employees
ORDER BY total_salary;

SELECT first_name || ' ' || last_name AS full_name, job_id
FROM employees
WHERE hire_date NOT BETWEEN TO_DATE('2000-01-01', 'YYYY-MM-DD') AND TO_DATE('2002-12-31', 'YYYY-MM-DD');

SELECT *
FROM employees
WHERE department_id IN (10, 30, 50, 80, 90);

SELECT first_name, last_name
FROM employees
ORDER BY first_name;

SELECT first_name, EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM hire_date) AS years_in_company
FROM employees;

SELECT SUM(salary) AS total_payroll
FROM employees;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees;

SELECT AVG(salary) AS average_salary
FROM employees;

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees
WHERE department_id = 80;

SELECT department_id, SUM(salary) AS total_payroll
FROM employees
GROUP BY department_id;

SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

SELECT department_id, MIN(salary) AS min_salary
FROM employees
GROUP BY department_id;

SELECT department_id, MIN(salary) AS min_salary
FROM employees
GROUP BY department_id
HAVING MIN(salary) < 5000;

SELECT department_id, MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees
GROUP BY department_id;

SELECT job_id, COUNT(*) AS total_employees
FROM employees
GROUP BY job_id;

SELECT job_id, COUNT(*) AS total_employees
FROM employees
GROUP BY job_id
HAVING COUNT(*) >= 5;

SELECT job_id, AVG(salary) AS average_salary, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY job_id;

SELECT job_id, AVG(salary) AS average_salary
FROM employees
GROUP BY job_id
HAVING AVG(salary) <= 5000;