CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    userName VARCHAR NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    userId INTEGER DEFAULT 2 REFERENCES "user"(id) ON DELETE SET DEFAULT
);

SELECT * FROM post;



INSERT INTO
    "user" (userName)
VALUES ('alice123'),
    ('bob_the_builder'),
    ('charlie99'),
    ('diana_queen'),
    ('edward_dev'),
    ('fionaCoder'),
    ('george_777'),
    ('hannah_smith'),
    ('ian_tech'),
    ('julia_rox');

SELECT * FROM "user";

INSERT INTO post(title,userId) VALUES
('Learning PostgreSQL Basics', 1),
('Advanced SQL Joins Explained', 2),
('Creating APIs with Node.js', 3),
('Understanding React Hooks', 4),
('CSS Grid vs Flexbox', 5),
('Deploying Apps on Vercel', 6),
('Authentication with JWT', 7),
('Intro to TypeScript', 8),
('How to Use Docker', 9),
('Async/Await in JavaScript', 10);

SELECT * FROM post;

DELETE FROM "user"
WHERE id = 3;


-- ALTER TABLE post alter COLUMN userId SET ON DELETE CASECADE;

DROP TABLE "user";
DROP TABLE post;


DELETE FROM "user"
WHERE id = 2;

SELECT * FROM "user";
SELECT * FROM post; 

DELETE FROM "user"
WHERE id = 1;

SELECT * from "user";

SELECT * FROM POST;


DROP TABLE post;
DROP TABLE "user";

DELETE FROM "user"
WHERE id = 2;


SELECT * FROM "user";

DELETE FROM "user"
WHERE id = 1;