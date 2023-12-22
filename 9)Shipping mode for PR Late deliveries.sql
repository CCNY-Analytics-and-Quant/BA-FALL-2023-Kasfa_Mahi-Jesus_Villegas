select 
shipping_mode,
count (*) AS latedeliverycount 
from 
[dbo].[shippingdata],
[dbo].[CustomerData]
where 
delivery_status = 'late delivery'
and customer_state = 'PR' 
group by 
shipping_mode
order by 
latedeliverycount desc 