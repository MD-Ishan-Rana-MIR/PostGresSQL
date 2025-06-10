-- Active: 1749042118135@@127.0.0.1@5432@phadmin
-- SELECT * FROM person;

-- ALTER TABLE person
--     ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

-- SELECT * FROM person;

-- ALTER TABLE person
--     DROP COLUMN email;

-- SELECT * FROM person;

-- ALTER TABLE person
--     ADD COLUMN email VARCHAR(50) DEFAULT 'ishanrana094@gmail.com' NOT NULL;

-- SELECT * FROM person;

-- ALTER TABLE person
--     RENAME COLUMN email to email_name;

-- SELECT * FROM person;



-- ALTER TABLE person
--     ADD COLUMN age INT DEFAULT 21 NOT NULL;

-- SELECT * FROM person;

-- ALTER TABLE person
-- ALTER COLUMN last_name TYPE VARCHAR(50);


-- ALTER TABLE person
--     ALTER COLUMN age DROP NOT NULL;

-- ALTER TABLE person
-- ADD CONSTRAINT uniqu_person_age UNIQUE(age);


-- SELECT * FROM person;