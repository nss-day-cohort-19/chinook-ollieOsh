/*line_items_per_invoice.sql: Looking at the InvoiceLine table, 
provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY*/

select il.InvoiceId, count(il.InvoiceLineId) as "Number of Items"
from InvoiceLine il
group by il.InvoiceId