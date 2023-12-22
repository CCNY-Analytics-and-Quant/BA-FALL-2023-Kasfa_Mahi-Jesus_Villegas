select top 10 
order_region,
count (order_id) as TotalOrders
from 
[dbo].[orderdata]
join [dbo].[CustomerData] on order_region = Order_Region
group by 
order_region 
order by 
totalorders desc; 