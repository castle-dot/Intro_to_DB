USE alx_book_store;

CREATE TABLE IF NOT EXISTS Authors (
    Author_ID INT PRIMARY KEY AUTO_INCREMENT,
    Author_Name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS Books (
    Book_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(130) NOT NULL,
    Author_ID INT,
    Price DOUBLE,
    Publication_Date DATE,
    FOREIGN KEY (Author_ID) REFERENCES Authors(Author_ID)
);

CREATE TABLE IF NOT EXISTS Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_Name VARCHAR(215) NOT NULL,
    Email VARCHAR(215),
    Address TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Order_Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE IF NOT EXISTS Order_Details (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Book_ID INT,
    Quantity DOUBLE,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
