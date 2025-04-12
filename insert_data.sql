INSERT INTO book_language (language_name)
VALUES ('English');

INSERT INTO publisher (publisher_name)
VALUES ('Jane Austen');

INSERT INTO book (title, language_id, publisher_id)
VALUES ('Persuasion', 1, 23);

INSERT INTO author (name)
VALUES ('Jane Austen');

INSERT INTO book_author (book_id, author_id)
VALUES (4, 5);

INSERT INTO country (country_name)
VALUES ('United Kingdom');

INSERT INTO address (street, city, postal_code, country_id)
VALUES ('High Street', 'Abbey Road', 'London', 6);

INSERT INTO address_status (status_name)
VALUES ('Home Address');

INSERT INTO customer (email, phone)
VALUES ('nashipae@gmail.com', '+254 721 864695');

INSERT INTO customer_address (customer_id, address_id, address_status_id)
VALUES (10, 7, 9);

INSERT INTO shipping_method (method_name)
VALUES ('DHL');

INSERT INTO order_status (status_name)
VALUES ('en-route');

INSERT INTO cust_order (customer_id, order_date, shipping_method_id, order_status_id)
VALUES (10, '12-04-2025', 12, 1);

INSERT INTO order_line (order_id, book_id, quantity)
VALUES (13, 4, 1);

INSERT INTO order_history (order_id, status_id, change_date)
VALUES (13, 1, '11-04-2025');
