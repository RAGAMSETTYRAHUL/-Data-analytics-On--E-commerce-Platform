create database  E_commerce_platform;
use E_commerce_platform;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Laptop', 'Electronics', 1200.00, 30),
(2, 'Smartphone', 'Electronics', 800.00, 50),
(3, 'Headphones', 'Accessories', 150.00, 100),
(4, 'Shoes', 'Apparel', 90.00, 200),
(5, 'Watch', 'Accessories', 250.00, 75);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    TotalSpent DECIMAL(10, 2)
);

INSERT INTO Customers (CustomerID, CustomerName, City, TotalSpent) VALUES
(1, 'Alice', 'New York', 1350.00),
(2, 'Bob', 'Los Angeles', 2200.00),
(3, 'Charlie', 'Chicago', 950.00),
(4, 'Diana', 'Houston', 1750.00),
(5, 'Eve', 'Phoenix', 300.00);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity, TotalAmount) VALUES
(1, 1, 1, '2024-01-10', 1, 1200.00),
(2, 2, 2, '2024-02-15', 2, 1600.00),
(3, 3, 3, '2024-03-05', 1, 150.00),
(4, 4, 4, '2024-04-12', 3, 270.00),
(5, 5, 5, '2024-05-20', 2, 500.00);


