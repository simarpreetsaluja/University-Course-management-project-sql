CREATE DATABASE university_course_management1;



-- 1. Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL);

-- 2. Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    BirthDate DATE,
    EnrollmentDate DATE);

-- 3. Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DepartmentID INT REFERENCES Departments(DepartmentID),
    Credits INT);

-- 4. Create Instructors table
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT REFERENCES Departments(DepartmentID),
    Salary NUMERIC(10,2));

-- 5. Create Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT REFERENCES Students(StudentID),
    CourseID INT REFERENCES Courses(CourseID),
    EnrollmentDate DATE);


-- 1. Insert Departments
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Commerce'),
(4, 'Physics');

-- 2. Insert Students
INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01'),
(3, 'Amit', 'Sharma', 'amit@email.com', '2002-03-10', '2023-08-01'),
(4, 'Priya', 'Verma', 'priya@email.com', '2001-07-12', '2024-08-01'),
(5, 'Rahul', 'Singh', 'rahul@email.com', '2000-11-20', '2020-08-01'),
(6, 'Neha', 'Gupta', 'neha@email.com', '2003-02-14', '2025-08-01'),
(7, 'Arjun', 'Yadav', 'arjun@email.com', '2001-09-09', '2022-08-01'),
(8, 'Sneha', 'Mishra', 'sneha@email.com', '2002-04-18', '2023-08-01'),
(9, 'Vikas', 'Kumar', 'vikas@email.com', '2000-12-05', '2021-08-01'),
(10, 'Pooja', 'Jain', 'pooja@email.com', '2003-06-22', '2024-08-01'),
(11, 'Rohan', 'Mehta', 'rohan@email.com', '2001-01-30', '2022-08-01'),
(12, 'Ananya', 'Das', 'ananya@email.com', '2002-08-16', '2023-08-01');

-- 3. Insert Courses
INSERT INTO Courses
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 1, 4),
(103, 'Calculus', 2, 4),
(104, 'Linear Algebra', 2, 3),
(105, 'Financial Accounting', 3, 3),
(106, 'Classical Mechanics', 4, 4);

-- 4. Insert Instructors
INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID, Salary)
VALUES
(1, 'Alice', 'Johnson', 'alice@univ.com', 1, 65000),
(2, 'Bob', 'Lee', 'bob@univ.com', 2, 70000),
(3, 'Carol', 'Davis', 'carol@univ.com', 3, 55000),
(4, 'David', 'Wilson', 'david@univ.com', 4, 60000);

-- 5. Insert Enrollments
INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, 101, '2022-08-01'),
(2, 2, 101, '2021-08-01'),
(3, 3, 101, '2023-08-01'),
(4, 4, 101, '2024-08-01'),
(5, 5, 101, '2020-08-01'),
(6, 6, 101, '2025-08-01'),
(7, 7, 101, '2022-08-01'),
(8, 8, 101, '2023-08-01'),
(9, 9, 101, '2021-08-01'),
(10, 10, 101, '2024-08-01'),
(11, 11, 101, '2022-08-01'),
(12, 12, 101, '2023-08-01'),
(13, 1, 102, '2022-08-01'),
(14, 2, 102, '2021-08-01'),
(15, 3, 102, '2023-08-01'),
(16, 4, 103, '2024-08-01'),
(17, 5, 103, '2020-08-01'),
(18, 6, 104, '2025-08-01'),
(19, 7, 104, '2022-08-01'),
(20, 8, 105, '2023-08-01'),
(21, 9, 105, '2021-08-01'),
(22, 10, 106, '2024-08-01'),
(23, 11, 106, '2022-08-01'),
(24, 12, 103, '2023-08-01');

SELECT * FROM Departments;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;


--Q1 CREATE (Insert a new student)
INSERT INTO Students
VALUES (13, 'Karan', 'Malhotra', 'karan@email.com',
        '2002-05-10', '2025-08-01');

-- READ (Display all students)
SELECT * FROM Students;

-- UPDATE (Update student email)
UPDATE Students
SET Email = 'karan.new@email.com'
WHERE StudentID = 13;

-- DELETE (Delete the student)
DELETE FROM Students
WHERE StudentID = 13;


