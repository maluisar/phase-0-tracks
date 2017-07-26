#1. Create a Hash with all the wanted keys
#2. Ask the user for a value for each key
#3. Assign value to right key
#4. Change values to right formats
#5. Integrate modifying option from user


interior_design = {
  name:"",
  age:"",
  children:"",
  style:""
}

puts "Name:"
interior_design[:name] = gets.chomp

puts "Age:"
interior_design[:age] = gets.chomp.to_i

puts "Do you have children? (y/n)"
children = gets.chomp
if children == "y"
  interior_design[:children]=TRUE
else
  interior_design[:children]=FALSE
end
interior_design[:children]

puts "What is your style?"
interior_design[:style] = gets.chomp

p interior_design

p "Would you like to change any of your responses?(y/n)"
 change_input = gets.chomp

 if change_input == "n"
   p "your information is #{interior_design}"
 else
   p "What response would you like to change? (name/age/children/style)?"
   key_to_change = gets.chomp
   p "What is the new value?"
   key_new_value = gets.chomp
    if key_to_change == "name" or key_to_change == "style"
      key_new_value.to_s
    elsif key_to_change == "age"
      key_new_value.to_i
    else
      key_new_value = !interior_design[children]
    end

  interior_design[key_to_change.to_sym]=key_new_value
 end

p interior_design