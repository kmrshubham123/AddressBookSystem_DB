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

--UC3-Insert new Contacts to address Book
insert into AddressBook values
('Akash','Chandra','Rajgir','BiharSharif','Bihar',803101,'+91-7060731665','Akashchandra123@gmail.com'),
('Bipin','Kumar','NaiSarai','BiharSharif','Bihar',803101,'+91-9961365986','Bipinkumar579@gmail.com'),
('Saurabh','Yadav','Mukherjee Nagar','Noth-West Delhi','New Delhi',110009,'9963486521','Saurabh12@gmail.com'),
('Manish','Kumar','Gandhi Vihar','North Delhi','New Delhi',110009,'7060798645','Manish897@gmail.com');

--For view table
select*from AddressBook

--UC4-Edit Existing Contact person Using their name
UPDATE AddressBook set address = 'Varanasi' where FirstName = 'Manish' AND LastName = 'Kumar'

--UC5-Delete a Person Using Person Name
Delete from AddressBook where FirstName='Bipin' and LastName='Kumar'

--UC6-Retrieve Person Belonging to a city or state from the address book
select*from AddressBook where City='BiharSharif'
select*from AddressBook where State='New Delhi'

--UC7-Count Row Size from Address Book
select COUNT (City) from AddressBook; --Also we use Distinct here to list the diffrent value (Returns only Different values)
select COUNT (State) from AddressBook;

--UC8-Reterive Entries Sorted Alphabetically by Person name for a given city
select * from AddressBook where City= 'BiharSharif' order by FirstName

--UC9-Alter Table Book add Type(Family , Friend ,Profession)
ALTER Table Addressbook Add 
Type varchar(25)
UPDATE AddressBook set Type = 'Family' where FirstName='Akash'
UPDATE AddressBook set Type = 'Friend' where FirstName='Manish'
UPDATE AddressBook set Type = 'Family' where FirstName='Saurabh'
UPDATE AddressBook set Type = 'Doctor' where FirstName='Bipin'

--UC10-Get number of person by Count type
select COUNT(Type) from AddressBook

--UC11-Add Person to both Friend and Family
insert into AddressBook values
('Rajesh','Rahi','Mayur Vihar','East Delhi','New Delhi',110029,'7065698645','RajeshRahi1966@gmail.com','Family and Friend');


