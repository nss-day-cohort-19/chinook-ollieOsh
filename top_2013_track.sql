--top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

select  t.Name, count(il.TrackId) PurchaseCount, i.InvoiceDate
from Invoice i, InvoiceLine il
join Track t on t.TrackId = il.TrackId
where il.InvoiceId = i.InvoiceId
and strftime('%Y', i.InvoiceDate) = "2013"
group by t.Name
order by PurchaseCount desc