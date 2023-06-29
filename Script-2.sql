create table if not exists collection(
	id SERIAL primary key,
	collectionname varchar(30) not null,
	year int not null
);

create table if not exists Artist(
	id SERIAL primary key,
	ArtistName varchar(20) not null
);
	
create table if not exists Album(
	id SERIAL primary key,
	AlbumName varchar(20) not null,
	AlbumYear int not null
);
	
create table if not exists Track(
	id SERIAL primary key,
	TrackName varchar(30) not null,
	Duration int not null,
	Album_ID int not null references Album(id)
);

create table if not exists Genre(
	id SERIAL primary key,
	GenreName varchar(20)
);

create table if not exists ArtistGenres(
	Artist_ID int references Artist(id),
	Genre_ID int references Genre(id),
	constraint pk2 primary key(artist_id, genre_id)
);

create table if not exists AlbumByTheArtist(
	Album_ID int references Album(id),
	Artist_ID int references Artist(id),
	constraint pk3 primary key(album_id, artist_id)
);

create table if not exists CollectionOfTracks(
	Collection_ID int references Collection(id),
	Track_ID int references Track(id),
	constraint pk4 primary key(collection_id, track_id)
);
