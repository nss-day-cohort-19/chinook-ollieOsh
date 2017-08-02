--top_agent.sql: Which sales agent made the most in sales over all?

select max(Sales.TotalSales) as TopSales, Sales.EmployeeName
from
	(select '$' || round(sum(i.Total), 2) TotalSales, e.FirstName || ' ' ||  e.LastName EmployeeName
	from Invoice i, Employee e, Customer c
	where i.CustomerId = c.CustomerId
	and c.SupportRepId = e.EmployeeId
	group by e.EmployeeId) Sales