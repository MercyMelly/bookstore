
-- role for Mercy admin role - full acces to the database 
CREATE USER 'mercy_admin'@'localhost' 
IDENTIFIED BY '1234';

GRANT ALL ON bookstore.* 
TO 'mercy_admin'@'localhost';

-- role for Nana - inventory management role - inventory management
CREATE USER 'nana_manager'@'localhost' 
IDENTIFIED BY '1234';

GRANT SELECT ON bookstore.* 
TO 'nana_manager'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.book TO 'nana_manager'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.publisher TO 'nana_manager'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.author TO 'nana_manager'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.book_author TO 'nana_manager'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.book_language TO 'nana_manager'@'localhost';

-- role for Promise sales and customer management - order processing
CREATE USER 'promise_sales'@'localhost' 
IDENTIFIED BY '1234';

GRANT SELECT ON bookstore.* 
TO 'promise_sales'@'localhost';

-- for customer management
GRANT INSERT, UPDATE, DELETE ON bookstore.customer TO 'promise_sales'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.customer_address TO 'promise_sales'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.address TO 'promise_sales'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.address_status TO 'promise_sales'@'localhost';

-- for order processing
GRANT INSERT, UPDATE, DELETE ON bookstore.cust_order TO 'promise_sales'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.order_line TO 'promise_sales'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.order_history TO 'promise_sales'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.order_status TO 'promise_sales'@'localhost';
GRANT INSERT, UPDATE, DELETE ON bookstore.shipping_method TO 'promise_sales'@'localhost';

