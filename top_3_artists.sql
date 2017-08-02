--top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

select a.Name, round(sum(il.UnitPrice), 2) TotalSales
from Artist a, InvoiceLine il, Track t, Album al
where il.TrackId = t.TrackId
and t.AlbumId = al.AlbumId
and al.ArtistId = a.ArtistId
group by a.Name
order by TotalSales desc
limit 3