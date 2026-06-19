# Mini-Market Database System (SQL Journey - Day 3)

A relational database system designed from scratch to manage inventory items and track daily transactions for a retail store. This project serves as a practical application of core relational database concepts, schema definition, and table joins.

## 📊 Database Design (Schema)

The system structures data into two key tables linked via a relationship:
* product: Manages item details including stock levels, prices, and categories.
* sales: Tracks transaction history, mapping sold quantities to specific products using structural identifiers.

## 🚀 Key Learning Milestones Implemented
* Table Creation & Validation: Built schema inside PostgreSQL using precise data constraints (NUMERIC, INTEGER, PRIMARY KEY).
* Advanced Data Ingestion: Inserted custom datasets sequentially to validate constraint setups.
* Data Retrieval & Optimization: Implemented strict filtration (WHERE clauses) and structural indexing concepts.
* Relational Joins: Executed predictive analysis using INNER JOIN and LEFT JOIN algorithms to compute real-time business financial metrics (quantity_sold * price).

## 💻 Core Revenue Query Example
`sql
SELECT 
    sales.sale_id,
    product.product_name,
    product.price,
    sales.quantity_sold,
    (product.price * sales.quantity_sold) AS total_revenue,
    sales.sale_date
FROM sales
INNER JOIN product 
ON sales.product_id = product.product_id
ORDER BY total_revenue DESC;
