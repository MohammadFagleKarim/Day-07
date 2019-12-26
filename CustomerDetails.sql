CREATE DATABASE CoffeeShop

USE CoffeeShop

CREATE TABLE Items (Name VARCHAR(50), Price FLOAT)

CREATE TABLE Customers ( Name VARCHAR(50), Contact VARCHAR(11), Address VARCHAR(50))

DROP TABLE Items
DROP TABLE Customers

CREATE TABLE Items (
ID INT IDENTITY(1,1),
Name VARCHAR(50) UNIQUE, 
Price FLOAT)

INSERT INTO Items (Name, Price) VALUES ('BLACK COFFEE', 120)
INSERT INTO Items (Name, Price) VALUES ('COLD COFFEE', 100)
INSERT INTO Items (Name, Price) VALUES ('REGULAR COFFEE', 80)
INSERT INTO Items (Name, Price) VALUES ('REGULAR COFFEE', 80)

SELECT * FROM Items

UPDATE Items
SET Name = 'HOT COFFEE', Price = 90 WHERE ID = 3

DELETE FROM Items WHERE ID = 6

CREATE TABLE Customers (
ID INT IDENTITY(1000, 1),
Name VARCHAR(30),
Age INT,
Contact VARCHAR(11),
Address VARCHAR(MAX))

INSERT INTO Customers(Name, Age, Contact, Address) VALUES ('KARIM', 20, '01684550302', 'MIRPUR')
INSERT INTO Customers(Name, Age, Contact, Address) VALUES ('SABBIR', 22, '01728803979', 'MIRPUR')
INSERT INTO Customers(Name, Age, Contact, Address) VALUES ('HABIB', 30, '01315911950', 'SYAMOLI')
INSERT INTO Customers(Name, Age, Contact, Address) VALUES ('SHANTO', 18, '01315911953', 'DHANMONDI')
INSERT INTO Customers(Name, Age, Contact, Address) VALUES ('SAGAR', 30, '01315911950', 'SAGOPTA')

SELECT * FROM Customers

SELECT Name, Price FROM Items
ORDER BY Name, Price

SELECT Name, Price FROM Items
WHERE Price<100

CREATE TABLE Orders (
ID INT IDENTITY(1, 1),
ItemName VARCHAR(30),
TotalPrice FLOAT,
Customer VARCHAR(30))

INSERT INTO Orders(ItemName, TotalPrice, Customer) VALUES ('BLACK COFFEE', 120.0, 'KARIM')
INSERT INTO Orders(ItemName, TotalPrice, Customer) VALUES ('HOT COFFEE', 100.0, 'SABBIR')
INSERT INTO Orders(ItemName, TotalPrice, Customer) VALUES ('COLD COFFEE', 150.0, 'EMON')
INSERT INTO Orders(ItemName, TotalPrice, Customer) VALUES ('REGULAR COFFEE', 80.0, 'SHETU')

SELECT * FROM Orders