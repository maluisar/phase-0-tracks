#Encrypt
# 1. Create a method with a strign variable
# 2. Open a loop active until reaching the lenght of the string
# 3. Set .next method to each index value of the string
# 4. Call method

def encrypt(str)
  str_count = 0
  str_actual = ""
  until str_count == str.length
    if str[str_count] == "z"
      str_actual += "a"
    else
      str_actual += str[str_count].next
    end
  str_count += 1
  end
  puts str_actual
end

#Decrypt
#1. Create method with a string variable
#2. Open loop activ euntil reaching the length of a string
#3. Create a variable with all the letters of the alphabet
#4. Look for the index -1 in the alphabet variable
#5. Add up letters until creating string
#6 Call method

def decrypt(str)
  str_count = 0
  str_actual = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  until str_count ==str.length
    str_actual += alphabet[alphabet.index(str[str_count])-1]
    str_count += 1
  end
  puts str_actual
end


