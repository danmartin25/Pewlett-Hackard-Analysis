-- Deliverable 1


-- Create retirement titles table
SELECT emp.emp_no,
		emp.first_name,
		emp.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
retirement_titles.first_name,
retirement_titles.last_name,
retirement_titles.title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;


-- Retrieve the number of employees by most recent job title who are about to retire
SELECT COUNT(unique_titles.emp_no), unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;





-- Deliverable 2
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
		emp.first_name,
		emp.last_name,
		emp.birth_date,
		dep.from_date,
		dep.to_date,
		ti.title
INTO mentorship_eligibility
FROM employees AS emp
INNER JOIN dept_emp AS dep
ON (emp.emp_no = dep.emp_no)
INNER JOIN titles AS ti
ON (emp.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (dep.to_date = '9999-01-01')
ORDER BY emp_no;