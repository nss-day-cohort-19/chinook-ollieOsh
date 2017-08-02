--invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

select count(il.InvoiceLineId) as "# of Items", i.*
from InvoiceLine il, Invoice i
where il.InvoiceId = i.InvoiceId
group by i.InvoiceId