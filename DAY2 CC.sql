CREATE DATABASE online_bookstore;
USE  online_bookstore;

CREATE TABLE books(
BookID INT PRIMARY KEY,
Title VARCHAR(100) NOT NULL,
Author VARCHAR(50) NOT NULL,
ISBN VARCHAR(20) UNIQUE,
Price DECIMAL(8,2) CHECK(Price>0)
);

CREATE TABLE orders(
Order_ID INT PRIMARY KEY,
BookID INT,
Order_Date DATE NOT NULL,
Quantity INT CHECK(Quantity>0),
FOREIGN KEY (BookID) REFERENCES books(BookID)
);

ALTER TABLE books
MODIFY ISBN VARCHAR(30) UNIQUE ;

INSERT INTO Books (BookID, Title, Author, ISBN, Price) VALUES
(1, 'Data Analytics Essentials', 'John Mathews', '978-1492072942', 150.00),
(2, 'Python Crash Course', 'Eric Matthes', '978-1593279288', 120.50),
(3, 'SQL for Data Analysis', 'Cathy Tanimura', '978-1492088783', 175.00),
(4, 'Machine Learning Foundations', 'Andrew Ng', '978-0070428072', 250.00),
(5, 'Statistics for Beginners', 'Peter Bruce', '978-1491952962', 90.00);

SELECT * FROM books;
 update books
 SET price=275
 WHERE bookid= 3;

DELETE FROM books 
WHERE bookid=4;

TRUNCATE TABLE books;
SELECT * FROM books;

 


