-- =====================================
-- Find Failed Transactions
-- Scenario:
-- Find all failed payment transactions.
-- =====================================

USE technical_support_db;

SELECT
    TransactionID,
    OrderID,
    PaymentMethod,
    Amount,
    Status
FROM Transactions
WHERE Status = 'Failed';