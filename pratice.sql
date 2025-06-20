-- Active: 1749042118135@@127.0.0.1@5432@test_db
CREATE TABLE employes (
    employ_id SERIAL PRIMARY KEY,
    employ_name VARCHAR(30) NOT NULL,
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(20)
);

SELECT * FROM departments;

SELECT * FROM employes;

INSERT INTO
    departments (department_name)
VALUES ('HR'),
    ('Marketing'),
    ('Finance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Administration'),
    ('Research'),
    ('Quality Assurance');

INSERT INTO
    employes (
        employ_name,
        department_id,
        salary,
        hire_date
    )
VALUES (
        'John Doe',
        1,
        60000.00,
        '2022-01-10'
    ),
    (
        'Jane Smith',
        2,
        75000.50,
        '2021-05-22'
    ),
    (
        'Bob Johnson',
        3,
        80000.75,
        '2020-11-15'
    ),
    (
        'Alice Williams',
        4,
        90000.25,
        '2019-08-03'
    ),
    (
        'David Lee',
        5,
        65000.50,
        '2020-03-18'
    ),
    (
        'Sara Brown',
        6,
        70000.00,
        '2021-09-28'
    ),
    (
        'Mike Miller',
        7,
        55000.75,
        '2022-02-05'
    ),
    (
        'Emily Davis',
        8,
        95000.00,
        '2018-12-12'
    ),
    (
        'Chris Wilson',
        9,
        72000.50,
        '2020-06-30'
    ),
    (
        'Amy White',
        10,
        68000.25,
        '2021-11-09'
    ),
    (
        'John Johnson',
        1,
        62000.00,
        '2022-01-15'
    ),
    (
        'Jessica Thompson',
        2,
        78000.50,
        '2021-06-05'
    ),
    (
        'Michael Harris',
        3,
        85000.75,
        '2020-11-25'
    ),
    (
        'Emma Martinez',
        4,
        92000.25,
        '2019-09-15'
    ),
    (
        'James Taylor',
        5,
        67000.50,
        '2020-04-08'
    ),
    (
        'Sophia Anderson',
        6,
        72000.00,
        '2021-10-10'
    ),
    (
        'William Jackson',
        7,
        56000.75,
        '2022-02-10'
    ),
    (
        'Olivia Nelson',
        8,
        97000.00,
        '2018-12-20'
    ),
    (
        'Daniel White',
        9,
        73000.50,
        '2020-07-05'
    ),
    (
        'Ava Wilson',
        10,
        69000.25,
        '2021-11-15'
    ),
    (
        'Matthew Brown',
        1,
        63000.00,
        '2022-01-20'
    ),
    (
        'Emily Garcia',
        2,
        76000.50,
        '2021-06-15'
    ),
    (
        'Christopher Allen',
        3,
        86000.75,
        '2020-12-05'
    ),
    (
        'Madison Hall',
        4,
        93000.25,
        '2019-09-25'
    ),
    (
        'Andrew Cook',
        5,
        68000.50,
        '2020-04-18'
    ),
    (
        'Abigail Torres',
        6,
        73000.00,
        '2021-10-20'
    ),
    (
        'Ethan Murphy',
        7,
        57000.75,
        '2022-02-15'
    ),
    (
        'Ella King',
        8,
        98000.00,
        '2018-12-28'
    ),
    (
        'Nathan Rivera',
        9,
        74000.50,
        '2020-07-15'
    ),
    (
        'Mia Roberts',
        10,
        70000.25,
        '2021-11-20'
    );

SELECT *
FROM employes
    INNER JOIN departments ON employes.department_id = departments.department_id;

SELECT * FROM employes INNER JOIN departments USING (department_id);

SELECT department_name, round(avg(salary)) as avg_salary
FROM employes
    INNER JOIN departments USING (department_id)
GROUP BY
    department_name;

SELECT department_name, count(*)
FROM employes
    INNER JOIN departments USING (department_id)
GROUP BY
    department_name;

SELECT department_name, AVG(salary), MAX(salary)
FROM employes
    INNER JOIN departments USING (department_id)
GROUP BY
    department_name;

SELECT department_name, AVG(salary) AS avgSalary
from employes
    INNER JOIN departments USING (department_id)
GROUP BY
    department_name
ORDER BY avgSalary DESC
LIMIT 1;

SELECT * FROM employes;

SELECT extract(
        YEAR
        FROM hire_date
    ) as hireData, count(*)
FROM employes
GROUP BY
    hireData;

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO
    orders (
        order_id,
        customer_id,
        order_date,
        total_amount
    )
VALUES (1, 101, '2022-01-05', 100.50),
    (2, 102, '2022-01-07', 200.75),
    (3, 101, '2022-01-08', 150.25),
    (4, 103, '2022-01-10', 300.00),
    (5, 102, '2022-01-15', 180.50),
    (6, 103, '2022-01-20', 220.25),
    (7, 101, '2022-01-25', 90.00),
    (8, 102, '2022-01-28', 120.75),
    (9, 103, '2022-02-01', 250.50),
    (10, 101, '2022-02-05', 180.25);

SELECT * FROM orders;

SELECT
    customer_id,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY
    customer_id
HAVING
    COUNT(*) > 2;

SELECT DATE_TRUNC('month', order_date) AS month, SUM(total_amount) AS total_amount
FROM orders
WHERE
    EXTRACT(
        YEAR
        FROM order_date
    ) = 2022
GROUP BY
    DATE_TRUNC('month', order_date)
ORDER BY month;