SELECT emp_no,first_name, last_name 
FROM employees
INTO 

SELECT title, from_date, to_date 
FROM titles
INTO 

--DELIVERABLE 1
-- Create retirement titles table
SELECT
e.emp_no,
e.first_name
e.last_name
t.title
t.from_date
t.to_date
INTO retirement_titles
FROM employees AS e
JOIN title AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Create retiring titles table
SELECT COUNT (ut.title), ut.title
FROM unique_titles AS ut
INTO retiring_titles
GROUP BY ut.title
ORDER BY COUNT (ut.title) DESC;
--TO DO STEPS #20-22#


--DELIVERABLE 2
SELECT DISTINCT ON (e.emp_no)
e.emp_no
e.first_name
e.last_name
e.birthdate
de.from_date
de.to_date
t.title
INTO mentor_elig
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN title AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
AND (de.to_dat = '9999-01-01')
ORDER BY e.emp_no ASC;

--DELIVERABLE 3
--Mentor count
SELECT COUNT (me.title) , me.title
INTO mentor_count
FROM mentor_elig AS me
--WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
--AND (t.to_date = '9999-01-01')
--AND (de.to_dat = '9999-01-01')
ORDER BY COUNT (me.title) ASC;

--Retiree count
SELECT (rc.title) , rc.title
INTO retiree_count
FROM retiring_titles AS rc
GROUP BY rc.title
ORDER BY (rc.title) DESC;

--------------------------------------------------------------------------


--DELIVERABLE 1
--Number of Retiring Employees by Title

SELECT
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

SELECT * FROM retirement_titles

-- Using Dictinct with Orderby to remove duplicate 
-- rows within Retiring Employees
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

SELECT * FROM unique_titles

--Retiring titles table by most recent position
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT (ut.title) DESC;

SELECT * FROM retiring_titles

--DELIVERABLE 2
--Number of eligible employees for the mentorship program
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentor_elig
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

SELECT * FROM mentor_elig

--Number of Mentors available by Title
SELECT COUNT (me.title), me.title
INTO mentor_count
FROM mentor_elig AS me
GROUP BY me.title
ORDER BY COUNT (me.title) ASC;

SELECT * FROM mentor_count

--Number of Retiree's needed to replace by Title
SELECT rc.title, rc.count
INTO retiree_count
FROM unique_titles AS rc
GROUP BY rc.title
ORDER BY COUNT (rc.title) DESC;


------------------------
SELECT COUNT (rc.dept_name), rc.dept_name
INTO retiree_count
FROM dept_info AS rc
GROUP BY rc.dept_name
ORDER BY (rc.dept_name) DESC;

SELECT * FROM retiree_count


-------------------------------ACTUAL SQL FILE---------------------------------------

--DELIVERABLE 1
--Number of Retiring Employees by Title

SELECT
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

SELECT * FROM retirement_titles

-- Using Dictinct with Orderby to remove duplicate 
-- rows within Retiring Employees
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

SELECT * FROM unique_titles

--Number of retiring titles table by most recent position
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT (ut.title) DESC;

SELECT * FROM retiring_titles

--DELIVERABLE 2
--Number of eligible employees for the mentorship program
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentor_elig
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

SELECT * FROM mentor_elig

SELECT COUNT (me.title), me.title
INTO mentor_count_num
FROM mentor_elig AS me
GROUP BY me.title
ORDER BY COUNT (me.title) DESC;

SELECT * FROM mentor_count_num

--Number of Mentors hired between 1985-1988 available by Title regardless of birth date.
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentor_elig_table
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (e.birth_date BETWEEN '1965-01-01' AND '9999-12-31')
AND (t.to_date = '9999-01-01')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

SELECT COUNT (me.title), me.title
INTO mentor_count
FROM mentor_elig_table AS me
GROUP BY me.title
ORDER BY COUNT (me.title) ASC;

SELECT * FROM mentor_count

--Number of Retiree's hired between 1985 and 1988 needed to replace by Title that were born in 1952.
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.hire_date,
t.title,
t.from_date,
t.to_date
INTO retiree_count_table
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1952-12-31')
AND (t.to_date = '9999-01-01')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY e.emp_no ASC;

SELECT * FROM retiree_count_table


SELECT COUNT (rc.title), rc.title
INTO retiree_count
FROM retiree_count_table AS rc
GROUP BY rc.title
ORDER BY COUNT (rc.title) ASC;

SELECT * FROM retiree_count