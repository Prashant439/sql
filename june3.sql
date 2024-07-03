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

use Employee;
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
