select albumname, albumyear from album
where albumyear = 2018;

select trackname, duration from track 
order by duration desc
limit 1;

select trackname, duration from track
where duration >= 210;

select collectionname, "year" from collection
where "year" between 2018 and 2020;

select artistname from artist
where artistname not like '% %';

select trackname from track
where trackname like 'мой' or trackname like 'my';