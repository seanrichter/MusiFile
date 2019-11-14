-- DROP SCHEMA IF EXISTS musifile_db;

-- CREATE SCHEMA musifile_db;
-- USE musifile_db;

-- CREATE TABLE artists (                                                     
--     id int NOT NULL AUTO_INCREMENT,
--     name varchar(40) NOT NULL,
--     PRIMARY KEY(id),
--     UNIQUE KEY(name)
-- );

-- CREATE TABLE albums (
--     id int NOT NULL AUTO_INCREMENT,
--     name varchar(40) NOT NULL,
--     artist int NOT NULL,
--     PRIMARY KEY(id),
--     FOREIGN KEY(artist) REFERENCES artists(id)
-- );

-- CREATE TABLE tracks (
--     id int NOT NULL AUTO_INCREMENT,
--     name varchar(40) NOT NULL,
--     album int NOT NULL,
--     PRIMARY KEY(id),
--     FOREIGN KEY(album) REFERENCES albums(id)
-- );

-- INSERT INTO artists (name) VALUES ('Ellie Goulding');
-- INSERT INTO artists (name) VALUES ('Florence + The Machine');
-- INSERT INTO artists (name) VALUES ('Ed Sheeran');

-- INSERT INTO albums (name, artist) VALUES ('Lights', 1);
-- INSERT INTO albums (name, artist) VALUES ('Lungs', 2);
-- INSERT INTO albums (name, artist) VALUES ('x(Deluxe Edition)', 3);

-- SELECT albums.id AS 'Album ID',
--     albums.name AS 'Album Name',
--     artists.name AS 'Artist Name'
--     FROM albums
--     JOIN artists ON (artists.id = albums.artist);
    
-- INSERT INTO tracks (name, album) VALUES ('Bloodstream', 3);
-- INSERT INTO tracks (name, album) VALUES ("Don't", 3);

-- INSERT INTO tracks (name, album) VALUES ('Drumming track', 2);
-- INSERT INTO tracks (name, album) VALUES ('Blinding', 2);

-- INSERT INTO tracks (name, album) VALUES ('Lights - Single Version', 1);
-- INSERT INTO tracks (name, album) VALUES ('Starry Eyed', 1);

-- SELECT name FROM tracks;

-- SELECT tracks.name AS 'Track Name',
--     albums.name AS 'Album Name'
--     FROM tracks
--     JOIN albums ON (albums.id = tracks.album);
    
-- SELECT tracks.name AS 'Track Name',
--     albums.name AS 'Album Name',
--     artists.name AS 'Artist Name'
--     FROM tracks
--     JOIN albums ON (albums.id = tracks.album)
--     JOIN artists ON (artists.id = albums.artist);    