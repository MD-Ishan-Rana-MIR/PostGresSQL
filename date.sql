-- Active: 1749042118135@@127.0.0.1@5432@test_db

-- SELECT timezone;

-- SHOW timezone;

SELECT now();

SHOW timezone;

CREATE TABLE timeZ (
    ts TIMESTAMP without TIME zone,
    tsz TIMESTAMP with TIME zone
);

INSERT INTO
    timeZ
VALUES (
        '2024-01-12 10:45:00',
        '2024-01-12 10:45:00'
    );

SELECT * FROM timeZ;

SELECT now();

SELECT CURRENT_DATE;

SELECT now()::DATE;

SELECT now()::TIME;

SELECT to_char(now(), 'DDD');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT CURRENT_DATE - INTERVAL '5 year';

SELECT age (CURRENT_DATE, '2003-03-04');

SELECT extract( DAY FROM '2025-06-02'::date );

SELECT 'n'::BOOLEAN;

SELECT 'y'::BOOLEAN;

SELECT '0 '::BOOLEAN;

SHOW timezone;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'yyyy-mm--dd');

SELECT CURRENT_DATE - INTERVAL '2 year 1 month';

SELECT age (CURRENT_DATE, '2004-04-04')

CREATE TABLE Developer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    dateOfBirth DATE,
    country VARCHAR(50),
    gpa NUMERIC(4, 2),
    department VARCHAR(100),
    role VARCHAR(50)
);

ALTER TABLE Developer RENAME TO Engineers;
-- table rename
ALTER TABLE Engineers RENAME TO Developer;

-- column rename

ALTER Table Developer RENAME COLUMN country To nationality;

ALTER Table Developer RENAME COLUMN nationality to country;

ALTER TABLE Developer ADD COLUMN email VARCHAR(50) NOT NULL UNIQUE;

-- SELECT CURRENT_DATE;

SELECT now();

SELECT CURRENT_DATE - INTERVAL '5 year';

ALTER TABLE Developer ALTER COLUMN email set NOT NULL;

SELECT * FROM Developer;

INSERT INTO
    Developer (
        name,
        age,
        dateOfBirth,
        country,
        gpa,
        department,
        role,
        email
    )
VALUES (
        'Alice Johnson',
        30,
        '1994-05-04',
        'USA',
        3.9,
        'Development',
        'Senior Developer',
        'alice.johnson@example.com'
    ),
    (
        'Bob Peterson',
        25,
        '1999-04-12',
        'USA',
        3.5,
        'Development',
        'Junior Developer',
        'bob.peterson@example.com'
    ),
    (
        'Charlie Brown',
        32,
        '1992-09-23',
        'Canada',
        3.7,
        'Design',
        'UI/UX Engineer',
        'charlie.brown@example.com'
    ),
    (
        'Diana Ross',
        28,
        '1996-04-04',
        'UK',
        3.6,
        'Development',
        'Developer',
        'diana.ross@example.com'
    ),
    (
        'Evan Scott',
        27,
        '1997-10-10',
        'Germany',
        3.4,
        'QA',
        'Quality Engineer',
        'evan.scott@example.com'
    ),
    (
        'Fiona Harper',
        29,
        '1995-06-18',
        'USA',
        3.9,
        'Design',
        'Senior UI Designer',
        'fiona.harper@example.com'
    ),
    (
        'George Miller',
        24,
        '2000-07-05',
        'Canada',
        3.5,
        'Development',
        'Junior Developer',
        'george.miller@example.com'
    ),
    (
        'Hannah Patel',
        33,
        '1991-11-29',
        'UK',
        3.7,
        'Management',
        'Team Lead',
        'hannah.patel@example.com'
    ),
    (
        'Ian Rogers',
        26,
        '1999-09-04',
        'Germany',
        3.2,
        'Support',
        'Support Engineer',
        'ian.rogers@example.com'
    ),
    (
        'Jenny Lopez',
        23,
        '2001-04-17',
        'USA',
        3.4,
        'QA',
        'Junior QA Engineer',
        'jenny.lopez@example.com'
    ),
    (
        'Kyle Turner',
        31,
        '1993-04-04',
        'Canada',
        3.9,
        'Development',
        'Tech Lead',
        'kyle.turner@example.com'
    ),
    (
        'Laura Mitchell',
        27,
        '1997-06-25',
        'UK',
        3.6,
        'Design',
        'Product Designer',
        'laura.mitchell@example.com'
    ),
    (
        'Mike Harper',
        29,
        '1995-04-04',
        'Germany',
        3.5,
        'Support',
        'Support Engineer',
        'mike.harper@example.com'
    ),
    (
        'Nina Rogers',
        24,
        '2000-04-04',
        'USA',
        3.7,
        'Development',
        'Junior Developer',
        'nina.rogers@example.com'
    ),
    (
        'Oscar Peterson',
        35,
        '1989-04-04',
        'Canada',
        3.9,
        'Management',
        'Project Manager',
        'oscar.peterson@example.com'
    ),
    (
        'Paul Wilson',
        32,
        '1992-04-04',
        'UK',
        3.5,
        'Design',
        'Lead UI Designer',
        'paul.wilson@example.com'
    ),
    (
        'Queen Adams',
        21,
        '2003-04-04',
        'Germany',
        3.4,
        'Support',
        'Support Engineer',
        'queen.adams@example.com'
    ),
    (
        'Roger Stone',
        34,
        '1990-04-04',
        'USA',
        3.7,
        'Development',
        'Architect',
        'roger.stone@example.com'
    ),
    (
        'Sophie Miles',
        28,
        '1996-04-04',
        'Canada',
        3.9,
        'Design',
        'Product Manager',
        'sophie.miles@example.com'
    ),
    (
        'Tom Harper',
        23,
        '2001-04-04',
        'UK',
        3.2,
        'QA',
        'Junior Tester',
        'tom.harper@example.com'
    ),
    (
        'Uma Patel',
        27,
        '1997-04-04',
        'Germany',
        3.5,
        'Support',
        'Support Engineer',
        'uma.patel@example.com'
    ),
    (
        'Victor Cruz',
        30,
        '1994-04-04',
        'USA',
        3.9,
        'Development',
        'Senior Engineer',
        'victor.cruz@example.com'
    ),
    (
        'Wendy Lopez',
        25,
        '1999-04-04',
        'Canada',
        3.7,
        'Design',
        'Junior UI Designer',
        'wendy.lopez@example.com'
    ),
    (
        'Xavier Cole',
        29,
        '1995-04-04',
        'UK',
        3.5,
        'Support',
        'Support Engineer',
        'xavier.cole@example.com'
    ),
    (
        'Yasmine Khan',
        24,
        '2000-04-04',
        'Germany',
        3.6,
        'Development',
        'Developer',
        'yasmine.khan@example.com'
    ),
    (
        'Zach Brown',
        31,
        '1993-04-04',
        'USA',
        3.9,
        'Management',
        'Team Lead',
        'zach.brown@example.com'
    ),
    (
        'Amy Peterson',
        23,
        '2001-04-04',
        'Canada',
        3.5,
        'Design',
        'Junior UI Designer',
        'amy.peterson@example.com'
    ),
    (
        'Ben Rogers',
        34,
        '1990-04-04',
        'UK',
        3.7,
        'Support',
        'Support Engineer',
        'ben.rogers@example.com'
    ),
    (
        'Charlie Harper',
        26,
        '1998-04-04',
        'Germany',
        3.6,
        'Development',
        'Developer',
        'charlie.harper@example.com'
    ),
    (
        'Derek Mitchell',
        27,
        '1997-04-04',
        'USA',
        3.9,
        'Design',
        'Lead UI Designer',
        'derek.mitchell@example.com'
    );

SELECT * FROM Developer;

UPDATE Developer
SET
    name = 'Ishan',
    age = 21,
    dateOfBirth = '1994-05-04',
    country = 'Bangladesh',
    gpa = 3.61,
    department = 'CSE',
    role = 'MERN Developer',
    email = 'ishanrana2@gmail.com'
WHERE id = 1;

SELECT * from Developer;

SELECT country, count(*), AVG(age),SUM(age),MAX(age) FROM Developer
GROUP BY country;

SELECT age,AVG(age) from Developer
GROUP BY age
HAVING avg(age)>34;

SELECT extract(YEAR FROM dateofbirth) AS birth_year, count(*) FROM Developer
GROUP BY birth_year;
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

DROP TABLE IF EXISTS 'user';

DROP TABLE post;

DROP TABLE "user";

DROP TABLE userlist;

