select i.*, e.FirstName as "Sales Agent's First Name", e.LastName as "Sales Agent's Last Name"
from invoice i, employee e, customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
order by e.LastName