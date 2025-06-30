CREATE Table students (
    student_id SERIAL primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    age int,
    grade VARCHAR(2),
    course varchar(50),
    email VARCHAR(35),
    dob date,
    blood_group VARCHAR(15),
    country VARCHAR(30)
);

-- Show all column data --> *
SELECT * FROM students;

-- Show specific column data
SELECT email FROM students;

-- Show specific column data with name alias
SELECT email as "Student Email", age as "Student Age" FROM students;

-- Show data in sorting order
-- ascending order on "age"
SELECT * FROM students ORDER BY age ASC;
-- descending order on "age"
SELECT * FROM students ORDER BY age DESC;