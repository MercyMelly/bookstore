--this is where we will test the data --

-- Retrieve all books
SELECT * FROM book;

-- Retrieve books by a specific author
SELECT b.title, a.name FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.name = 'Harper Lee';

-- Retrieve customer orders
SELECT co.order_id, co.order_date, os.status_name
FROM cust_order co
JOIN order_status os ON co.order_status_id = os.order_status_id
WHERE co.customer_id = 1;

-- Retrieve the customer's address
SELECT c.name, a.street, a.city, a.postal_code
FROM customer c
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
WHERE c.customer_id = 1;

-- Update the book title
UPDATE book SET title = 'Go Set a Watchman' WHERE book_id = 1;

-- Update customer email
UPDATE customer SET email = 'new.email@example.com' WHERE customer_id = 1;


-- Delete a book
DELETE FROM book WHERE book_id = 1;

-- Delete a customer
DELETE FROM customer WHERE customer_id = 1;
