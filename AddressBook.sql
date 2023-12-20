-- Create a new database named AddressBook
CREATE DATABASE AddressBook;

-- Switch to the AddressBook database
USE addressbook;

-- Create a table named Contacts to store contact information
CREATE TABLE Contacts
(
    FirstName VARCHAR(150) NOT NULL,
    LastName VARCHAR(150),
    Address VARCHAR(200),
    City VARCHAR(150),
    State VARCHAR(150),
    Zip INT,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(319),
    PRIMARY KEY (Email) -- Define Email as the primary key
);

-- Insert sample data into the Contacts table
INSERT INTO Contacts(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('a', 'a', 'a bazar', 'a', 'a', 312001, 'a', 'a@gmail.com'),
    ('sanskar', 'soni', 'sadar bazar', 'chittorgarh', 'rajasthan', 312001, '9887279510', 'sanskarsoni89@gmail.com');

-- Select all records from the Contacts table
SELECT * FROM Contacts;

-- Update the city to "Mumbai" where the FirstName is "a"
UPDATE Contacts SET City = "Mumbai" WHERE FirstName = "a";

-- Delete records where the FirstName is "sanskar"
DELETE FROM Contacts WHERE FirstName = "sanskar";

-- Select records where the city is "Mumbai"
SELECT * FROM Contacts WHERE City = "Mumbai";

-- Count the total number of contacts where the city is not "Mumbai"
SELECT COUNT(*) AS TotalContact FROM Contacts WHERE City != "Mumbai";

-- Select all records from the Contacts table and order them by FirstName in ascending order
SELECT * FROM Contacts ORDER BY FirstName ASC;

-- Add a new column named "type" to the Contacts table
ALTER TABLE Contacts ADD (Type VARCHAR(15));

-- Display the structure of the Contacts table
DESCRIBE Contacts;

-- Update the "type" column to "friend" where the FirstName is "a"
UPDATE Contacts SET Type = "friend" WHERE FirstName = "a";

-- Update the "type" column to "family" where the FirstName is "sanskar"
UPDATE Contacts SET Type = "family" WHERE FirstName = "sanskar";

-- Count the total number of contacts where the type is not "friend"
SELECT COUNT(*) AS TotalContact FROM Contacts WHERE Type != "friend";
