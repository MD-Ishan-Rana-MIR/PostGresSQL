-- Active: 1749042118135@@127.0.0.1@5432@test_db

CREATE Table userList (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(30) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES userList (id) 
);

INSERT INTO
    userList (userName)
VALUES ('Alice'),
    ('Bob'),
    ('Charlie'),
    ('David'),
    ('Eva'),
    ('Frank'),
    ('Grace'),
    ('Hannah'),
    ('Ian'),
    ('Jane');

INSERT INTO post (title,user_id)
VALUES
  ('Alice first post', 1),
  ('Bob shares an update', 2),
  ('Charlie writes something', 2),
  ('David posts a tutorial', 3),
  ('Eva announces a giveaway', 3),
  ('Frank shares news', 4),
  ('Grace posts an opinion piece', 4),
  ('Hannah writes about travel', 8),
  ('Ian publishes a review', 9);

  SELECT * FROM post;

  INSERT INTO post(title,user_id)
  VALUES(
    'loreme dada',
    NULL
  );

  ALTER TABLE post
  ALTER COLUMN user_id SET NOT NULL;

  DELETE FROM post;
SELECT * FROM post;
SELECT * FROM userList;  

