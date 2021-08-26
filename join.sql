SELECT * FROM invoice_line
WHERE unit_price >.99;

SELECT i.invoice_date,i.total, c.first_name, c.last_name FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name,e.last_name, e.first_name FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT album.title AS album, artist.name AS artist FROM album
JOIN artist 
ON album.artist_id = artist.artist_id;

SELECT pt.playlist_track_id, p.name FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

SELECT pt.playlist_id, pt.playlist_track_id, t.name FROM track t 
JOIN playlist_track pt 
ON pt.track_id = t.track_id

SELECT t.name AS track, p.name AS playlist, pt.playlist_track_id FROM track t
JOIN playlist_track pt
ON pt.track_id = t.track_id
JOIN playlist p
ON p.playlist_id = pt.playlist_id;

SELECT t.name AS track, a.title AS album FROM album a
JOIN track t 
ON t.album_id = a.album_id
JOIN genre g
ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';