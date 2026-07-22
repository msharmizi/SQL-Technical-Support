-- =====================================
-- Find Missing Orders
-- Scenario:
-- Find customers who do not have any orders.
-- =====================================

USE technical_support_db;

SELECT
    c.CustomerID,
    c.CustomerName,
    c.Email
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;