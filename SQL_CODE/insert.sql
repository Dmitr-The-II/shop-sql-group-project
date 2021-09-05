/* 
 -----------------------------------------------------------
Citation and Sources...
 Final Project Part 2
 Group 3
 -----------------------------------------------------------
 I have done all the coding by myself and only copied the code
 that my professor provided to complete my workshops and assignments.
 -----------------------------------------------------------
 */
INSERT ALL
INTO Service VALUES ('LC', 'Lawn Cutting', 0.75,25.00)
INTO Service VALUES ('GW', 'Garden Weeding', 1.15,25.00)
INTO Service VALUES ('GP', 'Garden Planting', 0.25,7.50)
INTO Service VALUES ('GF', 'Garden Fertilizing', 0.50,10.00)
SELECT * FROM dual;

INSERT ALL
INTO ProductClass VALUES (1, 'GT', 'Garden Tools')
INTO ProductClass VALUES (2, 'SB', 'Shrubs' )
INTO ProductClass VALUES (3, 'FT', 'Fertilizers' )
INTO ProductClass VALUES (4, 'SP', 'Sprinklers' )
SELECT * FROM dual;

INSERT ALL
INTO MarkupRate VALUES (1, 0.25)
INTO MarkupRate VALUES (2, 0.30)
INTO MarkupRate VALUES (3, 0.40)
INTO MarkupRate VALUES (4, 0.50)
SELECT * FROM dual;


INSERT ALL
INTO SalesAssistant VALUES (144, 'Paul Smith')
INTO SalesAssistant VALUES (145, 'Maria Wong')
SELECT * FROM dual;

INSERT ALL
INTO Supplier VALUES (1, 'Sheffield-Gander inc.')
INTO Supplier VALUES (2, 'Husky Inc.')
INTO Supplier VALUES (3, 'Northwood Farms inc.')
INTO Supplier VALUES (4, 'Sherwood Nursery')
INTO Supplier VALUES (5, 'Diemar Garden Center')
SELECT * FROM dual;


INSERT ALL
INTO Teams VALUES (1, 'General Contracting')
INTO Teams VALUES (2, 'Pruning and Planting')
INTO Teams VALUES (3, 'General Maintenance')
SELECT * FROM dual;

INSERT ALL
INTO EquipUsed VALUES (1, '20 hp John Deer tractor/ mower')
INTO EquipUsed VALUES (2, '10" tree pruning shears')
INTO EquipUsed VALUES (3, '2 hp Johnson grass trimmer')
SELECT * FROM dual;

INSERT ALL
INTO Taxes VALUES (1, 0.07,'GST')
INTO Taxes VALUES (2, 0.08,'PST')
SELECT * FROM dual;

INSERT ALL
INTO PostalCode VALUES ('M2S 4S3', 'Toronto')
INTO PostalCode VALUES ('M4T 4R7','Toronto')
INTO PostalCode VALUES ('M1A 1K1','Toronto')
SELECT * FROM dual;

INSERT ALL
INTO EmployeeSkills VALUES (1, 'Electrical')
INTO EmployeeSkills VALUES (2, 'Plumbing')
INTO EmployeeSkills VALUES (3, 'General Contractor')
INTO EmployeeSkills VALUES (4, 'Irrigation')
INTO EmployeeSkills VALUES (5, 'Lawn Maintenance')
INTO EmployeeSkills VALUES (6, 'Fertilizing')
INTO EmployeeSkills VALUES (7, '"A" License ')
INTO EmployeeSkills VALUES (8, 'Pruning')
SELECT * FROM dual;

INSERT ALL
INTO Employees_1 VALUES (120, 'Supervisor', 'Cindy Lee', 219032002, '905-338-1234', TO_DATE('01/01/1998', 'DD/MM/YYYY'), 1)
INTO Employees_1 VALUES (121, 'Lawn Care', 'Paula Corelli', 325443001, '416-458-4562', TO_DATE('30/06/1998', 'DD/MM/YYYY'), 2)
INTO Employees_1 VALUES (122, 'Lawn Care', 'Amy Smith', 34111991, '905-338-1234', TO_DATE('30/06/1999', 'DD/MM/YYYY'), 3)
INTO Employees_1 VALUES (123, 'Supervisor', 'Paul Huang', 54222991, '416-932-4533', TO_DATE('30/06/2000', 'DD/MM/YYYY'), 4)
INTO Employees_1 VALUES (124, 'Lawn Care', 'Maria Wong', 219032002, '905-338-1234', TO_DATE('01/01/1998', 'DD/MM/YYYY'), 4)
INTO Employees_1 VALUES (126, 'Supervisor', 'Phil Ramirez', 32543555, '416-435-6599', TO_DATE('01/01/1998', 'DD/MM/YYYY'), 1)
SELECT * FROM dual;

