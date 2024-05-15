/*Create Database*/
create database raksha_pipes

-- Use database raksha_pipes
use raksha_pipes
-- Create a table for Customers
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

-- Create a table for Orders with a foreign key constraint referencing Customers
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT
    Order_Date DATE
    Shipping_Date Date
    Shipper_id,
    Quantity INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10, 2), -- Assuming Total_Amount is a monetary value, using DECIMAL data type
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

-- Create a table for Shipments with a foreign key constraint referencing Orders
CREATE TABLE Shipments (
    Shipment_ID INT PRIMARY KEY,
    Order_ID INT,
    Ship_Date DATE,
    Shipping_Method VARCHAR(100),
    Shipping_Cost DECIMAL(10, 2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

-- Create a table for Payments with a foreign key constraint referencing Orders
CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY,
    Order_ID INT,
    Amount DECIMAL(10, 2),
    Payment_Date DATE,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

-- Create a table for Employees
CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Department VARCHAR(100)
);

-- Create a table for Suppliers
CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(100),
    Contact_Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

-- Create a table for Products
CREATE TABLE Products (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(255),
    Diameter_Inches INT,
    Material VARCHAR(255),
    Price DECIMAL(10, 2),
    Supplier_ID INT,
    Category VARCHAR(255),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);



/*Use Database*/
use raksha_pipes

/*Showing Table*/
show tables
