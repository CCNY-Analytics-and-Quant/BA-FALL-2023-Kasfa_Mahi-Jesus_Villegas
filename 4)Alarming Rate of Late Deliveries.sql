select 
delivery_status,
count(*) as totalcount 
from 
[dbo].[ProductData]
join 
[dbo].[ShippingData] on Product_Category_Id = Product_Category_Id
group by 
Delivery_Status