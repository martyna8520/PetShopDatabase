USE pet_shop_database;
GO

INSERT INTO Producers (producer_id, producer_name) VALUES
(1, 'Animonda'),
(2, 'Royal Canin'),
(3, 'Purina'),
(4, 'Hills Science Diet'),
(5, 'Pet Paradise Foods'),
(6, 'Purrfect Supplies'),
(7, 'Fluffy Delights Co.'),
(8, 'Feathered Haven'),
(9, 'Trixie'),
(10, 'Sheba');

INSERT INTO Products (product_id, product_name, category_name, weight, stock_level, producer_id) VALUES
(1, 'Premium Dog Food', 'Dog Food', 2.50, 100, 1),
(2, 'Interactive Cat Toy', 'Toys', 0.20, 50, 2),
(3, 'Bird Cage', 'Bird Accessories', 1.00, 30, 3),
(4, 'Fish Tank Filter', 'Fish Accessories', 0.50, 20, 4),
(5, 'Comfortable Dog Bed', 'Dog Accessories', 5.00, 15, 5),
(6, 'Cat Scratching Post', 'Cat Accessories', 4.00, 25, 6),
(7, 'Premium Cat Food', 'Cat Food', 2.00, 40, 2),
(8, 'Bird Seed Mix', 'Bird Food', 1.50, 35, 3),
(9, 'Dog leash', 'Dog Accessories', 0.30, 50, 7),
(10, 'Cat litter', 'Cat Accessories', 1.00, 30, 6),
(11, 'Gourmet Cat Food', 'Cat Food', 2.50, 35, 10),
(12, 'Sensitive Stomach Dog Food', 'Dog Food', 2.80, 60, 1),
(13, 'Dog Toy', 'Toys', 0.25, 40, 8),
(14, 'Small Animal Cage', 'Small Animal Accessories', 0.75, 18, 9),
(15, 'Aquarium Heater', 'Fish Accessories', 0.75, 12, 4),
(16, 'Cozy Cat House', 'Cat Accessories', 2.00, 20, 6),
(17, 'Wet Cat Food', 'Cat Food', 1.80, 30, 10),
(18, 'Tropical Fish Food', 'Fish Accessories', 0.40, 25, 4),
(19, 'Puppy Training Pads', 'Dog Accessories', 0.20, 75, 1),
(20, 'Hamster Wheel', 'Small Animal Accessories', 0.10, 25, 9);

INSERT INTO Offers (date_from, date_to, price, product_id) VALUES
('2022-01-01', '2022-01-15', 25.99, 5),
('2022-02-01', '2022-02-15', 15.49, 12),
('2022-02-06', '2022-03-03', 8.99, 20),
('2022-04-01', '2022-04-15', 19.75, 3),
('2022-05-01', '2022-05-17', 12.30, 17),
('2022-06-15', '2022-06-30', 30.45, 9),
('2022-07-01', '2022-07-14', 22.80, 6),
('2022-08-17', '2022-08-29', 17.99, 16),
('2022-09-01', '2022-09-18', 14.50, 7),
('2022-10-01', '2022-10-15', 9.99, 11),
('2022-11-01', '2022-11-19', 28.75, 1),
('2022-12-21', '2023-01-07', 16.20, 19),
('2023-01-01', '2023-01-10', 11.99, 10),
('2023-02-01', '2023-02-15', 23.50, 8),
('2023-03-16', '2023-03-30', 19.95, 13),
('2023-04-01', '2023-04-12', 14.49, 14),
('2023-05-01', '2023-05-15', 9.00, 18),
('2023-06-25', '2023-07-10', 25.30, 2),
('2023-07-01', '2023-07-20', 18.75, 15),
('2023-08-01', '2023-08-15', 21.99, 4);

INSERT INTO Delivery_options (delivery_option_id, delivery_cost, delivery_type) VALUES
(1, 9.99, 'Courier DHL card payment'),
(2, 12.00, 'Courier DPD cash'),
(3, 10.00, 'Parcel locker card'),
(4, 8.50, 'Parcel locker cash'),
(5, 9.00, 'Courier DPD card payment'),
(6, 14.00, 'Courier DHL cash'),
(7, 12.50, 'DPD PickUp'),
(8, 13.00, 'DHL PickUp');

