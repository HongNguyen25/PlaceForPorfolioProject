/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
c.[CustomerKey] as CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
 c.firstname as [First Name],
      --,[MiddleName]
 c.lastname as [Last Name],
 c.firstname + ' ' + LastName as [Full Name],
 --Combined first and last name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
		--c.gender as test,
	 CASE c.gender WHEN 'M' THEN 'Male' when 'F' THEN 'Female' 
	 END AS Gender,
    
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
	  c.datefirstpurchase as DateFirstPurchase,
      --,[CommuteDistance]
	  g.city AS [Customer City] 
	  --Join in customer city from geography table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY
  CustomerKey asc
  --Ordered List by CustomerKey