-- Session 3: DML Operations
drop database Session3DB;
-- Create Database
CREATE DATABASE Session3DB;

-- Select Database
USE Session3DB;


-- Task 1: Create Restaurants Table
CREATE TABLE Restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);

-- Insert 5 Restaurants
INSERT INTO Restaurants (name, cuisine, rating, city)
VALUES
('Spice Villa', 'Indian', 4.5, 'Ahmedabad'),
('Pizza Palace', 'Italian', 4.2, 'Ahmedabad'),
('Dragon House', 'Chinese', 3.3, 'Ahmedabad'),
('Taco Fiesta', 'Mexican', 4.6, 'Surat'),
('Green Garden', 'Gujarati', 3.8, 'Vadodara');

-- Check Data
SELECT * FROM Restaurants;

SET SQL_SAFE_UPDATES = 0;   -- SAFE MODE OFF
-- Task 2: Update Spice Villa Rating
UPDATE Restaurants
SET rating = 4.7
WHERE name = 'Spice Villa';

-- Check Updated Data
SELECT * FROM Restaurants
WHERE name = 'Spice Villa';


-- Task 3: Delete Restaurants with Rating Less Than 3.5
DELETE FROM Restaurants
WHERE rating < 3.5;

-- Check Remaining Data
SELECT * FROM Restaurants;


-- Task 4: Top 2 Ahmedabad Restaurants
SELECT *
FROM Restaurants
WHERE city = 'Ahmedabad'
  AND rating > 4.0
ORDER BY rating DESC
LIMIT 2;