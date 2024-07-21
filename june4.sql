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
  
  
select * from employee where emp_mng = "Jane Smith" and emp_id = 218;
select * from employee where emp_mng_name = "Mark Spencer" and id = 7;
select * from employee where emp_sal = 55000 and emp_id = 201;
select * from employee where emp_exp = 4 and emp_sal = 52000;
select * from employee where emp_dept = "HR" and id = 13;

select * from employee where emp_name = "Khushi" or emp_sal = 71000;
select * from employee where emp_id = 210 or emp_sal = 63000 or emp_exp = 4;
select * from employee where emp_name = "Vidya" or emp_mng = "Nancy Blue" or emp_sal = 53000;
select * from employee where id = 17 or emp_exp = 2;
select * from employee where emp_dept = "Marketing" or emp_id = 220;

select * from employee where id not in(1,2,3,4,5);
select * from employee where emp_id not in(206,207,209,210);
select * from employee where mng_id not in(301,302);
select * from employee where emp_exp not in(10,8,2,7);
select * from employee where emp_sal not in(74000,71000,69000);

select * from employee where id between 1 and 9;
select * from employee where emp_id between 206 and 214;
select * from employee where mng_id between 315 and 319;
select * from employee where emp_exp between 1 and 8;
select * from employee where id between 15 and 20;

select * from employee where id not between 1 and 9;
select * from employee where emp_id not between 206 and 214;
select * from employee where mng_id not between 307 and 319;
select * from employee where emp_exp not between 1 and 8;
select * from employee where id not between 5 and 20;

select * from employee where id like 2;
select * from employee where emp_id like 204;
select * from employee where mng_id like 303;
select * from employee where emp_exp like 10;
select * from employee where id like 3;

select * from product;

select * from product where id = 5 and prd_price = 199.99;
select * from product where prd_name = "4K TV" and prd_quantity = 40;
select * from product where expiry_date = 2025-12-31 and id = 12;
select * from product where prd_brand = "LightBrand" and prd_quantity = 200;
select * from product where manufactured_by = "GameWorld" and id = 6;

select * from product where id = 2 or prd_brand = "PureAir";
select * from product where prd_quantity = 90 or prd_price = 59.99;
select * from product where prd_brand = "FitBrand" or manufactured_by = "DentalCare";
select * from product where manufactured_by = "SecureHome" or id = 20;
select * from product where prd_price = 29.99 or prd_name = "Laptop Pro";

select * from product where id in(2,4,6,8,10);
select * from product where prd_quantity in(30,120,25);
select * from product where prd_price in(99.99,799.99,19.99,129.99);
select * from product where id in(10,11,12,13,14,15);
select * from product where prd_quantity in(85,110,200,75,60);

select * from product where id between 1 and 10;
select * from product where prd_quantity between 100 and 200;
select * from product where prd_price between 500 and 1500;
select * from product where id between 15 and 20;
select * from product where prd_quantity between 25 and 120;

select * from product where id not between 1 and 10;
select * from product where prd_quantity not between 100 and 200;
select * from product where prd_price not between 500 and 1500;
select * from product where id not between 15 and 20;
select * from product where prd_quantity not between 25 and 120;

select * from product where prd_name like "4K TV";
select * from product where prd_quantity like 150;
select * from product where prd_brand like "PhotoBrand";
select * from product where manufactured_by like "SoundInc";
select * from product where id like 19;



select * from product;

select * from Employee;

SELECT *FROM employee ORDER BY emp_name;
SELECT *FROM employee ORDER BY emp_dept;
SELECT *FROM employee ORDER BY emp_sal;

SELECT *FROM product ORDER BY prd_name;
SELECT *FROM product ORDER BY prd_price;
SELECT *FROM product ORDER BY manufactured_by;

SELECT LENGTH(emp_name) as emp_name_length FROM employee;
SELECT LENGTH(emp_dept) as emp_dept_length FROM employee;
SELECT LENGTH(emp_dept) as emp_dept_length FROM employee;
SELECT LENGTH(emp_mng) as emp_mng_length FROM employee;
SELECT LENGTH(emp_mng_name) as emp_mng_name_length FROM employee;

