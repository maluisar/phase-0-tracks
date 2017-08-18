=begin

Program Description

The to-movie program will be a movie/tvshow/book tracker for when I am in the mood to read or whatch something and I don't want to waste hours choosing the title.

The program will:
1. Allow user to enter new books, movies or TV Shows
2. Allow user to mark seen movies or read books
3. Allow user to rate the movies seen and comment on them

Pseudocode:

Create table with the following columns: (id, type, name, author, genre, seen/not, rating, comment)

Additionally reference to genre with id number. (Create databases with all genres and platforms content)

Create methods for each program activity (add, rate, mark as seen)

Ask the user what he/she wants to review (books, tv shows or movies)
Display current list of unwatched and add options for different views for seen movies

Ask User if he/she wants to enter a new item, rate a current item or mark as seen or go back.

=end

require 'sqlite3'

db = SQLite3::Database.open "to_movie.db"


def add_item(db, type, name, author, genre, rating=nil, comment=nil)
  db.execute("INSERT INTO items (type, name, author, genre_id, seen, rating, comment) VALUES (?, ?, ?, ?, ?, ?, ?)", [type, name, author, genre, "false", rating, comment])
end

def rate_item(db, id, rating)
  db.execute("UPDATE items SET rating=#{rating} WHERE id=#{id}")
end

def mark_as_seen(db, id)
  db.execute("UPDATE items SET seen=true WHERE id=#{id}")
end

#add_item(db, "books","The design of everyday thinking", "Don Norman", 14)
rate_item(db, 2, 5)
mark_as_seen(db, 2)

puts db.execute("SELECT * FROM items")
