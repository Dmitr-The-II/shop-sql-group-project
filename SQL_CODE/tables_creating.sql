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
CREATE TABLE Service (
ServiceCode VARCHAR(20),
PRIMARY KEY (ServiceCode),
Description VARCHAR(200),
WorkDuration FLOAT,
HourlyCharge FLOAT);

CREATE TABLE ProductClass (
Product_class INT,
ClassDescription VARCHAR(200),
Classification VARCHAR(200),
PRIMARY KEY (Product_class));

CREATE TABLE Product (
ProductID INT,
PRIMARY KEY (ProductID),
AisleNo INT,
ProdDescription VARCHAR(200),
Cost FLOAT,
MarkupID INT,
SupplierID INT,
InventoryQTY INT);

CREATE TABLE MarkupRate (
MarkupID INT,
PRIMARY KEY (MarkupID),
MarkupRate FLOAT);

CREATE TABLE Supplier (
SupplierID INT,
PRIMARY KEY (SupplierID),
Supplier_name VARCHAR(200));

CREATE TABLE EquipUsed (
EquipID INT,
PRIMARY KEY (EquipID),
EquipDescription VARCHAR(200));

CREATE TABLE SalesAssistant (
SalesAssistantID INT,
PRIMARY KEY (SalesAssistantID),
SalesAssistantName VARCHAR(200));

CREATE TABLE Teams (
TeamID INT,
PRIMARY KEY (TeamID),
TeamDescription VARCHAR(200));

CREATE TABLE Taxes (
TaxID INT,
PRIMARY KEY (TaxID),
TaxRate FLOAT,
TaxName VARCHAR(200));

CREATE TABLE PostalCode (
AddressPostalCode VARCHAR(200),
PRIMARY KEY (AddressPostalCode),
AddressCity VARCHAR(200));

CREATE TABLE EmployeeSkills (
EmpSkillsID INT,
PRIMARY KEY (EmpSkillsID),
EmpSkillsDescription VARCHAR(200));

CREATE TABLE Invoice (
InvoiceNo INT,
PRIMARY KEY (InvoiceNo),
TeamID INT,
CustomerID INT,
TaxID INT,
InvoiceDate DATE NOT NULL);

CREATE TABLE ProdSalesReport (
ProductID INT,
InvoiceID INT,
ProdQTY INT,
SalesAssistantID INT,
CustNo INT,
PRIMARY KEY(ProductID, InvoiceID));

CREATE TABLE Customer_1 (
CustomerID INT,
PRIMARY KEY (CustomerID),
CustomerName VARCHAR(200),
AddressNo INT,
AddressStreet VARCHAR(200),
AddressPostalCode VARCHAR(200));

CREATE TABLE Employees_1 (
EmpID INT,
PRIMARY KEY (EmpID),
EmpPosition VARCHAR(200),
EmpName VARCHAR(200),
EmpOHIP INT,
EmpHomePhone VARCHAR(200),
EmpStartDate DATE NOT NULL,
EmpSkillsID INT);

CREATE TABLE Product_report (
Product_class INT,
ProductID INT,
PRIMARY KEY(Product_class, ProductID));

CREATE TABLE TeamReport_Employees (
TeamID INT,
EmpID INT,
PRIMARY KEY(TeamID, EmpID));

CREATE TABLE Equip_Invoice_Service (
InvoiceNo INT,
EquipID INT,
ServiceCode VARCHAR(20),
PRIMARY KEY(InvoiceNo, EquipID, ServiceCode));

CREATE TABLE Employees_EmployeeSkills (
EmpID INT,
EmpSkillsID INT,
PRIMARY KEY(EmpID, EmpSkillsID));

ALTER TABLE Product
ADD CONSTRAINT MarkupID_FK FOREIGN KEY (MarkupID) REFERENCES MarkupRate(MarkupID);

ALTER TABLE Invoice
ADD CONSTRAINT TeamID_FK FOREIGN KEY (TeamID) REFERENCES Teams(TeamID);

ALTER TABLE Invoice
ADD CONSTRAINT CustomerID_FK FOREIGN KEY (CustomerID) REFERENCES Customer_1(CustomerID);

ALTER TABLE Invoice
ADD CONSTRAINT TaxID_FK FOREIGN KEY (TaxID) REFERENCES Taxes(TaxID);

ALTER TABLE Product_report
ADD CONSTRAINT Product_class_FK FOREIGN KEY (Product_class) REFERENCES ProductClass(Product_class);

ALTER TABLE Product_report
ADD CONSTRAINT ProductID_FK FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

ALTER TABLE ProdSalesReport
ADD CONSTRAINT InvoiceID_FK FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceNo);

ALTER TABLE Customer_1
ADD CONSTRAINT AddressPostalCode_FK FOREIGN KEY (AddressPostalCode) REFERENCES PostalCode(AddressPostalCode);

ALTER TABLE Employees_1
ADD CONSTRAINT EmpSkillsID_FK FOREIGN KEY (EmpSkillsID) REFERENCES EmployeeSkills(EmpSkillsID);

ALTER TABLE TeamReport_Employees
ADD CONSTRAINT TeamID_Employees_FK FOREIGN KEY (TeamID) REFERENCES Teams(TeamID);

ALTER TABLE TeamReport_Employees
ADD CONSTRAINT EmpID_FK FOREIGN KEY (EmpID) REFERENCES Employees_1(EmpID);

ALTER TABLE Equip_Invoice_Service
ADD CONSTRAINT InvoiceNo_FK FOREIGN KEY (InvoiceNo) REFERENCES Invoice(InvoiceNo);

ALTER TABLE Equip_Invoice_Service
ADD CONSTRAINT ServiceCode_FK FOREIGN KEY (ServiceCode) REFERENCES Service(ServiceCode);

ALTER TABLE ProdSalesReport
ADD CONSTRAINT SalesAssistantID_FK FOREIGN KEY (SalesAssistantID) REFERENCES SalesAssistant(SalesAssistantID);

ALTER TABLE ProdSalesReport
ADD CONSTRAINT CustNo_FK FOREIGN KEY (CustNo) REFERENCES Customer_1(CustomerID);

ALTER TABLE Employees_EmployeeSkills
ADD CONSTRAINT EmpID_EmployeeSkills_FK FOREIGN KEY (EmpID) REFERENCES Employees_1(EmpID);

ALTER TABLE Employees_EmployeeSkills
ADD CONSTRAINT EmpSkillsID_EmployeeSkills_FK FOREIGN KEY (EmpSkillsID) REFERENCES EmployeeSkills(EmpSkillsID);

ALTER TABLE Product 
ADD CONSTRAINT SupplierID_FK FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);
