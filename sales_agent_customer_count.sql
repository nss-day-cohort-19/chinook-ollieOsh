--sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

select e.FirstName || e.LastName EmployeeName, count(c.CustomerId)
from Employee e, Customer c
where e.EmployeeId = c.SupportRepId
group by e.EmployeeId