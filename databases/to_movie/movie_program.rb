=begin

Program Description

The to-movie program will be a movie/tvshow/book tracker for when I am in the mood to read or whatch something and I don't want to waste hours choosing the title.

The program will:
1. Allow user to enter new books, movies or TV Shows
2. Allow user to mark seen movies or read books

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


def add_item(db, type, name, author, genre)
  db.execute("INSERT INTO items (type, name, author, genre_id, seen) VALUES (?, ?, ?, ?, ?)", [type, name, author, genre, "false"])
end

def add_item(db, array)
  db.execute("INSERT INTO items (type, name, author, genre_id, seen) VALUES (?,?,?,?,?)", array[0], array[1], array[2], array[3], "false")
end

def mark_as_seen(db, id)
  db.execute(<<-SQL
  UPDATE items SET seen="true" WHERE id=#{id}
  SQL
  )
end

def create_array
  item_array = []
  puts "Type:"
  item_array << gets.chomp
  puts "Title:"
  item_array << gets.chomp
  puts "Author:"
  item_array << gets.chomp
  puts "Genre:"
  item_array << gets.chomp

  item_array
end




# add_item(db, ["book","The design of everyday thinking", "Don Norman", 14])
# mark_as_seen(db, 2)

#puts "Welcome to your movie tracker"

exit = false

while exit == false
  puts ""
  puts "Select your activity by number"
  puts "1 - Add an item"
  puts "2 - Mark as seen"
  puts "3 - Dsiplay my lists"
  puts "4 - Exit"
  activity = gets.chomp

  if activity == "1"
    add_item(db, create_array)
  elsif activity == "2"
    puts "item id to mark as seen?"
      input_id = gets.chomp
    mark_as_seen(db, input_id)
  elsif activity == "3"
    table = db.execute("SELECT * FROM items")
    table.each do |array|
      puts ""
      array.each do |column|
        print "#{column} - "
        end
    end
  elsif activity == "4"
    exit = true
  end
end




