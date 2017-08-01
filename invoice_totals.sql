/* invoice_totals.sql: Provide a query that shows the Invoice Total, 
Customer name, Country and Sale Agent name for all invoices and customers. */

select i.Total, c.FirstName as "Customer First Name", c.LastName "Customer Last Name", c.Country, 
e.FirstName as "Sales Agent First Name", e.LastName as "Sales Agent First Name"
from Invoice i, Customer c, Employee e
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