SELECT LENGTH(prd_name) as prd_name_length FROM product;
SELECT LENGTH(prd_brand) as prd_brand_length FROM product;
SELECT LENGTH(manufactured_by) as manufactured_by_length FROM product;
SELECT LENGTH(expiry_date) as expiry_date_length FROM product;
SELECT LENGTH(prd_quantity) as prd_quantity_length FROM product;


SELECT LOWER(emp_name) as emp_name_lower FROM employee;
SELECT LOWER(emp_dept) as emp_dept_lower FROM employee;
SELECT LOWER(emp_mng) as emp_mng_lower FROM employee;
SELECT LOWER(emp_mng_name) as emp_mng_name_lower FROM employee;
SELECT LOWER(emp_exp) as emp_exp_lower FROM employee;

SELECT LOWER(prd_name) as prd_name_lower FROM product;
SELECT LOWER(prd_brand) as prd_brand_lower FROM product;
SELECT LOWER(manufactured_by) as manufactured_by_lower FROM product;
SELECT LOWER(expiry_date) as expiry_date_lower FROM product;
SELECT LOWER(prd_quantity) as prd_quantity_lower FROM product;

SELECT UPPER(emp_name) as emp_name_upper FROM employee;
SELECT UPPER(emp_dept) as emp_dept_upper FROM employee;
SELECT UPPER(emp_mng) as emp_mng_upper FROM employee;
SELECT UPPER(emp_mng_name) as emp_mng_name_upper FROM employee;
SELECT UPPER(emp_exp) as emp_exp_upper FROM employee;

SELECT UPPER(prd_name) as prd_name_upper FROM product;
SELECT UPPER(prd_brand) as prd_brand_upper FROM product;
SELECT UPPER(manufactured_by) as manufactured_by_upper FROM product;
SELECT UPPER(expiry_date) as expiry_date_upper FROM product;
SELECT UPPER(prd_quantity) as prd_quantity_upper FROM product;

SELECT INSTR(emp_name, 'a') as emp_name_instr FROM employee;
SELECT INSTR(emp_dept, 'e') as emp_dept_instr FROM employee;
SELECT INSTR(emp_mng, 'm') as emp_mng_instr FROM employee;
SELECT INSTR(emp_mng_name, 'n') as emp_mng_name_instr FROM employee; 
SELECT INSTR(emp_exp, '1') as emp_exp_instr  FROM employee;

SELECT INSTR(prd_name, 'p') as prd_name_instr FROM product;
SELECT INSTR(prd_brand, 'b') as prd_brand_instr FROM product;
SELECT INSTR(manufactured_by, 'm') as manufactured_by_instr FROM product;
SELECT INSTR(expiry_date, 'e') as expiry_date_instr FROM product;
SELECT INSTR(prd_quantity, 'q') as prd_quantity_instr FROM product;


create database Hospital;
 use Hospital;


CREATE TABLE hospital_info (
  hospital_id INT PRIMARY KEY,
  hospital_name VARCHAR(255) NOT NULL,
  hospital_location VARCHAR(255) NOT NULL,
  hospital_type VARCHAR(255) NOT NULL,
  hospital_bed_count INT,
  hospital_established_year INT
);

INSERT INTO hospital_info (hospital_id, hospital_name, hospital_location, hospital_type, hospital_bed_count, hospital_established_year)
VALUES
(1, 'Mayo Clinic', 'Rochester', 'Private', 200, 1889),
(2, 'Cleveland Clinic', 'Cleveland', 'Private', 150, 1921),
(3, 'Johns Hopkins Hospital', 'Baltimore', 'Private', 120, 1889),
(4, 'Massachusetts General Hospital', 'Boston', 'Private', 180, 1811),
(5, 'University of California, Los Angeles Medical Center', 'Los Angeles', 'Public', 150, 1955),
(6, 'NewYork-Presbyterian Hospital', 'New York City', 'Private', 200, 1771),
(7, 'University of California, San Francisco Medical Center', 'San Francisco', 'Public', 120, 1873),
(8, 'Columbia University Irving Medical Center', 'New York City', 'Private', 150, 1770),
(9, 'Stanford Health Care', 'Stanford', 'Private', 120, 1959),
(10, 'University of Pennsylvania Health System', 'Philadelphia', 'Private', 150, 1751),
(11, 'Duke University Hospital', 'Durham', 'Private', 120, 1930),
(12, 'University of Washington Medical Center', 'Seattle', 'Public', 150, 1920),
(13, 'Hospital of the University of Pennsylvania', 'Philadelphia', 'Private', 180, 1751),
(14, 'University of California, San Diego Medical Center', 'San Diego', 'Public', 120, 1966),
(15, 'Baylor University Medical Center', 'Dallas', 'Private', 150, 1903),
(16, 'Washington University School of Medicine', 'St. Louis', 'Private', 120, 1891),
(17, 'University of Pittsburgh Medical Center', 'Pittsburgh', 'Private', 150, 1893),
(18, 'University of Michigan Health System', 'Ann Arbor', 'Public', 120, 1869),
(19, 'University of Southern California Medical Center', 'Los Angeles', 'Private', 150, 1885),
(20, 'Northwestern Memorial Hospital', 'Chicago', 'Private', 120, 1972);

