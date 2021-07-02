--Welcome To Address Book Service
--UC1 Create a Address Book Service Database
create database AddressBook_Service;
use AddressBook_Service;

--UC2-Create a Address Book Table with first and Last name,address,city,state,zip,PhoneNumber and email as its attributes
Create Table AddressBook(
FirstName varchar(25),
LastName varchar(25),
address varchar(50),
City varchar(20),
State varchar(20),
Zip int,
PhoneNumber varchar(15),
Email varchar(50)
);


