Select 
Delivery_Status,
Category_name,
Count(*) AS TotalCount
From 
[dbo].[ProductData]
JOIN [dbo].[ShippingData] ON Product_Category_Id = Product_Category_Id
where delivery_status = 'late delivery'
AND Category_Name IN ('Sporting goods', 'Cleats', 'Shop By Sport', 'Women''s Apparel', 'Electronics' )
group by 
Delivery_Status,
Category_Name