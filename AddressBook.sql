CREATE DATABASE AddressBook;
use addressbook;
create table Contacts
(
FirstName varchar(150) not null,
LastName varchar(150),
address VARCHAR(200),
city VARCHAR(150),
state VARCHAR(150),
zip INT,
PhoneNumber VARCHAR(15),
email VARCHAR(319),
primary key (email)
);

INSERT INTO contacts(FirstName,LastName,address,city,state,zip,PhoneNumber,email) values
    ('a','a','a bazar','a','a',312001,'a','a@gmail.com'),
    ('sanskar','soni','sadar bazar','chittorgarh','rajasthan',312001,'9887279510','sanskarsoni89@gmail.com');

SELECT * from contacts;
UPDATE contacts SET city = "Mumbai" WHERE FirstName = "a";

delete from contacts where FirstName = "sanskar";

Select * from contacts where city="mumbai";

SELECT count(*) as TotalContact FROM contacts where city != "mumbai";

SELECT * FROM contacts ORDER BY FirstName ASC;