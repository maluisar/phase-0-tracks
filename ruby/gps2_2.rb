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


def new_list(str)
  new_list = str.split(" ")
  new_hash = {}
  new_list.each do |items|
    new_hash [items] = 1
  end
p new_hash
end

new_list("banana apple orange lime")
