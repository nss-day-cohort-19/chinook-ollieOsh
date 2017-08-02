--top_media_type.sql: Provide a query that shows the most purchased Media Type.

select Purchases.Name, max(Purchases.PurchaseCount) Purchases
from
	(select m.Name, count(il.TrackId) PurchaseCount
	from MediaType m, InvoiceLine il, Track t
	where il.TrackId = t.TrackId
	and t.MediaTypeId = m.MediaTypeId
	group by m.Name) Purchases