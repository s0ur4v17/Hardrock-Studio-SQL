use hardrockstudio;

-- Insert Query for Customers Table :

INSERT INTO CUSTOMER(First_Name,Last_Name,Gender,Date_Of_Birth,Phone_Number,Address_Line_1,Address_Line_2,Country,Province,City,Zip_Code)
VALUES('Elton', 'John','M','2000-12-21','123-456-789','21 Western Street','Infornt of Parkview Mall','Canada','ON','Waterloo','N2L 1U7');

INSERT INTO CUSTOMER(First_Name,Last_Name,Gender,Date_Of_Birth,Phone_Number,Address_Line_1,Address_Line_2,Country,Province,City,Zip_Code)
VALUES('Mark', 'Waugh','M','2001-11-01','145-546-099','98 King Street','Barrel Drive','Canada','ON','Kitchener','N2I 2N3');

INSERT INTO CUSTOMER(First_Name,Last_Name,Gender,Date_Of_Birth,Phone_Number,Address_Line_1,Address_Line_2,Country,Province,City,Zip_Code)
VALUES('Michelle', 'Johnson','F','1998-04-11','765-326-091','32 Erb Street','Midway Colony','Canada','AB','Edmonton','ABL 1P9');

INSERT INTO CUSTOMER(First_Name,Last_Name,Gender,Date_Of_Birth,Phone_Number,Address_Line_1,Address_Line_2,Country,Province,City,Zip_Code)
VALUES('Olivia', 'Denver','F','2004-11-22','156-632-900','55 Weber Street','Rich Colony','Canada','BC','Vancouver','M6G 5H3');

INSERT INTO CUSTOMER(First_Name,Last_Name,Gender,Date_Of_Birth,Phone_Number,Address_Line_1,Address_Line_2,Country,Province,City,Zip_Code)
VALUES('Simon', 'Spencer','M','2001-03-15','312-644-887','90 Westmount Road','Village Drive','Canada','ON','Toronto','N1M 1J7');

-- Insert Query for Genre Table :

INSERT INTO GENRE(NAME) VALUES ('Rock');
INSERT INTO GENRE(NAME) VALUES ('Pop');
INSERT INTO GENRE(NAME) VALUES ('Metal');
INSERT INTO GENRE(NAME) VALUES ('Country');
INSERT INTO GENRE(NAME) VALUES ('Jazz');

-- Insert Query for Payment Method :

INSERT INTO PAYMENT_METHOD(Payment_Method_Desc) VALUES ('American Express');
INSERT INTO PAYMENT_METHOD(Payment_Method_Desc) VALUES ('Cash');
INSERT INTO PAYMENT_METHOD(Payment_Method_Desc) VALUES ('Mastercard');
INSERT INTO PAYMENT_METHOD(Payment_Method_Desc) VALUES ('Visa');

-- Insert Query For Singer :

INSERT INTO Singer(First_Name,Last_Name,Date_Of_Birth,Gender,Last_Album_Released_Date) 
VALUES ('Micheal','Jackson','1967-10-17','M','2002-10-19');

INSERT INTO Singer(First_Name,Last_Name,Date_Of_Birth,Gender,Last_Album_Released_Date) 
VALUES ('Taylor','Swift','1994-03-20','F','2021-01-19');

INSERT INTO Singer(First_Name,Last_Name,Date_Of_Birth,Gender,Last_Album_Released_Date) 
VALUES ('Lady','Gaga','1993-11-08','F','2020-11-07');

INSERT INTO Singer(First_Name,Last_Name,Date_Of_Birth,Gender,Last_Album_Released_Date) 
VALUES ('Ariana','Grande','1998-04-01','F','2020-05-15');

INSERT INTO Singer(First_Name,Last_Name,Date_Of_Birth,Gender,Last_Album_Released_Date) 
VALUES ('Bruno','Mars','1985-10-08','M','2021-05-05');

