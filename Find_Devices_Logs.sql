-- =====================================
-- Find Device Logs
-- Scenario:
-- Display all device log messages.
-- =====================================

USE technical_support_db;

SELECT
    d.DeviceID,
    d.DeviceModel,
    l.LogTime,
    l.LogLevel,
    l.LogMessage
FROM Devices d
INNER JOIN DeviceLogs l
ON d.DeviceID = l.DeviceID
ORDER BY l.LogTime DESC;