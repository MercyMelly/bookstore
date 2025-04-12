INSERT INTO book_language (language_id,language_name)
VALUES (1,'English');

INSERT INTO publisher(publisher_id,publisher_name)
VALUES (23,'Jane Austen');

INSERT INTO book(book_id,title,language_id,publisher_id)
VALUES (4,'Persuasion','English',23);

INSERT INTO author(author_id)
VALUES(5);

INSERT INTO book_author(book_id,author_id)
VALUES(4,5);

INSERT INTO country(country_id,country_name)
VALUES(6,'United Kingdom');

INSERT INTO address(address_id,street,city,postal_code,country_id)
VALUES(7,'High Street','Abbey Road','London',8,6);

INSERT INTO address_status(address_status_id,status_name)
VALUES(9,'Home Address');

INSERT INTO customer(customer_id,email,phone)
VALUES(10,'nashipae@gmail.com','+254 721 864695');

INSERT INTO customer_address(customer_address_id,customer_id,address_id,address_status_id)
VALUES(11,10,7,9);

INSERT INTO shipping_method(shipping_method_id,method_name)
VALUES(12,'DHL');

INSERT INTO order_status(order_status_id,status_name)
VALUES('en-route','Home Address');

INSERT INTO cust_order(order_id,customer_id,order_date,shipping_method_id,order_status_id)
VALUES(13,10,'12-04-2025',12,'en-route');

INSERT INTO order_line(order_line_id,order_id,book_id,quantity)
VALUES(14,13,4,'one');

INSERT INTO order_history(order_history_id,order_id,status_id,change_date)
VALUES(15,13,01,'11-04-2025');


