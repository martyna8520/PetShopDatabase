CREATE DATABASE pet_shop_database;
GO

CREATE TABLE Producers (
    producer_id INT NOT NULL PRIMARY KEY,
    producer_name VARCHAR(30) NOT NULL
);

CREATE TABLE Products (
    product_id INT NOT NULL PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    category_name VARCHAR(30) NOT NULL,
    weight DECIMAL(6, 2) NOT NULL CHECK (weight >= 0.00),
    stock_level INT NOT NULL CHECK (stock_level >= 0),
    producer_id INT,
    FOREIGN KEY (producer_id) REFERENCES Producers(producer_id)
);

CREATE TABLE Offers (
    offer_id INT PRIMARY KEY IDENTITY(1,1),
    date_from DATE NOT NULL CHECK (date_from >= '2021-12-01'),
    date_to DATE NOT NULL CHECK (date_to >= '2021-12-01'),
    price DECIMAL(6, 2) NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Delivery_options (
    delivery_option_id INT NOT NULL PRIMARY KEY,
    delivery_cost DECIMAL(6, 2) DEFAULT 9.00,
    delivery_type VARCHAR(30) NOT NULL 
);

CREATE TABLE Customers (
    customer_name VARCHAR(30) CHECK (customer_name NOT LIKE '%[^A-Za-z]%' AND LEFT(customer_name, 1) = UPPER(LEFT(customer_name, 1))) NOT NULL,
    customer_surname VARCHAR(30) CHECK (customer_surname NOT LIKE '%[^A-Za-z]%' AND LEFT(customer_surname, 1) = UPPER(LEFT(customer_surname, 1))) NOT NULL,
    e_mail VARCHAR(50) UNIQUE NOT NULL CHECK (e_mail LIKE '%@%.pl' OR e_mail LIKE '%@%.com'),
    phone_number CHAR(9) UNIQUE CHECK(phone_number  LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    PRIMARY KEY (customer_name, e_mail)
);

CREATE TABLE Addresses (
    address_id INT NOT NULL PRIMARY KEY,
    street VARCHAR(100),
    city VARCHAR(20) NOT NULL,
    postal_code VARCHAR(10) NOT NULL CHECK( postal_code LIKE '[0-9][0-9]-[0-9][0-9][0-9]'),
    house_number VARCHAR(10) NOT NULL, 
    customer_name VARCHAR(30) NOT NULL,
    e_mail VARCHAR(50)UNIQUE NOT NULL,
    FOREIGN KEY (customer_name, e_mail) REFERENCES Customers(customer_name, e_mail) 
);

CREATE TABLE Orders (
    order_id INT NOT NULL PRIMARY KEY,
    order_date DATE NOT NULL CHECK (order_date >= '2021-12-01'),
    order_status VARCHAR(50) NOT NULL CHECK (order_status IN ('Accepted', 'Canceled', 'Returned','Waiting for payment', 'Forwarded for packaging' )),
    order_price DECIMAL(6, 2) NOT NULL,
    delivery_option_id INT,
    address_id INT,
    customer_name VARCHAR(30) NOT NULL,
    e_mail VARCHAR(50)UNIQUE NOT NULL,
    FOREIGN KEY (customer_name, e_mail) REFERENCES Customers(customer_name, e_mail),
    FOREIGN KEY (delivery_option_id) REFERENCES Delivery_options(delivery_option_id),
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);

CREATE TABLE Products_ordered (
    amount_id INT NOT NULL PRIMARY KEY,
    amount INT NOT NULL CHECK (amount >= 0),
    offer_id INT,
    order_id INT,
    FOREIGN KEY (offer_id) REFERENCES Offers(offer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Employees (
    employee_id INT NOT NULL PRIMARY KEY ,
    employee_name VARCHAR(30) NOT NULL CHECK (employee_name NOT LIKE '%[^A-Za-z]%' AND LEFT(employee_name, 1) = UPPER(LEFT(employee_name, 1))),
    employee_surname VARCHAR(30) NOT NULL CHECK (employee_surname NOT LIKE '%[^A-Za-z]%' AND LEFT(employee_surname, 1) = UPPER(LEFT(employee_surname, 1))),
    position VARCHAR(30) NOT NULL 
);

CREATE TABLE Packages (
    package_id INT NOT NULL PRIMARY KEY,
    total_weight DECIMAL(6, 2) NOT NULL,
    package_status VARCHAR(50) NOT NULL CHECK (package_status IN ('In packing','Forwarded for shipment', 'Sent')),
    order_id INT,
    employee_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id) 
);

CREATE TABLE Package_parts (
    package_part_id INT NOT NULL PRIMARY KEY,
    shipped_date DATE NOT NULL CHECK (shipped_date >= '2021-12-01'),
    amount_id INT,
    package_id INT,
    FOREIGN KEY (amount_id) REFERENCES Products_ordered(amount_id), 
    FOREIGN KEY (package_id) REFERENCES Packages(package_id)
);

CREATE TABLE Deliveries (
    delivery_id INT NOT NULL PRIMARY KEY,
    delivery_status VARCHAR(50) NOT NULL CHECK (delivery_status IN ('During delivery', 'Delivered','Waiting to be picked up by the courier')),
    delivery_date DATE NOT NULL CHECK (delivery_date >= '2021-12-01'),
    package_id INT,
    FOREIGN KEY (package_id) REFERENCES Packages(package_id)
);

CREATE TABLE Reviews (
    review_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    comment VARCHAR(255),
    rating INT CHECK (rating >= 1 AND rating <= 5),
    product_id INT,
    customer_name VARCHAR(30),
    e_mail VARCHAR(50) UNIQUE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_name, e_mail) REFERENCES Customers(customer_name, e_mail),
);


CREATE TABLE Transactions (
    transaction_id INT NOT NULL PRIMARY KEY,
    total_price DECIMAL(6, 2) NOT NULL,
    payment_method VARCHAR(20) NOT NULL CHECK(payment_method IN ('card', 'cash')) ,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);



