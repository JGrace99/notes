-- 1. Concatenate Course Name and Semester
Select concat(course_name, ' - ', semester)
from courses;

-- 2. Find Courses with Labs on Fridays
select course_id, course_name, lab_time
from courses
where lab_time like 'Fri%';

-- 3. Upcoming Assignments
select course_id, title, due_date
From assignments
where due_date > CURRENT_DATE
ORDER BY due_date;

-- 4. Count Assignments by Status
select status, count(*)
From assignments
Group by status;

-- 5. Longest Course Name
select course_name, max(length(course_name))
from courses;

-- 6. Uppercase Course Names
select upper(course_name) from courses;

-- 7. Assignments Due in September
select * from assignments
where due_date like '%09%'; 

-- 8. Assignments with Missing Due Dates
select * from assignments
where due_date IS NULL; 
