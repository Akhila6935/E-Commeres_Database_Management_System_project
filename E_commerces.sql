create database e_commerces_management_system

use e_commerces_management_system;

CREATE TABLE customers (
  CustomerID int NOT NULL AUTO_INCREMENT,
  First_Name varchar(50) NOT NULL,
  Last_Name varchar(50) NOT NULL,
  PhoneNumber varchar(20) DEFAULT NULL,
  Email varchar(50) DEFAULT NULL,
  PRIMARY KEY (CustomerID)
);

CREATE TABLE categories (
  CategoriesID int NOT NULL AUTO_INCREMENT,
  CategoryName varchar(50) NOT NULL,
  Description text,
  PRIMARY KEY (CategoriesID)
);

CREATE TABLE products (
  ProductID int NOT NULL AUTO_INCREMENT,
  ProductName varchar(50) NOT NULL,
  Description text,
  Price decimal(10,2) NOT NULL,
  StockQuantity int NOT NULL,
  CategoriesID int DEFAULT NULL,
  PRIMARY KEY (ProductID),
  KEY CategoriesID (CategoriesID),
  FOREIGN KEY (CategoriesID) REFERENCES categories (CategoriesID)
);

CREATE TABLE orders (
  OrderID int NOT NULL AUTO_INCREMENT,
  CustomerID int DEFAULT NULL,
  OrderDate datetime NOT NULL,
  TotalAmount decimal(10,2) NOT NULL,
  PRIMARY KEY (OrderID),
  KEY CustomerID (CustomerID),
  FOREIGN KEY (CustomerID) REFERENCES customers (CustomerID)
);

CREATE TABLE orderdetails (
  OrderDetailID int NOT NULL AUTO_INCREMENT,
  OderID int DEFAULT NULL,
  ProductID int DEFAULT NULL,
  Quantity int NOT NULL,
  Price decimal(10,2) NOT NULL,
  PRIMARY KEY (OrderDetailID),
  KEY OderID (OderID),
  KEY ProductID (ProductID),
  FOREIGN KEY (OderID) REFERENCES orders (OrderID),
  FOREIGN KEY (ProductID) REFERENCES products (ProductID)
);

CREATE TABLE cartitems (
  CartItemID int NOT NULL AUTO_INCREMENT,
  CustomerID int DEFAULT NULL,
  ProductID int DEFAULT NULL,
  Quantity int NOT NULL,
  AddedDate datetime NOT NULL,
  PRIMARY KEY (CartItemID),
  KEY CustomerID (CustomerID),
  KEY ProductID (ProductID),
  FOREIGN KEY (CustomerID) REFERENCES customers (CustomerID),
  FOREIGN KEY (ProductID) REFERENCES products (ProductID)
);

CREATE TABLE payments (
  PaymentsID int NOT NULL AUTO_INCREMENT,
  OrderID int DEFAULT NULL,
  PaymentDate datetime NOT NULL,
  Amount decimal(10,2) NOT NULL,
  PaymentMETHOD varchar(50) NOT NULL,
  PRIMARY KEY (PaymentsID),
  KEY OrderID (OrderID),
  FOREIGN KEY (OrderID) REFERENCES orders (OrderID)
);