-- Insert Query For Album :

INSERT INTO Album(Name,Genre_ID,Singer_ID,Description,Released_Date,Length,Quantity,List_Price) 
VALUES ('Better Together',1,1,'Better Together and Forever','2021-11-10',2.00,5,9.99);
INSERT INTO Album(Name,Genre_ID,Singer_ID,Description,Released_Date,Length,Quantity,List_Price) 
VALUES ('Never Been',1,1,'Never Been a Moment','2020-11-17',3.10,4,8.99);
INSERT INTO Album(Name,Genre_ID,Singer_ID,Description,Released_Date,Length,Quantity,List_Price) 
VALUES ('Different',1,1,'Different and Forever','2019-09-18',2.25,7,4.99);
INSERT INTO Album(Name,Genre_ID,Singer_ID,Description,Released_Date,Length,Quantity,List_Price) 
VALUES ('Even Then',2,2,'Even Then Together','2017-01-31',6.21,3,6.99);
INSERT INTO Album(Name,Genre_ID,Singer_ID,Description,Released_Date,Length,Quantity,List_Price) 
VALUES ('Directions',2,2,'Directions That Are Seen','2019-06-22',2.14,5,9.99);
INSERT INTO Album(Name,Genre_ID,Singer_ID,Description,Released_Date,Length,Quantity,List_Price) 
VALUES ('Last Together',3,3,'Last Never Blast','2021-06-30',4.19,10,7.99);
INSERT INTO Album(Name,Genre_ID,Singer_ID,Description,Released_Date,Length,Quantity,List_Price) 
VALUES ('Story I Tell',3,3,'Story I Heard and Told','2018-03-03',3.09,3,5.99);

-- Insert Query For Billing :

INSERT INTO Billing(Customer_ID,Album_ID,Payment_Method_ID,Invoice_ID,Billing_Date,Units_Sold,Per_Unit_Amount,Ship_Amount,Tax_Amount,Discount_Percent,Total_Billing_Amount) 
VALUES (1,1,1,1001,'2021-11-17',2,9.99,0.02,1.02,10,18);
INSERT INTO Billing(Customer_ID,Album_ID,Payment_Method_ID,Invoice_ID,Billing_Date,Units_Sold,Per_Unit_Amount,Ship_Amount,Tax_Amount,Discount_Percent,Total_Billing_Amount) 
VALUES (2,2,2,1002,'2021-11-18',2,9.99,0.02,1.02,10,18);
INSERT INTO Billing(Customer_ID,Album_ID,Payment_Method_ID,Invoice_ID,Billing_Date,Units_Sold,Per_Unit_Amount,Ship_Amount,Tax_Amount,Discount_Percent,Total_Billing_Amount) 
VALUES (3,3,3,1003,'2021-11-20',2,9.99,0.02,1.02,10,18);
INSERT INTO Billing(Customer_ID,Album_ID,Payment_Method_ID,Invoice_ID,Billing_Date,Units_Sold,Per_Unit_Amount,Ship_Amount,Tax_Amount,Discount_Percent,Total_Billing_Amount) 
VALUES (4,4,4,1004,'2021-11-15',2,9.99,0.02,1.02,10,18);
INSERT INTO Billing(Customer_ID,Album_ID,Payment_Method_ID,Invoice_ID,Billing_Date,Units_Sold,Per_Unit_Amount,Ship_Amount,Tax_Amount,Discount_Percent,Total_Billing_Amount) 
VALUES (5,5,1,1005,'2021-11-16',2,9.99,0.02,1.02,10,18);
INSERT INTO Billing(Customer_ID,Album_ID,Payment_Method_ID,Invoice_ID,Billing_Date,Units_Sold,Per_Unit_Amount,Ship_Amount,Tax_Amount,Discount_Percent,Total_Billing_Amount) 
VALUES (1,5,2,1006,'2021-11-19',2,9.99,0.02,1.02,10,13);