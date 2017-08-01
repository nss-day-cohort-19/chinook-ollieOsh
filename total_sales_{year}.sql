/*total_sales_{year}.sql: What are the respective total sales for each of those years?*/

select  substr(InvoiceDate, 1, 4) as "Year", sum(Total) as "Total Sales"
from Invoice
where InvoiceDate between '2009-01-01' and '2011-12-31'
group by substr(invoicedate, 1,4)