INSERT INTO Customers (customer_name, customer_surname, e_mail, phone_number) VALUES
('Gaja', 'Pesta', 'gaja.pesta@example.com', '601894114'),
('Agnieszka', 'Gomula', 'agnieszka.gomula@example.com', '600858678'),
('Franciszek', 'Bas', 'franciszek.bas@example.com', '733988150'),
('Jedrzej', 'Drozdziel', 'jedrzej.drozdziel@example.com', '698459583'),
('Antoni', 'Szwaj', 'antoni.szwaj@example.com', '539653830'),
('Tobiasz', 'Piotrkowicz', 'tobiasz.piotrkowicz@example.com', '227136208'),
('Elzbieta', 'Prokopczuk', 'elzbieta.prokopczuk@example.com', '329010997'),
('Apolonia', 'Komsta', 'apolonia.komsta@example.com', '781588608'),
('Jakub', 'Grunt', 'jakub.grunt@example.com', '795107557'),
('Natasza', 'Kiciak', 'natasza.kiciak@example.com', '729336285'),
('Szymon', 'Ciepluch', 'szymon.ciepluch@example.com', '123456789'),
('Karina', 'Subocz', 'karina.subocz@example.com', '987654321'),
('Tymoteusz', 'Buszkiewicz', 'tymoteusz.buszkiewicz@example.com', '111223344'),
('Julita', 'Katana', 'julita.katana@example.com', '555666777'),
('Tomasz', 'Barteczko', 'tomasz.barteczko@example.com', '999000111'),
('Karol', 'Fornalik', 'karol.fornalik@example.com', '444555666'),
('Maksymilian', 'Potoczny', 'maksymilian.potoczny@example.com', '777888999'),
('Norbert', 'Mijas', 'norbert.mijas@example.com', '333444555'),
('Ewelina', 'Bulak', 'ewelina.bulak@example.com', '666777888'),
('Dariusz', 'Maserak', 'dariusz.maserak@example.com', '111222333');

INSERT INTO Addresses (address_id, street, city, postal_code, house_number, customer_name, customer_surname)
VALUES
(1, 'Wczasowa', 'Swidnik', '45-688', '45', 'Gaja', 'Pesta'),
(2, 'Kilinskiego', 'Kielce', '77-278', '71/67', 'Agnieszka', 'Gomula'),
(3, 'Wspolna', 'Olkusz', '69-019', '299', 'Franciszek', 'Bas'),
(4, 'Polna', 'Leszno', '61-255', '81/53', 'Jedrzej', 'Drozdziel'),
(5, 'Parkowa', 'Nowy Dwor Mazowiecki', '52-161', '507', 'Antoni', 'Szwaj'),
(6, 'Boleslawa Chrobrego', 'Lodz', '45-586', '755', 'Tobiasz', 'Piotrkowicz'),
(7, 'Plater', 'Olawa', '29-601', '82', 'Elzbieta', 'Prokopczuk'),
(8, 'Borkowa', 'Mikolow', '53-443', '61/97', 'Apolonia', 'Komsta'),
(9, 'Rubinowa', 'Bedzin', '21-088', '70', 'Jakub', 'Grunt'),
(10, 'Dluga', 'Warszawa', '00-001', '112', 'Natasza', 'Kiciak'),
(11, 'Olszynska', 'Gdansk', '80-001', '29', 'Szymon', 'Ciepluch'),
(12, 'Kwiatowa', 'Krakow', '30-002', '17', 'Karina', 'Subocz'),
(13, 'Topolowa', 'Poznan', '60-003', '5', 'Tymoteusz', 'Buszkiewicz'),
(14, 'Lesna', 'Wroclaw', '50-004', '8', 'Julita', 'Katana'),
(15, 'Zielona', 'Szczecin', '70-005', '22', 'Tomasz', 'Barteczko'),
(16, 'Biala', 'Katowice', '40-006', '11', 'Karol', 'Fornalik'),
(17, 'Rozana', 'Bydgoszcz', '85-007', '14', 'Maksymilian', 'Potoczny'),
(18, 'Akacjowa', 'Lublin', '20-008', '33', 'Norbert', 'Mijas'),
(19, 'Slowianska', 'Bialystok', '15-009', '7', 'Ewelina', 'Bulak'),
(20, 'Mickiewicza', 'Torun', '87-010', '21', 'Dariusz', 'Maserak');

