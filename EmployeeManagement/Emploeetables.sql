CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE salaries (
    employee_id INT,
    salary DECIMAL(10, 2),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (employee_id, from_date),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Sales'),
(5, 'Finance');

INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date) VALUES
(1, 'John', 'Doe', 2, '2023-06-15'),
(2, 'Jane', 'Smith', 1, '2023-01-20'),
(3, 'Emily', 'Jones', 3, '2022-11-10'),
(4, 'Michael', 'Brown', 4, '2021-09-05'),
(5, 'Sarah', 'Davis', 5, '2020-03-22'),
(6, 'Chris', 'Wilson', 2, '2019-07-01'),
(7, 'Anna', 'Garcia', 1, '2022-08-30'),
(8, 'David', 'Martinez', 3, '2023-02-15'),
(9, 'Laura', 'Hernandez', 4, '2023-05-10'),
(10, 'Daniel', 'Lopez', 5, '2022-10-25'),
(11, 'Sophia', 'Gonzalez', 2, '2021-04-12'),
(12, 'James', 'Lee', 1, '2020-06-28'),
(13, 'Olivia', 'Perez', 3, '2019-12-05'),
(14, 'Liam', 'Hall', 4, '2018-11-17'),
(15, 'Mason', 'Young', 5, '2022-07-08'),
(16, 'Ella', 'King', 2, '2023-03-21'),
(17, 'Aiden', 'Wright', 1, '2021-02-11'),
(18, 'Lucas', 'Scott', 3, '2020-09-13'),
(19, 'Mia', 'Green', 4, '2019-05-20'),
(20, 'Henry', 'Adams', 5, '2023-04-05'),
(21, 'Amelia', 'Baker', 2, '2023-06-01'),
(22, 'Ethan', 'Nelson', 1, '2023-01-15'),
(23, 'Harper', 'Carter', 3, '2022-12-30'),
(24, 'Alexander', 'Mitchell', 4, '2021-08-25'),
(25, 'Isabella', 'Roberts', 5, '2022-05-19');


INSERT INTO salaries (employee_id, salary, from_date, to_date) VALUES
(1, 85000, '2023-06-15', NULL),
(2, 72000, '2023-01-20', NULL),
(3, 68000, '2022-11-10', NULL),
(4, 90000, '2021-09-05', NULL),
(5, 95000, '2020-03-22', NULL),
(6, 88000, '2019-07-01', NULL),
(7, 78000, '2022-08-30', NULL),
(8, 64000, '2023-02-15', NULL),
(9, 71000, '2023-05-10', NULL),
(10, 93000, '2022-10-25', NULL),
(11, 86000, '2021-04-12', NULL),
(12, 74000, '2020-06-28', NULL),
(13, 76000, '2019-12-05', NULL),
(14, 92000, '2018-11-17', NULL),
(15, 89000, '2022-07-08', NULL),
(16, 85000, '2023-03-21', NULL),
(17, 78000, '2021-02-11', NULL),
(18, 75000, '2020-09-13', NULL),
(19, 81000, '2019-05-20', NULL),
(20, 83000, '2023-04-05', NULL),
(21, 88000, '2023-06-01', NULL),
(22, 72000, '2023-01-15', NULL),
(23, 76000, '2022-12-30', NULL),
(24, 94000, '2021-08-25', NULL),
(25, 90000, '2022-05-19', NULL);

