-- Your code here
/* Customer named Rachel signs up
INSERT INTO customers (name, phone) VALUES('Rachel', 111111111);
*/

/* Rachel orders 1 coffee (update her points and add to the orders table
UPDATE customers
  SET points = points + 1
  WHERE name = "Rachel";

INSERT INTO coffee_orders DEFAULT VALUES;
*/

/* Two new customers
INSERT INTO customers (name, phone, email) VALUES
('Monica', 2222222222, 'monica@friends.show'),
('Phoebe', 3333333333, 'phoebe@friends.show');
*/

/* Phoebe orders 3 coffees
UPDATE customers
  SET points = points + 3
  WHERE name = "Phoebe";

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
*/

/* Rachel and Monica each buy 4 coffees
UPDATE customers
  SET points = points + 4
  WHERE name = "Rachel";

UPDATE customers
  SET points = points + 4
  WHERE name = "Monica";

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
*/

/* Monica asks for her point total
SELECT points FROM customers WHERE name = "Monica"
*/

/* Rachel redeems a coffee
UPDATE customers
  SET points = points - 10
  WHERE name = "Rachel";

INSERT INTO coffee_orders (is_redeemed) VALUES (TRUE);
*/

/* adding customer_name to orders table
ALTER TABLE coffee_orders ADD COLUMN name VARCHAR(40)
*/

/* Three new customers sign up
INSERT INTO customers (name, email) VALUES
('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');
*/

/* Ross buys 6 coffees
UPDATE customers
  SET points = points + 6
  WHERE name = "Ross";

INSERT INTO coffee_orders (name) VALUES ('Ross');
INSERT INTO coffee_orders (name) VALUES ('Ross');
INSERT INTO coffee_orders (name) VALUES ('Ross');
INSERT INTO coffee_orders (name) VALUES ('Ross');
INSERT INTO coffee_orders (name) VALUES ('Ross');
INSERT INTO coffee_orders (name) VALUES ('Ross');
*/

/* Monica buys 3 coffees
UPDATE customers
  SET points = points + 3
  WHERE name = "Monica";

INSERT INTO coffee_orders (name) VALUES ('Monica');
INSERT INTO coffee_orders (name) VALUES ('Monica');
INSERT INTO coffee_orders (name) VALUES ('Monica');
*/

/* Phoebe wants to redeem or buy 1
SELECT points FROM customers WHERE name = "Phoebe";
UPDATE customers
  SET points = points + 1
  WHERE name = "Phoebe";

INSERT INTO coffee_orders (name) VALUES ('Phoebe');
*/

/* Ross wants a refund for his last 2 coffees
UPDATE customers
  SET points = points - 2
  WHERE name = "Ross";

DELETE FROM coffee_orders
  WHERE name = "Ross"
  ORDER BY id DESC
  LIMIT 2;
*/

/* Joey buys 2 coffees
UPDATE customers
  SET points = points + 2
  WHERE name = "Joey";

INSERT INTO coffee_orders (name) VALUES ('Joey');
INSERT INTO coffee_orders (name) VALUES ('Joey');
*/

/* Monica wants to redeem or buy 1
SELECT points FROM customers WHERE name = "Monica";
UPDATE customers
  SET points = points - 10
  WHERE name = "Monica";

INSERT INTO coffee_orders (is_redeemed, name) VALUES (TRUE, 'Monica');
*/

/* Chandler deletes his account
DELETE FROM customers
  WHERE name = "Chandler";
*/

/* Ross wants to redeem or buy 1
SELECT points FROM customers WHERE name = "Ross";
UPDATE customers
  SET points = points + 1
  WHERE name = "Ross";

INSERT INTO coffee_orders (name) VALUES ('Ross');
*/

/* Joey wants to redeem or buy 1
SELECT points FROM customers WHERE name = "Joey";
UPDATE customers
  SET points = points + 1
  WHERE name = 'Joey';

INSERT INTO coffee_orders (name) VALUES ('Joey');
*/

/* Phoebe changes email
UPDATE customers
  SET email = 'p_as_in_phoebe@friends.show'
  WHERE name = 'Phoebe';
*/

SELECT * FROM customers;
SELECT * FROM coffee_orders;
