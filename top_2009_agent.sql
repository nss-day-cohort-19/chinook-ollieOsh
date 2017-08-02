--top_2009_agent.sql: Which sales agent made the most in sales in 2009?

select max(Sales.TotalSales) as TopSales, Sales.EmployeeName
from
	(select sum(i.Total) TotalSales, e.FirstName || ' ' ||  e.LastName EmployeeName
	from Invoice i, Employee e, Customer c
	where i.CustomerId = c.CustomerId
	and c.SupportRepId = e.EmployeeId
	and substr(i.InvoiceDate, 1, 4) = '2009'
	group by e.EmployeeId) Sales