-- =====================================
-- Find Inactive Users
-- Scenario:
-- Find users who have not logged in
-- during the last 90 days.
-- =====================================

USE technical_support_db;

SELECT
    UserID,
    Username,
    LastLogin
FROM Users
WHERE LastLogin < DATE_SUB(CURDATE(), INTERVAL 90 DAY);