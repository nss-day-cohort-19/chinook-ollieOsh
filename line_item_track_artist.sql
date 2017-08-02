--line_item_track_artist.sql: Provide a query that includes the purchased track name 
--AND artist name with each invoice line item.

select t.Name, a.Name, il.*
from InvoiceLine il, Track t, Artist a, Album al
where il.TrackId = t.TrackId
and t.AlbumId = al.AlbumId
and al.ArtistId = a.ArtistId