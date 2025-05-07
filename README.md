# Students Record Database

## Description
The Students Record Database is a structured SQL-based project designed to manage and organize student-related data for an educational institution. It includes tables for students, courses, instructors, departments, classrooms, schedules, parents/guardians, enrollments, and payments. The database is pre-populated with sample data to demonstrate its functionality.

## Features
- Manage student information, including personal details and contact information.
- Organize courses, instructors, and departments.
- Track student enrollments and course schedules.
- Record classroom details and payment transactions.
- Maintain parent/guardian information for students.

## Setup Instructions
To set up and use the Students Record Database, follow these steps:

1. **Install MySQL**:
   Ensure you have MySQL installed on your system. You can download it from [MySQL Downloads](https://dev.mysql.com/downloads/).

2. **Import the SQL File**:
   - Open your MySQL client or MySQL Workbench.
   - Create a new database or use the one defined in the SQL file (`student_Record`).
   - Import the `student_records.sql` file into your MySQL database. You can do this by running the following command in your MySQL client:
     ```sql
     SOURCE c:/Users/Admin/Desktop/students-record-database/school_records.sql;
     ```

3. **Verify the Data**:
   - After importing, verify that the tables and sample data have been created successfully by running:
     ```sql
     SHOW TABLES;
     SELECT * FROM students; -- Example to view student data
     ```

4. **Modify as Needed**:
   - You can customize the database structure or add more data as per your requirements.

## Usage
This database can be used for:
- Educational institutions to manage student records.
- Demonstrating SQL concepts and database design.
- Building applications that require a backend database for student management.

## Entity-Relationship Diagram (ERD)
The Entity-Relationship Diagram (ERD) provides a visual representation of the database structure, showing the relationships between tables such as `students`, `courses`, `instructors`, `departments`, `enrollments`, and more.

![ERD](https://github.com/Itchy-Fingers/students-record-database/blob/main/ERD.jpg))


Feel free to extend or adapt this project to suit your needs!
