$ cd favorites
favorites/ $ sqlite3 favorites.db
sqlite> .schema
CREATE TABLE shows (id INTEGER, title TEXT NOT NULL, PRIMARY KEY(id));
CREATE TABLE genres (show_id INTEGER, genre TEXT NOT NULL, FOREIGN KEY(show_id) REFERENCES shows(id));
sqlite> SELECT * FROM shows;
sqlite> UPDATE shows SET title = "How I Met Your Mother" WHERE title = "How i met your mother";
sqlite> SELECT * FROM shows;
sqlite> UPDATE shows SET title = "Brooklyn Nine-nine" WHERE title LIKE "brooklyn 99";
sqlite> UPDATE shows SET title = "The Game of Thrones" WHERE title LIKE "Game of Thrones";
sqlite> UPDATE shows SET title = "Grey's Anatomy" WHERE title LIKE "Grey's anatomy";
sqlite> UPDATE shows SET title = "It's Always Sunny in Philadelphia" WHERE title LIKE "Its Always Sunny in Philadelphia";
sqlite> UPDATE shows SET title = "Parks and Recreation" WHERE title LIKE "Parks and Rec";
sqlite> UPDATE shows SET title = "The Office" WHERE title LIKE "Office";
sqlite> UPDATE shows SET title = "The Office" WHERE title LIKE "the office";
sqlite> UPDATE shows SET title = "The Office" WHERE title = "Thevoffice";