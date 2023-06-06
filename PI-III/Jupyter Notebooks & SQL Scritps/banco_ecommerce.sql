DROP TABLE IF EXISTS tb_commerce CASCADE 
CREATE TABLE IF NOT EXISTS tb_commerce(
	Transaction_No VARCHAR(15),
	Date_buy Date,
	ProductNo VARCHAR(15),
	ProductName VARCHAR(100),
	Price NUMERIC(10,2),
	Quantity INT,
	CustomerNo INT,
	Country VARCHAR(20)
);

COPY tb_commerce (Transaction_No, Date_buy, ProductNo, ProductName, Price, Quantity, CustomerNo, Country) FROM 'C:\datasets\Sales Transaction v.4a.csv' DELIMITER ';' CSV HEADER;