INSERT INTO Orders (order_id, order_date, order_status, order_price, delivery_option_id, address_id, customer_name, customer_surname)
VALUES
(1, '2022-01-05', 'Forwarded for packaging', 51.98, 1, 1, 'Gaja', 'Pesta'),
(2, '2022-02-10', 'Accepted', 15.49, 2, 2, 'Agnieszka', 'Gomula'),
(3, '2022-03-15', 'Forwarded for packaging', 26.97, 4, 3, 'Franciszek', 'Bas'),
(4, '2022-04-20', 'Waiting for payment', 39.5, 6, 4, 'Jedrzej', 'Drozdziel'),
(5, '2022-05-25', 'Forwarded for packaging', 12.5, 3, 5, 'Antoni', 'Szwaj'),
(6, '2022-06-30', 'Canceled', 61.98, 8, 6, 'Tobiasz', 'Piotrkowicz'),
(7, '2022-07-05', 'Forwarded for packaging', 22.8, 5, 7, 'Elzbieta', 'Prokopczuk'),
(8, '2022-08-10', 'Forwarded for packaging', 53.97, 7, 8, 'Apolonia', 'Komsta'),
(9, '2022-09-15', 'Forwarded for packaging', 14.5, 8, 9, 'Jakub', 'Grunt'),
(10, '2022-10-20', 'Forwarded for packaging', 19.98, 1, 10, 'Natasza', 'Kiciak'),
(11, '2022-11-25', 'Accepted', 28, 6, 11, 'Szymon', 'Ciepluch'),
(12, '2023-01-01', 'Canceled', 48.6, 6, 12, 'Karina', 'Subocz'),
(13, '2023-01-05', 'Forwarded for packaging', 23.98, 2, 13, 'Tymoteusz', 'Buszkiewicz'),
(14, '2023-02-10', 'Waiting for payment', 23.5, 7, 14, 'Julita', 'Katana'),
(15, '2023-03-15', 'Forwarded for packaging', 39.9, 5, 15, 'Tomasz', 'Barteczko'),
(16, '2023-04-20', 'Forwarded for packaging', 14.49, 4, 16, 'Karol', 'Fornalik'),
(17, '2023-05-25', 'Forwarded for packaging', 27, 3, 17, 'Maksymilian', 'Potoczny'),
(18, '2023-07-01', 'Returned', 25.3, 8, 18, 'Norbert', 'Mijas'),
(19, '2023-07-15', 'Waiting for payment', 18.75, 2, 19, 'Ewelina', 'Bulak'),
(20, '2023-08-20', 'Forwarded for packaging', 43.98, 3, 20, 'Dariusz', 'Maserak');

INSERT INTO Products_ordered (amount_id, amount, offer_id, order_id)
VALUES
(1, 2, 1, 1),
(2, 1, 2, 2),
(3, 3, 3, 3),
(4, 2, 4, 4),
(5, 1, 5, 5),
(6, 2, 6, 6),
(7, 1, 7, 7),
(8, 3, 8, 8),
(9, 1, 9, 9),
(10, 2, 10, 10),
(11, 1, 11, 11),
(12, 3, 12, 12),
(13, 2, 13, 13),
(14, 1, 14, 14),
(15, 2, 15, 15),
(16, 1, 16, 16),
(17, 3, 17, 17),
(18, 2, 18, 18),
(19, 1, 19, 19),
(20, 2, 20, 20);

INSERT INTO Employees (employee_id, employee_name, employee_surname, position)
VALUES
(1, 'Anna', 'Nowak', 'Manager'),
(2, 'Piotr', 'Kowalski', 'Accountant'),
(3, 'Mateusz', 'Banas', 'Warehouseman'),
(4, 'Katarzyna', 'Turek', 'Warehouseman'),
(5, 'Marta', 'Dabrowska', 'Cashier'),
(6, 'Jan', 'Kaminski', 'Cashier'),
(7, 'Aleksandra', 'Lewandowska', 'IT Specialist'),
(8, 'Tomasz', 'Jankowski', 'Logistics Coordinator'),
(9, 'Marek', 'Nowicki', 'Warehouseman'),
(10, 'Monika', 'Kowalczyk', 'Cashier');

