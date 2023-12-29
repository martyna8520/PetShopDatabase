USE pet_shop_database;
GO

CREATE TABLE Producers (
    producer_id INT PRIMARY KEY,
    producer_name VARCHAR(255) NOT NULL
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    weight DECIMAL(5, 2) NOT NULL,
    stock_level INT NOT NULL CHECK (stock_level >= 0),
    producer_id INT,
    FOREIGN KEY (producer_id) REFERENCES Producers(producer_id)
);

CREATE TABLE Offers (
    offer_id INT PRIMARY KEY,
    date_from DATE NOT NULL,
    date_to DATE NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Delivery_options (
    delivery_option_id INT PRIMARY KEY,
    delivery_cost DECIMAL(8, 2) DEFAULT 0.00,
    delivery_type VARCHAR(255) NOT NULL
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(30) CHECK (customer_name NOT LIKE '%[^A-Za-z]%' AND LEFT(customer_name, 1) = UPPER(LEFT(customer_name, 1))) NOT NULL,
    customer_surname VARCHAR(30) CHECK (customer_surname NOT LIKE '%[^A-Za-z]%' AND LEFT(customer_surname, 1) = UPPER(LEFT(customer_surname, 1))) NOT NULL,
    e_mail VARCHAR(255) NOT NULL CHECK (e_mail LIKE '%@%.pl' OR e_mail LIKE '%@%.com'),
    phone_number CHAR(9) UNIQUE CHECK(phone_number  LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

CREATE TABLE Addresses (
    address_id INT PRIMARY KEY,
    street VARCHAR(100) NOT NULL,
    city VARCHAR(20),
    postal_code VARCHAR(10) NOT NULL CHECK( postal_code LIKE '[0-9][0-9]-[0-9][0-9][0-9]'),
    house_number VARCHAR(10) NOT NULL, 
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL CHECK (order_date >= '2021-12-01'),
    order_status VARCHAR(255) NOT NULL,
    order_price DECIMAL(8, 2) NOT NULL,
    customer_id INT,
    delivery_option_id INT,
    address_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (delivery_option_id) REFERENCES Delivery_options(delivery_option_id),
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id),
);

CREATE TABLE Products_ordered (
    amount_id INT PRIMARY KEY,
    amount INT NOT NULL CHECK (amount >= 0),
    offer_id INT,
    order_id INT,
    FOREIGN KEY (offer_id) REFERENCES Offers(offer_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL CHECK (employee_name NOT LIKE '%[^A-Za-z]%' AND LEFT(employee_name, 1) = UPPER(LEFT(employee_name, 1))),
    employee_surname VARCHAR(50) NOT NULL CHECK (employee_surname NOT LIKE '%[^A-Za-z]%' AND LEFT(employee_surname, 1) = UPPER(LEFT(employee_surname, 1))),
    position VARCHAR(50) NOT NULL
);

CREATE TABLE Packages (
    package_id INT PRIMARY KEY,
    total_weight DECIMAL(5, 2) NOT NULL,
    package_status VARCHAR(255) NOT NULL,
    order_id INT,
    employee_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Package_parts (
    package_part_id INT PRIMARY KEY,
    shipped_date DATE NOT NULL,
    amount_id INT,
    package_id INT,
    FOREIGN KEY (amount_id) REFERENCES Products_ordered(amount_id),
    FOREIGN KEY (package_id) REFERENCES Packages(package_id)
);

CREATE TABLE Deliveries (
    delivery_id INT PRIMARY KEY,
    delivery_status VARCHAR(255) NOT NULL,
    delivery_date DATE NOT NULL,
    package_id INT,
    FOREIGN KEY (package_id) REFERENCES Packages(package_id)
);

CREATE TABLE Reviews (
    comment VARCHAR(255),
    rating INT CHECK (rating >= 1 AND rating <= 5) NOT NULL,
    product_id INT,
    customer_id INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    total_price DECIMAL(8, 2) NOT NULL,
    payment_method VARCHAR(255) NOT NULL,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);



