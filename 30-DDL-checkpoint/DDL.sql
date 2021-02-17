CREATE TABLE Costumer(
    Costumer_Id VARCHAR2(20) PRIMARY KEY,
    Costumer_Name VARCHAR2(20) NOT NULL,
    Costumer_Tel NUMBER 
);

CREATE TABLE Product(
    Product_Id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price>0),
);

CREATE TABLE Orders(
    Costumer_Id VARCHAR2(20),
    Product_Id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER
    CONSTRAINT Cnstr_1 FOREIGN KEY Costumer_Id REFERENCES Costumer
    CONSTRAINT Cnstr_2 FOREIGN KEY Product_Id REFERENCES Product
);

ALTER TABLE Product ADD Category VARCHAR2(20);

ALTER TABLE Orders ADD Orderdate DATE DEFAULT(SYSDATE);