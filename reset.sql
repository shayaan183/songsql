-- Drop every table
DROP TABLE IF EXISTS "songs_in_playlists";
DROP TABLE IF EXISTS "songs";
DROP TABLE IF EXISTS "playlists";
DROP TABLE IF EXISTS "users";
DROP TABLE IF EXISTS "albums";
DROP TABLE IF EXISTS "artists";


-- Drop every view
DROP VIEW IF EXISTS "user_playlists";
DROP VIEW IF EXISTS "artist_songs";
DROP VIEW IF EXISTS "album_songs";
DROP VIEW IF EXISTS "playlist_songs";


-- Drop every index
DROP TABLE IF EXISTS "user_index";
DROP TABLE IF EXISTS "artist_name_index";
DROP TABLE IF EXISTS "album_index";
DROP TABLE IF EXISTS "album_title_index";
DROP TABLE IF EXISTS "song_index";
DROP TABLE IF EXISTS "song_title_index";
DROP TABLE IF EXISTS "playlist_index";
DROP TABLE IF EXISTS "songs_in_playlist_index";

VACUUM;
