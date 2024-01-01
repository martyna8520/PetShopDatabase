USE pet_shop_database;

DROP TABLE Reviews;
DROP TABLE Transactions;
DROP TABLE Deliveries;
DROP TABLE Package_parts;
DROP TABLE Packages;
DROP TABLE Employees;
DROP TABLE Products_ordered;
DROP TABLE Offers;
DROP TABLE Orders;
DROP TABLE Delivery_options;
DROP TABLE Addresses;
DROP TABLE Customers;
DROP TABLE Products;
DROP TABLE Producers;

USE master;
ALTER DATABASE pet_shop_database SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE pet_shop_database;

