create database Prashant;
use Prashant;

CREATE TABLE Clients (
Client_ID INT NOT NULL,
Name VARCHAR(255) NOT NULL,
Address VARCHAR(255),
City VARCHAR(255),
State VARCHAR(255),
ZIP INT,
Phone VARCHAR(20) UNIQUE,
CHECK (ZIP > 0)
);

CREATE TABLE Invoices (
Invoice_ID INT NOT NULL,
Client_ID INT NOT NULL,
Invoice_Date DATE,
Total DECIMAL(10, 2),
Status VARCHAR(255),
Payment_Method VARCHAR(255),
Shipping_Address VARCHAR(255),
Invoice_Number VARCHAR(20) UNIQUE,
CHECK (Total > 0)
);

CREATE TABLE Items (
Item_ID INT NOT NULL,
Name VARCHAR(255) NOT NULL,
Description VARCHAR(255),
Price DECIMAL(10, 2),
Category VARCHAR(255),
Stock INT,
Image VARCHAR(255),
Item_Code VARCHAR(20) UNIQUE,
CHECK (Price > 0)
);

CREATE TABLE Staff (
Staff_ID INT NOT NULL,
Name VARCHAR(255) NOT NULL,
Title VARCHAR(255),
Department VARCHAR(255),
Hire_Date DATE,
Salary DECIMAL(10, 2),
Manager_ID INT,
Staff_Code VARCHAR(20) UNIQUE,
CHECK (Salary > 0)
);

INSERT INTO Clients (Client_ID, Name, Address, City, State, ZIP, Phone)
VALUES
(1, 'John Doe', '123 Main St', 'Anytown', 'CA', 12345, '123-456-7890'),
(2, 'Jane Smith', '456 Elm St', 'Othertown', 'NY', 67890, '098-765-4321'),
(3, 'Bob Johnson', '789 Oak St', 'Thistown', 'TX', 34567, '555-555-5555'),
(4, 'Maria Rodriguez', '321 Maple St', 'Thatown', 'FL', 89012, '222-222-2222'),
(5, 'David Lee', '901 Pine St', 'Thisville', 'IL', 45678, '333-333-3333'),
(6, 'Emily Chen', '234 Spruce St', 'Other ville', 'GA', 67890, '444-444-4444'),
(7, 'Kevin White', '567 Fir St', 'Therville', 'MI', 34567, '555-555-5565'),
(8, 'Sarah Taylor', '890 Cedar St', 'Thatville', 'OH', 89012, '666-666-6666'),
(9, 'Michael Brown', '345 Walnut St', 'Thisville', 'PA', 45678, '777-777-7777'),
(10, 'Olivia Davis', '678 Pine St', 'Other ville', 'NC', 67890, '888-888-8888');


INSERT INTO Invoices (Invoice_ID, Client_ID, Invoice_Date, Total, Status, Payment_Method, Shipping_Address, Invoice_Number)
VALUES
(1, 1, '2022-01-01', 100.00, 'Pending', 'Credit Card', '123 Main St', 'INV-001'),
(2, 2, '2022-01-15', 50.00, 'Shipped', 'PayPal', '456 Elm St', 'INV-002'),
(3, 3, '2022-02-01', 200.00, 'Delivered', 'Bank Transfer', '789 Oak St', 'INV-003'),
(4, 4, '2022-03-01', 150.00, 'Pending', 'Credit Card', '321 Maple St', 'INV-004'),
(5, 5, '2022-04-01', 300.00, 'Shipped', 'PayPal', '901 Pine St', 'INV-005'),
(6, 6, '2022-05-01', 250.00, 'Delivered', 'Bank Transfer', '234 Spruce St', 'INV-006'),
(7, 7, '2022-06-01', 100.00, 'Pending', 'Credit Card', '567 Fir St', 'INV-007'),
(8, 8, '2022-07-01', 200.00, 'Shipped', 'PayPal', '890 Cedar St', 'INV-008'),
(9, 9, '2022-08-01', 300.00, 'Delivered', 'Bank Transfer', '345 Walnut St', 'INV-009'),
(10, 10, '2022-09-01', 250.00, 'Pending', 'Credit Card', '678 Pine St', 'INV-010');

