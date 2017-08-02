--country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

select i.BillingCountry as "Country", count(i.InvoiceId)
from Invoice i
group by i.BillingCountry