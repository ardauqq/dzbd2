insert into artist(artistname)
	values	('Eminem'),
		('Imagine Dragons'),
		('Lady Gaga'),
		('Ariana Grande'),
		('Boulevard Depo'),
		('Green Day'),
		('Pharrell Whilliams'),
		('Stromae');
	
insert into genre(genrename)
	values	('Rap'),
		('Rock'),
		('Pop'),
		('R&B'),
		('Hip-Hop');
	
insert into album(albumname, albumyear)
	values 	('The Eminem Show', 2002),
		('thank u, next', 2019),
		('The Fame', 2008),
		('Evolve', 2017),
		('OLD BLOOD', 2020),
		('E-lo', 2018),
		('American Idiot', 2004),
		('Cheese', 2010);
	
insert into track(TrackName, duration, album_id)
	values	('Alors On Dance', 172, 8),
		('Silence', 281, 8), ('Happy', 233, 6), ('Freedom', 234, 6),
		('Homecomming', 829, 7), ('Whatshername', 257, 7), 
		('Friendly Fire', 122, 5), ('X2', 176, 5),
		('Believer', 204, 4), ('Thunder', 187, 4),
		('Poker Face', 239, 3), ('Money Honey', 170, 3),
		('7 rings', 178, 2), ('make up', 200, 2),
		('Superman', 355, 1), ('Without Me', 290, 1),
		('Mockingbird', 402, 1), ('Papoutai', 221, 8), 
		('Rap God', 294, 1), ('Enemy', 344, 4),
		('Кащенко', 188, 5);
	
insert into collection(collectionname, "year")
	values	('RapIsLife', 2010), ('GoodMorning', 2023),
		('depressed', 2012), ('chillhere', 2014),
		('oldMusic', 2009), ('FromRadio', 2015),
		('Masrhall', 2005), ('magirls', 2020);
			
insert into albumbytheartist(album_id, artist_id)
	values	(1, 2), 
		(3, 1),
		(2, 4),
		(4, 3),
		(5, 5),
		(6, 7),
		(7, 6),
		(8, 8);
	
insert into artistgenres(artist_id, genre_id)
	values	(1, 3), (1, 5),
		(2, 1), (2, 5),
		(3, 2), (3, 3),
		(4, 5), (4, 1), (4, 4),
		(5, 1),
		(6, 2),
		(7, 5),
		(8, 1), (8, 5);
	
insert into collectionoftracks(collection_id, track_id)
	values	(1, 1),
		(1, 7),
		(1, 8),
		(1, 15),
		(1, 16),
		(2, 2),
		(2, 4),
		(2, 3),
		(3, 7),
		(3, 5),
		(3, 6),
		(4, 3),
		(4, 11),
		(4, 12),
		(4, 10),
		(5, 15),
		(5, 16),
		(5, 5),
		(5, 6),
		(6, 1),
		(6, 11),
		(6, 9),
		(6, 2),
		(7, 1),
		(7, 2),
		(8, 11),
		(8, 12),
		(8, 13),
		(8, 14);
			
