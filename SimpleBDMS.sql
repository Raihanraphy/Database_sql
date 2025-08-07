-- Create a table for students
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(2)
);

-- Insert sample data
INSERT INTO Students VALUES (1, 'Alice', 20, 'A');
INSERT INTO Students VALUES (2, 'Bob', 22, 'B');
INSERT INTO Students VALUES (3, 'Charlie', 21, 'A');
INSERT INTO Students VALUES (4, 'Diana', 23, 'C');

-- Select all students
SELECT * FROM Students;

-- Count students by grade
SELECT grade, COUNT(*) AS total
FROM Students
GROUP BY grade;

-- Find average age
SELECT AVG(age) AS average_age FROM Students;
