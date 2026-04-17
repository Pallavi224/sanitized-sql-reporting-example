# sanitized-sql-reporting-example
Advanced SQL query showcasing multi-table joins, CASE logic, and dynamic filtering to generate reporting insights from customer request data (sanitized for public use).
# Sanitized SQL Reporting Example

## 📌 Overview

This repository contains a **sanitized SQL query** designed to demonstrate real-world reporting logic while ensuring that no sensitive or client-specific information is exposed.

The query retrieves customer request and quotation details, including waiver information, using structured joins and conditional logic.

---

## 🎯 Objective

To extract customer-related request data along with:

* Request and task details
* Quotation lifecycle dates
* Derived quotation amounts
* Waiver amount information

The query is designed to simulate a real reporting use case in a safe and reusable format.

---

## 🧠 Key Concepts Used

* `JOIN` operations across multiple tables
* Conditional logic using `CASE`
* Data transformation and formatting
* Parameterized filtering
* Real-world reporting structure

---

## 📊 Data Points Covered

* Customer Number
* Customer Name
* Service Type
* Customer Category
* Request Number & Type
* Task Name
* Quotation Issue / Approval / Payment Dates
* Quotation Amount (derived)
* Waiver Amount

---

## ⚙️ Parameters

The query uses bind parameters for flexibility:

* `:task_type_param` → Type of task (e.g., quotation task)
* `:request_type_param` → Type of request
* `:waiver_amount_param` → Waiver amount filter

---

## 📂 File Structure

```
.
├── query.sql   -- Main sanitized SQL query
└── README.md   -- Project documentation
```

---

## ⚠️ Disclaimer

* This is a **sanitized example** for demonstration purposes only
* All names, structures, and values have been modified
* No real customer or organizational data is included

---

## 🚀 Usage

1. Open `query.sql` in your SQL environment
2. Replace parameter values with your own inputs
3. Map table/column names to your schema if needed
4. Execute the query

---

## 💡 Use Cases

* SQL practice and learning
* Interview preparation
* Demonstrating reporting skills
* Portfolio projects for data roles

---

## 👨‍💻 Author

This project is created as a **GitHub-safe SQL example** to showcase practical query design without exposing sensitive data.
