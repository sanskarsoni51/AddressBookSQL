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
