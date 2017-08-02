/*total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

select count(*)
from Invoice
where InvoiceDate between '2009-01-01' and '2011-12-31'  */

select count(i.InvoiceId) NumberOfInvoices, strftime('%Y', i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear