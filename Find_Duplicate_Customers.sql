-- =====================================
-- Find Duplicate Customers
-- Scenario:
-- Find duplicate customer email addresses.
-- =====================================

USE technical_support_db;

SELECT
    Email,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Email
HAVING COUNT(*) > 1;