INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (12, 'Vegan Products', 'Plant-based foods including meat substitutes, dairy-free cheese, and vegan snacks');
INSERT INTO categories (CategoryID, CategoryName, Description)
VALUES (13, 'Frozen Foods', 'Frozen meals, vegetables, fruits, and desserts for easy preparation');

INSERT INTO suppliers (SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES (45, 'Harvest Naturals', 'Jack Wilson', '789 Orchard St.', 'Nashville', '37201', 'USA', '(615) 555-3030');
INSERT INTO suppliers (SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES (46, 'Global Spices', 'Raj Patel', '101 Spice Rd.', 'Mumbai', '400001', 'India', '(022) 555-5050');
INSERT INTO suppliers (SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES (47, 'Artisan Cheeses', 'Sophie Laurent', '12 Rue de Fromage', 'Lyon', '69001', 'France', '(04) 555 8080');

INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (97, 'Alfreds Delights', 'Maria Anders', '23 Oak Street', 'Berlin', '10115', 'Germany');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (98, 'Bon Appétit', 'Laurent Bignon', '12 Maple Lane', 'Paris', '75001', 'France');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (99, 'Folk & Co', 'Christina Berglund', '56 Pine Ave', 'Stockholm', '113 21', 'Sweden');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (100, 'Antonio''s Pasta', 'Antonio Moreno', '67 Birch Road', 'Mexico City', '03100', 'Mexico');
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (101, 'Tradição Hiper', 'Ana Trujillo', '789 Elm Street', 'Rio de Janeiro', '20030-021', 'Brazil');

INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUES (95, 'Quinoa', 16, 5, '10 - 500 g packs', 32);
INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUES (96, 'Greek Yogurt', 14, 4, '6 - 150 g cups', 15);
INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUES (97, 'Tofu', 18, 7, '12 - 300 g blocks', 19);
INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUES (98, 'Coconut Water', 12, 1, '12 - 330 ml bottles', 24);

INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (16, 'Garcia', 'Maria', '1985-07-21', 'EmpID16.pic', 'Maria has a master’s degree in economics from NYU.');
INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES(17, 'Rodriguez', 'Carlos', '1978-04-13', 'EmpID17.pic', 'Carlos is a senior software engineer with 15 years of experience.');
INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES(18, 'Lopez', 'Sophia', '1990-11-02', 'EmpID18.pic', 'Sophia is an expert in data analysis and has a Ph.D. in statistics.');

UPDATE customers SET Country = 'Vietnam' WHERE Country = 'Mexico';

UPDATE customers SET City = 'Delhi' WHERE City = 'Paris';

UPDATE customers SET Country = 'India' WHERE Country = 'USA';

UPDATE customers SET Country = 'Cambodia' WHERE Country = 'Brazil';

UPDATE customers SET City = 'Kathmandu', Country = 'Nepal' WHERE City = 'Madrid';

UPDATE customers SET country = 'India' WHERE country = 'Canada';
UPDATE customers SET country = 'Bhutan' WHERE country = 'France';
UPDATE customers SET country = 'Sri Lanka' WHERE country = 'Germany';
UPDATE customers SET country = 'Maldives' WHERE country = 'Italy';
UPDATE customers SET country = 'Pakistan' WHERE country = 'Japan';
UPDATE customers SET country = 'Bangladesh' WHERE country = 'UK';
UPDATE customers SET country = 'Nepal' WHERE country = 'USA';

DELETE FROM orderdetails WHERE OrderID IN (SELECT OrderID FROM orders WHERE CustomerID IN ( SELECT CustomerID FROM customers WHERE PostalCode LIKE '%31%' ));
DELETE FROM orders WHERE CustomerID IN (SELECT CustomerID FROM customers WHERE PostalCode LIKE '%31%' );
DELETE FROM customers where PostalCode like '%31%'; 

DELETE FROM customers WHERE PostalCode like '%00%' AND (city ='Rome' OR city = 'Paris' );
SELECT *FROM customers WHERE PostalCode like '%00%' AND (city = 'Rome' OR city = 'Paris' );

SELECT * FROM customers WHERE city != 'Salzburg';
DELETE FROM orderdetails WHERE OrderID IN (SELECT OrderID FROM orders WHERE CustomerID IN 
	(SELECT CustomerID FROM customers WHERE City != 'Salzburg'));
DELETE FROM orders WHERE CustomerID IN (SELECT CustomerID FROM customers WHERE City != 'Salzburg');
DELETE FROM customers WHERE City != 'Salzburg';

SELECT *FROM employees WHERE MONTH(BirthDate) = 7; 
DELETE FROM employees WHERE MONTH(BirthDate) = 7;

SELECT *FROM employees WHERE MONTH(BirthDate) = 8; 
DELETE FROM employees WHERE MONTH(BirthDate) = 8;

SELECT *FROM suppliers WHERE Country in ('Singapore','Japan');
DELETE FROM orderdetails WHERE ProductID IN (SELECT ProductID FROM products WHERE SupplierID IN 
	(SELECT SupplierID FROM suppliers WHERE Country IN ('Singapore', 'Japan')));
DELETE FROM products WHERE SupplierID IN (SELECT SupplierID FROM suppliers WHERE Country IN ('Singapore', 'Japan'));
DELETE FROM suppliers WHERE Country IN ('Singapore', 'Japan');

SELECT Country, COUNT(SupplierID) AS SupplierCount FROM suppliers GROUP BY Country;

SELECT City, COUNT(CustomerID) AS CustomerCount FROM customers  GROUP BY City;

SELECT EmployeeID, COUNT(OrderID) AS OrderCount FROM orders  GROUP BY EmployeeID;




















	





