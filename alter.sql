-- Active: 1748169865436@@127.0.0.1@5432@ph

-- Testing connection and extension
SELECT * FROM person;

-- Modify Table (add column)
ALTER TABLE person
ADD COLUMN email VARCHAR(35) DEFAULT 'user@mail.address' NOT NULL;

-- Insert data after table modification
INSERT INTO person VALUES ( 6, 'sakib', 37, 'sakib@khan.raw' );

-- Delete a column
-- ALTER TABLE person ADD COLUMN emali VARCHAR(25) DEFAULT 'email@mail.co' NOT NULL;
ALTER Table person DROP COLUMN emali;

-- Modify Table (rename column)
ALTER TABLE person RENAME COLUMN user_name TO username;

-- Modify Table (modify data type)
ALTER TABLE person ALTER COLUMN user_name TYPE VARCHAR(15);

-- Modify Table (Add Constraints)
ALTER TABLE person ALTER COLUMN age SET NOT NULL;

-- Modify Table (remove Constraints)
ALTER TABLE person ALTER COLUMN age DROP NOT NULL;

-- Modify Table (add constraints using "ADD CONSTRAINT")
ALTER TABLE person ADD constraint unique_person_age UNIQUE (age);

ALTER TABLE person ADD constraint pk_person_email UNIQUE (email);

-- Modify Table (remove constraints using "DROP CONSTRAINT")
ALTER TABLE person DROP constraint unique_person_age;

ALTER TABLE person DROP constraint pk_person_email;

-- Modify Table (DROP all data from table, along with the table itself) ❌
DROP Table person3;

-- Modify Table (DROP all data from table, keep table structure)
TRUNCATE TABLE person;

--
--
--
SELECT * FROM person3;