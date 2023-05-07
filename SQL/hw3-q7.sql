Select distinct name
From track t
Where not exists (select * from invoice_line i where t.track_id = i.track_id)
Order by name asc; 
