 
-- On server side
 copy(SELECT first_name, last_name, 
    grades.project_title, grades.grade, projects.max_grade 
    FROM students 
    JOIN grades ON (students.github = grades.student_github) 
    JOIN projects ON (grades.project_title = projects.title) 
WHERE github='jhacks') to '/home/user/src/project-tracker/jane.csv' csv header;


 -- On client-side 
\copy (SELECT * FROM students JOIN grades ON (students.github = grades.student_github) 
    JOIN projects ON (grades.project_title = projects.title) 
    WHERE github='jhacks') to 'test.csv' with CSV


-- source: https://stackoverflow.com/questions/1517635/save-pl-pgsql-output-from-postgresql-to-a-csv-file