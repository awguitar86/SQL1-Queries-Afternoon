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
-- 2. Add 5 Orders to the Orders table.
        --Make orders for at least two different people.
        --PersonID should be different for different people.
-- 3. Select all the records from the Orders table.
-- 4. Calculate the total number of products ordered.
-- 5. Calculate the total order price.
-- 6. Calculate the total order price by a single PersonID.

/* TABLE - ARTIST */
-- 1. Add 3 new Artists to the Artist table. ( It's already created )
-- 2. Select 10 artists in reverse alphabetical order.
-- 3. Select 5 artists in alphabetical order.
-- 4. Select all artists that start with the word "Black".
-- 5. Select all artists that contain the word "Black".

/* TABLE - EMPLOYEE */
-- 1. List all Employee first and last names only that live in Calgary.
-- 2. Find the first and last name and birthdate for the youngest employee.
-- 3. Find the first and last name and birthdate for the oldest employee.
-- 4. Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
-- 5. You will need to query the employee table to find the Id for Nancy Edwards.
-- 6. Count how many people live in Lethbridge.

/* TABLE - INVOICE */
-- 1. Count how many orders were made from the USA.
-- 2. Find the largest order total amount.
-- 3. Find the smallest order total amount.
-- 4. Find all orders bigger than $5.
-- 5. Count how many orders were smaller than $5.
-- 6. Count how many orders were in CA, TX, or AZ (use IN).
-- 7. Get the average total of the orders.
-- 8. Get the total sum of the orders.