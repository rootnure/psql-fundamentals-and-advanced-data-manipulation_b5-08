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

-- SELECT all column data --> *
SELECT * FROM students;

-- SELECT specific column data
SELECT email FROM students;

-- SELECT specific column data with name alias
SELECT email as "Student Email", age as "Student Age" FROM students;

-- SELECT data in sorting order
-- ascending order on "age"
SELECT * FROM students ORDER BY age ASC;
-- descending order on "age"
SELECT * FROM students ORDER BY age DESC;

-- SELECT unique data form a column
SELECT DISTINCT country FROM students;

SELECT DISTINCT blood_group FROM students;

-- SELECT conditionally using WHERE
SELECT * FROM students WHERE country = 'Australia';

-- SELECT conditionally using WHERE (multiple true conditions)
SELECT * FROM students WHERE grade = 'A' AND course = 'Physics';

-- SELECT conditionally using WHERE (multiple conditions, minimum 1 true)
SELECT *
FROM students
WHERE
    country = 'USA'
    OR country = 'Australia';

-- SELECT conditionally using WHERE (multiple conditions, mix/matched)
SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age = 18;

-- SELECT conditionally using WHERE (arithmetic operators)
-- Grater Than (>)
SELECT * FROM students WHERE age > 18;
-- Grater Than or Equal (>=)
SELECT * FROM students WHERE age >= 18;
-- Less Than (<)
SELECT * FROM students WHERE age < 18;
-- Less Than or Equal (<=)
SELECT * FROM students WHERE age <= 18;
-- Not Equal (<>) [Less Than or Grater than]
SELECT * FROM students WHERE age <> 18;