INSERT INTO Items (Item_ID, Name, Description, Price, Category, Stock, Image, Item_Code)
VALUES
(1, 'Item 1', 'This is item 1', 10.99, 'Category 1', 10, 'image1.jpg', 'ITEM-001'),
(2, 'Item 2', 'This is item 2', 20.99, 'Category 2', 20, 'image2.jpg', 'ITEM-002'),
(3, 'Item 3', 'This is item 3', 30.99, 'Category 3', 30, 'image3.jpg', 'ITEM-003'),
(4, 'Item 4', 'This is item 4', 40.99, 'Category 4', 40, 'image4.jpg', 'ITEM-004'),
(5, 'Item 5', 'This is item 5', 50.99, 'Category 5', 50, 'image5.jpg', 'ITEM-005'),
(6, 'Item 6', 'This is item 6', 60.99, 'Category 6', 60, 'image6.jpg', 'ITEM-006'),
(7, 'Item 7', 'This is item 7', 70.99, 'Category 7', 70, 'image7.jpg', 'ITEM-007'),
(8, 'Item 8', 'This is item 8', 80.99, 'Category 8', 80, 'image8.jpg', 'ITEM-008'),
(9, 'Item 9', 'This is item 9', 90.99, 'Category 9', 90, 'image9.jpg', 'ITEM-009'),
(10, 'Item 10', 'This is item 10', 100.99, 'Category 10', 100, 'image10.jpg', 'ITEM-010');

INSERT INTO Staff (Staff_ID, Name, Title, Department, Hire_Date, Salary, Manager_ID, Staff_Code)
VALUES
(1, 'John Doe', 'Manager', 'Sales', '2018-01-01', 50000.00, NULL, 'STAFF-001'),
(2, 'Jane Smith', 'Salesperson', 'Sales', '2019-01-01', 40000.00, 1, 'STAFF-002'),
(3, 'Bob Johnson', 'Salesperson', 'Sales', '2020-01-01', 35000.00, 1, 'STAFF-003'),
(4, 'Maria Rodriguez', 'Customer Service', 'Customer Service', '2018-01-01', 30000.00, NULL, 'STAFF-004'),
(5, 'David Lee', 'Customer Service', 'Customer Service', '2019-01-01', 25000.00, 4, 'STAFF-005'),
(6, 'Emily Chen', 'Marketing', 'Marketing', '2020-01-01', 40000.00, NULL, 'STAFF-006'),
(7, 'Kevin White', 'Marketing', 'Marketing', '2018-01-01', 35000.00, 6, 'STAFF-007'),
(8, 'Sarah Taylor', 'HR', 'HR', '2019-01-01', 30000.00, NULL, 'STAFF-008'),
(9, 'Michael Brown', 'IT', 'IT', '2020-01-01', 40000.00, NULL, 'STAFF-009'),
(10, 'Olivia Davis', 'IT', 'IT', '2018-01-01', 35000.00, 9, 'STAFF-010');

SELECT * FROM Invoices WHERE Total = 100.00;

SELECT * FROM Clients WHERE Name = 'John Doe';

SELECT * FROM Items WHERE Category = 'Category 1';

SELECT * FROM Staff WHERE Department = 'Sales';

SELECT
COUNT(*) AS Total_Clients,
SUM(ZIP) AS Sum_ZIP,
AVG(ZIP) AS Avg_ZIP,
MAX(ZIP) AS Max_ZIP,
MIN(ZIP) AS Min_ZIP,
COUNT(DISTINCT City) AS Total_Unique_Cities
FROM Clients;

SELECT
COUNT(*) AS Total_Invoices,
SUM(Total) AS Sum_Total,
AVG(Total) AS Avg_Total,
MAX(Total) AS Max_Total,
MIN(Total) AS Min_Total,
COUNT(DISTINCT Status) AS Total_Unique_Statuses
FROM Invoices;


SELECT
COUNT(*) AS Total_Staff,
SUM(Salary) AS Sum_Salary,
AVG(Salary) AS Avg_Salary,
MAX(Salary) AS Max_Salary,
MIN(Salary) AS Min_Salary,
COUNT(DISTINCT Department) AS Total_Unique_Departments
FROM Staff;

SELECT
COUNT(*) AS Total_Items,
SUM(Price) AS Sum_Price,
AVG(Price) AS Avg_Price,
MAX(Price) AS Max_Price,
MIN(Price) AS Min_Price,
COUNT(DISTINCT Category) AS Total_Unique_Categories
FROM Items;

