-- =====================================
-- Check Database Integrity
-- Scenario:
-- Find orders that reference
-- customers who do not exist.
-- =====================================

USE technical_support_db;

SELECT
    o.OrderID,
    o.CustomerID
FROM Orders o
LEFT JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;