CREATE DATABASE IF NOT EXISTS ecommerce_project;
USE ecommerce_project;

CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    Country VARCHAR(50)
);

CREATE TABLE products (
    StockCode VARCHAR(20) PRIMARY KEY,
    Description VARCHAR(255),
    UnitPrice DECIMAL(10,2)
);

CREATE TABLE orders (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    CustomerID INT,
    Quantity INT,
    InvoiceDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (StockCode) REFERENCES products(StockCode)
);