-- CREATE
INSERT INTO Courses
VALUES (107, 'Database Management', 1, 4);

-- READ
SELECT * FROM Courses;

-- UPDATE
UPDATE Courses
SET Credits = 5
WHERE CourseID = 107;

-- DELETE
DELETE FROM Courses
WHERE CourseID = 107;


-- CREATE
INSERT INTO Instructors
VALUES (5, 'Aarav', 'Shah', 'aarav@univ.com', 1, 62000);

-- READ
SELECT * FROM Instructors;

-- UPDATE
UPDATE Instructors
SET Salary = 68000
WHERE InstructorID = 5;

-- DELETE
DELETE FROM Instructors
WHERE InstructorID = 5;


-- CREATE
INSERT INTO Departments
VALUES (5, 'Economics');

-- READ
SELECT * FROM Departments;

-- UPDATE
UPDATE Departments
SET DepartmentName = 'Business Economics'
WHERE DepartmentID = 5;

-- DELETE
DELETE FROM Departments
WHERE DepartmentID = 5;



-- CREATE (uses existing student 1, because student 13 was already deleted above)
INSERT INTO Enrollments
VALUES (25, 1, 103, '2025-08-01');

-- READ
SELECT * FROM Enrollments;

-- UPDATE
UPDATE Enrollments
SET CourseID = 102
WHERE EnrollmentID = 25;

-- DELETE
DELETE FROM Enrollments
WHERE EnrollmentID = 25;


--Q2. Retrieve students who enrolled after 2022.
SELECT *
FROM Students
WHERE EnrollmentDate >= '2023-01-01';

--Q3. Retrieve up to 5 courses offered by the Mathematics department.
SELECT c.*
FROM Courses c
JOIN Departments d
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

--Q4. Count students enrolled in each course, showing courses with more than 5 students.
SELECT CourseID, COUNT(StudentID) AS TotalStudents
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 5;

--Q5. Find students enrolled in both Introduction to SQL and Data Structures.
SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures')
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.CourseName) = 2;

--Q6. Find students enrolled in either Introduction to SQL or Data Structures.
SELECT DISTINCT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures');

--Q7. Calculate the average credits for all courses.
SELECT AVG(Credits) AS AverageCredits
FROM Courses;

--Q8. Find the maximum instructor salary in Computer Science.
SELECT MAX(i.Salary) AS MaximumSalary
FROM Instructors i
JOIN Departments d
ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

--Q9. Count students enrolled in each department.
SELECT d.DepartmentName,
       COUNT(DISTINCT e.StudentID) AS TotalStudents
FROM Departments d
JOIN Courses c ON d.DepartmentID = c.DepartmentID
JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;

--Q10. INNER JOIN — Retrieve students and their courses.
SELECT s.FirstName, s.LastName, c.CourseName
FROM Students s
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID;

--Q11. LEFT JOIN — Retrieve all students and their courses, if any.
SELECT s.FirstName, s.LastName, c.CourseName
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
LEFT JOIN Courses c ON e.CourseID = c.CourseID;

--Q12. Find students enrolled in courses with more than 10 students.
SELECT DISTINCT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.CourseID IN (
SELECT CourseID
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 10);

--Q13. Extract the year from EnrollmentDate.
SELECT StudentID,
       EXTRACT(YEAR FROM EnrollmentDate) AS EnrollmentYear
FROM Students;

--Q14. Concatenate instructors' first and last names.
SELECT CONCAT(FirstName, ' ', LastName) AS InstructorName
FROM Instructors;

--Q15. Calculate a running total of students enrolled in courses.
SELECT EnrollmentID, CourseID, StudentID,
COUNT(*)
OVER (ORDER BY EnrollmentID) AS RunningTotal
FROM Enrollments;

--Q16. Label students as Senior or Junior.
SELECT StudentID, FirstName, LastName, EnrollmentDate,
CASE WHEN EnrollmentDate < CURRENT_DATE - INTERVAL '4 years'
THEN 'Senior'
ELSE 'Junior'
END AS StudentStatus
FROM Students;

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Departments;
SELECT * FROM Enrollments;