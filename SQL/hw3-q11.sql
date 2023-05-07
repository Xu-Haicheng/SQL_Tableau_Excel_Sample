With temp as (Select distinct ar.name, t.genre_id
From track t 
Join album al on al.album_id = t.album_id
Join artist ar on al.artist_id = ar.artist_id
Group by ar.name, t.genre_id)

Select name
From temp 
Group by name
Having count(genre_id)>=3
Order by name;
