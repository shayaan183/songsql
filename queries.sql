-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- INSERT SAMPLE DATA (All song data was obtained from Spotify) --
-- Insert into users
INSERT INTO "users" ("name", "email", "username")
VALUES
    ("Morris Shepherd", "morris.shepherd@example.com", "morris_s55"),
    ("Dina Carter", "dina.c05@example.com",  "dina_carter24"),
    ("Kurtis Roy", "kurtis.roy@example.com",  "kurt_roy33");

-- Insert into artists
INSERT INTO "artists" ("name", "about")
VALUES
    ("Coldplay", "English rock band formed in London in 1996. Consists of members Chris Martin, Jonny Buckland, Guy Berryman, and Will Champion."),
    ("The Beatles", "Legendary English rock band formed in Liverpool in 1960, with members, John Lennon, Paul McCartney, George Harrison and Ringo Starr. Known as one of the most influencial bands of all time"),
    ("Billie Eilish", "American singer and songwriter known for her distinct style and unique voice. One of the youngest people to recieve multiple Grammy and Academy Awards.");

-- Insert into albums
INSERT INTO "albums" ("artist_id", "title", "release_year")
VALUES
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), "Parachutes", 2000),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), "Ghost Stories", 2002),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), "Help!", 1965),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), "Abbey Road", 1969),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), "When We All Fall Asleep, Where Do We Go?", 2019),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), "Hit Me Hard and Soft", 2024);

