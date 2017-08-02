--tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.

select t.Name as "Track", al.Title as "Album", m.Name as "Media Type", g.Name as "Genre"
from Track t, Album al, MediaType m, Genre g
where t.AlbumId = al.AlbumId
and t.MediaTypeId = m.MediaTypeId
and t.GenreId = g.GenreId