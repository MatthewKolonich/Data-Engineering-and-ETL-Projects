DROP TABLE IF EXISTS stagingTable;
CREATE TABLE stagingTable (
    yearInt INT(4), monthInt INT(2), state CHAR(2), country CHAR(3),
    region VARCHAR(25), customer_id INT(5), Product_Name VARCHAR(25), unitPrice INT(5),
    quantityDiscount INT(5), quantity INT(6), orderTotal INT(6));


INSERT INTO stagingTable ("monthInt", "state", "country", "region", "Product_Name", "unitPrice", "quantity", "orderTotal")
SELECT "Month", "State", "Country", "Region", "Product", "Per-Unit_price", "Quantity", "Order_Total" FROM pd2022;
UPDATE stagingTable SET yearint=2022;

INSERT INTO stagingTable (monthInt, region, customer_id, Product_Name, unitPrice, quantity, orderTotal)
SELECT Month, Region, Customer_ID, Product, "Per-Unit_Price", Quantity_1 + Quantity_2,
("Per-Unit_Price" * (Quantity_1 + Quantity_2))
FROM pd2023;
UPDATE stagingTable SET yearInt = 2023 WHERE yearInt IS NULL;


INSERT INTO stagingTable (monthInt, state, country, region, Product_Name, unitPrice, quantityDiscount, quantity, orderTotal)
SELECT Month, State, Country, Region, Product, "Per-Unit_Price", Quantity_Discount,
Quantity, Order_Subtotal - Quantity_Discount
FROM pd2024;
UPDATE stagingTable SET yearInt=2024
WHERE yearInt ISNULL;
