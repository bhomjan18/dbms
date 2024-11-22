use sudip_northwind;

select distinct CategoryName from categories;

select distinct Country from customers;

select distinct City,Country from customers;

select distinct CustomerName FROM customers WHERE City = 'Paris';

select distinct CustomerID FROM customers WHERE Country = 'Spain';

select distinct CustomerID,CustomerName FROM customers WHERE Country = 'Mexico' OR 'Italy';

select * FROM customers WHERE City = 'Frankfurt a.M.' and Country = 'Germany';

select * FROM customers WHERE City LIKE 'S%';

select * FROM customers WHERE Country != 'Venezuela' OR 'Argentina';

select * FROM customers WHERE Country = 'Canada' OR Country = 'France' OR Country = 'Germany' OR Country = 'Italy' OR 
Country ='Japan' OR Country ='UK' OR Country ='USA';

select * FROM customers WHERE PostalCode LIKE '%50%';

select * FROM customers WHERE PostalCode LIKE '%31%' AND (City = 'Mexico City' OR City = 'Toulouse');

select * FROM customers WHERE City != 'Elgin';

SELECT *FROM employees WHERE MONTH(BirthDate) = 7;

SELECT *FROM employees WHERE Notes LIKE '%BA%';

select * FROM suppliers WHERE Country IN ('Australia','Sweden');

SELECT Country, COUNT(*) AS supplier_count FROM suppliers GROUP BY Country;

SELECT City, COUNT(*) AS supplier_count FROM suppliers GROUP BY City;

SELECT EmployeeID, COUNT(*) AS order_count FROM orders GROUP BY EmployeeID;

SELECT CustomerID, COUNT(*) AS order_count FROM orders GROUP BY CustomerID;

SELECT * FROM orders WHERE ShipperID = 2 OR ShipperID= 4;

SELECT * FROM products WHERE CategoryID = 5;

select * FROM products WHERE ProductName LIKE 'S%';


























