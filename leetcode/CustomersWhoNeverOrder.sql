select Name as 'Customers' 
from Customers
where Customers.Id not in
(
select CustomerId from Orders
)
