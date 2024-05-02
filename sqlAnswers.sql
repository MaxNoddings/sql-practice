-- Max Noddings
-- Galen Healthcare SQL Assessment

-- 1.	Max Noddings
-- 2.	In your own words, please explain the difference between a LEFT and INNER JOIN and when you would use one over the other.

-- Both LEFT JOIN and INNER JOIN are types of joins used to combine data from two or more tables based on a related column (or columns) between them. An INNER JOIN returns only the rows from both tables that have matching values in the specified columns. This said, if there are no matching rows in the joined tables, then no rows will be returned in the result set. On the contrary, a LEFT JOIN returns all the rows from the table mentioned before the JOIN keyword, and the matched rows from the table mentioned after the JOIN keyword. For example, the SQL query: SELECT * FROM Table1 LEFT JOIN Table2 ON Table1.Column = Table2.Column; would return all the rows from Table1 and only the rows from Table2 that match the specified column named “Column”. 

-- You would use an INNER JOIN when you only want to retrieve rows that have matching values in both tables and want to filter out all of the rows that don’t have a match. You would use a LEFT JOIN when you want to retrieve all of the rows from the table mentioned before the JOIN keyword regardless if there is a match in the table mentioned after the JOIN keyword. 


-- 3.	From the Employees table we’d like to see a query that returns the FirstName, LastName, and HireDate for employees that both have the title of Sales Representative, and also are in the United States. (NOTE: Please put SQL query in answer field)

SELECT FirstName, LastName, HireDate
FROM Employees
WHERE Title = 'Sales Representative' AND Country = 'USA';


-- 4.	In the products table, we’d like to see the ProductID and ProductName for those products where the ProductName includes the string “queso”. (NOTE: Please put SQL query in answer field)

SELECT ProductID, ProductName
FROM Products
WHERE ProductName LIKE '%queso%';

-- 5.	In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers whose ContactTitle is not Marketing Manager, and also live in Germany or Canada. (NOTE: Please put SQL query in answer field)

SELECT SupplierID, ContactName, ContactTitle
FROM Suppliers
WHERE ContactTitle != 'Marketing Manager' 
AND Country IN ('Germany', 'Canada');


-- 6.	Looking at the Orders table, there’s a field called ShipCountry, we want to show all the orders (OrderID, CustomerID, ShipCountry) from any Latin American country. But we don’t have a list of Latin American countries in a table in the Northwind database. So, we’re going to just use this list of Latin American countries that happen to be in the Orders table: Brazil Mexico Argentina Venezuela  (NOTE: Please put SQL query in answer field)

SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry IN ('Brazil', 'Mexico', 'Argentina', 'Venezuela');


-- 7.	For all the employees in the Employees table, show the FirstName, LastName, Title, and BirthDate. Order the results by BirthDate, so we have the oldest employees first. We see the time of the BirthDate field, which we don’t want. Show only the date portion of the BirthDate field.  Put the DOB in mm/dd/yyyy format. (NOTE: Please put SQL query in answer field)

SELECT FirstName, LastName, Title,
STRFTIME('%m/%d/%Y', BirthDate) AS DOB
FROM Employees
ORDER BY BirthDate;

-- 8.	Show the FirstName and LastName columns from the Employees table, and return a new column called FullName, showing FirstName and LastName joined together in one column, with a space in-between. (NOTE: Please put SQL query in answer field)

SELECT FirstName, LastName,
CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees;

-- 9.	We’d like to show a list of the Orders that were made, including the Shipper that was used. Show the OrderID, OrderDate (date only), and CompanyName of the Shipper, and sort by OrderID.  In order to not show all the orders (there’s more than 800), show only those rows with an OrderID of less than 10300.

SELECT Orders.OrderID, 
       STRFTIME('%Y-%m-%d', OrderDate) AS OrderDate, 
       Shippers.CompanyName
FROM Orders
JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE Orders.OrderID < 10300
ORDER BY Orders.OrderID;

-- 10.	Asdfasdf
-- 11.	Asdfasdf
-- 12.	Asdfasdfsa
-- 13.	Asdfadsf
-- 14.	Asdfasdf
-- 15.	Asdfasdf
-- 16.	Asdfasdf
-- 17.	Asdfasdf
-- 18.	Asdfasdf
-- 19.	Asdfasdf
-- 20.	asdfasdfa
