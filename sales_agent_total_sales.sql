--sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

select round(sum(i.Total), 2) as "Total Sales", e.FirstName, e.LastName
from Invoice i, Employee e, Customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
group by e.EmployeeId