5. Create 4 tables (LOG IN WITH YOUR USER!!!!!):

COURSES(id, name, code, date_start, date_end) 
STUDENTS(id, first_name, last_name, date_of_birth, city, address) ATTENDANCE(id, student_id, course_id, attendance_date) ANSWERS(id, number_of_question, answer)

Types of columns:

int: id (all tables), attendance(student_id, course_id) 
varchar2(255): 
courses(name, code), students(first_name, last_name, city, address), answers(number_of_question, answer) date: courses(date_start, date_end), students(date_of_birth), attendance(attendance_date)

Add these constraints:

Primary keys for all tables
Create a sequence with the name "answer_sequence" starting in 100 with steps of 2 and associate it with answers table. (Do not use identity columns)
Name of the courses MUST only accept 'Business and Computing', 'Computer Science', 'Chemistry', 'History' and 'Zoology'
number_of_question column in answer table MUST only accept values 'QUESTION 1', 'QUESTION 2', 'QUESTION 3', 'QUESTION 4', 'QUESTION 5' (In uppercase)
Foreign key in attendance table for students and courses.

CREATE TABLE COURSES(
id int NOT NULL PRIMARY KEY,
name varchar2(255) NOT NULL,
code, varchar2(255) NOT NULL,
date_start DATE,
date_end DATE
);


CREATE TABLE STUDENTS(
id int NOT NULL PRIMARY KEY,
first_name varchar2(255) NOT NULL,
last_name  varchar2(255) NOT NULL,
date_of_birth DATE 
city  varchar2(255) NOT NULL,
address  varchar2(255) NOT NULL
);




CREATE TABLE ATTENDANCE(
id int NOT NULL PRIMARY KEY,
student_id int
course_id int
attendance_date DATE
);



CREATE TABLE ANSWERS(
id int NOT NULL PRIMARY KEY,
number_of_question, varchar2(255) NOT NULL,
answervarchar2(255) NOT NULL
);
