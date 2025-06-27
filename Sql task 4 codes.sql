Create database spotify_db ; 
Use spotify_db ;


Create table artists (
artist_id int primary key, 
artist_name varchar(200),
country varchar(200)
);

SELECT 
    *
FROM
    artists; 


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

SELECT 
    COUNT(track_id), release_year
FROM
    tracks
GROUP BY release_year
HAVING release_year = '2021';



Create table audio_features (
track_id int ,
danceability float,
energy float,
valence float,
tempo int,
foreign key (track_id) references tracks(track_id)
);

SELECT 
    track_id, MAX(energy)
FROM
    audio_features
GROUP BY track_id; 
