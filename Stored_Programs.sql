USE HARDROCKSTUDIO;

-- Trigger to update the Album table after customer has purchased an album.

CREATE TRIGGER AFTER_BILLING_INSERT
AFTER INSERT ON BILLING
FOR EACH ROW
UPDATE ALBUM
SET QUANTITY = QUANTITY - NEW.UNITS_SOLD
WHERE ALBUM_ID = NEW.ALBUM_ID;

-- View to show all the details about the customer's purchase at Hard Rock studio.

CREATE VIEW VW_CUSTOMER
AS
SELECT CONCAT(C.First_Name,' ',C.Last_Name) AS Customer_Name,
       C.Gender,
       C.Date_Of_Birth,
       C.Phone_Number,
       C.Address_Line_1,
       C.Address_Line_2,
       C.Country,
       C.Province,
       C.City,
       C.Zip_Code,
       A.NAME AS Album_Name,
       G.NAME AS Genre_Name,
       PM.Payment_Method_Desc,
       CONCAT(S.First_Name,' ',S.Last_Name) AS Singer_Name,
       B.Billing_Date,
       B.Units_Sold,
       B.Per_Unit_Amount,
       B.Ship_Amount,
       B.Tax_Amount,
       B.Discount_Percent,
       B.Total_Billing_Amount
FROM CUSTOMER C
INNER JOIN BILLING B ON C.CUSTOMER_ID = B.CUSTOMER_ID
INNER JOIN ALBUM A ON A.ALBUM_ID = B.ALBUM_ID
INNER JOIN PAYMENT_METHOD PM ON PM.PAYMENT_METHOD_ID = B.PAYMENT_METHOD_ID
INNER JOIN SINGER S ON A.SINGER_ID = S.SINGER_ID
INNER JOIN GENRE G ON G.GENRE_ID = A.GENRE_ID;


