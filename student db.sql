-- Create the "UniversityDB" database
CREATE DATABASE University_database;
-- Switch to the "UniversityDB" database
USE University_database;
-- Create the "Students" table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(50)
);
-- Insert sample data into the "Students" table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES
(1, 'Noel', 'Wekulo', 20, 'Computer Science'),
(2, 'Lemwel', 'Ngato', 21, 'Biology'),
(3, 'Liam', 'Mwema', 19, 'History'),
(4, 'Haven', 'Amira', 22, 'Mathematics'),
(5, 'Mitcheal', 'Wekulo', 20, 'English');
-- Alter the "Students" table to add a new column "GPA"
ALTER TABLE Students ADD COLUMN GPA DECIMAL(3,2);
-- Insert GPA values for existing records in the "Students" table
UPDATE Students SET GPA = 3.5 WHERE StudentID = 1;
UPDATE Students SET GPA = 3.0 WHERE StudentID = 2;
UPDATE Students SET GPA = 3.8 WHERE StudentID = 3;
UPDATE Students SET GPA = 3.2 WHERE StudentID = 4;
UPDATE Students SET GPA = 3.7 WHERE StudentID = 5;
-- Rename the "Students" table to "EnrolledStudents"
ALTER TABLE Students RENAME TO EnrolledStudents;
-- Create the "Courses" table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);
-- Insert sample data into the "Courses" table
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) VALUES
(1, 'Introduction to Computer Science', 'Dr. Smith', 3),
(2, 'Biology 101', 'Dr. Johnson', 4),
(3, 'History of World War II', 'Prof. Davis', 3);

-- Drop the "EnrolledStudents" table from the database
DROP TABLE IF EXISTS EnrolledStudents;