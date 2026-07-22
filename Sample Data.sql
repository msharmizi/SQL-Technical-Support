-- Sample Customers Data

INSERT INTO Customers(CustomerName,Email,Phone,City)
VALUES
('Ali Hassan','ali@gmail.com','0123456789','Kuala Lumpur'),
('John Tan','john@gmail.com','0132233445','Penang'),
('Nurul','nurul@gmail.com','0174455667','Johor'),
('Ahmad','ahmad@gmail.com','0199988776','Selangor'),
('Siti','siti@gmail.com','0182223333','Melaka');

-- Sample Orders Data

INSERT INTO Orders(CustomerID,ProductName,OrderDate,Status)

VALUES

(1,'Blood Pressure Monitor','2026-07-01','Completed'),

(2,'Printer','2026-07-03','Pending'),

(1,'Barcode Scanner','2026-07-05','Completed'),

(4,'Medical Scanner','2026-07-10','Cancelled');

-- Sample Transactions Data

INSERT INTO Transactions

(OrderID,PaymentMethod,Amount,Status)

VALUES

(1,'Credit Card',1500,'Success'),

(2,'FPX',850,'Failed'),

(3,'Credit Card',500,'Success'),

(4,'Online Banking',900,'Failed');

-- Sample Devices Data

INSERT INTO Devices

(CustomerID,SerialNumber,DeviceModel,Status)

VALUES

(1,'SN1001','BD Scanner X1','Online'),

(2,'SN1002','BD Printer P2','Offline'),

(3,'SN1003','BD Monitor M5','Online'),

(4,'SN1004','BD Scanner X1','Offline');

-- Sample Device Logs Data

INSERT INTO DeviceLogs

(DeviceID,LogTime,LogLevel,LogMessage)

VALUES

(1,NOW(),'INFO','Device Connected'),

(2,NOW(),'ERROR','Printer Offline'),

(2,NOW(),'WARNING','Low Paper'),

(3,NOW(),'INFO','Heartbeat Received'),

(4,NOW(),'ERROR','Network Timeout');

-- Sample Users Data

INSERT INTO Users

(CustomerID,Username,LastLogin)

VALUES

(1,'alih',CURDATE()),

(2,'johnt',DATE_SUB(CURDATE(),INTERVAL 100 DAY)),

(3,'nurul',CURDATE()),

(4,'ahmad',DATE_SUB(CURDATE(),INTERVAL 150 DAY));

-- Sample Login History Data

INSERT INTO LoginHistory

(UserID,LoginTime,Status,IPAddress)

VALUES

(1,NOW(),'Success','192.168.0.1'),

(1,NOW(),'Success','192.168.0.1'),

(2,NOW(),'Failed','10.0.0.1'),

(3,NOW(),'Success','172.16.0.1'),

(4,NOW(),'Failed','192.168.0.5');