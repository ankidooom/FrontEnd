CREATE TABLE Customers
	(
		CustomersID int NOT NULL,
		Name varchar(50)NOT NULL,
		Address varchar(50)NOT NULL,
		City varchar(50)NOT NULL,
		Region varchar(50)NOT NULL,
		Postal_Code int NOT NULL,
		Country varchar(50)NOT NULL,
		Send_E_mail varchar(75)NULL,
		Salutation varchar(50)NULL,
		E_Mail_Adress varchar(75)NOT NULL,
		PRIMARY KEY (CustomersID),

	)
CREATE TABLE Suppliers
	(
		SupplierID int NOT NULL,
		CompanyName varchar(50)NOT NULL,
		ContactName varchar(50)NOT NULL,
		Address varchar(50)NOT NULL,
		City varchar(50)NOT NULL,
		Region varchar(50)NOT NULL,
		PostalCode int NOT NULL,
		Country varchar(50)NULL,
		Phone int NOT NULL,
		PRIMARY KEY (SupplierID)
		
	)
CREATE TABLE Products
	(
		ProductID int NOT NULL,
		Product_Name varchar(75) NOT NULL,
		Unit_Name varchar(100) NOT NULL,
		Units_in_Stocks int NOT NULL,
		Units_in_Order int NOT NULL,
		Quantity_per_Unit int NOT NULL,
		SupplierID int FOREIGN KEY REFERENCES Suppliers(SupplierID)
		PRIMARY KEY (ProductID),
	)
CREATE TABLE Orders
	(
		OrderID int NOT NULL,
		Salesperson varchar(50) NOT NULL,
		Order_Date date NOT NULL,
		ShipName varchar(50) NOT NULL,
		ShipAddress varchar(100) NOT NULL,
		ShipCity varchar(100)NOT NULL,
		ShipRegion varchar(100)NOT NULL,
		ShipPostalCode varchar(100)NOT NULL,
		ShipCountry varchar(100)NOT NULL,
		PRIMARY KEY (OrderID),
		CustomersID int FOREIGN KEY REFERENCES Customers(CustomersID)
	)
CREATE TABLE Orders_Details
	(
		OrderID int FOREIGN KEY REFERENCES Orders(OrderID)NOT NULL,
		ProductID int FOREIGN KEY REFERENCES Products(ProductID)NOT NULL,
		UnitPrice int NOT NULL,
		Quantity int NOT NULL,
		PRIMARY KEY (OrderID,ProductID),
		
	)