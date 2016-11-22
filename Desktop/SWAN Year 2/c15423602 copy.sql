/*
  Databases 1 Lab Test 1
  1 Nov 2016
  DT282 Group E C15423602
  */

-- Ed's Bicycle Shop

-- Task1
-- Drop tables
DROP TABLE bicycle;
DROP TABLE bikeCustomer;
DROP TABLE bikeSale;

-- Create the tables given

-- stores for each bike that was purchased by the shop and its value
CREATE TABLE bicycle (
  serialNo NUMBER(6),
  bikeDesc VARCHAR2(50) NOT NULL,
  bikePurchaseDate DATE DEFAULT SYSDATE,
  bikeCost DECIMAL(4,2),
  -- the serial number is a primary key
  CONSTRAINT serialNo_pk PRIMARY KEY (serialNo));
  
-- stores the details of each customer
CREATE TABLE bikeCustomer (
  custID NUMBER(6),
  custName VARCHAR2(50) NOT NULL,
  custPhone NUMBER(30),
  custEmail VARCHAR2(50) NOT NULL,
  CONSTRAINT custID_pk PRIMARY KEY (custID)
 -- ,CONSTRAINT custEmail_chk CHECK '%s@%s'
 );
  
-- stores the details of the purchase by the customer
CREATE TABLE bikeSale (
  serialNo NUMBER(6),
  cID NUMBER(6),
  saleDate DATE,
  saleDiscount NUMBER(6),
  salePrice DECIMAL(4,2),
  CONSTRAINT serialNo_fk FOREIGN KEY (serialNo)
    REFERENCES bicycle(serialNo),
  CONSTRAINT cID_pk PRIMARY KEY (cID));

-- Task 2
-- Inserting data to the bicycle table
INSERT INTO bicycle (serialNo, bikeDesc, bikePurchaseDate, bikeCost) 
  VALUES (9001, 'Vitesse Road Bike', '01 JAN 2016', 500.60);
INSERT INTO bicycle (serialNo, bikeDesc, bikePurchaseDate, bikeCost) 
  VALUES (9002, 'Lapierre Sharper', '31 MAY 2016', 760.30);
INSERT INTO bicycle (serialNo, bikeDesc, bikePurchaseDate, bikeCost) 
  VALUES (9003, 'Recruite Balance Bike', NULL , 900.00); 

-- Inserting data into customer table
INSERT INTO bikeCustomer (custID, custName, custPhone, custEmail)
  VALUES (1001, 'A. KEARNS', 014022849, 'ak@mail.com');
INSERT INTO bikeCustomer (custID, custName, custPhone, custEmail)
  VALUES (1002, 'J.Golden', 022037896, 'jg@mail.com'); 
INSERT INTO bikeCustomer (custID, custName, custPhone, custEmail)
  VALUES (1003, 'K. Jones', 033338888, 'kj@mail.com');
  
-- Inserting data to the sales table
INSERT INTO bikeSale (serialNo, saleDate, salePrice, cID, saleDiscount)
  VALUES (9001, '01 MAR 2016' , 1001, 1001, 0);
INSERT INTO bikeSale (serialNo, saleDate, salePrice, cID, saleDiscount)
  VALUES (9002, '04 JUN 2016', 1220, 1002, 9.5);
INSERT INTO bikeSale (serialNo, saleDate, salePrice, cID, saleDiscount)
  VALUES (9003, '16 AUG 2016', 1200, 1002, 12);
  
-- including a date into default date statement
UPDATE bicycle
  SET bikePurchaseDate = '01-Nov-15';
  
-- Task 3
-- (a) Retrieve descriptions and purchase cost of all bicycles
SELECT bikeDesc "Bicycle Description", bikeCost "Bought for" FROM bicycle;

-- (b) Retrieve the name and email of custumers whom have bought a bicycle
SELECT cID, saleDate from bikeSale where cID = 1002;

-- (c) Amend your previous query to include the description of the bicycle sold
-- (d) Customer X bought a bicylce Y costing €x.x on DD MON YYYY

-- (e) Retrieve bike sale info and display output by cost ascending
SELECT saleDate, salePrice, saleDiscount "Discount Level" FROM bikeSale 
  where saleDiscount BETWEEN 0 and 3 ORDER BY asc;
 
COMMIT;