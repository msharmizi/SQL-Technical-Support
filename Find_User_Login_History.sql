-- =====================================
-- Find User Login History
-- Scenario:
-- Display user login history.
-- =====================================

USE technical_support_db;

SELECT
    u.UserID,
    u.Username,
    l.LoginTime,
    l.Status,
    l.IPAddress
FROM Users u
INNER JOIN LoginHistory l
ON u.UserID = l.UserID
ORDER BY l.LoginTime DESC;