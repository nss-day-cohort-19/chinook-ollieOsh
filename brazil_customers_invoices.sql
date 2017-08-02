select c.FirstName || ' ' || c.LastName as "Full Name", i.InvoiceId, i.InvoiceDate, i.BillingCountry
from Customer c, Invoice i
where c.CustomerId = i.CustomerId
and c.Country = "Brazil"