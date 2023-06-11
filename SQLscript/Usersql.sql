UPDATE [User]
SET userName = 'testuser'
WHERE UID = 'UID8';
INSERT INTO [User](UID, userName, fullName, phone, email, password, role, expiredDate, status, signupDate, MID, gender)
VALUES ('S01', 'duc', 'duc', '0831750296', 'dr@gmail.com', '1', 'staff', '2030-02-03 00:00:00.000', 'activated', '2020-02-03 00:00:00.000', NULL, 'male');