use Hospital;

ALTER TABLE hospital_info
ADD hospital_website VARCHAR(255),
ADD hospital_phone_number VARCHAR(20),
ADD hospital_email VARCHAR(255),
ADD hospital_accreditation VARCHAR(255);

CREATE TABLE bus_info (
    bus_id INT ,
    bus_number VARCHAR(10),
    route VARCHAR(50),
    departure_time TIME,
    arrival_time TIME,
    ticket_price DECIMAL(10, 2)
);

ALTER TABLE bus_info
ADD COLUMN bus_dept VARCHAR(50),
ADD COLUMN driver_name VARCHAR(50),
ADD COLUMN num_of_seats INT,
ADD COLUMN availability_status BOOLEAN;
 

INSERT INTO bus_info  VALUES
(1, 'B001', 'Route 1', '08:00:00', '09:00:00', 15.50, 'Dept A', 'John', 40, TRUE),
(2, 'B002', 'Route 2', '09:00:00', '10:00:00', 12.75, 'Dept B', 'Mike', 35, TRUE),
(3, 'B003', 'Route 3', '10:00:00', '11:00:00', 18.00, 'Dept A', 'Tom', 30, FALSE),
(4, 'B004', 'Route 4', '11:00:00', '12:00:00', 10.00, 'Dept B', 'Harry', 25, TRUE),
(5, 'B005', 'Route 5', '12:00:00', '13:00:00', 20.00, 'Dept C', 'Sam', 45, TRUE),
(6, 'B006', 'Route 6', '13:00:00', '14:00:00', 11.50, 'Dept A', 'David', 40, FALSE),
(7, 'B007', 'Route 7', '14:00:00', '15:00:00', 13.75, 'Dept B', 'Chris', 35, TRUE),
(8, 'B008', 'Route 8', '15:00:00', '16:00:00', 16.25, 'Dept C', 'Paul', 30, TRUE),
(9, 'B009', 'Route 9', '16:00:00', '17:00:00', 14.00, 'Dept A', 'Mark', 25, TRUE),
(10, 'B010', 'Route 10', '17:00:00', '18:00:00', 19.00, 'Dept B', 'Luke', 45, FALSE),
(11, 'B011', 'Route 11', '18:00:00', '19:00:00', 12.00, 'Dept C', 'James', 40, TRUE),
(12, 'B012', 'Route 12', '19:00:00', '20:00:00', 15.00, 'Dept A', 'Peter', 35, TRUE),
(13, 'B013', 'Route 13', '20:00:00', '21:00:00', 10.50, 'Dept B', 'Andrew', 30, FALSE),
(14, 'B014', 'Route 14', '21:00:00', '22:00:00', 17.50, 'Dept C', 'Matthew', 25, TRUE),
(15, 'B015', 'Route 15', '22:00:00', '23:00:00', 18.75, 'Dept A', 'Thomas', 45, TRUE),
(16, 'B016', 'Route 16', '23:00:00', '00:00:00', 13.50, 'Dept B', 'Joseph', 40, FALSE),
(17, 'B017', 'Route 17', '00:00:00', '01:00:00', 20.00, 'Dept C', 'Anthony', 35, TRUE),
(18, 'B018', 'Route 18', '01:00:00', '02:00:00', 11.25, 'Dept A', 'Charles', 30, TRUE),
(19, 'B019', 'Route 19', '02:00:00', '03:00:00', 16.00, 'Dept B', 'Kevin', 25, TRUE),
(20, 'B020', 'Route 20', '03:00:00', '04:00:00', 12.75, 'Dept C', 'Daniel', 45, FALSE),
(21, 'B021', 'Route 21', '04:00:00', '05:00:00', 15.75, 'Dept A', 'Jason', 40, TRUE),
(22, 'B022', 'Route 22', '05:00:00', '06:00:00', 13.00, 'Dept B', 'George', 35, TRUE),
(23, 'B023', 'Route 23', '06:00:00', '07:00:00', 17.25, 'Dept C', 'Kenneth', 30, FALSE),
(24, 'B024', 'Route 24', '07:00:00', '08:00:00', 18.50, 'Dept A', 'Patrick', 25, TRUE),
(25, 'B025', 'Route 25', '08:00:00', '09:00:00', 14.75, 'Dept B', 'Stephen', 45, TRUE),
(26, 'B026', 'Route 26', '09:00:00', '10:00:00', 19.25, 'Dept C', 'Brian', 40, FALSE),
(27, 'B027', 'Route 27', '10:00:00', '11:00:00', 12.50, 'Dept A', 'Gregory', 35, TRUE),
(28, 'B028', 'Route 28', '11:00:00', '12:00:00', 15.25, 'Dept B', 'Paul', 30, TRUE),
(29, 'B029', 'Route 29', '12:00:00', '13:00:00', 10.75, 'Dept C', 'Raymond', 25, TRUE),
(30, 'B030', 'Route 30', '13:00:00', '14:00:00', 20.00, 'Dept A', 'Gary', 45, TRUE);

