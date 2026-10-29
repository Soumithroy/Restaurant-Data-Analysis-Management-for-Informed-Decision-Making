-- User access control: least-privilege accounts for the restaurant database (MySQL 8)
-- Run as an admin user after the database has been created.

-- Read-only analyst: can run reports but cannot change data
CREATE USER IF NOT EXISTS 'restaurant_analyst'@'%' IDENTIFIED BY 'change_me_analyst';
GRANT SELECT ON restaurant.* TO 'restaurant_analyst'@'%';

-- Application account: can place orders / invoices / ratings but not alter the schema
CREATE USER IF NOT EXISTS 'restaurant_app'@'%' IDENTIFIED BY 'change_me_app';
GRANT SELECT ON restaurant.* TO 'restaurant_app'@'%';
GRANT INSERT, UPDATE ON restaurant.Orders  TO 'restaurant_app'@'%';
GRANT INSERT, UPDATE ON restaurant.Invoice TO 'restaurant_app'@'%';
GRANT INSERT         ON restaurant.Rating  TO 'restaurant_app'@'%';

FLUSH PRIVILEGES;
SHOW GRANTS FOR 'restaurant_analyst'@'%';
