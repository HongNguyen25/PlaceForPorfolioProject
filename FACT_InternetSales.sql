--CLEANSED FACT_InternetSales table
SELECT
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
 [SalesOrderNumber],
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 
  --ensure we always bring only 2 years of date from current database system time.
  order by
  OrderDateKey asc