
--  admin role..mercy
CREATE ROLE 'admin_role', 'manager_role', 'staff_role', 'readonly_role';

GRANT ALL PRIVILEGES ON bookstore.* TO 'admin_role';

--manager role..nana
GRANT INSERT, UPDATE, DELETE ON bookstore.book TO 'manager_role';
GRANT INSERT, UPDATE, DELETE ON bookstore.publisher TO 'manager_role';
GRANT INSERT, UPDATE, DELETE ON bookstore.author TO 'manager_role';
GRANT INSERT, UPDATE, DELETE ON bookstore.book_author TO 'manager_role';
GRANT INSERT, UPDATE, DELETE ON bookstore.book_language TO 'manager_role';


--  staff role ..promise
GRANT SELECT ON bookstore.* TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.book TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.book_author TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.cust_order TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.order_line TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.order_history TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.customer TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.customer_address TO 'staff_role';
GRANT INSERT, UPDATE ON bookstore.address TO 'staff_role';

-- readonly role
GRANT SELECT ON bookstore.* TO 'readonly_role';

--  users
CREATE USER 'mercy_admin'@'localhost'
IDENTIFIED BY '1234';
CREATE USER 'nana_manager'@'localhost' 
IDENTIFIED BY '1234';
CREATE USER 'promise_staff'@'localhost'
IDENTIFIED BY '1234';
CREATE USER 'bookstore_readonly'@'localhost' 
IDENTIFIED BY '1234';

-- grant roles to users
GRANT 'admin_role' TO 'mercy_admin'@'localhost';
GRANT 'manager_role' TO 'nana_manager'@'localhost';
GRANT 'staff_role' TO 'promise_staff'@'localhost';
GRANT 'readonly_role' TO 'bookstore_readonly'@'localhost';


-- this is to show the created roles and permissions 
SHOW GRANTS FOR 'admin_role';
SHOW GRANTS FOR 'manager_role';
SHOW GRANTS FOR 'staff_role';
SHOW GRANTS FOR 'readonly_role';

-- this is to show user permissions
SHOW GRANTS FOR 'mercy_admin'@'localhost';
SHOW GRANTS FOR 'nana_manager'@'localhost';
SHOW GRANTS FOR 'promise_staff'@'localhost';
SHOW GRANTS FOR 'bookstore_readonly'@'localhost';