-- Insert into songs
INSERT INTO "songs" ("artist_id", "album_id", "title", "duration")
VALUES
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"), "Don't Panic", 136),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"), "Shiver", 304),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"), "Sparks", 227),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"), "Yellow", 266),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"), "Trouble", 273),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"), "Always in My Head", 216),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"), "Magic", 285),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"), "Ink", 228),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"), "Midnight", 294),
    ((SELECT "id" FROM "artists" WHERE "name" = "Coldplay"), (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"), "A Sky Full of Stars", 267),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Help!"), "Help!", 139),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Help!"), "You've Got to Hide Your Love Away", 129),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Help!"), "Ticket to Ride", 189),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Help!"), "I've Just Seen a Face", 125),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Help!"), "Yesterday", 125),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"), "Come Together", 259),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"), "Something", 182),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"), "Oh! Darling", 207),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"), "Here Comes the Sun", 185),
    ((SELECT "id" FROM "artists" WHERE "name" = "The Beatles"), (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"), "Golden Slumber", 91),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"), "bad guy", 194),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"), "xanny", 243),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"), "you should see me in a crown", 180),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"), "when the party is over", 196),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"), "bury a friend", 193),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"), "SKINNY", 219),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"), "LUNCH", 179),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"), "CHIHIRO", 303),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"), "BIRDS OF A FEATHER", 210),
    ((SELECT "id" FROM "artists" WHERE "name" = "Billie Eilish"), (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"), "WILDFLOWER", 261);

-- Insert into playlists
INSERT INTO "playlists" ("user_id", "title", "created")
VALUES
    ((SELECT "id" FROM "users" WHERE "username" = "morris_s55"), "Chill Vibes Only", "2024-08-10"),
    ((SELECT "id" FROM "users" WHERE "username" = "morris_s55"), "Feel-Good Anthems", "2024-08-11"),
    ((SELECT "id" FROM "users" WHERE "username" = "dina_carter24"), "Acoustic Afternoons", "2024-08-09"),
    ((SELECT "id" FROM "users" WHERE "username" = "dina_carter24"), "Summer Sunsets", "2024-08-12"),
    ((SELECT "id" FROM "users" WHERE "username" = "kurt_roy33"), "Melancholy Melodies", "2024-08-07");

-- Insert into songs_in_playlists
INSERT INTO "songs_in_playlists" ("playlist_id", "song_id")
VALUES
    ((SELECT "id" FROM "playlists" WHERE "title" = "Chill Vibes Only" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "Don't Panic" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Chill Vibes Only" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "Midnight" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Chill Vibes Only" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "Something" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Chill Vibes Only" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "bad guy" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Chill Vibes Only" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "WILDFLOWER" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Feel-Good Anthems" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "Sparks" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Feel-Good Anthems" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "Yesterday" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Help!"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Feel-Good Anthems" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "Here Comes the Sun" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Feel-Good Anthems" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "SKINNY" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Feel-Good Anthems" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "morris_s55")), (SELECT "id" FROM "songs" WHERE "title" = "BIRDS OF A FEATHER" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Acoustic Afternoons" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "Always in My Head" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Acoustic Afternoons" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "Ink" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Acoustic Afternoons" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "I've Just Seen a Face" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Help!"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Acoustic Afternoons" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "Golden Slumber" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Acoustic Afternoons" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "xanny" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Summer Sunsets" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "A Sky Full of Stars" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Summer Sunsets" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "Ticket to Ride" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Help!"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Summer Sunsets" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "Oh! Darling" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Summer Sunsets" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "xanny" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Summer Sunsets" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "dina_carter24")), (SELECT "id" FROM "songs" WHERE "title" = "bury a friend" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "When We All Fall Asleep, Where Do We Go?"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Melancholy Melodies" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "kurt_roy33")), (SELECT "id" FROM "songs" WHERE "title" = "Trouble" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Parachutes"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Melancholy Melodies" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "kurt_roy33")), (SELECT "id" FROM "songs" WHERE "title" = "Midnight" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Ghost Stories"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Melancholy Melodies" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "kurt_roy33")), (SELECT "id" FROM "songs" WHERE "title" = "Here Comes the Sun" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Abbey Road"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Melancholy Melodies" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "kurt_roy33")), (SELECT "id" FROM "songs" WHERE "title" = "CHIHIRO" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft"))),
    ((SELECT "id" FROM "playlists" WHERE "title" = "Melancholy Melodies" AND "user_id" = (SELECT "id" FROM "users" WHERE "username" = "kurt_roy33")), (SELECT "id" FROM "songs" WHERE "title" = "WILDFLOWER" AND "album_id" = (SELECT "id" FROM "albums" WHERE "title" = "Hit Me Hard and Soft")));


-- OUTPUT VIEWS --
SELECT * FROM "user_playlists";
SELECT * FROM "artist_songs";
SELECT * FROM "album_songs";
SELECT * FROM "playlist_songs";


-- QUERIES --
-- List playlists created by a specific user
SELECT "title", "created" FROM "playlists"
WHERE "user_id" = (
    SELECT "id" FROM "users"
    WHERE "username" = 'kurt_roy33'
);

-- List songs created by a specific artist
SELECT "songs"."title" AS "song_title", "albums"."title" AS "album_title" FROM "songs"
JOIN "albums" ON "albums"."id" = "songs"."album_id"
WHERE "songs"."artist_id" = (
    SELECT "id" FROM "artists"
    WHERE "name" = 'Coldplay'
);

-- List songs in a specific playlist and user
SELECT "songs"."title" AS "song_title", "albums"."title" AS "album_title" FROM "songs"
JOIN "songs_in_playlists" ON "songs_in_playlists"."song_id" = "songs"."id"
JOIN "playlists" ON "playlists"."id" = "songs_in_playlists"."playlist_id"
JOIN "albums" ON "albums"."id" = "songs"."album_id"
WHERE "playlists"."title" = "Acoustic Afternoons"
AND "user_id" = (
    SELECT "id" FROM "users"
    WHERE "username" = 'dina_carter24'
);

-- Count number of playlists for each user
SELECT "username", COUNT("playlists"."title") AS "playlist_count" FROM "users"
JOIN "playlists" ON "playlists"."user_id" = "users"."id"
GROUP BY "username"
ORDER BY "username" ASC;

-- Count number of songs for each artist
SELECT "name", COUNT("songs"."title") AS "song_count" FROM "artists"
JOIN "songs" ON "songs"."artist_id" = "artists"."id"
GROUP BY "name"
ORDER BY "name" ASC;

-- Total duration of each playlist
SELECT "playlists"."title" AS "playlist_title", SUM("duration") AS "total_duration_in_sec" FROM "playlists"
JOIN "songs_in_playlists" ON "songs_in_playlists"."playlist_id" = "playlists"."id"
JOIN "songs" ON "songs"."id" = "songs_in_playlists"."song_id"
GROUP BY "playlists"."title"
ORDER BY "playlists"."title" ASC;