INSERT ALL
INTO Product VALUES (10, 1, '6 foot garden rake', 9.23, 2, 1, 5)
INTO Product VALUES (20, 1, '7 foot leaf rake', 7.69, 2, 1, 5)
INTO Product VALUES (30, 1, 'Round mouth shovel', 7.69, 2, 2, 4)
INTO Product VALUES (40, 1, 'Flat-nosed Shovel', 6.15, 2, 2, 2)
INTO Product VALUES (50, 1, 'Garden pitch-fork', 5.38, 2, 2, 6)
INTO Product VALUES (60, 2, '8 inch hand shears', 11.54, 2, 3,9)
INTO Product VALUES (70, 2, '12 inch trimming shears', 14.62, 2, 3, 10)
INTO Product VALUES (80, 2, '10 inch tamper', 10.77, 2, 3, 3)
INTO Product VALUES (90, 5, 'Cedar sapling', 20.00, 4, 3, 34)
INTO Product VALUES (100, 5, 'Golden cedar sapling', 23.33, 4, 4, 23)
INTO Product VALUES (110, 4, 'Mulberry sapling', 10.00, 4, 4, 12)
INTO Product VALUES (120, 4, 'Juniper sapling', 16.67, 4, 4, 15)
INTO Product VALUES (130, 6, 'Premium lawn fertilizer', 12.00, 1, 4, 4)
INTO Product VALUES (140, 6, 'General grade lawn fertilizer', 8.00, 1, 5, 12)
INTO Product VALUES (150, 6, 'Premium garden fertilizer', 14.40, 1, 5, 14)
INTO Product VALUES (160, 6, 'General grade garden fertilizer', 9.60, 1, 5, 12)
INTO Product VALUES (170, 3, '120 foot watering hose', 17.86, 3, 5, 9)
INTO Product VALUES (180, 3, '12 inch aluminum sprinkler', 10.71, 3, 5, 5)
INTO Product VALUES (190, 3, 'Rotating sprinkler jet', 13.57, 3, 5, 4)
SELECT * FROM dual;

INSERT ALL
INTO Customer_1 VALUES (56, 'John Adams', 234, 'Bloor W', 'M2S 4S3')
INTO Customer_1 VALUES (34, 'Ashley Riley', 156, 'Avindale Cresc', 'M2S 4S3')
INTO Customer_1 VALUES (7, 'John Smith', 333, 'Youge', 'M1A 1K1')

SELECT * FROM dual;

INSERT ALL
INTO Invoice VALUES (1355, 2, 56, 1, TO_DATE('05/07/2002', 'DD/MM/YYYY'))
INTO Invoice VALUES (1412, 3, 34, 2, TO_DATE('19/07/2002', 'DD/MM/YYYY'))
INTO Invoice VALUES (1356, 3, 34, 2, TO_DATE('19/07/2002', 'DD/MM/YYYY'))
INTO Invoice VALUES (1367, 3, 34, 2, TO_DATE('19/07/2002', 'DD/MM/YYYY'))
INTO Invoice VALUES (1401, 3, 34, 2, TO_DATE('19/07/2002', 'DD/MM/YYYY'))
INTO Invoice VALUES (1405, 3, 34, 2, TO_DATE('19/07/2002', 'DD/MM/YYYY'))
SELECT * FROM dual;

INSERT ALL 
INTO ProdSalesReport VALUES (10, 1356, 1, 144, 56)
INTO ProdSalesReport VALUES (40, 1356, 1, 144, 56)
INTO ProdSalesReport VALUES (140, 1356, 3, 144, 56)
INTO ProdSalesReport VALUES (100, 1367, 5, 145, 7)
INTO ProdSalesReport VALUES (110, 1367, 2, 145, 7)
INTO ProdSalesReport VALUES (50, 1367, 1, 145, 7)
INTO ProdSalesReport VALUES (140, 1367, 2, 145, 7)
INTO ProdSalesReport VALUES (170, 1401, 3, 144, 34)
INTO ProdSalesReport VALUES (190, 1401, 3, 144, 34)
INTO ProdSalesReport VALUES (50, 1401, 1, 145, 56)
SELECT * FROM dual;

INSERT ALL
INTO Employees_EmployeeSkills VALUES (120, 1)
INTO Employees_EmployeeSkills VALUES (120, 2)
INTO Employees_EmployeeSkills VALUES (120, 3)
INTO Employees_EmployeeSkills VALUES (122, 4)
INTO Employees_EmployeeSkills VALUES (122, 5)
INTO Employees_EmployeeSkills VALUES (121, 6)
INTO Employees_EmployeeSkills VALUES (121, 4)
INTO Employees_EmployeeSkills VALUES (121, 8)
INTO Employees_EmployeeSkills VALUES (123, 7)
INTO Employees_EmployeeSkills VALUES (123, 1)
INTO Employees_EmployeeSkills VALUES (123, 3)
INTO Employees_EmployeeSkills VALUES (124, 8)
INTO Employees_EmployeeSkills VALUES (124, 5)
INTO Employees_EmployeeSkills VALUES (126, 4)
INTO Employees_EmployeeSkills VALUES (126, 2)
INTO Employees_EmployeeSkills VALUES (126, 1)
SELECT * FROM dual;

--DROP TABLES (FOR TESTS)
DROP TABLE Product_report;
DROP TABLE Equip_Invoice_Service;
DROP TABLE TeamReport_Employees;
DROP TABLE Employees_EmployeeSkills;
DROP TABLE EquipUsed;
DROP TABLE ProdSalesReport;
DROP TABLE Invoice;
DROP TABLE Customer_1;
DROP TABLE PostalCode;
DROP TABLE Service;
DROP TABLE Teams;
DROP TABLE Taxes;
DROP TABLE Employees_1;
DROP TABLE EmployeeSkills;
DROP TABLE SalesAssistant;
DROP TABLE ProductClass;
DROP TABLE Product;
DROP TABLE MarkupRate;
DROP TABLE Supplier;

INSERT ALL
INTO Product_report VALUES (1, 10)
INTO Product_report VALUES (2, 20)
INTO Product_report VALUES (3, 30)
INTO Product_report VALUES (4, 40)
SELECT * FROM dual;


INSERT ALL
INTO TeamReport_Employees VALUES(1,120)
INTO TeamReport_Employees VALUES(2,121)
INTO TeamReport_Employees VALUES(3,122)
SELECT * FROM dual;