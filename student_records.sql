CREATE DATABASE student_Record;  -- creating the database

USE student_Record; -- putting the database in use

-- Creating different tables and columns for the students records database.
CREATE TABLE students (  -- This holds all the students information
id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(100),
gender VARCHAR(20),
date_of_birth DATE,
email VARCHAR(100),
phone_number VARCHAR(100),
address TEXT
);

CREATE TABLE departments ( -- this table is for organizing instructors and courses
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (50),
office_location VARCHAR(50)
);


CREATE TABLE courses ( -- This table contains all the courses available for students
id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100),
course_code VARCHAR(10),
credit_hours INT,
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(id)
);


CREATE TABLE instructors ( -- Stores the tutors who teach students different courses.
id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(100),
email VARCHAR(100),
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE enrollments ( -- this is a bridging table between students to courses
id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,
enrollment_date DATE,
FOREIGN KEY (student_id) REFERENCES students(id),
FOREIGN KEY (course_id) REFERENCES courses(id),
);

CREATE TABLE classrooms (-- these are learning spaces for students.
id INT PRIMARY KEY AUTO_INCREMENT,
room_number VARCHAR(20),
building_name VARCHAR(20),
capacity INT
);

CREATE TABLE schedules ( -- courses schedules for students and istructors to attends, time and location.
id INT PRIMARY KEY AUTO_INCREMENT,
course_id INT,
instructor_id INT,
classroom_id INT,
day_of_week VARCHAR(20),
start_time TIME,
end_time time,
FOREIGN KEY (course_id) REFERENCES courses(id),
FOREIGN KEY (instructor_id) REFERENCES instructors(id),
FOREIGN KEY (classroom_id) REFERENCES classrooms(id)
);

CREATE TABLE parents_guardians( -- shows parents or guardians of different students.
id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
name VARCHAR(100),
phone_number VARCHAR(20),
relationship VARCHAR(10),
email VARCHAR(50),
FOREIGN KEY (student_id) REFERENCES students(id)
);


CREATE TABLE payments ( -- this table tracks fees paid by students.
id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
amount DECIMAL,
payment_date DATE,
payment_method VARCHAR(20) -- e.g MPESA, card.
);


-- Time to insert some sample data into the tables.
-- Inserting data into the classrooms table, showing the room number, building name and capacity it can hold.
INSERT INTO classrooms (room_number, building_name, capacity)
VALUES
("EE75", "NTB", 200),
("EA65", "NL", 70),
("FC29", "ML", 50),
("B989", "AMPH", 300);

-- Data for courses table, showing the course name, course code, credit hours and department the course belongs to.
INSERT INTO courses (course_name, course_code, credit_hours, department_id)
VALUES
("Fasihi Simulizi", "AKI101", 45, 2),
("Digital Elctronics I", "SPH307", 45, 1),
("Sociology of Health", "ASA207", 45, 3),
("Introduction to IT", "IT101", 45, 4);

-- Inserting data into the departments table, showing the name of the department and the office where the department is located.
INSERT INTO departments (name, office_location)
VALUES
("Physics", "Research Lab"),
("Kiswahili", "School of Arts, 2nd floor"),
("Sociology & Anthropology", "School of Arts, 2nd floor"),
("Information Technology", "School of Computing");

-- Data for enrollments table, showing the student enrolled, the course they are enrolled in, the date of enrollment and the instructor teaching them.
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(17, 7, "2020-11-10"),
(18, 6, "2020-11-11"),
(19, 5, "2020-11-12"),
(20, 8, "2025-11-13");

-- inserting data in the instructors table, showing the full name of the instructor, their email and the department they belong to.
INSERT INTO instructors (full_name, email, department_id)
VALUES
("Prof.Jackline Indede", "indedejackline.instructor@school.ac.ke", 2),
("Dr. George Omondi", "omondigeorge.instructor@school.ac.ke", 1),
("Dr.Victor Sawe", "sawevictor.instructor@school.ac.ke", 3),
("Prof. Julius Mc Oyowo", "oyowo.instructor@school.ac.ke", 4);

-- This is data of the parents or guardians of the students, showing the students against their parents or guardians names, phone numbers, relationship and email. The email is optional.
INSERT INTO parents_guardians (student_id, name, phone_number, relationship, email)
VALUES
(17, "Pauline Njoroge", "23456789", "Mother", null),
(18, "George Juma", "23456789", "Father", "juma@gmail.com"),
(19, "Patrick Murume", "23456789", "Uncle", null),
(20, "Wendy Jelimo", "23456789", "Aunt", "jelimo@gmail.com");

-- Sample data for the payments table, showing the student who made the payment, the amount paid, the date of payment and the method of payment.
INSERT INTO payments (student_id, amount, payment_date, payment_method)
VALUES
(18, 50000, '2025-3-5', "MPESA"),
(19, 40000, '2025-2-3', "Bankers Cheque"),
(17, 45000, '2025-3-4', "MPESA"),
(20, 50000, '2025-2-2', "Credit card");

-- Sample data for the schedules table, showing the course, instructor, classroom, day of the week and time for the course.
INSERT INTO schedules (course_id, instructor_id, classroom_id, day_of_week, start_time, end_time)
VALUES
(5, 1, 1, "Monday", '07:00', '09:00'),
(6, 2, 3, "Teusday", '14:00', '16:00'),
(7, 3, 2, "Wednesday", '07:00', '09:00'),
(8, 4, 4, "Thursday", '10:00', '12:00');


-- Sample data for the students table, showing the full name of the student, their gender, date of birth, email, phone number and address.
INSERT INTO students (full_name, gender, date_of_birth, email, phone_number, address )
VALUES
("Phyliss Wanjiku", "Female", "2000-10-15", "wanjiku.student@school.ac.ke", "123456789", "4, Murang'a"),
("Leornard Juma", "Male", "1999-06-1", "juma.student@school.ac.ke", "123456789", "5, Homabay"),
("Brian Kenga", "Male", "2003-05-04", "kenga.student@school.ac.ke", "123456789", "17, Tigania"),
("Jenifer Rotich", "Female", "2002-11-13", "rotich.student@school.ac.ke", "123456789", "3, Eldoret");

