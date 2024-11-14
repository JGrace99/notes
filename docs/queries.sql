-- Queries than ran successfully
SELECT *
FROM courses;

SELECT *
FROM assignments
LIMIT 10;

SELECT *
From courses
WHERE course_name LIKE 'Intro%';

SELECT *
FROM assignments
WHERE status != 'Completed'
order by due_date;

Select count(*)
from courses;

select min(due_date)
FROM assignments;

--Exercise Questions
SELECT title, due_date, course_id
FROM assignments
WHERE course_id = 'COMP1234';

SELECT min(due_date)
from assignments;

SELECT max(due_date)
from assignments;

SELECT course_id, title
from assignments
where due_date = 2024-10-08;

SELECT due_date, title
from assignments
where due_date LIKE '2024-10%'

SELECT min(due_date), status, course_id
From assignments
Where status = 'Completed'
