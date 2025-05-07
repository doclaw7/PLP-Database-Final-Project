
-- Creating a database Students records management database
CREATE DATABASE StudentRecordsDB;
USE StudentRecordsDB;

-- Creating different tables fot the database
-- 1. DEPARTMENTS TABLE
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    building VARCHAR(100) NOT NULL
);

-- 2. STUDENTS TABLE
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- 3. INSTRUCTORS TABLE
CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    hire_date DATE NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- 4. COURSES TABLE
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_code VARCHAR(10) NOT NULL UNIQUE,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    credit_hours INT NOT NULL CHECK (credit_hours BETWEEN 1 AND 5),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- 5. ENROLLMENTS TABLE
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    grade CHAR(2),
    UNIQUE(student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- 6. TEACHING ASSIGNMENTS TABLE
CREATE TABLE TeachingAssignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    year YEAR NOT NULL,
    UNIQUE(instructor_id, course_id, semester, year),
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- 7. CLASS SCHEDULE TABLE
CREATE TABLE ClassSchedules (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    day_of_week ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday') NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    room VARCHAR(20) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Inserting Sample data into the database created tables
-- Departments data table
INSERT INTO Departments (name, building) VALUES
('Computer Science', 'Tech Block'),
('Business', 'Commerce Hall'),
('Mathematics', 'Science Complex');

-- Students data table
INSERT INTO Students (first_name, last_name, gender, date_of_birth, email, phone, department_id) VALUES
('Lawrence', 'Ouma', 'Male', '2006-04-18', 'doclaw0@gmail.com', '0743914347', 1),
('Abhishek', 'Patel', 'Male', '2006-08-28', 'abhishek@gmail.com', '0723456789', 2),
('Gaso', 'Asaye', 'Female', '2006-01-05', 'gaso@gmail.com', '0734567890', 1);

-- Instructors data table
INSERT INTO Instructors (first_name, last_name, email, hire_date, department_id) VALUES
('Dr. Mark', 'Anderson', 'mark.anderson@univ.edu', '2015-08-01', 1),
('Prof. Linda', 'Green', 'linda.green@univ.edu', '2010-09-15', 2),
('Dr. Ethan', 'White', 'ethan.white@univ.edu', '2018-01-10', 3);

-- Courses data table
INSERT INTO Courses (course_code, title, description, credit_hours, department_id) VALUES
('CS101', 'Intro to Computer Science', 'Basics of computing and programming.', 3, 1),
('BUS201', 'Principles of Marketing', 'Introduction to marketing concepts.', 3, 2),
('MATH301', 'Linear Algebra', 'Study of vectors and matrices.', 4, 3);

-- Enrollments data table
INSERT INTO Enrollments (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2024-09-01', 'A'),
(2, 2, '2024-09-01', 'B+'),
(3, 1, '2024-09-01', 'A-'),
(3, 3, '2024-09-01', 'B');

-- Teaching Assignments table
INSERT INTO TeachingAssignments (instructor_id, course_id, semester, year) VALUES
(1, 1, 'Fall', 2024),
(2, 2, 'Fall', 2024),
(3, 3, 'Fall', 2024);

-- Class Schedules table
INSERT INTO ClassSchedules (course_id, day_of_week, start_time, end_time, room) VALUES
(1, 'Monday', '09:00:00', '10:30:00', 'Room A101'),
(2, 'Wednesday', '11:00:00', '12:30:00', 'Room B202'),
(3, 'Friday', '14:00:00', '15:30:00', 'Room C303');



