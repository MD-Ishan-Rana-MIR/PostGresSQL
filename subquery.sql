-- Active: 1749042118135@@127.0.0.1@5432@test_db
DROP TABLE employes;

SELECT * FROM employes;

CREATE TABLE employes (
    employ_id SERIAL PRIMARY KEY,
    employ_name VARCHAR(20) NOT NULL,
    department_name VARCHAR(20) NOT NULL,
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO
    employes (
        employ_name,
        department_name,
        salary,
        hire_date
    )
VALUES (
        'Alice Johnson',
        'HR',
        55000.00,
        '2020-01-15'
    ),
    (
        'Bob Smith',
        'IT',
        72000.00,
        '2019-03-22'
    ),
    (
        'Carol White',
        'Finance',
        68000.00,
        '2018-07-10'
    ),
    (
        'David Brown',
        'IT',
        71000.00,
        '2021-11-30'
    ),
    (
        'Eva Green',
        'Marketing',
        60000.00,
        '2022-02-14'
    ),
    (
        'Frank Black',
        'Sales',
        65000.00,
        '2019-09-05'
    ),
    (
        'Grace Adams',
        'HR',
        54000.00,
        '2021-06-12'
    ),
    (
        'Henry Clark',
        'Finance',
        73000.00,
        '2020-10-20'
    ),
    (
        'Irene Lewis',
        'Marketing',
        59000.00,
        '2023-01-08'
    ),
    (
        'Jack Walker',
        'IT',
        76000.00,
        '2017-12-18'
    ),
    (
        'Karen Scott',
        'Sales',
        62000.00,
        '2022-04-25'
    ),
    (
        'Larry Young',
        'HR',
        53000.00,
        '2023-03-05'
    ),
    (
        'Monica Allen',
        'Finance',
        70000.00,
        '2021-08-11'
    ),
    (
        'Nathan Hill',
        'IT',
        75000.00,
        '2020-05-01'
    ),
    (
        'Olivia Perez',
        'Marketing',
        61000.00,
        '2019-10-30'
    ),
    (
        'Paul Davis',
        'Sales',
        64000.00,
        '2018-06-20'
    ),
    (
        'Queen Thomas',
        'HR',
        52000.00,
        '2022-08-07'
    ),
    (
        'Robert Hall',
        'Finance',
        69000.00,
        '2023-02-13'
    ),
    (
        'Susan Wright',
        'Marketing',
        60500.00,
        '2020-11-19'
    ),
    (
        'Tom Harris',
        'IT',
        74000.00,
        '2019-04-15'
    ),
    (
        'Uma Mitchell',
        'Sales',
        66000.00,
        '2021-09-09'
    ),
    (
        'Victor Turner',
        'HR',
        56000.00,
        '2020-12-21'
    ),
    (
        'Wendy Baker',
        'Finance',
        67500.00,
        '2018-05-28'
    ),
    (
        'Xavier Rivera',
        'Marketing',
        62000.00,
        '2021-01-16'
    ),
    (
        'Yara Cooper',
        'IT',
        77000.00,
        '2022-03-03'
    ),
    (
        'Zack Murphy',
        'Sales',
        67000.00,
        '2019-07-14'
    ),
    (
        'Amy Barnes',
        'HR',
        55000.00,
        '2023-05-10'
    ),
    (
        'Brian Foster',
        'Finance',
        71000.00,
        '2020-02-18'
    ),
    (
        'Cathy Howard',
        'Marketing',
        60000.00,
        '2017-11-23'
    ),
    (
        'Dylan Reed',
        'IT',
        78000.00,
        '2023-04-01'
    ),
    (
        'Ella Ward',
        'Sales',
        63000.00,
        '2022-06-30'
    );

SELECT * FROM employes;

SELECT * FROM employes WHERE salary > 56000

SELECT MAX(salary) FROM employes WHERE department_name = 'HR';

SELECT *
FROM employes
WHERE
    salary > (
        SELECT MAX(salary)
        FROM employes
        WHERE
            department_name = 'HR'
    );