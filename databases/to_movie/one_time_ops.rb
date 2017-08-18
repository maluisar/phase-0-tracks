require 'sqlite3'

db = SQLite3::Database.new("to_movie.db")

create_items_table = <<-SQL
  CREATE TABLE items(
    id INTEGER PRIMARY KEY,
    type VARCHAR(255),
    name VARCHAR(255),
    author VARCHAR(255),
    genre_id INT,
    seen BOOLEAN,
    rating INT,
    comment VARCHAR(255),
    FOREIGN KEY (genre_id) references genres(id)
  )
SQL

create_genre_table = <<-SQL
  CREATE TABLE genres(
    id INTEGER PRIMARY KEY,
    genre VARCHAR(255)
  )
SQL

populate_genres_table = <<-SQL
  INSERT INTO genres (genre) VALUES ("Action"), ("Adventure"), ("Thriller"), ("Animation"), ("Adventure"), ("Comedy"), ("Family"), ("Fantasy"), ("Horror"), ("Romance"), ("Documentary"), ("Drama"), ("SciFi"), ("Self-help")
SQL

db.execute(create_genre_table)
db.execute(create_items_table)
db.execute(populate_genres_table


