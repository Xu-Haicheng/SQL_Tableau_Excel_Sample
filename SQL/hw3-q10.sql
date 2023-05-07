Select distinct p.name
From playlist p 
Where p.name Not in (Select distinct p.name
From playlist p
Join playlist_track pt on pt.playlist_id = p.playlist_id
Join track t on t.track_id = pt.track_id
Join genre g on g.genre_id = t.genre_id
Where g.name = 'Rock' or g.name = 'Blues'
Group by p.playlist_id)
Order by p.name;
