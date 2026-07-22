CREATE DATABASE technical_support_db;
USE technical_support_db;

-- Customers
CREATE TABLE Customers(
    CustomerID INT AUTO_INCREMENT,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    City VARCHAR(50),
    PRIMARY KEY(CustomerID)
);

-- Orders
CREATE TABLE Orders(

OrderID INT AUTO_INCREMENT,

CustomerID INT,

ProductName VARCHAR(100),

OrderDate DATE,

Status VARCHAR(20),

PRIMARY KEY(OrderID),

FOREIGN KEY(CustomerID)
REFERENCES Customers(CustomerID)

);

-- Transactions

CREATE TABLE Transactions(

TransactionID INT AUTO_INCREMENT,

OrderID INT,

PaymentMethod VARCHAR(30),

Amount DECIMAL(10,2),

Status VARCHAR(20),

PRIMARY KEY(TransactionID),

FOREIGN KEY(OrderID)
REFERENCES Orders(OrderID)

);

-- Devices

CREATE TABLE Devices(

DeviceID INT AUTO_INCREMENT,

CustomerID INT,

SerialNumber VARCHAR(50),

DeviceModel VARCHAR(100),

Status VARCHAR(20),

PRIMARY KEY(DeviceID),

FOREIGN KEY(CustomerID)
REFERENCES Customers(CustomerID)

);

-- Device Logs

CREATE TABLE DeviceLogs(

LogID INT AUTO_INCREMENT,

DeviceID INT,

LogTime DATETIME,

LogLevel VARCHAR(20),

LogMessage VARCHAR(255),

PRIMARY KEY(LogID),

FOREIGN KEY(DeviceID)

REFERENCES Devices(DeviceID)

);

-- Users

CREATE TABLE Users(

UserID INT AUTO_INCREMENT,

CustomerID INT,

Username VARCHAR(50),

LastLogin DATE,

PRIMARY KEY(UserID),

FOREIGN KEY(CustomerID)

REFERENCES Customers(CustomerID)

);

-- Login History

CREATE TABLE LoginHistory(

LoginID INT AUTO_INCREMENT,

UserID INT,

LoginTime DATETIME,

Status VARCHAR(20),

IPAddress VARCHAR(30),

PRIMARY KEY(LoginID),

FOREIGN KEY(UserID)

REFERENCES Users(UserID)

);
