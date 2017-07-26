# Release 0
# => 1. Ask for agent's name
# => 2. Store Agent's name in an array
# => 4. Create a letter equivalent hash
# => 4. Change the vowels and consonants of the name calling the letter equivalent hash
# => 5. Return name

# Release 1

# => 1. Convert alias program into a method
# => 2. Create a loop that asks user more names until s/he enters exit


def agent_alias(agent)

  agent_name = agent.split(' ')

  letter_equivalent = {
    a:"e",
    b:"c",
    c:"d",
    d:"e",
    e:"i",
    f:"g",
    g:"h",
    h:"j",
    i:"o",
    j:"k",
    k:"l",
    l:"m",
    m:"n",
    n:"p",
    o:"u",
    p:"q",
    q:"r",
    r:"s",
    s:"t",
    t:"v",
    u:"a",
    v:"w",
    w:"x",
    x:"y",
    y:"z",
    z:"b"
  }

  agent_last = agent_name[1].split(//)
  agent_first = agent_name[0].split(//)

  agent_last.map! do |letter|
    letter_equivalent.fetch_values(letter.downcase.to_sym).join(",")
      end

  agent_first.map! do |letter|
    letter_equivalent.fetch_values(letter.downcase.to_sym).join(",")
      end

  agent_alias = "#{agent_last.join("").capitalize} #{agent_first.join("").capitalize}"

end

#Driver code

user_input = 0
names_hash = {}

puts "Give names to swap. Enter quit to stop and see all your new names. (Only use first name and last name)"

until user_input == "quit"
  user_input = gets.chomp
  if user_input != "quit"
  names_hash [user_input.to_sym] = agent_alias(user_input).to_s
  end

end

names_hash.each do |real_name, final_alias|
  puts "For #{real_name} use the alias #{final_alias}"
end


