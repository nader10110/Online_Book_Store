USE [Online_Book_Store_(2)]
SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- 1) Retrieve all books in the "Fiction" genre:
SELECT * FROM books
WHERE Genre = 'Fiction';

-- 2) Find books published after the year 1950:
SELECT * FROM Books
WHERE Published_Year > 1950

-- 3) List all customers from the Canada:
SELECT * FROM Customers
WHERE Country = 'Canada'

-- 4) Show orders placed in November 2023:
SELECT * FROM Orders
WHERE Order_Date BETWEEN ('2023-11-01') AND ('2023-11-30')

-- 5) Retrieve the total stock of books available:
SELECT SUM(Stock) AS [total stock] FROM Books

-- 6) Find the details of the most expensive book:
SELECT * FROM Books
ORDER BY Price DESC

-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT Customer_ID FROM Orders
WHERE Quantity > 1

-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM Orders
WHERE Total_Amount > 20

-- 9) List all genres available in the Books table:
SELECT DISTINCT Genre FROM Books

-- 10) Find the book with the lowest stock:
SELECT * FROM Books
ORDER BY Stock

-- 11) Calculate the total revenue generated from all orders:
SELECT SUM(Total_Amount) AS [Revenue] FROM Orders

-- 1) Retrieve the total number of books sold for each genre:
SELECT B.Genre, SUM(O.Quantity) AS QUNT_BOOK
FROM Books B INNER JOIN Orders O
	ON B.Book_ID = O.Book_ID
GROUP BY B.Genre

-- 2) Find the average price of books in the "Fantasy" genre:
SELECT ROUND(AVG(Price),2) AS AVG_PRICE FROM Books
WHERE Genre = 'Fantasy'
-- 3) List customers who have placed at least 2 orders:
SELECT C.Name, COUNT(O.Order_ID) AS ORDER_COUNT
FROM Customers C LEFT JOIN Orders O
	ON C.Customer_ID = O.Customer_ID
GROUP BY C.Name
HAVING COUNT(O.Order_ID) > 2

-- 4) Find the most frequently ordered book:
SELECT B.Book_ID, B.Title, COUNT(O.Order_ID) AS ORDER_COUNT
FROM Books B INNER JOIN Orders O 
	ON B.Book_ID = O.Book_ID
GROUP BY B.Book_ID, B.Title
ORDER BY ORDER_COUNT DESC

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT TOP 3 Book_ID, Title FROM Books
WHERE Genre = 'Fantasy'
ORDER BY Price DESC
-- 6) Retrieve the total quantity of books sold by each author:
SELECT B.Author, SUM(O.Quantity) AS Total_Quantity 
FROM Orders O INNER JOIN Books B
	ON O.Book_ID = B.Book_ID
GROUP BY B.Author
-- 7) List the cities where customers who spent over $30 are located:
SELECT C.City
FROM Customers C INNER JOIN Orders O 
	ON C.Customer_ID = O.Customer_ID
WHERE O.Total_Amount > 30

-- 8) Find the customer who spent the most on orders:
SELECT C.Customer_ID, c.Name , ROUND(SUM(O.Total_Amount),2) AS TOTAL_AMOUNT
FROM Customers C INNER JOIN Orders O 
	ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, c.Name 
ORDER BY TOTAL_AMOUNT DESC
-- 9) Calculate the stock remaining after fulfilling all orders:
SELECT B.Book_ID, 
	   B.Title,
	   B.Stock,
	   COALESCE(SUM(O.Quantity),0) AS ORDER_QUANT,
	   B.Stock - COALESCE(SUM(O.Quantity),0) AS Remaining_Quantity
FROM Books B
LEFT JOIN Orders O 
	ON B.Book_ID = O.Book_ID
GROUP BY B.Book_ID, B.Title, B.Stock
	   

