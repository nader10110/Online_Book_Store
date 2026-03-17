# 📚 Online Book Store — SQL Analysis Project

## 📌 Project Overview
A relational database project for an online book store built with
Microsoft SQL Server, covering data exploration, filtering,
aggregation, and business insights.

---

## 🗂️ Database Structure

| Table | Description |
|-------|-------------|
| `Books` | Book details (title, genre, price, stock, author) |
| `Customers` | Customer info (name, city, country) |
| `Orders` | Order transactions (quantity, date, total amount) |

---

## 📊 Analysis Performed

### 🔹 Level 1 — Data Exploration & Filtering
| # | Question |
|---|----------|
| 1 | Retrieve all books in the **Fiction** genre |
| 2 | Find books published **after 1950** |
| 3 | List all customers from **Canada** |
| 4 | Show orders placed in **November 2023** |
| 5 | Retrieve the **total stock** of books available |
| 6 | Find the **most expensive** book |
| 7 | Show customers who ordered **more than 1 quantity** |
| 8 | Retrieve orders where total amount **exceeds $20** |
| 9 | List all **distinct genres** in the Books table |
| 10 | Find the book with the **lowest stock** |
| 11 | Calculate the **total revenue** from all orders |

### 🔹 Level 2 — Aggregations & Joins
| # | Question |
|---|----------|
| 1 | Total number of books sold **per genre** |
| 2 | Average price of books in the **Fantasy** genre |
| 3 | Customers who placed **at least 2 orders** |
| 4 | The **most frequently ordered** book |
| 5 | Top 3 most expensive books in **Fantasy** genre |
| 6 | Total quantity sold **per author** |
| 7 | Cities of customers who **spent over $30** |
| 8 | Customer who **spent the most** on orders |
| 9 | **Remaining stock** after fulfilling all orders |

---

## 🛠️ SQL Concepts Used
- `SELECT` `WHERE` `ORDER BY` `DISTINCT`
- `BETWEEN` `GROUP BY` `HAVING`
- `SUM()` `AVG()` `COUNT()` `ROUND()` `COALESCE()`
- `INNER JOIN` `LEFT JOIN`
- `TOP N` queries

---

## 📁 Project Structure
```
p2.Online_Book_Store/
├── Data/
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
├── Online_Book_store.sql
└── .gitignore
```

---

## 🛠️ Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

---

## 👤 Author
[![Portfolio](https://img.shields.io/badge/Portfolio-Visit-blue?style=for-the-badge&logo=google-chrome)](https://nader-portfolio.lovable.app/#home)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/naderemam/)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github)](https://github.com/nader10110)
