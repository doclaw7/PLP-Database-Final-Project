# Student Records Management Database

## Description
This project implements a relational database system for managing student records in an academic institution. It includes tables for departments, students, instructors, courses, enrollments, teaching assignments, and class schedules. The database is designed to handle key academic operations such as student enrollment, course assignments, and scheduling.

## Features
- **Departments**: Stores information about academic departments.
- **Students**: Manages student details such as name, gender, date of birth, and contact information.
- **Instructors**: Tracks instructor details and their departmental affiliations.
- **Courses**: Maintains course information, including credit hours and descriptions.
- **Enrollments**: Records student enrollments in courses along with grades.
- **Teaching Assignments**: Tracks which instructors are teaching which courses in specific semesters.
- **Class Schedules**: Manages the schedule of classes, including days, times, and room assignments.

## How to Run/Setup the Project
1. Install a MySQL server on your system.
2. Open a MySQL client or any database management tool (e.g., MySQL Workbench).
3. Copy the contents of the `StudentRecords.sql` file.
4. Execute the SQL script in your MySQL client to create the database and populate it with sample data.
5. Use the `USE StudentRecordsDB;` command to start working with the database.

## Entity-Relationship Diagram (ERD)
Below is a link to the ERD for this database:
[https://ibb.co/k2VSN8Yq](#) 

Alternatively, you can generate the ERD using a database visualization tool like MySQL Workbench or dbdiagram.io.

## Sample Data
The database includes pre-populated sample data for testing purposes:
- Departments: Computer Science, Business, Mathematics
- Students: Lawrence Ouma, Abhishek Patel, Gaso Asaye
- Instructors: Dr. Mark Anderson, Prof. Linda Green, Dr. Ethan White
- Courses: Intro to Computer Science, Principles of Marketing, Linear Algebra
- Enrollments, Teaching Assignments, and Class Schedules are also pre-filled.

## License
This project is for educational purposes and is free to use.
