CREATE TABLE accounts (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

CREATE TABLE accounts (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);

SELECT * FROM accounts
WHERE city = 'chicago'; -- all users from chicago

SELECT * FROM accounts
WHERE username ILIKE '%a%'; -- all usersnames with a's

SELECT * FROM accounts
WHERE account_balance = 0;

UPDATE accounts SET account_balance = 10.00
WHERE account_balance = 0; -- update account balance from 0 to 10

SELECT * FROM accounts
WHERE transactions_attempted >= 9; -- 9 or more transactions attempted

SELECT username, account_balance FROM accounts
ORDER BY account_balance DESC
LIMIT 3; -- highest balances, high to low

SELECT username, account_balance FROM accounts
ORDER BY account_balance ASC
LIMIT 3; -- lowest balances, low to high

SELECT * FROM accounts
WHERE account_balance >= 100; -- accounts with more than $100

SELECT * FROM accounts
WHERE city = 'miami';

DELETE FROM accounts
WHERE user_id = 6; -- miami less than 5 transactions

SELECT * FROM accounts
WHERE city = 'phoenix';

DELETE FROM accounts
WHERE user_id = 10; -- phoenix less than 5 transactions

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('liz', 'minneapolis', 23, 4, 666.00); -- add a new record
