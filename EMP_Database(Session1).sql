USE EMPDATABASE

CREATE TABLE Employee(
    EmployeeId bigint PRIMARY KEY IDENTITY(2,2),
    FirstName varchar(MAX),
    LastName varchar(MAX),
	City varchar(50),
	State varchar(50),
	DateOfBirth date
)

INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('A','A','Patiala','Punjab','1999-04-23');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('B','B','Fazilka','Punjab','1998-05-24');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('C','C','Gurdaspur','Punjab','1997-06-25');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('D','D','Ludhiana','Punjab','1996-07-26');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('E','E','Jalandhar','Punjab','1995-08-27');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('F','F','Pathankot','Punjab','1994-09-28');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('G','G','Moga','Punjab','1993-10-29');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('H','H','Faridkot','Punjab','1992-11-30');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('I','I','Amritsar','Punjab','1991-12-31');
INSERT INTO EMPLOYEE (FirstName, LastName, City, State, DateOfBirth) VALUES ('J','J','Rajpura','Punjab','1990-01-1');

SELECT * FROM Employee

SELECT EmployeeId, FirstName, LastName, City, State, DateOfBirth INTO #TempEmployee FROM Employee
Go
SELECT * FROM #TempEmployee

SELECT TOP 5 * FROM #TempEmployee

SELECT TOP 5 * FROM Employee

CREATE TABLE EmployeeTemp(
    EmployeeId bigint PRIMARY KEY IDENTITY(2,2),
    FirstName varchar(MAX),
    LastName varchar(MAX),
	City varchar(50),
	State varchar(50),
	DateOfBirth date
)

INSERT INTO EmployeeTemp(FirstName, LastName, City, State, DateOfBirth) SELECT FirstName, LastName, City, State, DateOfBirth FROM Employee

SELECT * FROM EmployeeTemp

SELECT TOP 5 * FROM EmployeeTemp

ALTER TABLE Employee ADD Email varchar(60)

UPDATE Employee SET Email='A@gmail.com' 

SELECT * FROM Employee

UPDATE Employee SET Email='B@gmail.com' WHERE EmployeeId=4

ALTER TABLE EmployeeTemp ADD Email varchar(60)


DELETE FROM EmployeeTemp WHERE EmployeeId=4

ALTER TABLE EmployeeTemp DROP COLUMN Email

SELECT * FROM EmployeeTemp

