select * from invoice_line
where unit_price > .99;

select invoice.invoice_date, customer.first_name, customer.last_name, invoice.total from invoice
join customer 
on customer.customer_id = invoice.customer_id;

select customer.first_name, customer.last_name, employee.first_name, employee.last_name from customer
join employee
on customer.support_rep_id = employee.employee_id;

select title, name from album
join artist
on album.artist_id = artist.artist_id;

select playlist_track.playlist_track_id from playlist_track
join playlist
on playlist_track.playlist_id = playlist.playlist_id
where playlist.name = 'Music';

select track.name from track
join playlist
on playlist.playlist_id = track.track_id
where playlist.playlist_id = 5;

select track.name, playlist.name from track
join playlist_track
on track.track_id = playlist_track.track_id
join playlist
on playlist_track.playlist_id = playlist.playlist_id;

select track.name, album.title from track
join album
on track.album_id = album.album_id
join genre
on genre.genre_id = track.genre_id
where genre.name = 'Alternative & Punk';

select playlist.name, genre.name, album.title, artist.name from playlist
join playlist_track
on playlist.playlist_id = playlist_track.playlist_id
join track
on playlist_track.track_id = track.track_id
join album
on track.album_id = album.album_id
join artist
on album.artist_id = artist.artist_id
join genre
on track.genre_id = genre.genre_id
where playlist.name = 'Music';