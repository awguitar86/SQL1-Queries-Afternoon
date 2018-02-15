/**** SIMPLE SQL QUERIES ****/

/* TABLE - PEOPLE */
-- 1. Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor.
        --ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT
CREATE TABLE Person (
  PersonId INTEGER PRIMARY KEY AUTOINCREMENT,
  Name VARCHAR(40),
  Age INTEGER,
  HeightCm FLOAT,
  City VARCHAR(40),
  FavoriteColor VARCHAR(40)
  );

-- 2. Add 5 different people into the Person database.
        --Remember to not include the ID because it should auto-increment.
INSERT INTO Person (Name, Age, HeightCm, City, FavoriteColor)
VALUES ('Ted', 25, 182.88, 'Provo', 'Blue'), 
	   ('Tim', 34, 168.45, 'Layton', 'Green'),
       ('Betty', 54, 145.76, 'Nephi', 'Purple'),
       ('Tegan', 41, 156.32, 'Seattle', 'Red'),
       ('George', 62, 177.89, 'Boise', 'Brown');

-- 3. List all the people in the Person table by Height from tallest to shortest.
SELECT * FROM Person ORDER BY HeightCm DESC;

-- 4. List all the people in the Person table by Height from shortest to tallest.
SELECT * FROM Person ORDER BY HeightCm;

-- 5. List all the people in the Person table by Age from oldest to youngest.
SELECT * FROM Person ORDER BY Age DESC;

-- 6. List all the people in the Person table older than age 20.
SELECT * FROM Person WHERE Age > 20;

-- 7. List all the people in the Person table that are exactly 18.
SELECT * FROM Person WHERE Age = 18;

-- 8. List all the people in the Person table that are less than 20 and older than 30.
SELECT * FROM Person WHERE Age NOT BETWEEN 20 AND 30;

-- 9. List all the people in the Person table that are not 27 (Use not equals).
SELECT * FROM Person WHERE Age <> 27;
SELECT * FROM Person WHERE Age != 27;

-- 10. List all the people in the Person table where their favorite color is not red.
SELECT * FROM Person WHERE FavoriteColor <> 'Red';

-- 11. List all the people in the Person table where their favorite color is not red and is not blue.
SELECT * FROM Person WHERE FavoriteColor NOT IN ('Red', 'Blue');

-- 12. List all the people in the Person table where their favorite color is orange or green.
SELECT * FROM Person WHERE FavoriteColor IN ('Orange', 'Green');

-- 13. List all the people in the Person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM Person WHERE FavoriteColor IN ('Orange', 'Green', 'Blue');

-- 14. List all the people in the Person table where their favorite color is yellow or purple (use IN).
SELECT * FROM Person WHERE FavoriteColor IN ('Yellow', 'Purple');


/* TABLE - ORDERS */
-- 1. Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.
CREATE TABLE Orders (
  PersonID INTEGER,
  ProductName TEXT,
  ProductPrice FLOAT,
  Quantity INTEGER
  );

-- 2. Add 5 Orders to the Orders table.
        --Make orders for at least two different people.
        --PersonID should be different for different people.
INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity)
VALUES (1, 'iPhone X', 1099.00, 1222555),
  	   (2, 'Macbook Pro', 2199.00, 1234567),
       (3, 'iWatch', 459.00, 987654),
       (4, 'iPod', 359.00, 54321),
       (5, 'Apple TV', 249.00, 5647382);

-- 3. Select all the records from the Orders table.
SELECT * FROM Orders;

-- 4. Calculate the total number of products ordered.
SELECT SUM(Quantity) FROM Orders;

-- 5. Calculate the total order price.
SELECT SUM(ProductPrice) FROM Orders;

-- 6. Calculate the total order price by a single PersonID.
SELECT SUM(ProductPrice) FROM Orders WHERE PersonID = 1;

/* TABLE - ARTIST */
-- 1. Add 3 new Artists to the Artist table. ( It's already created )
INSERT INTO Artist (ArtistId, Name) 
VALUES (276, 'Thrice'),
	   (277, 'Underoath'),
       (278, 'Good Tiger');

-- 2. Select 10 artists in reverse alphabetical order.
SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;

-- 3. Select 5 artists in alphabetical order.
SELECT * FROM Artist ORDER BY Name LIMIT 5;

-- 4. Select all artists that start with the word "Black".
SELECT * FROM Artist WHERE Name LIKE 'Black%';

-- 5. Select all artists that contain the word "Black".
SELECT * FROM Artist WHERE Name LIKE '%Black%';

/* TABLE - EMPLOYEE */
-- 1. List all Employee first and last names only that live in Calgary.
SELECT LastName, FirstName FROM Employee WHERE City = 'Calgary';

-- 2. Find the first and last name and birthdate for the youngest employee.
SELECT FirstName, LastName, MAX(BirthDate) FROM Employee;

-- 3. Find the first and last name and birthdate for the oldest employee.
SELECT FirstName, LastName, MIN(BirthDate) FROM Employee;

-- 4. Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
SELECT * FROM Employee WHERE ReportsTo = 2; --ReportsTo is equal to 2 because the ReportsTo column is assigned to the EmployeeId.

-- 5. You will need to query the employee table to find the Id for Nancy Edwards.
SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND Lastname = 'Edwards';

-- 6. Count how many people live in Lethbridge.
SELECT COUNT(*) FROM Employee WHERE City = 'Lethbridge';

/* TABLE - INVOICE */
-- 1. Count how many orders were made from the USA.
SELECT COUNT(*) FROM Invoice WHERE BillingCountry = 'USA';

-- 2. Find the largest order total amount.
SELECT MAX(Total) FROM Invoice;

-- 3. Find the smallest order total amount.
SELECT MIN(Total) FROM Invoice;

-- 4. Find all orders bigger than $5.
SELECT * FROM Invoice WHERE Total > 5;

-- 5. Count how many orders were smaller than $5.
SELECT COUNT(*) FROM Invoice WHERE Total < 5;

-- 6. Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM Invoice WHERE BillingState IN ('CA', 'TX', 'AZ');

-- 7. Get the average total of the orders.
SELECT AVG(Total) FROM Invoice;

-- 8. Get the total sum of the orders.
SELECT SUM(Total) FROM Invoice;