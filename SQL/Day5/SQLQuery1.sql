CREATE DATABASE info
USE info

CREATE TABLE Customers (CustomerId int PRIMARY KEY, Cust_Name varchar(50), Cust_Address varchar(100), Region varchar(50))

INSERT INTO Customers VALUES (1, 'Piyush Kumar', 'Jamshedpur, Jharkhand', 'East')
INSERT INTO Customers VALUES (2, 'Lakshay Saxena', 'Lucknow, Uttar Pradesh', 'North')
INSERT INTO Customers VALUES (3, 'Shivansh Pawel', 'Jodhpur, Rajasthan', 'West')
INSERT INTO Customers VALUES (4, 'Mohith Vatthi', 'Hyderabad, Telangana', 'South')



CREATE TABLE SmartMeterReadings (MeterId int PRIMARY KEY, CustomerId int, mt_Location varchar(100), InstalledDate date, ReadingDateTime datetime, EnergyConsumed float, FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId))

INSERT INTO SmartMeterReadings VALUES (101, 2, 'Rooftop', '2024-05-23', '2025-08-26 12:00:00', 2500)
INSERT INTO SmartMeterReadings VALUES (102, 4, 'Basement', '2023-02-16', '2025-08-16 06:30:00', 3200)
INSERT INTO SmartMeterReadings VALUES (103, 1, 'Backyard', '2024-01-14', '2025-08-14 10:40:00', 4800)
INSERT INTO SmartMeterReadings VALUES (104, 3, 'Garage', '2023-04-21', '2025-08-21 09:25:07', 2700)

UPDATE SmartMeterReadings SET EnergyConsumed = 12.25 WHERE MeterId = 101 
UPDATE SmartMeterReadings SET EnergyConsumed = 34.50 WHERE MeterId = 102 
UPDATE SmartMeterReadings SET EnergyConsumed = 64.75 WHERE MeterId = 103 
UPDATE SmartMeterReadings SET EnergyConsumed = 8.50 WHERE MeterId = 104

SELECT * FROM Customers
SELECT * FROM SmartMeterReadings

/* Task 1 */

/* Energy consumed between 10-50 KWH */

SELECT * FROM SmartMeterReadings WHERE EnergyConsumed BETWEEN 10 AND 50

/* Reading Date Time is between 2024-01-01 and 2024-12-31 */
SELECT * FROM SmartMeterReadings WHERE ReadingDateTime BETWEEN '2024-01-01' AND '2024-12-31'

/* Exclude meters installed after '2024-06-30' */
SELECT * FROM SmartMeterReadings WHERE InstalledDate <= '2024-06-30'


/* Task 2 */

/* Average energy consumed per reading */
SELECT CustomerId, avg(EnergyConsumed) FROM SmartMeterReadings GROUP BY CustomerId

/* Maximum energy consumed in a single reading */
SELECT CustomerId, max(EnergyConsumed) FROM SmartMeterReadings GROUP BY CustomerId

/* Only include readings from the current year */
SELECT * FROM SmartMeterReadings WHERE year(ReadingDateTime) = year(getdate())



