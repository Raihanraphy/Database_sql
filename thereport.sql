SELECT 
    CASE
    WHEN grades.grade < 8 THEN 'NULL'
    ELSE students.name
    END,
    grades.grade, students.marks
    FROM students, grades 
WHERE students.marks >= grades.min_mark AND students.marks <= grades.max_mark
ORDER BY grades.grade DESC, students.name;