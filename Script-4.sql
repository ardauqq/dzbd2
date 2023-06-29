--Количество исполнителей в каждом жанре.
select g.genrename, count(a.artistname) from genre g 
join artistgenres ag on g.id = ag.genre_id 
join artist a on ag.artist_id = a.id 
group by genrename;

--Количество треков, вошедших в альбомы 2019–2020 годов.
select count(t.id) from album a 
join track t on a.id = t.album_id 
where a.albumyear between 2019 and 2020;

--Средняя продолжительность треков по каждому альбому.
select a.albumname, avg(t.duration) from album a 
join track t on a.id = t.album_id 
group by albumname;

--Все исполнители, которые не выпустили альбомы в 2020 году.
select artistname from artist a 
where a.artistname not in (
	select a2.artistname from artist a2 
	join albumbytheartist a3 ON a2.id = a3.artist_id 
	join album a4 on a3.album_id = a4.id
	where a4.albumyear = 2020
); 

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.collectionname from collection c
join collectionoftracks c2 on c.id = c2.collection_id 
join track t on c2.track_id  = t.id 
join album a on t.album_id = a.id 
join albumbytheartist a2 on a.id = a2.album_id 
join artist a3 on a2.artist_id = a3.id 
where a3.artistname like 'Stromae'
group by c.collectionname;

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select distinct a.albumname from album a
join albumbytheartist a2 on a.id = a2.album_id 
join artist a3 on a2.artist_id = a3.id 
join artistgenres a4 on a3.id = a4.artist_id 
group by a.albumname, a4.artist_id 
having count(a4.genre_id) > 1;

--Наименования треков, которые не входят в сборники.
select t.trackname from track t 
left join collectionoftracks c on t.id = c.track_id 
left join collection c2 on c.collection_id = c2.id where c2.id is null
group by t.trackname;
  
--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
select a.artistname, t.trackname, t.duration from artist a
join albumbytheartist a2 on a.id = a2.artist_id 
join album a3 on a2.album_id = a3.id 
join track t on a3.id = t.album_id 
where t.duration = (select min(track.duration) from track);

--Названия альбомов, содержащих наименьшее количество треков.
select a.albumname from album a 
join track t on a.id = t.album_id 
group by a.albumname
having count(*) = (
	select count(t2.id) from album a2
	join track t2 on a2.id = t2.album_id 
	group by albumname 
	order by count(t2.id) asc
	limit 1);
