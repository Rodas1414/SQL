# 📚 Library Park Database

This project is a simple SQL-based system designed to simulate a **Library Park**, where users can borrow books, check availability, and manage returns.

## 🧠 Project Overview

The Library Park database is built to manage:

- Books and their availability
- Registered users (members)
- Borrowing and return records

It's a great project for learning SQL, database design, and understanding how data is organized and connected in real-world applications.

---

## 🛠 Technologies Used

- SQL (MySQL or SQLite)
- Relational Database Concepts
- Primary Keys / Foreign Keys
- Basic and Advanced Queries

---

## 🗃️ Database Tables

### 📘 `books`
| Column      | Type        | Description             |
|-------------|-------------|-------------------------|
| id          | INT         | Primary key             |
| title       | VARCHAR     | Book title              |
| author      | VARCHAR     | Book author             |
| available   | BOOLEAN     | Availability status     |

### 👤 `users`
| Column      | Type        | Description             |
|-------------|-------------|-------------------------|
| id          | INT         | Primary key             |
| name        | VARCHAR     | User's full name        |
| membership  | VARCHAR     | Membership type         |

### 📖 `borrows`
| Column       | Type      | Description                        |
|--------------|-----------|------------------------------------|
| id           | INT       | Primary key                        |
| user_id      | INT       | Foreign key to `users` table       |
| book_id      | INT       | Foreign key to `books` table       |
| borrow_date  | DATE      | Date the book was borrowed         |
| return_date  | DATE      | Date the book was returned         |

---

## 🧪 How to Use

1. Open your SQL client (MySQL Workbench, DB Browser for SQLite, etc.)
2. Run the provided `library_park.sql` script to create the tables.
3. Insert test data or write your own INSERT statements.
4. Use SELECT queries to:
   - View available books
   - Track borrowed books
   - Check user borrowing history

---

## 💡 Key Learning Points

- How to design a relational database
- How to use constraints like primary and foreign keys
- Writing SELECT, JOIN, and WHERE queries
- Managing relationships between users and books

---

## ✅ Example Query

```sql
-- List all books currently available
SELECT title, author FROM books WHERE available = 1;
