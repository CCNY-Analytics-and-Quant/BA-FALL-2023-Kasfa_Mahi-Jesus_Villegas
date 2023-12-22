select top 15
customer_state,
count (order_id) as totalorders 
from 
[dbo].[CustomerData]
join [dbo].[orderdata] on customer_id = customer_id 
group by 
customer_state 
order by 
totalorders desc; 