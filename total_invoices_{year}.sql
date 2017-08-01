/*total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?*/

select count(*)
from Invoice
where InvoiceDate between '2009-01-01' and '2011-12-31'  