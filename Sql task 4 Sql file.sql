Create database spotify_db ; 
Use spotify_db ;


Create table artists (
artist_id int primary key, 
artist_name varchar(200),
country varchar(200)
);

SELECT 
    COUNT(artist_id), artist_name
FROM
    artists
GROUP BY artist_name; 

Create table tracks (
track_id int primary key,
track_name varchar(200),
artist_id int,
release_year int,
popularity int,
foreign key(artist_id) references artists(artist_id)
);

Select 



Create table audio_features (
track_id int ,
danceability float,
energy float,
valence float,
tempo int,
foreign key (track_id) references tracks(track_id)
);
