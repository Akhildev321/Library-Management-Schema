# 📚 Library Management System - (MySQL)

This project is a mini **Library Management System Database** created using **MySQL**. It demonstrates a real-world schema design with sample data using structured SQL scripts. Ideal for learning database design, normalization, and SQL fundamentals.

---

- In this project, I created a database called **`libraryDB`**.
- The **schema** includes the structure of the following five tables:


1. **Members** - Registered users who borrow books
2. **Books** - Books available in the library
3. **Borrowings** - Records of books issued and returned
4. **Librarians** - Admins managing the system
5. **Fines** - Tracks overdue penalties

Each table defines **columns, data types, relationships (foreign keys)**, and is connected logically to represent real-life scenarios.

---

## 🔁 Relationships

- A **Member** can have multiple **Borrowings**
- A **Book** can be borrowed multiple times
- A **Borrowing** may lead to a **Fine** (if overdue)

---

## 📊 ER Diagram

An **ER Diagram** was generated using **MySQL Workbench** to visualize:

- Entities (tables)
- Relationships (foreign keys)
- Cardinality