SELECT * FROM bus_info;

SELECT MAX(ticket_price) AS max_ticket_price FROM bus_info;

SELECT bus_dept, MIN(ticket_price) AS min_ticket_price FROM bus_info GROUP BY bus_dept;

use Company;

CREATE TABLE staff_directory (
  staff_id INT  NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  position VARCHAR(100) NOT NULL,
  team VARCHAR(100) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL CHECK (salary > 0),
  start_date DATE NOT NULL DEFAULT CURRENT_DATE, UNIQUE (staff_id, first_name, last_name)
);
INSERT INTO staff_directory (staff_id, first_name, last_name, position, team, salary, start_date)
VALUES
(1, 'John', 'Doe', 'Manager', 'Sales', 50000.00, '2020-01-01'),
(2, 'Jane', 'Smith', 'Employee', 'Marketing', 40000.00, '2020-01-15'),
(3, 'Bob', 'Johnson', 'Director', 'IT', 60000.00, '2020-02-01'),
(4, 'Alice', 'Williams', 'Employee', 'HR', 35000.00, '2020-03-01'),
(5, 'Mike', 'Brown', 'Manager', 'Finance', 55000.00, '2020-04-01'),
(6, 'Emily', 'Davis', 'Employee', 'Sales', 42000.00, '2020-05-01'),
(7, 'Sarah', 'Miller', 'Director', 'Operations', 65000.00, '2020-06-01'),
(8, 'John', 'Taylor', 'Employee', 'IT', 38000.00, '2020-07-01'),
(9, 'Kate', 'Wilson', 'Manager', 'Marketing', 52000.00, '2020-08-01'),
(10, 'Sam', 'Thomas', 'Employee', 'HR', 33000.00, '2020-09-01'),
(11, 'Lily', 'Jackson', 'Director', 'Sales', 58000.00, '2020-10-01'),
(12, 'Raj', 'Patel', 'Employee', 'Finance', 45000.00, '2020-11-01'),
(13, 'Sophia', 'Lee', 'Manager', 'Operations', 56000.00, '2020-12-01'),
(14, 'Olivia', 'Martin', 'Employee', 'IT', 39000.00, '2021-01-01'),
(15, 'Jackson', 'Hall', 'Director', 'Marketing', 61000.00, '2021-02-01'),
(16, 'Ava', 'Garcia', 'Employee', 'HR', 36000.00, '2021-03-01'),
(17, 'Ethan', 'Harris', 'Manager', 'Sales', 54000.00, '2021-04-01'),
(18, 'Mia', 'Martinez', 'Employee', 'Finance', 41000.00, '2021-05-01'),
(19, 'William', 'Clark', 'Director', 'IT', 62000.00, '2021-06-01'),
(20, 'Julia', 'Rodriguez', 'Manager', 'Operations', 57000.00, '2021-07-01');
