-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- TABLES --
-- Represents users that are registered
CREATE TABLE "users" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

-- Represents artists that are registered
CREATE TABLE "artists" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "about" TEXT,
    PRIMARY KEY("id")
);

-- Represents albums that have been created by artists
CREATE TABLE "albums" (
    "id" INTEGER,
    "artist_id" INTEGER,
    "title" TEXT NOT NULL,
    "release_year" INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("artist_id") REFERENCES "artists"("id") ON DELETE CASCADE
);

-- Represents songs that have been made by artists and are in albums
CREATE TABLE "songs" (
    "id" INTEGER,
    "artist_id" INTEGER,
    "album_id" INTEGER,
    "title" TEXT NOT NULL,
    "duration" INTEGER NOT NULL CHECK("duration" > 0),
    PRIMARY KEY("id"),
    FOREIGN KEY("artist_id") REFERENCES "artists"("id") ON DELETE CASCADE,
    FOREIGN KEY("album_id") REFERENCES "albums"("id") ON DELETE CASCADE
);

-- Represents playlists created by users
CREATE TABLE "playlists" (
    "id" INTEGER,
    "user_id" INTEGER,
    "title" TEXT NOT NULL,
    "created" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id") ON DELETE CASCADE
);

-- Represents songs that are in playlists
CREATE TABLE "songs_in_playlists" (
    "playlist_id" INTEGER,
    "song_id" INTEGER,
    PRIMARY KEY("playlist_id", "song_id")
    FOREIGN KEY("playlist_id") REFERENCES "playlists"("id") ON DELETE CASCADE,
    FOREIGN KEY("song_id") REFERENCES "songs"("id") ON DELETE CASCADE
);


-- VIEWS --
-- View of all user playlists
CREATE VIEW "user_playlists" AS
SELECT "username", "title", "created" FROM "users"
JOIN "playlists" ON "playlists"."user_id" = "users"."id";

-- View of all artists songs
CREATE VIEW "artist_songs" AS
SELECT "name", "title", "duration" FROM "artists"
JOIN "songs" ON "songs"."artist_id" = "artists"."id";

-- View of all songs in an album
CREATE VIEW "album_songs" AS
SELECT "albums"."title" AS "album_title", "songs"."title" AS "song_title", "duration" FROM "albums"
JOIN "songs" ON "songs"."album_id" = "albums"."id";

-- View of all songs in a playlist
CREATE VIEW "playlist_songs" AS
SELECT "playlists"."title" AS "playlist_title", "songs"."title" AS "song_title", "duration" FROM "playlists"
JOIN "songs_in_playlists" ON "songs_in_playlists"."playlist_id" = "playlists"."id"
JOIN "songs" ON "songs"."id" = "songs_in_playlists"."song_id";


-- INDEXES --
-- Index for user usernames
CREATE INDEX "user_index" ON "users"("username");

-- Index for artist names
CREATE INDEX "artist_name_index" ON "artists"("name");

-- Index for albums
CREATE INDEX "album_index" ON "albums"("artist_id");

-- Index for album title
CREATE INDEX "album_title_index" ON "albums"("title");

-- Index for songs
CREATE INDEX "song_index" ON "songs"("artist_id", "album_id");

-- Index for song title
CREATE INDEX "song_title_index" ON "songs"("title");

-- Index for playlists
CREATE INDEX "playlist_index" ON "playlists"("user_id", "title");

-- Index for songs in playlists
CREATE INDEX "songs_in_playlist_index" ON "songs_in_playlists"("playlist_id", "song_id");
