Select distinct name
From track
Where track_id not in (
Select distinct t.track_id 
From track t
Join playlist_track pt on pt.track_id = t.track_id
Join playlist p on pt.playlist_id = p.playlist_id
Join media_type m on m.media_type_id = t.media_type_id
Where p.playlist_id = 5
)
Order by name;
