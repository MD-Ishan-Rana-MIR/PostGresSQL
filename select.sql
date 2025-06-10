-- Active: 1749042118135@@127.0.0.1@5432@test_db

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    age INT,
    create_date DATE DEFAULT CURRENT_DATE
);

SELECT * FROM "user";

SELECT NAME FROM "user";

SELECT NAME, email as userEmail FROM "user";

SELECT * FROM "user" ORDER BY age DESC;

CREATE Table studentInfo (
    id SERIAL PRIMARY KEY,
    email VARCHAR(30) UNIQUE NOT NULL,
    rollNumber INT UNIQUE NOT NULL,
    age INT NOT NULL,
    countryName VARCHAR(20) NOT NULL,
    blood VARCHAR(10) NOT NULL,
    country VARCHAR(15),
    GPA NUMERIC(5, 2)
);

SELECT * FROM studentInfo;

SELECT DISTINCT gpa FROM studentInfo;

SELECT DISTINCT country FROM studentInfo;

SELECT * FROM studentInfo WHERE country = 'USA' AND age >= 20;

SELECT *
FROM studentInfo
WHERE (
        GPA >= 3.50
        AND age > 24
    )
    OR ();

SELECT * FROM studentInfo;

SELECT * FROM studentInfo WHERE gpa > 3.60 AND age >= 20;

SELECT UPPER(email) FROM studentInfo;

SELECT length(country) FROM studentInfo;

SELECT AVG(age) FROM studentInfo;

SELECT min(age) FROM studentInfo;

SELECT count(*) FROM studentInfo;
-- SELECT MAX(count(age));

SELECT * FROM studentInfo;

SELECT *
FROM studentInfo
WHERE
    country NOT IN ('USA', 'UK', 'Germany');

SELECT * FROM studentInfo WHERE age BETWEEN 25 AND 30;

SELECT * FROM studentInfo WHERE country LIKE 'c%';

SELECT * FROM studentInfo WHERE country ILIKE 'c%';

SELECT * FROM studentInfo LIMIT 10 ORDER BY age ASC;

SELECT * FROM studentInfo;

SELECT * FROM studentInfo LIMIT 5 OFFSET 2;

SELECT * FROM studentInfo LIMIT 5 OFFSET 5 * 0;

SELECT * FROM studentInfo LIMIT 5 OFFSET 5 * 1;

SELECT * FROM studentInfo LIMIT 5 OFFSET 5 * 2;

SELECT * FROM studentInfo LIMIT 5 OFFSET 5 * 3;

SELECT * FROM studentInfo LIMIT 5 OFFSET 5 * 4;

DELETE FROM studentInfo WHERE age = 20 AND countryname = 'USA';

UPDATE studentInfo SET email = 'ishanrana123@gmail.com' WHERE id = 3;

SELECT * FROM studentInfo;

