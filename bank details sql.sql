bank_detailCREATE DATABASE laptop;
USE laptop;
CREATE TABLE Bank_Detail(customer_name VARCHAR(255),account_number BIGINT,branch_name VARCHAR(100),account_type VARCHAR(100),customer_address VARCHAR(255),age INT,years_with_bank INT,balance BIGINT,account_opening_balance BIGINT,is_active BOOLEAN);

ALTER TABLE Bank_Detail ADD COLUMN phone_numOfCustomer BIGINT;
ALTER TABLE Bank_Detail ADD COLUMN emailOfCustomer VARCHAR(50);
ALTER TABLE Bank_Detail ADD COLUMN occupationOfCustomer VARCHAR(100);
ALTER TABLE Bank_Detail ADD COLUMN address_line2OfCustomer VARCHAR(255);
ALTER TABLE Bank_Detail ADD COLUMN cityOfCustomer VARCHAR(100);

ALTER TABLE Bank_Detail CHANGE COLUMN  Customer_name customer_full_name VARCHAR(255);
ALTER TABLE Bank_Detail CHANGE COLUMN account_number account_id BIGINT;
ALTER TABLE Bank_Detail CHANGE COLUMN branch_name branch_location VARCHAR(255);
ALTER TABLE Bank_Detail CHANGE COLUMN account_type account_category VARCHAR(255);
ALTER TABLE Bank_Detail CHANGE COLUMN customer_address address_line1 VARCHAR(255);

INSERT INTO Bank_Detail VALUES('priyanka', 8765432980, 'New York', 'Savings', '123 Main St', 30, 5, 1000, 500, 1, 123-456-7890, 'priyanka@example.com', 'Engineer', 'Apt 101', 'New York');
INSERT INTO Bank_Detail VALUES('kavya', 9877896654, 'Los Angeles', 'Checking', '456 Elm St', 25, 3, 500, 200, 0, 987-654-3210, 'kavya@example.com', 'Doctor', 'Apt 202', 'Los Angeles'); 
INSERT INTO Bank_Detail VALUES('varsha', 11111134567, 'Chicago', 'Savings', '789 Oak St', 40, 10, 2000, 1000, 1, 111-111-1111, 'bobbrown@example.com', 'Lawyer', 'Apt 303', 'Chicago'); 
INSERT INTO Bank_Detail VALUES('kiran', 22222265437, 'Houston', 'Checking', '321 Pine St', 35, 7, 1500, 750, 1, 222-222-2222, 'kiran@example.com', 'Teacher', 'Apt 404', 'Houston');
INSERT INTO Bank_Detail VALUES('prems', 3333568433, 'Phoenix', 'Savings', '901 Maple St', 28, 4, 1200, 600, 0, 333-333-3333, 'prems@example.com', 'Programmer', 'Apt 505', 'Phoenix');
INSERT INTO Bank_Detail VALUES('divya', 44444357844, 'Philadelphia', 'Checking', '234 Spruce St', 32, 6, 1800, 900, 1, 444-444-4444, 'divya@example.com', 'Nurse', 'Apt 606', 'Philadelphia');
INSERT INTO Bank_Detail VALUES('preethi', 55345675555, 'San Francisco', 'Savings', '678 Cedar St', 45, 12, 2500, 1250, 1, 555-555-5555, 'preethi@example.com', 'Manager', 'Apt 707', 'San Francisco');
INSERT INTO Bank_Detail VALUES('dee Patel', 6990866666, 'Dallas', 'Checking', '345 Walnut St', 38, 9, 2000, 1000, 0, 666-666-666, 'deeapatel@example.com', 'Engineer', 'Apt 808', 'Dallas'); 
INSERT INTO Bank_Detail VALUES('jai', 77345677777, 'San Diego', 'Savings', '567 Fir St', 42, 11, 2200, 1100, 1, 777-777-7777, 'jai@example.com', 'Scientist', 'Apt 909', 'San Diego');
INSERT INTO Bank_Detail VALUES('sowmya', 88883456788, 'Seattle', 'Checking', '890 Pine St', 29, 5, 1500, 750, 0, 888-888-8888, 'sowmyaa@example.com', 'Artist', 'Apt 1010', 'Seattle');


UPDATE Bank_Detail SET balance = 2500 WHERE account_id = '77345677777';
UPDATE Bank_Detail SET emailOfCustomer = 'priyankas@example.com' WHERE customer_full_name = 'priyanka';
UPDATE Bank_Detail SET occupationOfCustomer = 'Consultant' WHERE account_id = '3333568433';
UPDATE Bank_Detail SET cityOfCustomer = 'Apt 303B' WHERE customer_full_name = 'sowmya';
UPDATE Bank_Detail SET phone_numOfCustomer = 555-123-4567 WHERE account_id = '11111134567';
UPDATE Bank_Detail SET is_active = TRUE WHERE customer_full_name = 'divya';
UPDATE Bank_Detail SET account_opening_balance = 1500 WHERE account_id = '77345677777';
UPDATE Bank_Detail SET cityOfCustomer = 'San Jose' WHERE customer_full_name = 'preethi';
UPDATE Bank_Detail SET years_with_bank = 8 WHERE account_id = '44444357844';
UPDATE Bank_Detail SET account_category = 'Savings' WHERE customer_full_name = 'jai';

DELETE FROM Bank_Detail WHERE account_id = '44444357844';
DELETE FROM Bank_Detail WHERE customer_full_name = 'priyanka';
DELETE FROM Bank_Detail WHERE balance < 1000;

SELECT * FROM Bank_Detail WHERE balance > 2000 AND years_with_bank > 5;
SELECT * FROM Bank_Detail WHERE account_category = 'Savings' OR account_category = 'Checking';
SELECT * FROM Bank_Detail WHERE customer_full_name IN ('priyanka', 'divya', 'jai');
SELECT * FROM Bank_Detail WHERE balance NOT IN (1000, 2000, 500);
SELECT * FROM Bank_Detail WHERE cityOfCustomer = 'New York' OR cityOfCustomer = 'Los Angeles';
SELECT * FROM Bank_Detail WHERE occupationOfCustomer = 'Engineer' AND age > 30;




