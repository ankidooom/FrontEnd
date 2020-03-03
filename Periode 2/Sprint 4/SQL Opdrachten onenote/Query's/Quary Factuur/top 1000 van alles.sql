/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CustomersID]
      ,[Name]
      ,[Address]
      ,[City]
      ,[Region]
      ,[Postal_Code]
      ,[Country]
      ,[Send_E_mail]
      ,[Salutation]
      ,[E_Mail_Adress]
  FROM [Factuurofzo].[dbo].[Customers]
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [OrderID]
      ,[Salesperson]
      ,[Order_Date]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
      ,[CustomersID]
  FROM [Factuurofzo].[dbo].[Orders]
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [OrderID]
      ,[ProductID]
      ,[UnitPrice]
      ,[Quantity]
  FROM [Factuurofzo].[dbo].[Orders_Details]
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ProductID]
      ,[Product_Name]
      ,[Unit_Name]
      ,[Units_in_Stocks]
      ,[Units_in_Order]
      ,[Quantity_per_Unit]
      ,[SupplierID]
  FROM [Factuurofzo].[dbo].[Products]
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [SupplierID]
      ,[CompanyName]
      ,[ContactName]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
  FROM [Factuurofzo].[dbo].[Suppliers]