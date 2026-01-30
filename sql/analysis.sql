-- Top 10 Customers by Revenue
SELECT o.customer_id, SUM(o.quantity * p.unit_price) AS total_spent
FROM orders o
JOIN products p ON o.stock_code = p.stock_code
GROUP BY o.customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Top 10 Products by Revenue
SELECT p.description, SUM(o.quantity * p.unit_price) AS revenue
FROM orders o
JOIN products p ON o.stock_code = p.stock_code
GROUP BY p.description
ORDER BY revenue DESC
LIMIT 10;

-- Top 10 Most Returned Products
SELECT p.description, SUM(ABS(o.quantity)) AS total_returned
FROM orders o
JOIN products p ON o.stock_code = p.stock_code
WHERE o.quantity < 0
GROUP BY p.description
ORDER BY total_returned DESC
LIMIT 10;

-- Monthly Revenue Trend
SELECT MIN(invoice_date) AS first_invoice_of_month,
       DATE_FORMAT(invoice_date, '%Y-%m') AS month,
       SUM(o.quantity * p.unit_price) AS revenue
FROM orders o
JOIN products p ON o.stock_code = p.stock_code
GROUP BY month
ORDER BY month;

-- Revenue By Country
SELECT c.country, SUM(o.quantity * p.unit_price) AS total_revenue
FROM orders o
JOIN products p ON o.stock_code = p.stock_code
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;
