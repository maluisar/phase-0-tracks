# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. Convert string into an array using #split
  # 2. Convert into a hash using #each
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  #1. Create method that adds (<<) a key to list hash
# output: Updated hash

# Method to remove an item from the list
# input: list, item name to remove
# steps: Use #delete to remove item
# output: Udpated hash

# Method to update the quantity of an item
# input:list, item name, new quantity
# steps: Use h [key] = ""
# output: Hash with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: Iterate thorugh the hash to print each item with quantities using #each
# output: printed list with quantities

grocery_list = {}

def new_list(str, list)
  str.split(" ").each { |items| list[items] = 1 }
end

def add_item(list, item, quantity = 1)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item)
end

# def update_quantity(list, item, quantity)
#   list[item] = quantity
# end

def look_pretty(list)
  puts "Here is your grocery list:"
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
end

new_list("banana apple orange lime", grocery_list)
add_item(grocery_list, "pear")
remove_item(grocery_list, "banana")
add_item(grocery_list, "apple", 5)
look_pretty(grocery_list)


# What did you learn about pseudocode from working on this challenge?
# => It really makes the actual coding easier and more organized
# What are the tradeoffs of using arrays and hashes for this challenge?
# => We didn't even consider using an array for the long run because of the quantity value that we would have had to store in an array as a string
# What does a method return?
# => The last line of code
# What kind of things can you pass into methods as arguments?
# => methods, values, hashes, arrays, variables
# How can you pass information between methods?
# => Using the arguments, using global variables
# What concepts were solidified in this challenge, and what concepts are still confusing?
# => Passing information between methods was definitely something that was a little confusing.