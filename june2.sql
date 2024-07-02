create database Company;

use Company;

CREATE TABLE Employee (
	Id int,
    emp_id INT,
    emp_name VARCHAR(50),
    emp_dept VARCHAR(50),
    emp_sal DECIMAL(10,2),
    emp_mng boolean,
    emp_mng_name VARCHAR(50),
    mgr_id INT,
    emp_exp INT
);

INSERT INTO Employee (id, emp_name, emp_id, emp_dept, emp_sal, emp_mng, emp_mng_name, mgr_id, emp_exp) VALUES
(1, 'John Smith', 201, 'Sales', 50000, FALSE, NULL, NULL, 5),
(2, 'Jane Doe', 202, 'Marketing', 60000, FALSE, NULL, NULL, 7),
(3, 'Bob Johnson', 203, 'IT', 70000, TRUE, 'John Smith', 201, 10),
(4, 'Alice Brown', 204, 'HR', 40000, FALSE, NULL, NULL, 3),
(5, 'Mike Davis', 205, 'Finance', 80000, TRUE, 'Jane Doe', 202, 12),
(6, 'Emily Chen', 206, 'Sales', 55000, FALSE, NULL, NULL, 4),
(7, 'David Lee', 207, 'Marketing', 65000, FALSE, NULL, NULL, 6),
(8, 'Sophia Patel', 208, 'IT', 75000, FALSE, NULL, NULL, 8),
(9, 'Olivia Martin', 209, 'HR', 45000, FALSE, NULL, NULL, 5),
(10, 'Jackson Hall', 210, 'Finance', 85000, FALSE, NULL, NULL, 9),
(11, 'Sarah Taylor', 211, 'Sales', 50000, FALSE, NULL, NULL, 4),
(12, 'Kevin White', 212, 'Marketing', 60000, FALSE, NULL, NULL, 7),
(13, 'Lisa Nguyen', 213, 'IT', 70000, FALSE, NULL, NULL, 10),
(14, 'Daniel Kim', 214, 'HR', 40000, FALSE, NULL, NULL, 6),
(15, 'Hannah Garcia', 215, 'Finance', 80000, FALSE, NULL, NULL, 11),
(16, 'Ryan Mitchell', 216, 'Sales', 55000, FALSE, NULL, NULL, 5),
(17, 'Amy Sanders', 217, 'Marketing', 65000, FALSE, NULL, NULL, 8),
(18, 'Brian Walker', 218, 'IT', 75000, FALSE, NULL, NULL, 9),
(19, 'Julia Foster', 219, 'HR', 45000, FALSE, NULL, NULL, 7),
(20, 'Christopher Lewis', 220, 'Finance', 85000, FALSE, NULL, NULL, 10);


CREATE TABLE Product (
  id INT ,
  prd_name VARCHAR(100),
  prd_price DECIMAL(10,2),
  manufactured_by VARCHAR(50),
  expiry_date DATE,
  prd_brand VARCHAR(50),
  prd_quantity INT
);

INSERT INTO Product (id, prd_name, prd_price, manufactured_by, expiry_date, prd_brand, prd_quantity) VALUES
(21, 'New Balance Shoes', 89.99, 'New Balance Athletics', '2024-10-31', 'New Balance', 60),
(22, 'Samsung Smartphone', 799.99, 'Samsung Electronics', '2025-02-28', 'Samsung', 30),
(23, 'Oakley Sunglasses', 129.99, 'Luxottica Group', '2024-07-31', 'Oakley', 40),
(24, 'Adidas Football', 19.99, 'Adidas AG', '2024-06-30', 'Adidas', 120),
(25, 'Sony TV', 999.99, 'Sony Corporation', '2025-01-31', 'Sony', 20),
(26, 'Nike Jacket', 79.99, 'Nike Inc.', '2024-09-30', 'Nike', 90),
(27, 'Bosch Toolset', 99.99, 'Robert Bosch GmbH', '2024-08-31', 'Bosch', 50),
(28, 'Ray-Ban Glasses', 149.99, 'Luxottica Group', '2024-05-31', 'Ray-Ban', 30),
(29, 'HP Printer', 149.99, 'HP Inc.', '2024-11-30', 'HP', 25),
(30, 'Under Armour Hoodie', 59.99, 'Under Armour Inc.', '2024-04-30', 'Under Armour', 100),
(31, 'Canon Printer', 99.99, 'Canon Inc.', '2024-06-30', 'Canon', 40),
(32, 'Microsoft Surface', 899.99, 'Microsoft Corporation', '2025-03-31', 'Microsoft', 20),
(33, 'Gillette Shaver', 29.99, 'Procter & Gamble', '2024-03-31', 'Gillette', 150),
(34, 'Levi\'s Jeans', 69.99, 'Levi Strauss & Co.', '2024-07-31', 'Levi\'s', 90),
(35, 'Panasonic Camera', 399.99, 'Panasonic Corporation', '2024-09-30', 'Panasonic', 25),
(36, 'Apple Watch', 299.99, 'Apple Inc.', '2025-06-30', 'Apple', 50),
(37, 'Nike Socks', 9.99, 'Nike Inc.', '2024-05-31', 'Nike', 200),
(38, 'Sony Headphones', 99.99, 'Sony Corporation', '2024-08-31', 'Sony', 40),
(39, 'Adidas Pants', 59.99, 'Adidas AG', '2024-06-30', 'Adidas', 100),
(40, 'Bosch Drill', 49.99, 'Robert Bosch GmbH', '2024-07-31', 'Bosch', 110);

select * from Product;

select * from Employee;