INSERT INTO Package_parts (package_part_id, shipped_date, amount_id, package_id)
VALUES
(1, '2022-01-05', 1, 1),
(2, '2022-03-15', 3, 2),
(3, '2022-05-25', 5, 3),
(4, '2022-07-05', 7, 4),
(5, '2022-08-10', 8, 5),
(6, '2022-09-15', 9, 6),
(7, '2022-10-20', 10, 7),
(8, '2023-01-05', 13, 8),
(9, '2023-03-15', 15, 9),
(10, '2023-04-20', 16, 10),
(11, '2023-05-25', 17, 11),
(12, '2023-08-20', 20, 12);

INSERT INTO Packages (package_id, total_weight, package_status, order_id, employee_id)
VALUES
(1, 10.00, 'In packing', 1, 3),
(2, 0.30, 'Forwarded for shipment', 3, 9),
(3, 1.80, 'Sent', 5, 4),
(4, 4.00, 'In packing', 7, 4),
(5, 6.00, 'Forwarded for shipment', 8, 3),
(6, 2.00, 'Sent', 9, 9),
(7, 5.00, 'Forwarded for shipment', 10, 9),
(8, 2.00, 'Sent', 13, 4),
(9, 0.50, 'Sent', 15, 3),
(10, 0.75, 'Forwarded for shipment', 16, 3),
(11, 1.20, 'Sent', 17, 4),
(12, 1.00, 'Sent', 20, 9);

INSERT INTO Deliveries (delivery_id, delivery_status, delivery_date, package_id)
VALUES
(1, 'Waiting to be picked up by the courier', '2022-03-15', 2),
(2, 'During delivery', '2022-05-26', 3),
(3, 'Waiting to be picked up by the courier', '2022-08-10', 5),
(4, 'During delivery', '2022-09-16', 6),
(5, 'Waiting to be picked up by the courier', '2022-10-20', 7),
(6, 'Delivered', '2023-01-07', 8),
(7, 'During delivery', '2023-03-15', 9),
(8, 'Waiting to be picked up by the courier', '2023-04-20', 10),
(9, 'Delivered', '2023-05-26', 11),
(10, 'Delivered', '2023-08-22', 12);

INSERT INTO Reviews (review_id, comment, rating, product_id, customer_name, customer_surname)
VALUES
(1, 'Great product!', 5, 5, 'Gaja', 'Pesta'),
(2, 'Not satisfied.', 2, 12, 'Agnieszka', 'Gomula'),
(3, 'Amazing quality!', 5, 20, 'Franciszek', 'Bas'),
(4, 'Could be better.', 3, 3, 'Jedrzej', 'Drozdziel'),
(5, 'Fast delivery!', NULL, 17, 'Antoni', 'Szwaj'),
(6, NULL, 5, 9, 'Tobiasz', 'Piotrkowicz'),
(7, 'Product as described.', 4, 6, 'Elzbieta', 'Prokopczuk'),
(8, NULL, 4, 16, 'Apolonia', 'Komsta'),
(9, 'Satisfied with the purchase.', NULL, 7, 'Jakub', 'Grunt'),
(10, 'Excellent customer service!', 5, 11, 'Natasza', 'Kiciak');

INSERT INTO Transactions (transaction_id, total_price, payment_method, order_id)
VALUES
(1, 61.97, 'card', 1),
(2, 27.49, 'cash', 2),
(3, 35.47, 'cash', 3),
(4, 22.50, 'card', 5),
(5, 31.80, 'card', 7),
(6, 66.47, 'card', 8),
(7, 27.50, 'cash', 9),
(8, 29.97, 'card', 10),
(9, 42.00, 'cash', 11),
(10, 35.98, 'cash', 13),
(11, 48.90, 'card', 15),
(12, 22.99, 'cash', 16),
(13, 39.00, 'cash', 17),
(14, 53.98, 'card', 20);
