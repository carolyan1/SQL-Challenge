-- 1.
SELECT 
	e.emp_no,
	last_name,
	first_name,
	sex,
	salary
FROM employees AS e
LEFT JOIN salaries AS s
	ON e.emp_no = s.emp_no;

-- 2.
SELECT 
	first_name,
	last_name,
	hire_date
FROM employees
WHERE EXTRACT(YEAR FROM TO_DATE(hire_date, ‘MM/DD/YYYY’) = 1986;

-- 3.
SELECT
	dm.dept_no,
	dm.emp_no,
	d.dept_name,
	e.last_name,
	e.first_name,
FROM dept_manager AS dm
LEFT JOIN departments AS d
	ON dm.dept_no = d.dept_no
LEFT JOIN employees AS e
	ON dm.emp_no = e.emp_no;

-- 4.	
SELECT
	e.emp_no,
	last_name,
	first_name,
	dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de 
	ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
	ON de.dept_no = d.dept_no;

-- 5.
SELECT
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name = ‘Hercules’ AND last_name LIKE ‘B%’;

-- 6.
SELECT
	e.emp_no,
	last_name,
	first_name,
	dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
	ON de.dept_no = d.dept_no 
WHERE dept_name = ‘Sales’;

-- 7.
SELECT
	e.emp_no,
	last_name,
	first_name,
	dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
LEFT JOIN departments AS d
	ON de.dept_no = d.dept_no 
WHERE dept_name IN (‘Sales’, ‘Development’);
	
-- 8.
SELECT
	last_name,
	COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


